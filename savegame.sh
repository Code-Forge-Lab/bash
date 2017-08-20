#!/bin/bash
#To save save using command line interface
clear

#Colors for cmd text
RED='\033[1;31m'
LGEEN='\033[1;32m'
YELLOW='\033[1;33m'
LCYAN='\033[1;36m'
LBLUE='\033[1;34m'
NC='\033[0m' # No Color

#/home/zilvinas/.minecraft/saves/Sesion\ 1\ Survive\ Age
#/#"HopSkyBlock"

path_copy="/home/zilvinas/.minecraft/saves/" # path of game BACKUP indexfile copy
path_paste="/home/zilvinas/.minecraft/BACKUP_SAVE/SKYBLOCK/" # path of game BACKUP indexfile
coppySave="HopSkyBlock"


indexfile="index.txt" #File that count last saved folder


printf "${LGEEN}Commit infortmation to ${YELLOW}$coppySave ${RED} \n"

if [ ! -d "${path_copy}${coppySave}" ];then
  printf "${RED}Unable to find Copy folder in:${path_copy} ${NC}\n"
  exit 0;
fi



read input;
printf "${NC}"



if [ ! -f "${path_paste}${indexfile}" ];then
     echo "Creating new indexfile ${indexfile} at ${path_paste} "
     mkdir -p "$path_paste" # creating all dirs by path_paste
     touch "${path_paste}$indexfile"
     echo '0' > "${path_paste}${indexfile}" #write defoult zero
     atom  "${path_paste}$indexfile"

fi

data_c=0; #data count
data=(); #data was stored

while read line; do  #Read it line-by-line
        data_c=`expr $data_c + 1`; # expression use to add variable
            #  echo "folder $line" # reading
            data[$data_c]=$line; # Assignment to array
       break # stop at the line one
done < "${path_paste}${indexfile}"  # where to read indexfile

time="$(date +'%H:%M_%b-%m-%d-%Y')" #$(date +'%H:%M %b-%m/%d/%Y')
newName="${data[1]}-${coppySave}-[${time}]" # pattern how look copied file
index=`expr ${data[1]} + 1` # increment folder navigation by one

# Input comment to it
if [ ${#input} != 0  ] ;then #if string len is not zero
      printf "${LCYAN}Was comment [${LGEEN}\"${input}\"${LCYAN}]${RED} committed. ${NC}   \n"
      newName="${data[1]}-${coppySave}-[${time}]@${input[@]}" # pattern how look copied file

fi # end


if [ ${#data[@]} == 0   ];then #if indexfile STRING is emty or not number  then
  echo '0' > "${path_paste}${indexfile}" # write in first line
else
  # Block Were are Copied/Saved indexfiles
  echo $index > "${path_paste}${indexfile}" # write in first line
  printf "${RED}Coping ${LGEEN}${path_copy}${LBLUE}${coppySave}${LGEEN} .  .   .\n"
  mkdir -p "${path_paste}/${newName}"

 printf "${YELLOW}"
  cp -Rf "${path_copy}${coppySave}/" "${path_paste}/${newName}" #${path_paste}${newName}  !!! Coppy paste !!!

  printf "${RED}Done${LGEEN}${path_paste}${newName}/${coppySave}${NC} \n\n"
  printf "${RED}Folder into ${RED}[${YELLOW}$newName${RED}]${LGEEN} was copied !${NC} \n"
fi
# echo  [`expr ${data[1]} -ge 0`]
 printf "${LGEEN}List${NC}"
  #ls -a ${path_paste}
 #cd -Rf ${path_paste}
