@call .creds.bat
@%hcp_tools%\neo start --account %hcp_accnt% --application %hcp_app% --host %hcp_host% --user %hcp_user% --password %hcp_pwd% --synchronous

@rem Home/SAP Cloud Platform/Tools/Console Client/Console Client Commands/start
@rem https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/cc417d7ac1284f9e903fd89613b08b27.html
