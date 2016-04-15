# Simple install file for MyLog
#

NAME    = mylog
PREFIX  = ~/bin
INSTALL = $(PREFIX)/$(NAME)
LOGDIR  = ~/.config/$(NAME)
LOGFILE = $(LOGDIR)/$(NAME)

install:
	@-printf 'Installing MyLog as $(INSTALL)'
	@-cat mylog | grep ^MYLOG | sed -e '1,/MYLOG/s/MYLOG/MYLOG\=$(LOGFILE:q)\ \#\ /' > /tmp/mylog
	@-install -c /tmp/mylog $(INSTALL)
	@-rm -f /tmp/mylog
	@-printf 'Creating the symlinks\n'
	@-ln -sf $(INSTALL) $(PREFIX)/myview
	@-ln -sf $(INSTALL)/mylog $(PREFIX)/mysearch
	@-printf 'Creating the logdir and logfile'
	@-mkdir $(LOGDIR)
	@-touch $(LOGFILE)
	@-chmod 640 $(LOGDIR)
	@-printf '\nYou are now ready to use MyLog. Please enjoy.\n'
	@-exit 0


update:
	@-printf 'Updating MyLog as $(INSTALL)\n'
	@-cat mylog | grep ^MYLOG | sed -e '1,/MYLOG/s/MYLOG/MYLOG\=$(LOGFILE:q)\ \#\ /' > /tmp/mylog
	@-install -c /tmp/mylog $(INSTALL)
	@-rm -f /tmp/mylog
	@-exit 0
