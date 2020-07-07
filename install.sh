#!/bin/bash

declare -r mg2_version="0.10.4"
declare -r mg2_os="$(uname -s | awk '{print tolower($0)}')"
declare -r mg2_global_dir="$(echo ~/.mg2)"
declare mg2_loading_pid=

mg2_logo() {
    local logo='
           _ _ _   _
         <  /__ \<  /_   _ _ _ _ _  _ _ _ _   _ _ _ _   _ _  _ _ _ _ _ _ _
         / /__/ // / _ \/ ___/ __ \/ __ `__ \/ __ `__ \/ _ \/ ___/ ___/ _ \
        / // __// /  __/ /__/ /_/ / / / / / / / / / / /  __/ /  / /__/  __/
       /_//____/_/\___/\___/\____/_/ /_/ /_/_/ /_/ /_/\___/_/   \___/\___/
                             _   _ _ _ _ _ _
                           /  |/  / ____/__ \
                          / /|_/ / / __ __/ /
                         / /  / / /_/ // __/
                        /_/  /_/\____//____/
                               _         _ _
                (_)_ _   _ _ _/ /_ _ _ _/ / /_   _ _ _
                / / __ \/ ___/ __/ __ `/ / / _ \/ ___/
               / / / / (__  ) /_/ /_/ / / /  __/ /
              /_/_/ /_/____/\__/\__,_/_/_/\___/_/
	    Magento 2 Docker Stack environment service installer
    '

    echo -e "\033[1;33m$logo
                             121ecommerce
                 Magento2 Docker Stack for Development
                         environment and toolset
                             v$mg2_version
\033[0m"
}

git clone https://github.com/zerocool1978/magento2-docker.g
sleep 2
./archive
sleep 2
./mg2