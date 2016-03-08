## MyLog

2015-2016 - Licensed under GPL, any version

**How to install**

1. Download script and place it in your path. I use ~/bin/
2. Create a directory called ~/.mylog (mkdir ~/.mylog)
3. Create a file called mylog (touch ~.mylog/mylog)
4. Create symlinks for the other functions
  1. ln -s ~/bin/mylog ~/bin/myview
  2. ln -s ~/bin/mylog ~/bin/mysearch
5. Protect your log
  1. chmod 740 ~/.mylog


**Changelog**

```
0.1 - Initial version
0.2 - Bugfixes
0.3 - Added colored output
    - Change name from changelog to mylog
    - Added a howto to install and setup
0.4 - Added a TAG to make searching for similar entries easier
0.5 - Interactive instead of inline logging.
    - Added -h option to show help text
0.55 - Added more colored
     - Cleaned up a little bit
0.6 - Cleaned up the code and added better formatting
```

**Plans for the future**

I'd like to extend the script so that it'll work in a department.
Thinking that it'll log based on the current user and with a global log-file,
placed on a global share.

Perhaps create a way to create reports that will be emailed to a set of defined users.
The report will be based on dates or a user and can be run as a cron-job.

Let me know what you'd like to see this script do and I'll try.

**Screenshots**

[MyLog Screenshot 1](https://dl.dropboxusercontent.com/u/15356427/mylog1.png)
[MyLog Screenshot 2](https://dl.dropboxusercontent.com/u/15356427/mylog2.png)
[MyLog Screenshot 3](https://dl.dropboxusercontent.com/u/15356427/mylog3.png)
