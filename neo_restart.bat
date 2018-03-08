@call .creds.bat
@%hcp_tools%\neo restart --account %hcp_accnt% --application %hcp_app% --host %hcp_host% --user %hcp_user% --password %hcp_pwd% --synchronous

@rem Home/SAP Cloud Platform/Tools/Console Client/Console Client Commands/restart
@rem https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/7c0f7a18a4564e0e8b6f997d230285ff.html