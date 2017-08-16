clear

#    .---------- constant part!
#    vvvv vvvv-- the code from above
RED='\033[0;31m'
GREEN='\033[0;32m' 
NC='\033[0m' # No Color



printf "${RED}Start pushing process${NC}--->"
git init
git config user.name "Zilvinus-Peciulis"
# git config user.email ""
git status
git add .
git commit -m "new"
git config credential.helper store
git init
git push

printf "${GREEN}Done${NC}<---"
