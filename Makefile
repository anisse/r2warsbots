
all: bot1 bot2 bot3 bot4 bot5 bot6 rasm rasm2


%.bin: %.elf
	aarch64-linux-gnu-objcopy -O binary $< $@

%.elf: %.asm
	aarch64-linux-gnu-as $< -o $@

%-32.bin: %-32.elf
	arm-linux-gnu-objcopy -O binary $< $@

%-32.elf: %-32.asm
	arm-linux-gnu-as $< -o $@

bot%: bot%.bin
	rax2 -S < $< > $@

run%: bot%
	sed -e "s/bot./$</" script > script.gen
	r2 -i script.gen malloc://1024

run%-32: bot%-32
	sed -e "s/bot./$</" -e "s/bits = 64/bits = 32/" script > script.gen
	r2 -i script.gen malloc://1024

rasm%: bot%.rasm
	rasm2 -f $< > $@
	diff bot$* $<

bot%.rasm: bot%
	echo "# Anisse Astier" > $<.rasm
	echo ".arch arm" >> $<.rasm
	echo ".bits 64" >> $<.rasm
	cat $< | fold -w8 | sed -e 's/^/.hex /' >> $@

bot%-32.rasm: bot%
	echo "# Anisse Astier" > $<.rasm
	echo ".arch arm" >> $<.rasm
	echo ".bits 32" >> $<.rasm
	cat $< | fold -w8 | sed -e 's/^/.hex /' >> $@


# Not working
#runrasm%: rasm%
#	r2 -i script malloc://1024
