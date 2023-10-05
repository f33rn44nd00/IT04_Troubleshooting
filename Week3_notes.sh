#---WHY PROGRAMS CRASH
#Reduce the scope of the problem, isolate components
#Check logs, use debug functions

#Checking a server:
ls -lt | head #sorts by last modified date and head to keep top 10 lines
tail syslog #last system lines logged

sudo netstat -nlp | grep :80 #sudo to run as root because of port access issues, flags:
#n to display numerical addresses
#l to check sockets that are listening
#p to print process id and name


#---CODE THAT CRASHES
#Use print functions to check where the program fails
#Read other people's code - focus on modules that are giving trouble

#Generate core files to check for system errors:
ulimit -c unlimited
#Will create a core file that then needs to be passed to gdb debugger:
gdb -c core <program_name>
<<gdb
Use 'backtrace' inside gdb to check which functions were calling the one with an error
'up' to move up a level until you find the appropriate line
'list' to provide more context
you can 'print' variables to get their value at crash time
gdb

pdb3 <python_script> <params> #triggers the python debugger
<<pdb
next #will go to next line of code
continue #will continue until the error
can also print(variable)
pdb
