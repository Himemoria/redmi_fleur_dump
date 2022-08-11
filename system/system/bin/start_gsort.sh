#! /system/bin/sh

ddr_size=`cat /proc/mv | head -1 | cut -d " " -f 3`

if [ $ddr_size -eq 2 ];then
	echo ddr size=$ddr_size
	gsort --global_freq=1804800 --pattern_count=12 --pattern="0xffffffffffffffff-0x0000000000000000-0;0xAAAAAAAAAAAAAAAA-0x5555555555555555-0;0xEFDFBDDAEFDFBDDA-0x1020422510204225-0;0xfbfbfbfbfbfbfbfb-0x0202020202020202-0;0xFEFDFBF7FEFDFBF7-0x0102040801020408-0;0x6969696969696969-0x9696969696969696-0;0xffffffffffffffff-0x0000000000000000-0;0x0000000000000000-0xffffffffffffffff-0;0xAAAAAAAAAAAAAAAA-0x5555555555555555-0;0xEFDFBDDAEFDFBDDA-0x1020422510204225-0;0xfbfbfbfbfbfbfbfb-0x0202020202020202-0;0xFEFDFBF7FEFDFBF7-0x0102040801020408-0;"
elif [ $ddr_size -eq 3 ];then
	echo ddr size=$ddr_size
	gsort --global_freq=1804800 --pattern_count=8 --pattern="0xffffffffffffffff-0x0000000000000000-0;0xAAAAAAAAAAAAAAAA-0x5555555555555555-0;0xEFDFBDDAEFDFBDDA-0x1020422510204225-0;0xfbfbfbfbfbfbfbfb-0x0202020202020202-0;0xFEFDFBF7FEFDFBF7-0x0102040801020408-0;0x6969696969696969-0x9696969696969696-0;0xffffffffffffffff-0x0000000000000000-0;0x0000000000000000-0xffffffffffffffff-0;"
elif [ $ddr_size -eq 4 ];then
	echo ddr size=$ddr_size
	gsort --global_freq=1804800 --pattern_count=6 --pattern="0xffffffffffffffff-0x0000000000000000-0;0xAAAAAAAAAAAAAAAA-0x5555555555555555-0;0xEFDFBDDAEFDFBDDA-0x1020422510204225-0;0xfbfbfbfbfbfbfbfb-0x0202020202020202-0;0xFEFDFBF7FEFDFBF7-0x0102040801020408-0;0x6969696969696969-0x9696969696969696-0;"
elif [ $ddr_size -eq 6 ];then
	echo ddr size=$ddr_size
	gsort --global_freq=1804800 --pattern_count=4 --pattern="0xffffffffffffffff-0x0000000000000000-0;0xAAAAAAAAAAAAAAAA-0x5555555555555555-0;0xEFDFBDDAEFDFBDDA-0x1020422510204225-0;0xfbfbfbfbfbfbfbfb-0x0202020202020202-0;"
elif [ $ddr_size -ge 8 ];then
	echo ddr size=$ddr_size
	gsort --global_freq=1804800 --pattern_count=3 --pattern="0xffffffffffffffff-0x0000000000000000-0;0xAAAAAAAAAAAAAAAA-0x5555555555555555-0;0xEFDFBDDAEFDFBDDA-0x1020422510204225-0;"
fi

echo done
