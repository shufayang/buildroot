cmd_scripts/kconfig/lxdialog/lxdialog := /usr/bin/gcc  -o scripts/kconfig/lxdialog/lxdialog scripts/kconfig/lxdialog/checklist.o scripts/kconfig/lxdialog/menubox.o scripts/kconfig/lxdialog/textbox.o scripts/kconfig/lxdialog/yesno.o scripts/kconfig/lxdialog/inputbox.o scripts/kconfig/lxdialog/util.o scripts/kconfig/lxdialog/lxdialog.o scripts/kconfig/lxdialog/msgbox.o -Wl,-Bsymbolic-functions -lncursesw -ltinfo 
