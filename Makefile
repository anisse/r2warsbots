
all: bot bot2 rasm rasm2

bot:
	aarch64-linux-gnu-as bot.asm -o bot.elf
	aarch64-linux-gnu-objcopy -O binary bot.elf bot.bin
	rax2 -S < bot.bin > bot

run: all
	r2 -i script malloc://1024

rasm: bot.rasm
	rasm2 -f bot.rasm > rasm
	diff bot rasm

runrasm: rasm
	r2 -i script malloc://1024

bot2: bot2.asm
	aarch64-linux-gnu-as bot2.asm -o bot2.elf
	aarch64-linux-gnu-objcopy -O binary bot2.elf bot2.bin
	rax2 -S < bot2.bin > bot2

run2: bot2
	r2 -i script malloc://1024

rasm2: bot2.rasm
	rasm2 -f bot2.rasm > rasm2
	diff bot2 rasm2

runrasm2: rasm
	r2 -i script malloc://1024

