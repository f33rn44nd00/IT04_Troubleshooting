#Installing checking tools
sudo apt install python3-pip
pip3 install psutil

#open interpreter
python3

<<cmt
import psutil
psutil.cpu_percent()
psutil.disk_io_counters()
psutil.net_io_counters()
exit() #exits python shell
cmt

#rsync to transfer and sync files between a pc and an external storage
rsync [Options] [Source-Files-Dir] [Destination]

#Examples:
rsync -zvh [Source-Files-Dir] [Destination] #Copy files locally
rsync -zavh [Source-Files-Dir] [Destination] #Copy dirs locally
rsync -zrvh [Source-Files-Dir] [Destination] #Copy locally and recursively (-r flag)
#link with more info: https://www.linuxtechi.com/rsync-command-examples-linux/

#To use within Python, call as a subprocess:
python3

<<py
import subprocess
src = "<source-path>" # replace <source-path> with the source directory
dest = "<destination-path>" # replace <destination-path> with the destination directory
subprocess.call(["rsync", "-arq", src, dest])
exit()
py

#Practice
ls ~/scripts #takes you to and lists everything in /scripts

sudo chmod +x ~/scripts/multisync.py
./scripts/multisync.py #which gives some output simulating syncing of files

#Now fix the daily sync
nano ~/scripts/dailysync.py 
#Use multiprocessing and subprocess to apply to dailysync (check multiprocess for inspiration)

sudo chmod +x ~/scripts/dailysync.py #grant permission
./scripts/dailysync.py #execute and check results





