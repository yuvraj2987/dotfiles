#!/bin/zsh

## Use new gke k8s auth module
export USE_GKE_GCLOUD_AUTH_PLUGIN=True


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
