VERSION = 0.2.6
DESTDIR = /usr/local/bin
PROGRAMS = cpio-add cpio-chroot cpio-diff cpio-edit cpio-filter cpio-list \
           cpio-merge cpio-pack cpio-sort cpio-unpack nbic nd trace-files

all:

clean:
	rm -f *~ nbic-*.tar.gz

check:
	test/000-nbic

dist:
	rsync -a --exclude=.git $(PWD)/ /tmp/nbic-$(VERSION)/
	tar -C /tmp -czf nbic-$(VERSION).tar.gz nbic-$(VERSION)
	rm -r /tmp/nbic-$(VERSION)

install: all
	install $(PROGRAMS) $(DESTDIR)
