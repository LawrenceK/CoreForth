include ../generic/Makefile

GEN += stm32f100.gen.s stm32f100_ram.gen.s

precompiler.s: ../precompiler/board.s stm32f100_words.s $(GEN)
stm32f100_board.s: ../generic/CoreForth.s stm32f100_words.s precompiled_words.s $(GEN)

coreforth.elf: stm32f100_board.o
	arm-none-eabi-ld $< -Map coreforth.map -o $@ -Tstm32f100.ld
