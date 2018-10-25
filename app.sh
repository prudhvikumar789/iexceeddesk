appzillonapp() {
 myuser_name=$1

 user_name=`$USER`

 if [ "$myuser_name" = "" ]; then
 echo "user name (hit enter to use '$user_name')?"
 read myuser_name
 fi

 if [ "$myuser_name" = "" ]; then
 myuser_name=$user_name
 fi

 bash ssh -X $user_name@192.168.1.6 /App/LINUX/Appzillon
 echo "done"
}






appzillon() {

 user_name=`basename $USER`

 if [ "$myuser_name" = "" ]; then
 echo "user name (hit enter to use '$user_name')?"
 read myuser_name
 fi

 ssh -X $user_name@192.168.1.6 /App/LINUX/Appzillon
 echo "done"
}
