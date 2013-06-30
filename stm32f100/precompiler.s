    .include "../precompiler/board.s"
    .include "stm32f100_definitions.s"
    .include "stm32f100_words.s"

precompile_words:
    .include "stm32f100.gen.s"
    .include "systick.gen.s"
    .include "ansi.gen.s"
    .include "editor.gen.s"
    .include "blocks.gen.s"
    .include "protothreads.gen.s"
    .include "multitasking.gen.s"
    .include "quit.gen.s"
    .word 0xffffffff

    .set last_word, link
    .set data_start, ram_here
