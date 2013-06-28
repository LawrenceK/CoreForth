
    defword "REGISTER", REGISTER, 0x0
    .word CREATE, COMMA, LPARENDOESGTRPAREN
    .set REGISTER_XT, .
    .word 0x47884900, DODOES + 1, FETCH, PLUS, EXIT

    defword "SET-BITS", SET_BITS, 0x0
    .word DUP, FETCH, ROT, OR, SWAP, STORE, EXIT

    defword "CLEAR-BITS", CLEAR_BITS, 0x0
    .word DUP, FETCH, ROT, INVERT, AND, SWAP, STORE, EXIT

    defconst "HIGH", HIGH, 0x1


    defconst "LOW", LOW, 0x0


    defconst "ENABLE", ENABLE, 0x1


    defconst "DISABLE", DISABLE, 0x0


    defconst "ON", ON, 0x1


    defconst "OFF", OFF, 0x0


    defconst "NVIC", NVIC, 0xE000E000


    defconst "RCC", RCC, 0x40021000


    defconst "RCC-CR", RCC_CR, 0x40021000


    defconst "RCC-CFGR", RCC_CFGR, 0x40021004


    defconst "RCC-CIR", RCC_CIR, 0x40021008


    defconst "RCC-APB2RSTR", RCC_APBTWORSTR, 0x4002100C


    defconst "RCC-APB1RSTR", RCC_APBONERSTR, 0x40021010


    defconst "RCC-AHBENR", RCC_AHBENR, 0x40021014


    defconst "RCC-APB2ENR", RCC_APBTWOENR, 0x40021018


    defconst "RCC-APB1ENR", RCC_APBONEENR, 0x4002101C


    defconst "RCC-BDCR", RCC_BDCR, 0x40021020


    defconst "RCC-CSR", RCC_CSR, 0x40021024


    defconst "RCC-AHBRSTR", RCC_AHBRSTR, 0x40021028


    defconst "RCC-CFGR2", RCC_CFGRTWO, 0x4002102C


    defconst "GPIOA", GPIOA, 0x40010800


    defconst "GPIOB", GPIOB, 0x40010C00


    defconst "GPIOC", GPIOC, 0x40011000


    defconst "GPIOD", GPIOD, 0x40011400


    defconst "GPIOE", GPIOE, 0x40011800


    defconst "GPIOF", GPIOF, 0x40011C00


    defconst "GPIOG", GPIOG, 0x40012000


    defword "GPIO-CRL", GPIO_CRL, 0x0, REGISTER_XT
    .word 0x0

    defword "GPIO-CRH", GPIO_CRH, 0x0, REGISTER_XT
    .word 0x4

    defword "GPIO-IDR", GPIO_IDR, 0x0, REGISTER_XT
    .word 0x8

    defword "GPIO-ODR", GPIO_ODR, 0x0, REGISTER_XT
    .word 0xC

    defword "GPIO-BSRR", GPIO_BSRR, 0x0, REGISTER_XT
    .word 0x10

    defword "GPIO-BRR", GPIO_BRR, 0x0, REGISTER_XT
    .word 0x14

    defword "GPIO-LCKR", GPIO_LCKR, 0x0, REGISTER_XT
    .word 0x18

    defconst "STCTRL", STCTRL, 0xE000E010


    defconst "STRELOAD", STRELOAD, 0xE000E014


    defconst "STCURRENT", STCURRENT, 0xE000E018


    defconst "I2C1", ITWOCONE, 0x40005400


    defconst "I2C2", ITWOCTWO, 0x40005800


    defword "I2C-CR1", ITWOC_CRONE, 0x0, REGISTER_XT
    .word 0x4

    defword "I2C-CR2", ITWOC_CRTWO, 0x0, REGISTER_XT
    .word 0x8

    defword "I2C-OAR1", ITWOC_OARONE, 0x0, REGISTER_XT
    .word 0xC

    defword "I2C-OAR2", ITWOC_OARTWO, 0x0, REGISTER_XT
    .word 0x10

    defword "I2C-SR1", ITWOC_SRONE, 0x0, REGISTER_XT
    .word 0x14

    defword "I2C-SR2", ITWOC_SRTWO, 0x0, REGISTER_XT
    .word 0x18

    defword "I2C-CCR", ITWOC_CCR, 0x0, REGISTER_XT
    .word 0x1C

    defword "I2C-TRISE", ITWOC_TRISE, 0x0, REGISTER_XT
    .word 0x20

    defconst "SPI1", SPIONE, 0x40013000


    defconst "SPI2", SPITWO, 0x40003800


    defword "SPI-CR1", SPI_CRONE, 0x0, REGISTER_XT
    .word 0x0

    defword "SPI-CR2", SPI_CRTWO, 0x0, REGISTER_XT
    .word 0x4

    defword "SPI-SR", SPI_SR, 0x0, REGISTER_XT
    .word 0x8

    defword "SPI-DR", SPI_DR, 0x0, REGISTER_XT
    .word 0xC

    defword "SPI-CRCPR", SPI_CRCPR, 0x0, REGISTER_XT
    .word 0x10

    defword "SPI-RXCRCPR", SPI_RXCRCPR, 0x0, REGISTER_XT
    .word 0x14

    defword "SPI-TXCRCPR", SPI_TXCRCPR, 0x0, REGISTER_XT
    .word 0x18

    defword "SPI-I2SCFGR", SPI_ITWOSCFGR, 0x0, REGISTER_XT
    .word 0x1C

    defword "SPI-I2SPR", SPI_ITWOSPR, 0x0, REGISTER_XT
    .word 0x20

    defword "APB-ENABLE", APB_ENABLE, 0x0
    .word LIT, 0x24000, RCC_APBONEENR, SET_BITS, LIT, 0x7D, RCC_APBTWOENR, SET_BITS, EXIT

    defword "LED0-ENABLE", LEDZ_ENABLE, 0x0
    .word GPIOC, GPIO_CRH, DUP, FETCH, LIT, 0xFFF0FFFF, AND, LIT, 0x50000, OR, SWAP, STORE, EXIT

    defword "LED0!", LEDZSTORE, 0x0
    .word CELLS, GPIOC, GPIO_BSRR, PLUS, LIT, 0x1000, SWAP, STORE, EXIT

    defword "SPI-ENABLE", SPI_ENABLE, 0x0
    .word LIT, 0x40000000, RCC_APBONEENR, SET_BITS, GPIOB, GPIO_CRH, DUP, FETCH, LIT, 0xFFFF, AND, LIT, 0xB4B30000, OR, SWAP, STORE, LIT, 0x4, SPITWO, SPI_CRTWO, STORE, LIT, 0x27C, SPITWO, SPI_CRONE, STORE, EXIT

    defword "SPI-CS!", SPI_CSSTORE, 0x0
    .word CELLS, NEGATE, GPIOB, GPIO_BRR, PLUS, LIT, 0x1000, SWAP, STORE, EXIT

    defword "SPI-RXNE?", SPI_RXNEQ, 0x0
    .word SPITWO, SPI_SR, FETCH, LIT, 0x1, AND, EXIT

    defword "SPI-TXNE?", SPI_TXNEQ, 0x0
    .word SPITWO, SPI_SR, FETCH, LIT, 0x2, AND, INVERT, EXIT

    defword "SPI-WAIT-RXNE", SPI_WAIT_RXNE, 0x0
    .word SPITWO, SPI_SR, DUP, FETCH, LIT, 0x1, AND, QBRANCH, 0xFFFFFFE8, DROP, EXIT

    defword "SPI-WAIT-TXE", SPI_WAIT_TXE, 0x0
    .word SPITWO, SPI_SR, DUP, FETCH, LIT, 0x2, AND, QBRANCH, 0xFFFFFFE8, DROP, EXIT

    defword "SPI-DR!@", SPI_DRSTOREFETCH, 0x0
    .word SPI_WAIT_TXE, SPITWO, SPI_DR, TUCK, STORE, SPI_WAIT_RXNE, FETCH, EXIT

    defword "SPI-DR!", SPI_DRSTORE, 0x0
    .word SPI_DRSTOREFETCH, DROP, EXIT

    defword "SPI-DR@", SPI_DRFETCH, 0x0
    .word SPI_WAIT_RXNE, SPITWO, SPI_DR, FETCH, EXIT

    defword "MMC-SPI-MODE", MMC_SPI_MODE, 0x0
    .word HIGH, SPI_CSSTORE, LIT, 0xA, LIT, 0x0, LPARENDORPAREN, LIT, 0xFF, SPI_DRSTORE, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFEC, LOW, SPI_CSSTORE, EXIT

    defword "MMC-CMD", MMC_CMD, 0x0
    .word SWAP, DUP, ZEQU, LIT, 0x94, AND, ONEPLUS, MINUSROT, LIT, 0x40, OR, SPI_DRSTORE, CHEW, SPI_DRSTORE, SPI_DRSTORE, SPI_DRSTORE, SPI_DRSTORE, SPI_DRSTORE, EXIT

    defword "MMC-RES-1", MMC_RES_ONE, 0x0
    .word LIT, 0xFF, DUP, SPI_DRSTOREFETCH, DUP, LIT, 0xFF, LTGT, QBRANCH, 0xFFFFFFE8, SWAP, DROP, EXIT

    defword "MMC-INIT", MMC_INIT, 0x0
    .word SPI_ENABLE, MMC_SPI_MODE, LIT, 0x0, LIT, 0x0, MMC_CMD, MMC_RES_ONE, DROP, LIT, 0x1, LIT, 0x0, MMC_CMD, MMC_RES_ONE, ZEQU, QBRANCH, 0xFFFFFFE0, EXIT

    defword "MMC-READ-BLK", MMC_READ_BLK, 0x0
    .word LIT, 0x200, MUL, LIT, 0x11, SWAP, MMC_CMD, MMC_RES_ONE, QBRANCH, 0x10, LIT, 0x0, EXIT, MMC_RES_ONE, LIT, 0xFE, LTGT, QBRANCH, 0x10, LIT, 0x0, EXIT, LIT, 0x200, LIT, 0x0, LPARENDORPAREN, DUP, LIT, 0xFF, SPI_DRSTOREFETCH, SWAP, CSTORE, ONEPLUS, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFDC, DROP, LIT, 0xFF, DUP, SPI_DRSTORE, SPI_DRSTORE, LIT, 0x200, EXIT

    defword "MMC-WRITE-BLK", MMC_WRITE_BLK, 0x0
    .word LIT, 0x200, MUL, LIT, 0x18, SWAP, MMC_CMD, MMC_RES_ONE, DROP, LIT, 0xFF, SPI_DRSTORE, LIT, 0xFE, SPI_DRSTORE, LIT, 0x200, LIT, 0x0, LPARENDORPAREN, DUP, CFETCH, SPI_DRSTORE, ONEPLUS, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFE8, DROP, LIT, 0xFF, DUP, SPI_DRSTORE, SPI_DRSTORE, LIT, 0xFF, SPI_DRSTOREFETCH, LIT, 0x1F, AND, LIT, 0x5, EQU, LIT, 0xFF, DUP, DUP, SPI_DRSTOREFETCH, EQU, QBRANCH, 0xFFFFFFEC, DROP, EXIT

    defword "((BLOCK))", LPARENLPARENBLOCKRPARENRPAREN, 0x0
    .word PAD, EXIT

    defword "(BLOCK)", LPARENBLOCKRPAREN, 0x0
    .word TWOMUL, TWODUP, MMC_READ_BLK, DROP, ONEPLUS, SWAP, LIT, 0x200, PLUS, SWAP, MMC_READ_BLK, DROP, EXIT

    defword "(UPDATE)", LPARENUPDATERPAREN, 0x0
    .word TWOMUL, TWODUP, MMC_WRITE_BLK, DROP, ONEPLUS, SWAP, LIT, 0x200, PLUS, SWAP, MMC_WRITE_BLK, DROP, EXIT

    defvar "SYSTICKS/TICK", SYSTICKSSLASHTICK, 0x4


    defvar "TICKS", TICKS, 0x4


    defword "SYSTICK-IRQ", SYSTICK_IRQ, 0x0
    .word LIT, 0x1, TICKS, PLUSSTORE, RETI

    defword "SYSTICK-ENABLE", SYSTICK_ENABLE, 0x0
    .word LIT, SYSTICK_IRQ, IVT, LIT, 0xE, CELLS, PLUS, STORE, LIT, 0x0, TICKS, STORE, SYSTICKSSLASHTICK, FETCH, STRELOAD, STORE, LIT, 0x7, STCTRL, STORE, EXIT

    defword "ANSI-SEQ[", ANSI_SEQLBRAC, 0x0
    .word CREATE, HERE, LIT, 0x0, CCOMMA, LIT, 0x1B, CCOMMA, LPARENDOESGTRPAREN
    .set ANSI_SEQLBRAC_XT, .
    .word 0x47884900, DODOES + 1, COUNT, TYPE, EXIT

    defword "]SEQ", RBRACSEQ, 0x0
    .word HERE, OVER, MINUS, ONEMINUS, SWAP, CSTORE, EXIT

    defword "(.XY)", LPARENDOTXYRPAREN, 0x0
    .word LTNUM, NUMS, NUMGT, TYPE, EXIT

    defword "AT-XY", AT_XY, 0x0
    .word BASE, FETCH, GTR, DECIMAL, LIT, 0x1B, EMIT, LIT, 0x5B, EMIT, ONEPLUS, LPARENDOTXYRPAREN, LIT, 0x3B, EMIT, ONEPLUS, LPARENDOTXYRPAREN, LIT, 0x48, EMIT, RGT, BASE, STORE, EXIT

    defword "!CURSOR", STORECURSOR, 0x0, ANSI_SEQLBRAC_XT
    .word 0x9371B02

    defword "@CURSOR", FETCHCURSOR, 0x0, ANSI_SEQLBRAC_XT
    .word 0x9381B02

    defword "CLS", CLS, 0x0, ANSI_SEQLBRAC_XT
    .word 0x325B1B0A, 0x315B1B4A, 0x948313B

    defword "CURSOR-UP", CURSOR_UP, 0x0, ANSI_SEQLBRAC_XT
    .word 0x415B1B03

    defword "CURSOR-DOWN", CURSOR_DOWN, 0x0, ANSI_SEQLBRAC_XT
    .word 0x425B1B03

    defword "CURSOR-RIGHT", CURSOR_RIGHT, 0x0, ANSI_SEQLBRAC_XT
    .word 0x435B1B03

    defword "CURSOR-LEFT", CURSOR_LEFT, 0x0, ANSI_SEQLBRAC_XT
    .word 0x445B1B03

    defword "CLR-EOL", CLR_EOL, 0x0, ANSI_SEQLBRAC_XT
    .word 0x305B1B04, 0x4E41094B

    defword "CLR-SOL", CLR_SOL, 0x0, ANSI_SEQLBRAC_XT
    .word 0x315B1B04, 0x4E41094B

    defword "CLR-LINE", CLR_LINE, 0x0, ANSI_SEQLBRAC_XT
    .word 0x325B1B04, 0x4F43084B

    defconst "KEY-UP", KEY_UP, 0x5B410000


    defconst "KEY-DOWN", KEY_DOWN, 0x5B420000


    defconst "KEY-LEFT", KEY_LEFT, 0x5B440000


    defconst "KEY-RIGHT", KEY_RIGHT, 0x5B430000


    defconst "KEY-HOME", KEY_HOME, 0x5B317E00


    defconst "KEY-END", KEY_END, 0x5B347E00


    defconst "KEY-INSERT", KEY_INSERT, 0x5B327E00


    defconst "KEY-DELETE", KEY_DELETE, 0x5B337E00


    defconst "KEY-PGUP", KEY_PGUP, 0x5B357E00


    defconst "KEY-PGDOWN", KEY_PGDOWN, 0x5B367E00


    defconst "KEY-BACKSPACE", KEY_BACKSPACE, 0x7F


    defword "ROTKEY", ROTKEY, 0x0
    .word OVER, ROTATE, ROT, OR, SWAP, LIT, 0x8, MINUS, EXIT

    defword "READWKEY", READWKEY, 0x0
    .word WAIT_KEY, READ_KEY, DUP, LIT, 0x1B, EQU, QBRANCH, 0xC0, DROP, LIT, 0x0, LIT, 0x18, WAIT_KEY, READ_KEY, DUP, LIT, 0x5B, EQU, QBRANCH, 0x60, ROTKEY, WAIT_KEY, READ_KEY, DUP, GTR, ROTKEY, RGT, DUP, LIT, 0x41, LIT, 0x5B, WITHIN, SWAP, LIT, 0x7E, EQU, OR, QBRANCH, 0xFFFFFFB8, DROP, BRANCH, 0x30, DUP, LIT, 0x4F, EQU, QBRANCH, 0x18, ROTKEY, WAIT_KEY, READ_KEY, ROTKEY, DROP, EXIT

    defword "TIB-TAIL", TIB_TAIL, 0x0
    .word GTTIB, FETCH, TIBNUM, FETCH, OVER, MINUS, SWAP, TIB, PLUS, SWAP, EXIT

    defword ".TIB-TAIL", DOTTIB_TAIL, 0x0
    .word CLR_EOL, STORECURSOR, TIB_TAIL, TYPE, FETCHCURSOR, EXIT

    defword "CURSOR>", CURSORGT, 0x0
    .word LIT, 0x1, GTTIB, PLUSSTORE, CURSOR_RIGHT, EXIT

    defword "CURSOR<", CURSORLT, 0x0
    .word LIT, 0x1, GTTIB, MINUSSTORE, CURSOR_LEFT, EXIT

    defword "INSERT", INSERT, 0x0
    .word TIB_TAIL, OVER, ONEPLUS, SWAP, CMOVEGT, LIT, 0x1, TIBNUM, PLUSSTORE, TIB, GTTIB, FETCH, PLUS, CSTORE, EXIT

    defword "DELETE", DELETE, 0x0
    .word LIT, 0x1, TIBNUM, MINUSSTORE, TIB_TAIL, OVER, ONEPLUS, MINUSROT, CMOVE, EXIT

    defword "-START?", MINUSSTARTQ, 0x0
    .word GTTIB, FETCH, ZGT, EXIT

    defword "-END?", MINUSENDQ, 0x0
    .word GTTIB, FETCH, TIBNUM, FETCH, LT, EXIT

    defword "-FULL?", MINUSFULLQ, 0x0
    .word TIBNUM, FETCH, NUMTIB, LT, EXIT

    defword "READLINE-CRSR", READLINE_CRSR, 0x0
    .word LIT, 0x0, TIBNUM, STORE, LIT, 0x0, GTTIB, STORE, KEY, DUP, LIT, 0x20, LIT, 0x7F, WITHIN, MINUSFULLQ, AND, QBRANCH, 0x18, INSERT, DOTTIB_TAIL, CURSORGT, BRANCH, 0x120, DUP, LIT, 0x7F, EQU, MINUSSTARTQ, AND, QBRANCH, 0x1C, DROP, CURSORLT, DELETE, DOTTIB_TAIL, BRANCH, 0xE8, DUP, LIT, 0x8, EQU, OVER, KEY_DELETE, EQU, OR, MINUSENDQ, AND, QBRANCH, 0x18, DROP, DELETE, DOTTIB_TAIL, BRANCH, 0xA4, DUP, LIT, 0xD, EQU, OVER, LIT, 0xA, EQU, OR, QBRANCH, 0x1C, DROP, TIBNUM, FETCH, EXIT, BRANCH, 0x60, DUP, KEY_RIGHT, EQU, MINUSENDQ, AND, QBRANCH, 0x14, DROP, CURSORGT, BRANCH, 0x34, DUP, KEY_LEFT, EQU, MINUSSTARTQ, AND, QBRANCH, 0x14, DROP, CURSORLT, BRANCH, 0x8, DROP, BRANCH, 0xFFFFFEA0, EXIT

    defword "ANSI-IO", ANSI_IO, 0x0
    .word LIT, READWKEY, TICKKEY, STORE, LIT, READLINE_CRSR, TICKACCEPT, STORE, EXIT

    defconst "C/L", CSLASHL, 0x40


    defvar "SCR", SCR, 0x4


    defvar "BLOCK#", BLOCKNUM, 0x4


    defvar "(BLOCK-DIRTY)", LPARENBLOCK_DIRTYRPAREN, 0x4


    defword "BLOCK-DIRTY?", BLOCK_DIRTYQ, 0x0
    .word LPARENBLOCK_DIRTYRPAREN, FETCH, EXIT

    defword "BLOCK-DIRTY", BLOCK_DIRTY, 0x0
    .word LIT, 0xFFFFFFFF, LPARENBLOCK_DIRTYRPAREN, STORE, EXIT

    defword "BLOCK-CLEAN", BLOCK_CLEAN, 0x0
    .word LIT, 0x0, LPARENBLOCK_DIRTYRPAREN, STORE, EXIT

    defword "UPDATE", UPDATE, 0x0
    .word BLOCK_DIRTYQ, QBRANCH, 0x18, LPARENLPARENBLOCKRPARENRPAREN, BLOCKNUM, FETCH, LPARENUPDATERPAREN, BLOCK_CLEAN, EXIT

    defword "BLOCK", BLOCK, 0x0
    .word LPARENLPARENBLOCKRPARENRPAREN, SWAP, DUP, BLOCKNUM, FETCH, LTGT, QBRANCH, 0x20, UPDATE, TWODUP, LPARENBLOCKRPAREN, BLOCKNUM, STORE, BRANCH, 0x8, DROP, EXIT

    defword "REVERT", REVERT, 0x0
    .word LPARENLPARENBLOCKRPARENRPAREN, BLOCKNUM, FETCH, LPARENBLOCKRPAREN, BLOCK_CLEAN, EXIT

    defword "(LINE-START)", LPARENLINE_STARTRPAREN, 0x0
    .word CSLASHL, ONEMINUS, INVERT, AND, EXIT

    defword "(LINE-END)", LPARENLINE_ENDRPAREN, 0x0
    .word CSLASHL, ONEMINUS, OR, EXIT

    defword ">BLK", GTBLK, 0x0
    .word LPARENLPARENBLOCKRPARENRPAREN, PLUS, EXIT

    defword "CLR-LAST-CHR", CLR_LAST_CHR, 0x0
    .word LPARENLINE_ENDRPAREN, GTBLK, BL, SWAP, CSTORE, BLOCK_DIRTY, EXIT

    defword ">TAIL-LENGTH", GTTAIL_LENGTH, 0x0
    .word CSLASHL, TUCK, ONEMINUS, AND, MINUS, EXIT

    defword ".TAIL", DOTTAIL, 0x0
    .word STORECURSOR, DUP, GTBLK, SWAP, GTTAIL_LENGTH, TYPE, FETCHCURSOR, EXIT

    defword "TAIL>", TAILGT, 0x0
    .word DUP, GTBLK, DUP, ONEPLUS, ROT, GTTAIL_LENGTH, ONEMINUS, CMOVEGT, BLOCK_DIRTY, EXIT

    defword "TAIL<", TAILLT, 0x0
    .word DUP, DUP, GTBLK, DUP, ONEPLUS, SWAP, ROT, GTTAIL_LENGTH, CMOVE, CLR_LAST_CHR, EXIT

    defword "LL", LL, 0x0
    .word LIT, 0x7C, TUCK, EMIT, SPACE, CSLASHL, MUL, SCR, FETCH, BLOCK, PLUS, CSLASHL, TYPE, SPACE, EMIT, EXIT

    defword "LIST", LIST, 0x0
    .word DUP, SCR, STORE, UDOT, LPARENSQUOTRPAREN, 0x63732004, 0x72, TYPE, CR, LIT, 0x0, DUP, LL, CR, ONEPLUS, DUP, LIT, 0x10, EQU, QBRANCH, 0xFFFFFFDC, DROP, EXIT

    defword "RE", RE, 0x0
    .word SCR, FETCH, EXIT

    defword "L", L, 0x0
    .word LIT, 0x0, DUP, AT_XY, RE, LIST, EXIT

    defword "B", B, 0x0
    .word LIT, 0xFFFFFFFF, SCR, PLUSSTORE, EXIT

    defword "N", N, 0x0
    .word LIT, 0x1, SCR, PLUSSTORE, EXIT

    defword "!XY", STOREXY, 0x0
    .word CSLASHBLK, ONEMINUS, AND, DUP, CSLASHL, SLASHMOD, ONEPLUS, SWAP, LIT, 0x2, PLUS, SWAP, AT_XY, EXIT

    defword "!CH", STORECH, 0x0
    .word DUP, TAILGT, TWODUP, GTBLK, CSTORE, DUP, DOTTAIL, BLOCK_DIRTY, EXIT

    defword "LINE-START", LINE_START, 0x0
    .word LPARENLINE_STARTRPAREN, GTBLK, EXIT

    defword "LINE-END", LINE_END, 0x0
    .word LINE_START, CSLASHL, PLUS, ONEMINUS, EXIT

    defword "BLANK-LINE", BLANK_LINE, 0x0
    .word LINE_START, CSLASHL, ONEMINUS, BLANK, BLOCK_DIRTY, EXIT

    defword "INS-LINE", INS_LINE, 0x0
    .word DUP, LINE_START, DUP, CSLASHL, PLUS, DUP, CSLASHBLK, GTBLK, SWAP, MINUS, CMOVEGT, BLANK_LINE, EXIT

    defword "REMOVE-LINE", REMOVE_LINE, 0x0
    .word LINE_START, DUP, CSLASHL, PLUS, SWAP, OVER, CSLASHBLK, GTBLK, SWAP, MINUS, CMOVE, BLOCK_DIRTY, EXIT

    defword "CLR-LAST-LINE", CLR_LAST_LINE, 0x0
    .word CSLASHL, CSLASHBLK, GTBLK, OVER, MINUS, SWAP, BLANK, BLOCK_DIRTY, EXIT

    defword "?CH", QCH, 0x0
    .word OVER, BL, MINUS, LIT, 0x5F, ULT, QBRANCH, 0x10, STORECH, ONEPLUS, EXIT, OVER, KEY_LEFT, EQU, QBRANCH, 0x8, ONEMINUS, OVER, KEY_RIGHT, EQU, QBRANCH, 0x8, ONEPLUS, OVER, KEY_UP, EQU, QBRANCH, 0xC, CSLASHL, MINUS, OVER, KEY_DOWN, EQU, QBRANCH, 0xC, CSLASHL, PLUS, OVER, KEY_HOME, EQU, QBRANCH, 0x14, CSLASHL, ONEMINUS, INVERT, AND, OVER, KEY_DELETE, EQU, QBRANCH, 0x14, DUP, TAILLT, DUP, DOTTAIL, OVER, KEY_BACKSPACE, EQU, QBRANCH, 0x1C, ONEMINUS, DUP, TAILLT, STOREXY, DUP, DOTTAIL, OVER, KEY_PGUP, EQU, QBRANCH, 0x1C, UPDATE, B, L, DROP, LIT, 0x0, OVER, KEY_PGDOWN, EQU, QBRANCH, 0x1C, UPDATE, N, L, DROP, LIT, 0x0, OVER, LIT, 0x4, EQU, QBRANCH, 0x18, DUP, REMOVE_LINE, CLR_LAST_LINE, L, LPARENLINE_STARTRPAREN, OVER, LIT, 0xE, EQU, QBRANCH, 0x10, DUP, INS_LINE, L, OVER, LIT, 0xB, EQU, QBRANCH, 0x14, DUP, BLANK_LINE, L, LPARENLINE_STARTRPAREN, OVER, LIT, 0x12, EQU, QBRANCH, 0x24, REVERT, LIT, 0x0, DUP, AT_XY, BLOCKNUM, FETCH, LIST, OVER, LIT, 0x9, EQU, QBRANCH, 0x24, LIT, 0x3, TUCK, PLUS, SWAP, TUCK, SLASH, MUL, OVER, LIT, 0xA, EQU, QBRANCH, 0x18, CSLASHL, TWODUP, MOD, MINUS, PLUS, EXIT

    defword "EDIT", EDIT, 0x0
    .word CLS, LIT, 0x0, DUP, AT_XY, LIST, LIT, 0x0, LIT, 0x3F, LIT, 0x0, AT_XY, BLOCK_DIRTYQ, LIT, 0x2A, AND, EMIT, STOREXY, KEY, SWAP, QCH, SWAP, LIT, 0x18, EQU, QBRANCH, 0xFFFFFFB4, UPDATE, DROP, L, EXIT

    defword "INIT-BLOCKS", INIT_BLOCKS, 0x0
    .word LIT, 0xFFFFFFFF, BLOCKNUM, STORE, BLOCK_CLEAN, EXIT

    defword "LOAD", LOAD, 0x0
    .word LIT, 0x0, STATE, STORE, CSLASHL, SOURCENUM, STORE, BLOCK, LPARENSOURCERPAREN, STORE, CSLASHBLK, CSLASHL, SLASH, LIT, 0x0, LPARENDORPAREN, LIT, 0x0, GTSOURCE, STORE, LPARENINTERPRETRPAREN, ZEQU, QBRANCH, 0x2C, LPARENSQUOTRPAREN, 0x72724513, 0x7020726F, 0x69737261, 0x6C20676E, 0x20656E69, TYPE, I, DOT, CR, DROP, CSLASHL, LPARENSOURCERPAREN, PLUSSTORE, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFA0, EXIT

    defword "THRU", THRU, 0x0
    .word SWAP, LPARENDORPAREN, I, LOAD, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFF0, EXIT

    defword "PT:", PTCOLON, 0x0
    .word CREATE, HERE, CELL, PLUS, COMMA, RBRAC, LPARENDOESGTRPAREN
    .set PTCOLON_XT, .
    .word 0x47884900, DODOES + 1, FETCH, GTR, EXIT

    defword ";PT", SEMIPT, 0x1
    .word LATEST, FETCH, LINKGT, GTBODY, DUP, CELL, PLUS, LITERAL, LITERAL, LIT, STORE, COMMAXT, LIT, EXIT, COMMAXT, LBRAC, REVEAL, EXIT

    defword "?YIELD", QYIELD, 0x1
    .word LIT, QBRANCH, COMMAXT, HERE, DUP, COMMA, SWAP, LITERAL, LATEST, FETCH, LINKGT, GTBODY, LITERAL, LIT, STORE, COMMAXT, LIT, EXIT, COMMAXT, HERE, OVER, MINUS, SWAP, STORE, EXIT

    defword "FOLLOWER", FOLLOWER, 0x0, USER_XT
    .word 0x0

    defword "STATUS", STATUS, 0x0, USER_XT
    .word 0xFFFFFFFC

    defword "TOS", TOS, 0x0, USER_XT
    .word 0xFFFFFFF8

    defword "WAKE-AT", WAKE_AT, 0x0, USER_XT
    .word 0xFFFFFFF4

    defconst "USER#", USERNUM, 0xC


    defword "TIMEOUT!", TIMEOUTSTORE, 0x0
    .word TICKS, FETCH, PLUS, WAKE_AT, STORE, EXIT

    defword "TIMEOUT@", TIMEOUTFETCH, 0x0
    .word TICKS, FETCH, WAKE_AT, FETCH, MINUS, EXIT

    defword "TIMEOUT?", TIMEOUTQ, 0x0
    .word TIMEOUTFETCH, ZGT, DUP, QBRANCH, 0x14, LIT, 0x0, WAKE_AT, STORE, EXIT

    defvar "LAST-AWAKE", LAST_AWAKE, 0x4


    defword "PAUSE", PAUSE, 0x0
    .word RPFETCH, SPFETCH, TOS, STORE, FOLLOWER, FETCH, GTR, EXIT

    defword "'U", TICKU, 0x0
    .word FOLLOWER, MINUS, PLUS, EXIT

    defword "(WAKE)", LPARENWAKERPAREN, 0x0
    .word RGT, UP, TWODUP, STORE, OVER, LAST_AWAKE, STORE, TOS, FETCH, SPSTORE, RPSTORE, EXIT

    defconst "WAKE", WAKE, LPARENWAKERPAREN


    defword "AWAKE", AWAKE, 0x0
    .word DUP, LAST_AWAKE, STORE, WAKE, SWAP, STATUS, TICKU, STORE, EXIT

    defword "(PASS)", LPARENPASSRPAREN, 0x0
    .word RGT, DUP, WAKE_AT, TICKU, FETCH, QDUP, QBRANCH, 0x20, TICKS, FETCH, LT, QBRANCH, 0xC, DUP, AWAKE, DUP, LAST_AWAKE, FETCH, EQU, QBRANCH, 0x8, WFI, FETCH, GTR, EXIT

    defconst "PASS", PASS, LPARENPASSRPAREN


    defword "STOP", STOP, 0x0
    .word PASS, STATUS, STORE, PAUSE, EXIT

    defword "SLEEP", SLEEP, 0x0
    .word PASS, SWAP, STATUS, TICKU, STORE, EXIT

    defword "ACTIVATE", ACTIVATE, 0x0
    .word DUP, SZ, TICKU, FETCH, CELL, MINUS, OVER, RZ, TICKU, FETCH, RGT, OVER, STORE, OVER, STORE, OVER, TOS, TICKU, STORE, AWAKE, EXIT

    defword "ALSOTASK", ALSOTASK, 0x0
    .word DUP, SLEEP, FOLLOWER, FETCH, OVER, FOLLOWER, TICKU, STORE, STATUS, TICKU, FOLLOWER, STORE, EXIT

    defword "ONLYTASK", ONLYTASK, 0x0
    .word DUP, SLEEP, DUP, STATUS, TICKU, SWAP, FOLLOWER, TICKU, STORE, EXIT

    defword "NEWTASK", NEWTASK, 0x0
    .word CREATE, SWAP, USERNUM, PLUS, CELL, PLUS, HERE, PLUS, DUP, COMMA, LIT, 0x0, COMMA, OVER, PLUS, COMMA, HERE, PASS, COMMA, COMMA, HERE, LIT, 0x2, CELLS, PLUS, COMMA, DUP, HERE, PLUS, COMMA, ALLOT, LPARENDOESGTRPAREN
    .set NEWTASK_XT, .
    .word 0x47884900, DODOES + 1, FETCH, EXIT

    defword ".TASK", DOTTASK, 0x0
    .word CR, DUP, LPARENSQUOTRPAREN, 0x3A44490A, 0x20202020, 0x202020, TYPE, DOT, CR, DUP, ANYGTLINK, LINKGTNAME, LPARENSQUOTRPAREN, 0x6D614E0A, 0x20203A65, 0x202020, TYPE, COUNT, TYPE, CR, DUP, SZ, TICKU, FETCH, OVER, RZ, TICKU, FETCH, LPARENSQUOTRPAREN, 0x6174530A, 0x3A736B63, 0x202020, TYPE, DOT, DOT, CR, DUP, STATUS, TICKU, FETCH, LPARENSQUOTRPAREN, 0x6174530A, 0x3A737574, 0x202020, TYPE, WAKE, EQU, QBRANCH, 0x1C, LPARENSQUOTRPAREN, 0x4B415704, 0x45, TYPE, BRANCH, 0x14, LPARENSQUOTRPAREN, 0x53415004, 0x53, TYPE, CR, DUP, FOLLOWER, TICKU, FETCH, LPARENSQUOTRPAREN, 0x6C6F460A, 0x65776F6C, 0x203A72, TYPE, CELL, PLUS, DOT, CR, DUP, WAKE_AT, TICKU, FETCH, LPARENSQUOTRPAREN, 0x6B61570A, 0x74612065, 0x20203A, TYPE, DOT, CR, TOS, TICKU, FETCH, LPARENSQUOTRPAREN, 0x534F540A, 0x2020203A, 0x202020, TYPE, DOT, CR, EXIT

    defword ".TASKS", DOTTASKS, 0x0
    .word UPFETCH, DUP, DOTTASK, FOLLOWER, TICKU, FETCH, CELL, PLUS, DUP, UPFETCH, EQU, QBRANCH, 0xFFFFFFD4, DROP, EXIT

    defword "STOP-FOR-KEY", STOP_FOR_KEY, 0x0
    .word KEYQ, ZEQU, QBRANCH, 0x10, STOP, BRANCH, 0xFFFFFFE8, EXIT

    defword "MULTITASKING-KEY", MULTITASKING_KEY, 0x0
    .word UPFETCH, UARTZ_TASK, STORE, LIT, STOP_FOR_KEY, TICKWAIT_KEY, STORE, EXIT

    defword "INTERPRET", INTERPRET, 0x0
    .word LIT, 0x0, STATE, STORE, TIB, LPARENSOURCERPAREN, STORE, LIT, 0x0, GTSOURCE, STORE, ACCEPT, SOURCENUM, STORE, SPACE, LPARENINTERPRETRPAREN, QBRANCH, 0x20, DROP, LPARENSQUOTRPAREN, 0x6B6F2004, 0x20, TYPE, BRANCH, 0x18, COUNT, TYPE, LIT, 0x3F, EMIT, CR, EXIT

    defword "QUIT", QUIT, 0x0
    .word INTERPRET, BRANCH, 0xFFFFFFF8, EXIT

    defword "ABORT", ABORT, 0x0
    .word LPARENSQUOTRPAREN, 0x726F4322, 0x726F4665, 0x72206874, 0x73697665, 0x206E6F69, 0x4E4E4E4E, 0x4E4E4E4E, 0x61657220, 0x2E7964, TYPE, CR, QUIT, EXIT

    defword "?ABORT", QABORT, 0x0
    .word ROT, QBRANCH, 0xC, TYPE, ABORT, TWODROP, EXIT
