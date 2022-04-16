def:
	xasm c3_loader_1blk.xsm -o c3_loader.boot
	rm -f "c3_loader.hex"
	rm -f "c3_loader.cas"
	./a8cas-util.pl conv c3_loader.boot c3_loader.hex

pg7:
	xasm c3_loader_pg7.xsm -o c3_loader.boot
	rm -f "c3_loader.hex"
	rm -f "c3_loader.cas"
	./a8cas-util.pl conv c3_loader.boot c3_loader.hex

cas:
	rm -f "c3_loader.cas"
	./a8cas-util.pl conv c3_loader.hex c3_loader.cas
	cp "c3_loader.cas" /media/sf_SF/
