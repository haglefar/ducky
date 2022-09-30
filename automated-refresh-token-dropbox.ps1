#Static varibles
$response_type = "code"
$access_type = "offline"
$grantTypeRefresh = “refresh_token”
$grantTypeAut = "authorization_code"

#URLS
$authurl = "https://www.dropbox.com/oauth2/"
$requestUri = "https://api.dropboxapi.com/oauth2/token"

#STEP 1 - Manually generate authorization code:

$app_key = Read-Host "Please paste your app key"
$app_secret = Read-Host "Please paste your app secret"
$authReqBody = "authorize?client_id=$app_key&token_access_type=$access_type&response_type=$response_type"
$fullAuthUrl = $authurl + $authReqBody

Write-Host "Go to this URL and generate a authorization code:"
Write-Host $fullAuthUrl

#STEP 2 - Generate refresh-token via oauth2 API:

$autcode = Read-Host "Please paste your authorization code:"
$requestBody = “code=$autcode&client_id=$app_key&client_secret=$app_secret&grant_type=$grantTypeAut”

Write-Host "Please wait - generating refresh_token ...."

$response = Invoke-RestMethod -Method Post -Uri $requestUri -ContentType “application/x-www-form-urlencoded” -Body $requestBody

clear
Write-host "Here is your refresh-token:"
Write-Host $response.refresh_token