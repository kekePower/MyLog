## MyLog

2015-2017 - Licensed under GPL, any version

MyLog is a script written in the ZSH shell that I use to log one-liners about what I do in my life.
It's just for fun, but this script can also be used to keep track of changes you've made to your
system or events that you want to have on record.

It's really simple, but it works.

**How to install**

1.
You can copy the **mylog** shell script to, i.e. ~/bin/mylog, and make it executable **chmod 750 ~/bin/mylog**.
Then just run the script. It will as if you want to run setup.
Hit Return and the script creates the log-file and creates the symlinks neccessary.

2.
You will have to edit the Makefile and then run **make install**.

When a new version is released, you can run **make update** to just install **mylog**.

3.
Or, you can do it manually as described below.

1. Download script and place it in your path. I use ~/bin/
2. Create a directory called ~/.config/mylog (mkdir ~/.config/mylog)
3. Create a file called mylog (touch ~/.config/mylog/mylog)
4. Create symlinks for the other functions
  1. ln -s ~/bin/mylog ~/bin/myview
  2. ln -s ~/bin/mylog ~/bin/mysearch
5. Protect your log
  1. chmod 640 ~/.config/mylog


**Plans or hopes for the future**

I'd like to extend the script so that it'll work in a department.
Thinking that it'll log based on the current user and with a global log-file,
placed on a global share.

Perhaps create a way to create reports that will be emailed to a set of defined users.
The report will be based on dates or a user and can be run as a cron-job.

Let me know what you'd like to see this script do and I'll try.

**Screenshots**

![MyLog Screenshot 1](https://dl.dropboxusercontent.com/u/15356427/mylog1.png)
![MyLog Screenshot 2](https://dl.dropboxusercontent.com/u/15356427/mylog2.png)
![MyLog Screenshot 3](https://dl.dropboxusercontent.com/u/15356427/mylog3.png)
