# Simple install file for MyLog
#

PREFIX  = ~/bin
LOGDIR  = ~/.mylog
LOGFILE = $(LOGDIR)/mylog

install:
	@-printf 'Installing MyLog to $(PREFIX)'
	@-install -c mylog $(PREFIX)
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
	@-install -c mylog $(PREFIX)
	@-exit 0
