To Run Use
bash file.sh


# WIKI: # http://www.wikihow.com/Use-Bash
------==========================================
#Bash is newer version when sh                 =
#sh  originaly was created for unix            =
-----===========================================
/--/--/--/--//--/--/--/--//--/--/--/--//--/--/--/--/
which bash #bash directory
bash -x file.sh  #debug mode see command and rezult
inxi -S , cat /etc/*-release #Linux Distiribution version 
/--/--/--/--//--/--/--/--//--/--/--/--//--/--/--/--/

!File shoud always start: #!/bin/bash #!NOTE! This give abillity to call script
#Example one
-----------------helloworld.sh--------------------
#!bin/bash

MESSAGE="Hello World";

echo $MESSAGE;
==================================================
--------------------------------------------------
To execute bash script run int terminala:
1.  # bash helloworld.sh
or
2.0. # give execution permition chmod +x helloworld.sh ,then NOTE WORKS ON #{GLOBAL BASH USAGE}
2.1  # ./helloworld.sh
==================================================
#GLOBAL BASH USAGE SETUP
// Add sh script custom folder

#I understand you have some executables in one of your home folders, e.g., in ~/bin and you want to be able to execute them without always typing the full path

1.echo "$PATH" // see all path of executables available
2.gedit ~/.bashrc // Open with gedit
3.Scroll down to bottom
4. Add This // change "~/Documents/sh" if want to
# Added by me on 2013/06/24
PATH=~/Documents/sh:$PATH
export PATH
==================================================
--------------------------------------------------
exit     #jump/exit from program
mkdir    #: make a dir
mkdir -p #: make dirs by full path
which    #: return global  path Exsample: `which atom` rezult /usr/bin/atom
expr     #: it's tonumber function
time="$(date +'%H:%M %b-%m/%d/%Y ')" # Time
sudo cp -r "${from1}/*" ${to}  # How copy corectly in cmd  when getting error : cp: omitting directory
pwd | sed 's/ /\\ /g'          # Get Full This command will escape spaces properly using pwd method
cp -Rf "$APP_PROTOTYPE/" "Payload/${BUNDLE_NAME}.app"  #Trying to cp a path with spaces, fails when scripted answer: You need to quote parts of your command containing spaces to prevent word splitting from making them into two different arguments:
BASEDIR=$(dirname "$0") echo "$BASEDIR" # Get base Dir path 
du -sh ~/.minecraft # Get Directory used memory size
[ true ] && [ true ] # AND operator 
if  [[   ! -z $input && $input -gt $inv ]];then # And Opretation
==================================================
----------How Cocanate Variable/String------------
str1="Hello : ";
str2=": Word";
rezult=$str1$str2;
rezult2=${str1}${str2};
echo "rezult1 = $rezult ";
echo "rezult2 = $rezult2";
==================================================
----------------Variable Arithmetic--------------
a=5;
b="7";
c=`expr $a + $b + 2`; #expresion works like tonumber() ,from string'
==================================================
-------- # How make Colors letters ---------------
#colors
#
#Black        0;30     Dark Gray     1;30
#Red          0;31     Light Red     1;31
#Green        0;32     Light Green   1;32
#Brown/Orange 0;33     Yellow        1;33
#Blue         0;34     Light Blue    1;34
#Purple       0;35     Light Purple  1;35
#Cyan         0;36     Light Cyan    1;36
#Light Gray   0;37     White         1;37
#
#    .---------- constant part!
#    vvvv vvvv-- the code from above
RED='\033[0;31m'
NC='\033[0m' # No Color
printf "I ${RED}love${NC} Stack Overflow\n"

#or

\n,\r,\t,\b\
{
Here are escape method/sequence
1."\n" = return in new line

2."\r" = carrers return ,when slash ->escape ->sequence ->"\r"<-atgabenti back very first collom on the same line and print it out
ex:  echo "Hey world \rwh"
="why world"

3."\t"= basicly give five spaces in string
ex:echo "Hey world \t\twhat up"
="Hey world           what up"

4. "\b" = back space , that eat space back and one letter
ex: echo "Hey world \b\b\b\b\b\bwhat up"
="Hey what up" # text was eated five \b

5."\033[1m 'text' \033[0m" = bold all strings in file
ex: echo "\033[1mHey world hat up\033[0m" # only work in shell script file only

}


==================================================
#Example
-----------------Array----------------------------
#!/bin/bash

#available use array in bash calling bash file.sh
#1.array
  c=()
  c[0]='foo'
  c[1]='mickey'
  c[2]='mouse'
echo ${c[1]}
echo ${#c[1]} # lenght of text
echo ${c[*]}  # all objects

 #2.array
  c2=(12 "lucky42" "Whe")
  echo ${c2[0]} #start from zero
  echo ${c2[@]} # all objects
  echo ${#c2[@]} # lenght of array
===================================================
#Example
-----------------For Loop--------------------------
#!/bin/bash
        for i in $( ls ); do
            echo item: $i
        done
#or
#!/bin/bash
    c=("Mambo" "Jambo" "Lambo" "Gambo"); #array

        for i in  ${c[@]};  do # array ${c[@]} with `all` command
            echo "item: $i"
        done
 #or
 #ignore defoult spaces
c=("Mambo" "Jambo" "Lambo" "Gambo"); #array
      IFS=$'\n'       # Space merge activator for all for loops in script, :: https://askubuntu.com/questions/344407/how-to-read-complete-line-in-for-loop-with-spaces
        for i in  ${c[@]};  do # array ${c[@]} with `all` command
            echo "item: $i"
        done
---------------------------------------------------
===================================================
#Exsample
-------------------if statement--------------------
#!/bin/bash
#how compare string
if [ 'abc' = 'abc' ];then #Note [space <--Shoud have spaces--> space]

      echo "Your file has been successfuly renamed"
    else
      echo "it's your fault"
fi # end
#or
#How use read
#!/bin/bash
echo "Enter a number10 and 20:\c"
read num

if [ $num -lt 10 ];then
         echo "That was under the belt partner."
  elif [ $num -gt 20 ];then
           echo "That went ower my head"
  else
           echo "Now you are making sence"
  fi
---------------------------------------------------
# Relational Operators                                     #Example
# -lt , -le : less , lees or equal                   [ $a -lt $b ]
# -gt , -ge :greather , greater or equal             [ $a -gt $b ]
# -eq       :equal                                   [ $a -eq $b ]
# -ne       :not equal                               [ $a -ne $b ]
# Boolean Operators
# -o        :or                                      [ $a -lt 20 -o $b -gt 100 ]
# -a        :and                                     [ $a -lt 20 -a $b -gt 100 ]
# !         :not                                     [ ! false ] is true.
#Arithmetic Operators
# <       :Less then
# >       :Greather then
# ==      :Equal                                     [ $a == $b ]
# =       :Assignment                                a = $b #would assign value of b into a
# !=      :Not equal                                 [ $a != $b ]
# %       :Modulus                                   expr $b % $a`
# +       :Addition                                  `expr $a + $b`
# -       :Subtraction                               `expr $a - $b`
# \*      :Multiplication                            `expr $a \* $b`
# /       :Division                                  `expr $b / $a`
# String Operators
# =       :Equal                                      [ $a = $b ]
# !=      :Not Equal                                  [ $a != $b ]
# -z      :String operand size is zero                [ -z $a ]
# -n      :String operand size is non-zero;           [ -z $a ]
# -str     :Isnot the empty string; if it is empty     [ $a ]
# External
# -f      : File exsist                               [ ! -f "${file}" ]
# -d      :DIrectory exist                            [ -d "${dir}" ]
===================================================

----==================P.R.O.G.R.A.M S.E.C.T.I.O.N----========================
------------------xdg-open--folder----------------
#!/bin/bash
flashpath="/home/zilvinas";
xdg-open "$flashpath" # Must but " ->here<- "

path="/home/zilvinas/sh"
file="/text.txt"
echo
cat "${path}${file}"; # read text

--------------------------------------------------
==================================================
------------------write\read file.txt----------------
#!/bin/bash
path="/home/zilvinas/sh"
file="/text.txt"

#Write data into file
echo 'Hello World' > "${path}${file}"
#or
#Rad all lines
value=`cat "${path}${file}"`;
#or
#Read it line-by-line
while read line; do
    echo $line # reading
done < file.txt
#or
#Append text
echo 'This Text Was Append2' >> "${path}${file}"

--------------------------------------------------
==================================================
#!/bin/bash

echo "Starts sleeper after 25 min";sleep 25m;echo ";Sleep in 5s"sleep 25;pm-suspend

--------------------------------------------------
================================================== 


SERVER Side

Locate File Byne Name 
locate file.txt 

Linux Server Login
ssh root@123.45.67.890 example ssh john@123.45.67.890 -- After that ask password by given root user

MySQL 

Start Server
/etc/init.d/mysql stop


Stop Server 
/etc/init.d/mysql start

NANO Editor

nano file.txt /// Open a file 
nano +21 file.txt // open a file with specified line 