PREFIX ?= $(HOME)

all:
	@echo Run \'make install\' to install hax.

install:
	@mkdir -pv $(DESTDIR)$(PREFIX)/bin
	@cp -pv hax $(DESTDIR)$(PREFIX)/bin/hax
	@cp -rv .hax $(DESTDIR)$(PREFIX)/
	@echo Add \'~/bin\' to PATH.

uninstall:
	@rm -fv $(DESTDIR)$(PREFIX)/bin/hax
