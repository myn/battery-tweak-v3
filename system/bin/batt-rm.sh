#!/system/bin/sh

#Removal Beta v1.0 by Decad3nce
#really complex shit eh?
application="Battery Tweak Script";
#end of complex shit

RemoveAllFiles()
{
   mount -o rw,remount /dev/block/mtd3 /system
   rm /system/bin/batt.sh;
   rm /system/bin/batt-cfg;
   rm /system/etc/batt.conf;
   log "collin_ph: Removed $application";
   rm /system/bin/batt-rm.sh;
   mount -o remount,ro /
   exit;
}

DontRemoveFiles()
{
   mount -o rw,remount /dev/block/mtd3 /system 
   log "collin_ph: Canceled Removal of $application";
   mount -o remount,ro /
   exit;
}

echo ""
echo ""
echo ""

echo "This tool will remove almost all traces of the Battery Tweak"
echo "Are you sure that you want to go through with this?[y/n]"
read ANS

case $ANS in
           "y") RemoveAllFiles;;
           "n") DontRemoveFiles;;
             *) echo "collin_ph: Cancelled Removal of $application";;
esac

done