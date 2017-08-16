To Run Use 
sh file.sh


sudo /opt/lampp/lampp start
chmod -R <permissionsettings> <dirname>
sudo xkill kill Running program
java -jar lc.jar  -run java .jar files
xdg-open . xdg-open file  // Open Folder From cli

#Kernel Version
uname -a

#Distribution Information
lsb_release -a

#Bash version
bash --version

// Add sh script custom folder 

I understand you have some executables in one of your home folders, e.g., in ~/bin and you want to be able to execute them without always typing the full path 

1.echo "$PATH" // see all path of executables available
2.gedit ~/.bashrc // Open with gedit
3.Scroll down to bottom
4. Add This // change "~/Documents/sh" if want to
# Added by me on 2013/06/24
PATH=~/Documents/sh:$PATH   
export PATH



FROM___::: https://www.youtube.com/watch?v=BOGuAARQnLI
→ wget -c unetbootin.sourceforge.net/unetbootin-linux-latest
→ apt-get install p7zip p7zip-rar
→ mkdir /media/usb
→ lsblk
→ mount -t vfat /dev/xxxx /media/usb
→ chmod +x ./unetbootin*
→ ./unetbootin*
→ umount /media/usb

