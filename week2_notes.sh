#To test speed, run
ab -n 500 <URL> #makes requests
top #checks processes running
nice #changes priority of process on next run
renice #changes priority of already running process

#use a for loop with pidof
for pid in $(pidof ffmpeg); do renice 19 $pid; done

ps ax #shows processes running then 
/ffmpeg #to search for those processes

locate "filename" #shows the path to filename

grep ffmpeg * #will show if any file contains the call we want

#Modify the script, this won't change the processes that are already running
killall -STOP ffmpeg

for pid in $(pidof ffmpeg); do while kill -CONT $pid; do sleep 1; done; done

time #tells you how long the following command took
pprofile3 -f callgrind -o profile.out <script.py> "parameters"
#to open callgrind files:
kcachegrind profile.out

#Threads to make things faster - merits rewatching
#concurrent module in python 'from concurrent import future'