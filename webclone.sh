echo "Enter Folder name for web"
read -r fol
echo "Press 1 for Phone or Press 2 for Computer"
read -r device
if [ $device == "1" ]; then
loc="/sdcard/web"
else
loc="/mnt/d/web"
fi
cd $loc && mkdir $fol
echo "Enter website link"
read -r link
cd $fol
wget -mkEpnp $link