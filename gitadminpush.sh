clear

#    .---------- constant part!
#    vvvv vvvv-- the code from above
RED='\033[0;31m'
GREEN='\033[0;32m' 
NC='\033[0m' # No Color



		

echo "------DOWNLOAD----(get)"
echo "1)experimental Arduino"
echo "2:experimental bash"
echo "3)Zilvinus>????"

read input

if [  $input == "1"  ];then
         echo "--> Arduino"
         git clone "https://github.com/Local-Experimental/Arduino.git"
           printf "${RED}Complete${NC}--->" 

elif [ $input == "2" ];then
	 echo "bash"
         git clone "https://github.com/Local-Experimental/bash.git"
           printf "${RED}:Complete${NC}--->" 


elif [ $input == "3" ];then
           echo "-->HTML"
         git clone "https://github.com/zlvinuspeciulis/html.git"
           printf "${RED}Complete${NC}--->" 
           
   #else   
   		 
   # 		 printf "No Rezult pushing"
   # 		 printf "${RED}Start pushing process${NC}--->"
		 # git status
		 # git add .
		 # git commit -m "new"
		 # git push
		 # printf "${GREEN}Done${NC}<---"
fi
