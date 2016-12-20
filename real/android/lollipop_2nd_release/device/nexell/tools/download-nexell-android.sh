#!/bin/bash

set -e

JB_SERVER_URL="git://210.219.52.221/nexell/pyrope/android/manifest"
KITKAT_SERVER_URL="git://git.nexell.co.kr/nexell/android/kitkat/manifest"
DIR=nexell-android

usage()
{
    echo 'Usage: $0 -v <android version name(jb/kitkat)> [ -d directory ]'
    echo -e '\n -v <android version name> : jb or kitkat'
    echo " -d <directory> : The directory to download code, Default: ${DIR}"
    exit 1
}

function parse_args()
{
    TEMP=`getopt -o "v:d:h" -- "$@"`
    eval set -- "$TEMP"

    while true; do
        case $1 in
            -v  ) VERSION=$2; shift 2 ;;
            -d  ) DIR=$2; shift 2 ;;
            -h  ) usage; exit 1;;
            --  ) break ;;
        esac
    done
}

function check_android_version()
{
    if [ ${VERSION} == "jb" ]; then
        VERSION="jb-mr1.1"
        SERVER=${JB_SERVER_URL}
    elif [ ${VERSION} == "kitkat" ]; then
        VERSION="kitkat-dev
        SERVER=${KITKAT_SERVER_URL}
    else
        usage
        exit 1
    fi

    echo "version: ${VERSION}"
}

function check_download_dir()
{
    if [ -d ${DIR} ]; then
        read -p "Directory ${DIR} exists. Are you sure you want to use this? (y/n)" CONTINUE
        [ ${CONTINUE} == y ] || exit 1
    else
        mkdir ${DIR}
    fi
}

function download_repo()
{
    local repo_exist=$(which repo)
    echo "repo_exist: ${repo_exist}"
    if [ -z ${repo_exist} ]; then
        echo "Download repo"
        mkdir -p ~/bin
        curl http://commondatastorage.googleapis.com/git-repo-downloads/repo > ~/bin/repo
        chmod a+x ~/bin/repo
        echo "export PATH=\$PATH:${HOME}/bin" >> ~/.bashrc
        source ~/.bashrc
    fi
}

function check_git_config()
{
    if [ ! -f ~/.gitconfig ]; then
        echo "false"
    else
        local name=$(cat ~/.gitconfig | grep "name =")
        local email=$(cat ~/.gitconfig | grep "email =")
        if (( ${#name} > 0)) && (( ${#email} > 0 )); then
            echo "true"
        else
            echo "fale"
        fi
    fi
}

function set_git_name_and_email()
{
    git_configured=$(check_git_config)
    if [ ${git_configured} == "false" ]; then
        local git_name=
        local git_email=
        until [ ${git_name} ]; do
            read -p "enter your name for git config: " git_name
            if [ -z ${git_name} ]; then
                echo "Error: You must enter your name in English!!!"
            fi
        done
        git config --global user.name ${git_name}

        until [ ${git_email} ]; do
            read -p "enter your email for git config: " git_email
            if [ -z ${git_email} ]; then
                echo "Error: You must enter your email in English!!!"
            fi
        done
        git config --global user.email ${git_email}
    fi
}

function download_source()
{
    echo "Download ${VERSION} from ${SERVER} to ${DIR}"

    cd ${DIR}

    echo "repo init -u ${SERVER} -b ${VERSION}"
    repo init -u ${SERVER} -b "${VERSION}"
    if [ $? -ne 0 ]; then
        echo "Error repo init"
        rm -rf .repo
        exit 1
    fi

    repo sync
    if [ $? -ne 0 ]; then
        echo "Error repo sync"
        rm -rf .repo
        exit 1
    fi

    echo "Download Complete!!!"
}

parse_args $@
check_download_dir
check_android_version
download_repo
set_git_name_and_email
download_source
