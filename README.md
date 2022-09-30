Credit goes to ph3llin for the Rubber Ducky script

Grabs all wifi passwords on windows and creates "<HOSTNAME>.txt" on desktop and uploads to Dropbox

You need to create an app, generate an authorization code and refresh_token before this works since Dropbox has stopped issuing long-lasting tokens (now only lasts 4 hours before you need to change code on Ducky).
With this version the Ducky will generate a an short-lived token based on that session only with the refresh_token. Run-time for the script is not much longer than the original.

Ugly powershell-script to automatically generate authorization code and refresh-token included.
How to use:
1. Go to https://www.dropbox.com/developers/apps/create?_tk=pilot_lp&_ad=ctabtn1&_camp=create
2. Create app like this:

3. Give the app files.content.read, files.content.write and files.metadata.write permissions
4. Run the PowerShell-script on your computer, remember to change the Set-ExecutionPolicy to RemoteSigned, else the script wont run.
5. Paste the refresh-token, app-key and app-secret into the Rubber Ducky script.
6. Go-to https://payloadstudio.hak5.org/community/ and generate your payload.