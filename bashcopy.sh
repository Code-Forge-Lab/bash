#!/bin/bash

flashpath='/media/zilvinas/MAIN 8GB/root/MyFolder/'
home="/home/zilvinas/"
BASH="Script/Linux/BASH"
BASH2="Script/sh"

root_bash=$(dirname "$0")

#Colors for cmd text
RED='\033[4;31m'
LGEEN='\033[1;32m'
YELLOW='\033[1;33m'
LCYAN='\033[1;36m'
LBLUE='\033[1;34m'
NC='\033[0m' # No Color



   if [  -d "${flashpath}"  ]; then 
            printf "${YELLOW}Save BASH Srtipts from ${LGEEN}$root_bash${NC} ${LCYAN}to ${RED} $BASH\n${NC}"
                cp -fR "${root_bash}" "${flashpath}${BASH}" 
                cp -fR "${root_bash}" "${flashpath}${BASH2}" 
            printf "${LCYAN}Done!\n"    
        else
          printf "${YELLOW} Path not exist ${RED}---->${LBLUE}\n$flashpath ${NC}\n\n"  
   fi 
