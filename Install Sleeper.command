# Sleeper
# (c) Copyright 2024 chris1111, All Right Reserved.
# This will install Sleeper
# Dependencies: Bash/LaunchAgents
PARENTDIR=$(dirname "$0")
cd "$PARENTDIR"
# Declare some VARS
APP_NAME="Sleeper"
SOURCE_PLIST="./com.chris1111.sleeper.plist"
SOURCE_SCRIPT="./SleeperTime"
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
echo "Install $APP_NAME"
echo "= = = = = = = = = = = = = = = = = = = = = = = = =  "
# install Sleeper
printf -- '%s\n' "Insert Your Password To Procceed."
sudo cp -rp ./$SOURCE_PLIST /Library/LaunchAgents
sudo cp -rp ./$SOURCE_SCRIPT /Library/"Application Support"
sudo chmod 755 "/Library/Application Support/SleeperTime/Sleeper"
sudo chmod 644 /Library/LaunchAgents/$SOURCE_PLIST
echo " = = = = = = = = = = = = = = = = = = = = = = = = = 
$APP_NAME install completed!
= = = = = = = = = = = = = = = = = = = = = = = = =  "
