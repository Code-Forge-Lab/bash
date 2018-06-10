# Bash #

```bash
printf "Open folder.\n"

 - show list

 inc=0;  # position array
 inv=1;  # Line Position

 for i in  ${c[@]};  do # array ${c[@]} with `all` command
    inc=`expr $inc + 1 `
      #Checnk if dividing  equal
      if [[ `expr $inc %  2` == 1  ]];then

                printf "${WHITE}$inv ${c[$inc-1]}\n"
            inv=`expr $inv + 1`;
      fi
 done


-  Read user input
printf "Select Option: ${GREEN}"
read input
printf "${NC}"
 - execute job -
 
       inc=0;  # position array
       inv=1;  # Line Position
       suc=0;  # success if find index
       for i in  ${c[@]};  do # array ${c[@]} with `all` command
          inc=`expr $inc + 1 `
            #Checnk if dividing  equal
            if [[ `expr $inc %  2` == 1  &&  ! -z $input  ]];then

                  if [  $inv == $input  ];then # if find input index then execute git push
                      printf "${GREEN}$inv${WHITE}--> ${YELLOW}$i ${RED} PATH ${BLUE}${c[$inc]}${NC}\n"
                      xdg-open "${c[$inc]}"
                      suc=1;
                  fi
                  inv=`expr $inv + 1`;
            fi
       done


       if [  $suc  == 1  ];then
            printf "${RED}Complete${NC}: "
       elif  [[   ! -z $input && $input -gt $inv ]];then
          printf "${RED}Not [${GREEN}$input${RED}] found.${NC}\n"
       else
            printf "${RED}No rezult!${NC}\n "
       fi
```
