cmd_libbb/makedev.o := /home/jee/linux/armv7/ll/buildroot/output/host/bin/arm-linux-gnueabihf-gcc -Wp,-MD,libbb/.makedev.o.d   -std=gnu99 -Iinclude -Ilibbb  -include include/autoconf.h -D_GNU_SOURCE -DNDEBUG -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64 -DBB_VER='"1.36.1"' -D_LARGEFILE_SOURCE -D_LARGEFILE64_SOURCE -D_FILE_OFFSET_BITS=64  -Os -g0 -D_FORTIFY_SOURCE=1 -Wall -Wshadow -Wwrite-strings -Wundef -Wstrict-prototypes -Wunused -Wunused-parameter -Wunused-function -Wunused-value -Wmissing-prototypes -Wmissing-declarations -Wno-format-security -Wdeclaration-after-statement -Wold-style-definition -finline-limit=0 -fno-builtin-strlen -fomit-frame-pointer -ffunction-sections -fdata-sections -fno-guess-branch-probability -funsigned-char -static-libgcc -falign-functions=1 -falign-jumps=1 -falign-labels=1 -falign-loops=1 -fno-unwind-tables -fno-asynchronous-unwind-tables -fno-builtin-printf -Os     -DKBUILD_BASENAME='"makedev"'  -DKBUILD_MODNAME='"makedev"' -c -o libbb/makedev.o libbb/makedev.c

deps_libbb/makedev.o := \
  libbb/makedev.c \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/stdc-predef.h \
  include/platform.h \
    $(wildcard include/config/werror.h) \
    $(wildcard include/config/big/endian.h) \
    $(wildcard include/config/little/endian.h) \
    $(wildcard include/config/nommu.h) \
  /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/lib/gcc/arm-linux-gnueabihf/4.9.4/include-fixed/limits.h \
  /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/lib/gcc/arm-linux-gnueabihf/4.9.4/include-fixed/syslimits.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/limits.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/features.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/sys/cdefs.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/wordsize.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/gnu/stubs.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/gnu/stubs-hard.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/posix1_lim.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/local_lim.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/linux/limits.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/posix2_lim.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/xopen_lim.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/stdio_lim.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/byteswap.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/byteswap.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/types.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/typesizes.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/byteswap-16.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/endian.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/endian.h \
  /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/lib/gcc/arm-linux-gnueabihf/4.9.4/include/stdint.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/stdint.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/wchar.h \
  /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/lib/gcc/arm-linux-gnueabihf/4.9.4/include/stdbool.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/unistd.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/posix_opt.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/environments.h \
  /usr/local/arm/gcc-linaro-4.9.4-2017.01-x86_64_arm-linux-gnueabihf/lib/gcc/arm-linux-gnueabihf/4.9.4/include/stddef.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/confname.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/getopt.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/bits/unistd.h \
  /home/jee/linux/armv7/ll/buildroot/output/host/arm-buildroot-linux-gnueabihf/sysroot/usr/include/sys/sysmacros.h \

libbb/makedev.o: $(deps_libbb/makedev.o)

$(deps_libbb/makedev.o):
