cd ~/scripts
ls

cat greetings.py
sudo chmod 777 greetings.py #Remember chmod 777 is usually bad practice, should be avoided

./greetings.py

<<cmt #Output
Hello!, What's your name?Fernando
Traceback (most recent call last):
  File "./greetings.py", line 10, in <module>
    greeting()
  File "./greetings.py", line 8, in greeting
    print("hello " + name + ", your random number is " + number)
TypeError: Can't convert 'int' object to str implicitly
cmt

#Open the file to edit, error is two data types
# Include the str in the script:   print("hello " + name + ", your random number is " + str(number))

#Run again: 
./greetings.py #Will now work

#Done!