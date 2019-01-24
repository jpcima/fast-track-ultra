DESTDIR ?=
PREFIX ?= /usr/local
SBINDIR ?= $(PREFIX)/sbin
SYSCONFDIR ?= /etc

all:

install:
	install -D -m 755 setup-fast-track-ultra $(DESTDIR)$(SBINDIR)/setup-fast-track-ultra
	install -d $(DESTDIR)$(SYSCONFDIR)/udev/rules.d
	sed "s:@SBINDIR@:$(SBINDIR):g" 99-fast-track-ultra.rules.in > $(DESTDIR)$(SYSCONFDIR)/udev/rules.d/99-fast-track-ultra.rules

.PHONY: all install
