DESTDIR ?=
PREFIX ?= /usr/local
SBINDIR ?= $(PREFIX)/sbin
SYSCONFDIR ?= /etc
#UDEVDIR ?= $(SYSCONFDIR)/udev
UDEVDIR ?= /lib/udev

all:

install:
	install -D -m 755 setup-fast-track-ultra $(DESTDIR)$(SBINDIR)/setup-fast-track-ultra
	install -d $(DESTDIR)$(UDEVDIR)/rules.d
	sed "s:@SBINDIR@:$(SBINDIR):g" 80-fast-track-ultra.rules.in > $(DESTDIR)$(UDEVDIR)/rules.d/80-fast-track-ultra.rules

.PHONY: all install
