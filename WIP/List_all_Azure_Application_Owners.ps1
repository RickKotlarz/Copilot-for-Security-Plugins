# This script assumes that you have appropriate Entra RBAC assignments active to view application information. Examples include:
#   - Directory Readers: Grants read-only access to the directory, including reading all application properties.
#   - Application Administrator: Grants full read/write access to manage applications, including creating, updating, and deleting applications.
#   - Cloud Application Administrator: Similar to the Application Administrator but excludes privileged applications.

# Step 1: Log into Azure if not already signed in
Connect-AzAccount

# Step 2: Get the access token for Microsoft Graph API
$graphToken = Get-AzAccessToken -ResourceUrl "https://graph.microsoft.com/"

# Step 3: Set up the headers for the API request with the access token
$headers = @{
    "Authorization" = "Bearer " + $graphToken.Token
}

# Step 4: Make the request to Microsoft Graph API to list applications
$response = Invoke-RestMethod -Uri "https://graph.microsoft.com/v1.0/applications?$select=displayName,appId" -Headers $headers -Method Get

# Step 5: Initialize an array to store output
$applicationsOutput = @()

# Step 6: Iterate over each application to get its owners
foreach ($app in $response.value) {
    $appId = $app.appId
    $appName = $app.displayName
    
    # Query owners for each application using the app's object ID
    $ownersUri = "https://graph.microsoft.com/v1.0/applications/$($app.id)/owners"
    $ownersResponse = Invoke-RestMethod -Uri $ownersUri -Headers $headers -Method Get

    # Gather owners for each application
    if ($ownersResponse.value.Count -gt 0) {
        # Extract display names of owners and then join them
        $ownerNames = $ownersResponse.value | ForEach-Object { $_.displayName }
        $ownerNamesString = $ownerNames -join ", "
    } else {
        $ownerNamesString = "No owners found"
    }

    # Create a custom object with app data and owners
    $appData = [pscustomobject]@{
        ApplicationName = $appName
        ApplicationID   = $appId
        Owners          = $ownerNamesString
    }

    # Add the object to the output array
    $applicationsOutput += $appData
}

Write-Host "Note that users listed can view and edit applications. Any user (which may not be listed here) with administrative privileges to manage any application (e.g., Global Administrator, Cloud App Administrator etc.) can view and edit the application registrations." -ForegroundColor yellow

# Step 7. Output to console for confirmation
$applicationsOutput

# Step 8: (Optional) Export the output to CSV
# $applicationsOutput | Export-Csv -Path "C:\path\to\output.csv" -NoTypeInformation

