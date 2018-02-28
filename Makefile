# Simple install file for MyLog
#

NAME    = mylog
PREFIX  = ~/bin
INSTALL = $(PREFIX)/$(NAME)
LOGDIR  = ~/.local/share/$(NAME)
LOGFILE = $(LOGDIR)/$(NAME)

install: mylog
	@-printf 'Installing MyLog as $(INSTALL)\n'
	@-cp mylog /tmp/mylog
	@-sed -i "/MYLOG=/c\MYLOG=$(LOGFILE)" /tmp/mylog
	@-install -cDm 750 /tmp/mylog $(INSTALL)
	@-rm -f /tmp/mylog
	@-printf 'Creating the symlinks\n'
	@-ln -sf $(INSTALL) $(PREFIX)/myview
	@-ln -sf $(INSTALL) $(PREFIX)/mysearch
	@-printf 'Creating the log file\n'
	@-mkdir -pm 764 $(LOGDIR)
	@-touch $(LOGFILE)
	@-printf '\nYou are now ready to use MyLog. Please enjoy.\n'
	@-exit 0


update:
	@-printf 'Updating MyLog as $(INSTALL)\n'
	@-cp mylog /tmp/mylog
	@-sed -i "/MYLOG=/c\MYLOG=$(LOGFILE)" /tmp/mylog
	@-install -c /tmp/mylog $(INSTALL)
	@-rm -f /tmp/mylog
	@-exit 0
