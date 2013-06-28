OUTPUT_FORMAT("elf32-littlearm", "elf32-bigarm", "elf32-littlearm")
OUTPUT_ARCH(arm)
ENTRY(reset_handler)

MEMORY
{
    FLASH (rx) : ORIGIN = 0x00000000, LENGTH = 0x00010000
    SRAM (rwx) : ORIGIN = 0x20000000, LENGTH = 0x00010000
}

SECTIONS
{
    .flash : {
        KEEP(*(interrupt_vector))
        *(.text)
        *(.text.*)
        *(.rodata)
        *(.rodata.*)
    } > FLASH

    .data : {
        *(.data)
        *(.data.*)
        *(.bss)
        *(.bss.*)
        free_ram_start = . ;
    } >SRAM AT> FLASH

    ram_top = 0x20000000 + 0x00010000 ;
    irq_stack_top = ram_top - 0x40;
}
