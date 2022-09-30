Grabs all wifi passwords on windows and creates "log.txt" on desktop and uploads to dropbox

1. to get token add app in dropbox -https://www.dropbox.com/developers/apps/create?_tk=pilot_lp&_ad=ctabtn1&_camp=create
2. insert token in wifipass-to-dropbox
3. encode file and save as inject.bin

Grabs all wifi passwords on windows and creates "<HOSTNAME>.txt" on desktop and uploads to Dropbox

You need to create an app, generate an authorization code and refresh_token before this works since Dropbox has stopped issuing long-lasting tokens (now only lasts 4 hours before you need to change code on Ducky).
With this version the Ducky will generate a an short-lived token based on that session only with the refresh_token. Run-time for the script is not much longer than the original.

Ugly powershell-script to generate authorization code and refresh-token is in my git.
