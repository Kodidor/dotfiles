#!/usr/bin/env bash
set -euo pipefail

REPO="git@github.com:IsidorMedK/dotfiles.git"
mkdir -p ~/testhome

create_testbox() {
    local NAME="$1"
    local IMAGE="$2"
    local INSTALL_CMD="$3"

    echo "=== Creating $NAME ==="
    mkdir -p "$HOME/testhome/$NAME"
    distrobox-create \
        --name "$NAME" \
        --home "$HOME/testhome/$NAME" \
        --image "$IMAGE" \
        --yes

    echo "=== Installing packages in $NAME ==="

    distrobox-enter "$NAME" -- bash -c "
        set -euo pipefail

        $INSTALL_CMD
    "

    echo "=== Finished $NAME ==="
    echo
}

create_testbox \
    "cheztest-arch" \
    "archlinux:latest" \
    "sudo pacman -Sy --noconfirm chezmoi git"

# create_testbox \
#     "cheztest-alma" \
#     "quay.io/almalinuxorg/10-base" \
#     "sudo dnf -y install epel-release && sudo dnf -y install chezmoi git"

# create_testbox \
#     "cheztest-debian" \
#     "debian:latest" \
#     "sudo apt update && sudo apt -y install chezmoi git"
