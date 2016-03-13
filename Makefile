# Simple install file for MyLog
#

PREFIX  = ~/bin
LOGDIR  = ~/.mylog
LOGFILE = $(LOGDIR)/mylog

install:
	@-printf 'Installing MyLog to $(PREFIX)'
	@-cat mylog | grep ^MYLOG | sed -e '1,/MYLOG/s/MYLOG/MYLOG\=$(LOGFILE:q)\ \#\ /' > /tmp/mylog
	@-install -c /tmp/mylog $(PREFIX)
	@-rm -f /tmp/mylog
	@-printf 'Creating the symlinks\n'
	@-ln -sf $(PREFIX)/mylog $(PREFIX)/myview
	@-ln -sf $(PREFIX)/mylog $(PREFIX)/mysearch
	@-printf 'Creating the logdir and logfile'
	@-mkdir $(LOGDIR)
	@-touch $(LOGFILE)
	@-chmod 640 $(LOGDIR)
	@-printf '\nYou are now ready to use MyLog. Please enjoy.\n'
	@-exit 0


update:
	@-printf 'Updating MyLog to $(PREFIX)\n'
	@-cat mylog | grep ^MYLOG | sed -e '1,/MYLOG/s/MYLOG/MYLOG\=$(LOGFILE:q)\ \#\ /' > /tmp/mylog
	@-install -c /tmp/mylog $(PREFIX)
	@-rm -f /tmp/mylog
	@-exit 0
