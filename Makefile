DESTDIR=/usr/local/bin
CPIO=cpio-add cpio-filter cpio-sort cpio-diff cpio-list cpio-unpack
NBIC=nbic
PROGRAMS=$(NBIC) $(CPIO)

all:

install: all
	echo install $(PROGRAMS) $(DESTDIR)
