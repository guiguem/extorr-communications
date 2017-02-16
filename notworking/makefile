# To build the rga.exe program, invoke Microsoft nmake from a command
# shell as set up by the Visual Studio 2005 Command Prompt.
#
# Invoking "nmake" builds the rga.exe and bootfirm.exe programs.
#
# This makefile embeds the QpBox firmware, built separately, into
# the rga.exe executable.  This firmware binary is expected to be
# in a file named qpbox.l2 in directory ..\qpbox.



FIRMWARE = ..\qpbox\qpbox.l2
RGASOURCES = rga.cs controls.cs serial.cs download.cs plot.cs

all : rga.exe bootfirm.exe

rga.exe : $(RGASOURCES) $(FIRMWARE)
	csc /target:winexe /resource:$(FIRMWARE) /O $(RGASOURCES)


bootfirm.exe : bootfirm.cs download.cs $(FIRMWARE)
	csc /resource:$(FIRMWARE) bootfirm.cs download.cs

qpbox.l2 : ../qpbox/qpbox.l2
	cp ../qpbox/qpbox.l2 .

clean :
	-rm -f rga.exe
	-rm -f bootfirm.exe

.PHONY : clean all
