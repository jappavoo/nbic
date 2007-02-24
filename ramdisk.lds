OUTPUT_ARCH(powerpc)
SECTIONS
{
	.data 0x1000000: {
		LONG(0xf0e1d2c3);
		LONG(ramdisk_end - ramdisk_start);
		ramdisk_start = .;
		ramdisk.cpio.elf
		ramdisk_end = .;
	 }
}
