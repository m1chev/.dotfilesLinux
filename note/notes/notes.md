# Disable Wayland in order to use screen sharing 
sudo vim /etc/gdm/custom.conf 

Work related:
1. Should we update the instructions 
    https://community.vereign.com/t/auto-seal-all-outlook-emails/261
2.

Issues to be Closed:
1. https://code.vereign.com/seal/clients/outlook-add-in/-/issues/98 - closed
2. https://code.vereign.com/seal/clients/outlook-add-in/-/issues/91

Payments:
1. Show Trail - the button Change should be presented - button named Upgrade.
  https://code.vereign.com/seal/clients/user-payments/-/issues/1
2. There are different favicons for

## PCM Wallet:
* To create a wallet must have an email
* No option to create connection
* No accessibility features
* Otp Verify
  * Don't have back to change the email
  * Doesn't show you the email to which the code was sent
  * The Email with the code goes in the junk mail
* Recover Wallet:
  * setting pin and restore wallet are options on the same screen, it is not clear that first pin should be set then the restoring can take place

## TSA Deploy CI/CD:
  ```yml
    CLUSTER:
    value: "GOOGLEX"
    description: "(Required) for Google Gaia-X Staging use 'google-gaiax-stage' and for all Gaia-X clusters in the GCP use 'GOOGLEX'"
  APP_LIST:
    value: "signer"
    description: "(Optional)[If APP_LIST is not specified , it will deploy all services]. Other valid options - did, cache, policy, task, infohub, signer"
  BRANCH:
    value: "v1.0.3"
    description: "(Optional) Tag to be deployed for specific service"
  ```


