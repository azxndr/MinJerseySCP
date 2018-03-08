@call .creds.bat
@%hcp_tools%\neo undeploy --account %hcp_accnt% --application %hcp_app% --host %hcp_host% --user %hcp_user% --password %hcp_pwd%

@rem Home/SAP Cloud Platform/Tools/Console Client/Console Client Commands/undeploy
@rem https://help.sap.com/viewer/65de2977205c403bbc107264b8eccf4b/Cloud/en-US/7e09b85c9710481884e5bc3609a38bb0.html
