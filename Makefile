DESTDIR = /usr/local/bin
PROGRAMS = cpio-add cpio-chroot cpio-diff cpio-edit cpio-filter cpio-list \
           cpio-merge cpio-pack cpio-sort cpio-unpack nbic nd trace-files

all:

install: all
	install $(PROGRAMS) $(DESTDIR)
