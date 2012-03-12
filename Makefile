all: stm32p103.bin lm3s811.bin

%.bin: %.elf
	arm-none-eabi-objcopy -Obinary $< $@

%.gen.s: %.ft
	awk '{ print ".byte ", length($$0); gsub(/\\/, "\\\\"); gsub(/"/, "\\\""); print ".ascii \"" $$0 "\""} END{print ".byte 255,\n.align 2, 0"}' < $< > $@

.s.o:
	arm-none-eabi-as -mcpu=cortex-m3 -o $@ $< 

stm32p103.o: CoreForth.s CoreForth.gen.s stm32p103ram.gen.s

lm3s811.o: CoreForth.s CoreForth.gen.s lm3s811ram.gen.s lm3s811.gen.s

lm3s811.o: lm3s811.s
	arm-none-eabi-as -mcpu=cortex-m3 -defsym USE_50MHZ=1 -o $@ $<

precomp.o: lm3s811.s CoreForth.gen.s lm3s811.gen.s
	arm-none-eabi-as -mcpu=cortex-m3 -defsym PRECOMPILE=1 -defsym USE_50MHZ=1 -o $@ $<

precomp_core.o: lm3s811.s CoreForth.gen.s lm3s811.gen.s
	arm-none-eabi-as -mcpu=cortex-m3 -defsym PRECOMPILE=1 -defsym PRECOMP_CORE=1 -o $@ $<

stm32p103.elf: stm32p103.o
	arm-none-eabi-ld $< -o $@ -Tstm32p103.ld

lm3s811.elf: lm3s811.o
	arm-none-eabi-ld $< -o $@ -Tlm3s811.ld

precomp.elf: precomp.o
	arm-none-eabi-ld $< -o $@ -Tlm3s811.ld

precomp_core.elf: precomp_core.o
	arm-none-eabi-ld $< -o $@ -Tlm3s811.ld

clean:
	rm -f *.elf *.bin *.o *.gen.s

run: lm3s811.elf
	qemu-system-arm -M lm3s811evb -serial stdio -kernel lm3s811.elf; stty sane

precomp: precomp.bin
	qemu-system-arm -M lm3s811evb -serial stdio -kernel precomp.elf > precomp.s; stty sane

precomp_core: precomp_core.bin
	qemu-system-arm -M lm3s811evb -serial stdio -kernel precomp_core.elf > precomp.s; stty sane
