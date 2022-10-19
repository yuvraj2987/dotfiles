#!/bin/zsh
#

# ssh
alias sshtst="ssh -A $(whoami)_wepay_com@is-jh.devops.wepay-inc.com"
alias sshprd-ea="ssh -A ea_$(whoami)_wepay_com@prd-adm-jh.devops.wepay-inc.com"
alias sshprd-adm="ssh -A $(whoami)_wepay_com@prd-adm-jh.devops.wepay-inc.com"
alias sshprd-adm2="ssh -A $(whoami)_wepay_com@prd-adm-jh2.devops.wepay-inc.com"
## East
alias sshprd-east="ssh -A $(whoami)_wepay_com@prd-adm-east-jh.devops.wepay-inc.com"

## non Prod SSH
alias sshstg="ssh -A $(whoami)_wepay_com@stg-jh.devops.wepay-inc.com"
alias sshdevops="ssh -A $(whoami)_wepay_com@aut-jh.devops.wepay-inc.com"
alias poc-ansible="ssh -A poc-ansible-01"
alias sshdyn="ssh -A dyn-jh.devops.wepay-inc.com"
alias sshdsprd="ssh -A ds-prd-jh.devops.wepay-inc.com"
alias sshdevtest="ssh -A $(whoami)_wepay_com@devtest-adm-jh.devops.wepay-inc.com"
alias sshdevtesteast="ssh -A $(whoami)_wepay_com@34.75.184.60"

# cd
alias cdwork="cd ~/Work"
alias cdnotes="cd ~/Work/Notes"
alias cdrepo="cd ~/Work/Repo"
alias cddevops="cd ~/Work/Repo/WePay/Devops"

# gcloud
export prdjs="prd-adm-jh.devops.wepay-inc.com"
export stgjs="stg-jh.devops.wepay-inc.com"
export tstjs="tst-jh.devops.wepay-inc.com"
export devops="virtual-guru-783"
# Projects
export prd="platinum-fortress-817"
export tst="atomic-sled-797"
export stg="silver-castle-817"
export poc="mythic-crane-708"

# gcloud configuration
alias sw-poc="gcloud config configurations activate default"
alias sw-tst="gcloud config configurations activate tst"
alias sw-stg="gcloud config configurations activate stg"
alias sw-prd="gcloud config configurations activate prd"
alias sw-prd-ea="gcloud config configurations activate prd-ea"
alias sw-service-infra="gcloud config configurations activate service-infra"
alias sw-test-devops="gcloud config configurations activate devops-test"
alias sw-devtest="gcloud config configurations activate devtest"
alias sw-devtest-east="gcloud config configurations activate devtest-east"


alias clusters="gcloud container clusters list"

# Function
function cluster-login() {
    gcloud container clusters get-credentials $1 --region $2
}

# Functions
# funcion login() {
#     gcloud compute os-login ssh-keys add --key-file=~/.ssh/id_rsa.pub --ttl=0
# }

# GPG signing
export GPG_TTY=$(tty)
