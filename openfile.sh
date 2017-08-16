#!/bin/bash
clear
flashpath='/media/zilvinas/MAIN 8GB/root/MyFolder/'
home="/home/zilvinas/"
sript="Script"
games="Games/Mind/Minecraft_"
minecraft="$home.minecraft/saves/"
Job_Value="Jobs_Paying_Language.txt"


    echo "Opening data flash"

    echo "Open MAIN 8GB Dir"
    echo "1) root"
    echo "2) Stript"
    echo "3) Games"
    echo "4) Minecraft"
    echo "5) Job_Value"
    read input
    if [ $input == 1 ];  then
        echo "root"
            xdg-open "${flashpath}";
    elif [ $input == 2 ]; then
        echo "Stript"
            xdg-open "${flashpath}${sript}";
    elif [ $input == 3 ]; then
        echo "Games"
            xdg-open "${flashpath}${games}"
    elif [ $input == 4 ]; then
        echo "Minecraft"
            xdg-open "${minecraft}"

    elif [ $input == 5 ]; then
        echo "$Job_Value"
            # xdg-open "${Job_Value}"
            
           gedit "${flashpath}${Job_Value}"
                    
      else
               echo "Now you are not making any sence ?"
      fi

