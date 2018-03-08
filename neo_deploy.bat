@call .creds.bat
@%hcp_tools%\neo deploy --account %hcp_accnt% --application %hcp_app% --host %hcp_host% --user %hcp_user% --password %hcp_pwd% --source %hcp_src%

@rem Home/SAP Cloud Platform/Tools/Console Client/Console Client Commands/deploy
@rem https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/937db4fa204c456f9b7820f83bc87118.html
