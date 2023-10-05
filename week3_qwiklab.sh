##ImportError
#matplotlib is not installed when you first run the script whose code you can't access:
cd /
python3 /usr/bin/infrastructure
#the solution is to install it:
sudo apt install python3-pip -y
pip3 install matplotlib

##NoFileError
#next the script can't find the expected csv file
cd ~ #to go to the directory
ls
#The file in the dir is a .bak file but the structure seems correct so we can just change the extension:
mv data.bak data.csv

#MissingColumnError
cat ~/data.csv #the csv data is missing a column name that the script expects
sudo chmod 777 ~/data.csv #to grant permissions
nano ~/data.csv #to edit

#now the script runs successfully so we're done
