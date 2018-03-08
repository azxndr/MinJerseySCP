@call .creds.bat
@%hcp_tools%\neo status --account %hcp_accnt% --application %hcp_app% --host %hcp_host% --user %hcp_user% --password %hcp_pwd%

@rem Home/SAP Cloud Platform/Tools/Console Client/Console Client Commands/status
@rem https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/d4f6592584464cc6a5c3c0b6fc88abf9.html