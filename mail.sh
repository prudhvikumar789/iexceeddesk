MAX=09
EMAIL=prudhvikumar789@gmail.com
PART=sda1
USE=`df -h |grep $PART | awk '{ print $5 }' | cut -d'%' -f1`
if [ $USE -gt $MAX ]; then
echo "Percent used: $USE" | email -s "Running out of disk space" $EMAIL
fi
