
    defword "REGISTER", REGISTER, 0x0
    .word CREATE, COMMA, LPARENDOESGTRPAREN
    .set REGISTER_XT, .
    .word 0x47884900, DODOES + 1, FETCH, PLUS, EXIT

    defword "SET-BITS", SET_BITS, 0x0
    .word DUP, FETCH, ROT, OR, SWAP, STORE, EXIT

    defword "CLEAR-BITS", CLEAR_BITS, 0x0
    .word DUP, FETCH, ROT, INVERT, AND, SWAP, STORE, EXIT

    defconst "NVIC", NVIC, 0xE000E000


    defconst "NVIC-SETENA0", NVIC_SETENAZ, 0xE000E100


    defconst "STCTRL", STCTRL, 0xE000E010


    defconst "STRELOAD", STRELOAD, 0xE000E014


    defconst "STCURRENT", STCURRENT, 0xE000E018


    defconst "SYSCTL", SYSCTL, 0x400FE000


    defconst "SYSCTL-DID0", SYSCTL_DIDZ, 0x400FE000


    defconst "SYSCTL-DID1", SYSCTL_DIDONE, 0x400FE004


    defconst "SYSCTL-RIS", SYSCTL_RIS, 0x400FE050


    defconst "SYSCTL-RCC", SYSCTL_RCC, 0x400FE060


    defconst "SYSCTL-RCGC0", SYSCTL_RCGCZ, 0x400FE100


    defconst "SYSCTL-RCGC1", SYSCTL_RCGCONE, 0x400FE104


    defconst "SYSCTL-RCGC2", SYSCTL_RCGCTWO, 0x400FE108


    defconst "GPIOA", GPIOA, 0x40004000


    defconst "GPIOB", GPIOB, 0x40005000


    defconst "GPIOC", GPIOC, 0x40006000


    defconst "GPIOD", GPIOD, 0x40007000


    defconst "GPIOE", GPIOE, 0x40024000


    defword "GPIO-DIR", GPIO_DIR, 0x0, REGISTER_XT
    .word 0x400

    defword "GPIO-AFSEL", GPIO_AFSEL, 0x0, REGISTER_XT
    .word 0x420

    defword "GPIO-IS", GPIO_IS, 0x0, REGISTER_XT
    .word 0x404

    defword "GPIO-IBE", GPIO_IBE, 0x0, REGISTER_XT
    .word 0x408

    defword "GPIO-IEV", GPIO_IEV, 0x0, REGISTER_XT
    .word 0x40C

    defword "GPIO-IM", GPIO_IM, 0x0, REGISTER_XT
    .word 0x410

    defword "GPIO-RIS", GPIO_RIS, 0x0, REGISTER_XT
    .word 0x414

    defword "GPIO-MIS", GPIO_MIS, 0x0, REGISTER_XT
    .word 0x418

    defword "GPIO-ICR", GPIO_ICR, 0x0, REGISTER_XT
    .word 0x41C

    defword "GPIO-DR2R", GPIO_DRTWOR, 0x0, REGISTER_XT
    .word 0x500

    defword "GPIO-ODR", GPIO_ODR, 0x0, REGISTER_XT
    .word 0x50C

    defword "GPIO-PUR", GPIO_PUR, 0x0, REGISTER_XT
    .word 0x510

    defword "GPIO-PDR", GPIO_PDR, 0x0, REGISTER_XT
    .word 0x514

    defword "GPIO-DEN", GPIO_DEN, 0x0, REGISTER_XT
    .word 0x51C

    defconst "UART0", UARTZ, 0x4000C000


    defword "UART-DR", UART_DR, 0x0, REGISTER_XT
    .word 0x0

    defword "UART-RSR-ECR", UART_RSR_ECR, 0x0, REGISTER_XT
    .word 0x4

    defword "UART-FR", UART_FR, 0x0, REGISTER_XT
    .word 0x18

    defword "UART-LPR", UART_LPR, 0x0, REGISTER_XT
    .word 0x20

    defword "UART-IBRD", UART_IBRD, 0x0, REGISTER_XT
    .word 0x24

    defword "UART-FBRD", UART_FBRD, 0x0, REGISTER_XT
    .word 0x28

    defword "UART-LCRH", UART_LCRH, 0x0, REGISTER_XT
    .word 0x2C

    defword "UART-CR", UART_CR, 0x0, REGISTER_XT
    .word 0x30

    defword "UART-IFLS", UART_IFLS, 0x0, REGISTER_XT
    .word 0x34

    defword "UART-IMSC", UART_IMSC, 0x0, REGISTER_XT
    .word 0x38

    defword "UART-RIS", UART_RIS, 0x0, REGISTER_XT
    .word 0x3C

    defword "UART-MIS", UART_MIS, 0x0, REGISTER_XT
    .word 0x40

    defword "UART-ICR", UART_ICR, 0x0, REGISTER_XT
    .word 0x44

    defword "UART-DMACR", UART_DMACR, 0x0, REGISTER_XT
    .word 0x48

    defconst "UART-RXFE", UART_RXFE, 0x10


    defconst "UART-TXFF", UART_TXFF, 0x20


    defconst "I2C", ITWOC, 0x40020000


    defconst "I2CMSA", ITWOCMSA, 0x40020000


    defconst "I2CMCS", ITWOCMCS, 0x40020004


    defconst "I2CMDR", ITWOCMDR, 0x40020008


    defconst "I2CMTPR", ITWOCMTPR, 0x4002000C


    defconst "I2CMIMR", ITWOCMIMR, 0x40020010


    defconst "I2CMRIS", ITWOCMRIS, 0x40020014


    defconst "I2CMMIS", ITWOCMMIS, 0x40020018


    defconst "I2CMICR", ITWOCMICR, 0x4002001C


    defconst "I2CMCR", ITWOCMCR, 0x40020020


    defconst "I2CSOAR", ITWOCSOAR, 0x40020800


    defconst "I2CSCSR", ITWOCSCSR, 0x40020804


    defconst "I2CSDR", ITWOCSDR, 0x40020808


    defconst "I2CSIMR", ITWOCSIMR, 0x4002080C


    defconst "I2CSRIS", ITWOCSRIS, 0x40020810


    defconst "I2CSMIS", ITWOCSMIS, 0x40020814


    defconst "I2CSICR", ITWOCSICR, 0x40020818


    defconst "TIMER0", TIMERZ, 0x40030000


    defconst "TIMER1", TIMERONE, 0x40031000


    defconst "TIMER2", TIMERTWO, 0x40032000


    defword "GPTMCFG", GPTMCFG, 0x0, REGISTER_XT
    .word 0x0

    defword "GPTMTAMR", GPTMTAMR, 0x0, REGISTER_XT
    .word 0x4

    defword "GPTMTBMR", GPTMTBMR, 0x0, REGISTER_XT
    .word 0x8

    defword "GPTMCTL", GPTMCTL, 0x0, REGISTER_XT
    .word 0xC

    defword "GPTMMIR", GPTMMIR, 0x0, REGISTER_XT
    .word 0x18

    defword "GPTMRIS", GPTMRIS, 0x0, REGISTER_XT
    .word 0x1C

    defword "GPTMMIS", GPTMMIS, 0x0, REGISTER_XT
    .word 0x20

    defword "GPTMICR", GPTMICR, 0x0, REGISTER_XT
    .word 0x24

    defword "GPTMTAILR", GPTMTAILR, 0x0, REGISTER_XT
    .word 0x28

    defword "GPTMTBILR", GPTMTBILR, 0x0, REGISTER_XT
    .word 0x2C

    defword "GPTMTAMATCHR", GPTMTAMATCHR, 0x0, REGISTER_XT
    .word 0x30

    defword "GPTMTBMATCHR", GPTMTBMATCHR, 0x0, REGISTER_XT
    .word 0x34

    defword "GPTMTAPR", GPTMTAPR, 0x0, REGISTER_XT
    .word 0x38

    defword "GPTMTBPR", GPTMTBPR, 0x0, REGISTER_XT
    .word 0x3C

    defword "GPTMTAPMR", GPTMTAPMR, 0x0, REGISTER_XT
    .word 0x40

    defword "GPTMTBPMR", GPTMTBPMR, 0x0, REGISTER_XT
    .word 0x44

    defword "GPTMTAR", GPTMTAR, 0x0, REGISTER_XT
    .word 0x48

    defword "GPTMTBR", GPTMTBR, 0x0, REGISTER_XT
    .word 0x4C

    defconst "ADC", ADC, 0x40038000


    defconst "ADCACTSS", ADCACTSS, 0x40038000


    defconst "ADCRIS", ADCRIS, 0x40038004


    defconst "ADCIM", ADCIM, 0x40038008


    defconst "ADCISC", ADCISC, 0x4003800C


    defconst "ADCOSTAT", ADCOSTAT, 0x40038010


    defconst "ADCEMUX", ADCEMUX, 0x40038014


    defconst "ADCUSTAT", ADCUSTAT, 0x40038018


    defconst "ADCSSPRI", ADCSSPRI, 0x40038020


    defconst "ADCPSSI", ADCPSSI, 0x40038028


    defconst "ADCSAC", ADCSAC, 0x40038030


    defconst "ADCSSMUX0", ADCSSMUXZ, 0x40038040


    defconst "ADCSSCTL0", ADCSSCTLZ, 0x40038044


    defconst "ADCSSFIFO0", ADCSSFIFOZ, 0x40038048


    defconst "ADCSSFSTAT0", ADCSSFSTATZ, 0x4003804C


    defconst "ADCSSMUX1", ADCSSMUXONE, 0x40038060


    defconst "ADCSSCTL1", ADCSSCTLONE, 0x40038064


    defconst "ADCSSFIFO1", ADCSSFIFOONE, 0x40038068


    defconst "ADCSSFSTAT1", ADCSSFSTATONE, 0x4003806C


    defconst "ADCSSMUX2", ADCSSMUXTWO, 0x40038080


    defconst "ADCSSCTL2", ADCSSCTLTWO, 0x40038084


    defconst "ADCSSFIFO2", ADCSSFIFOTWO, 0x40038088


    defconst "ADCSSFSTAT2", ADCSSFSTATTWO, 0x4003808C


    defconst "ADCSSMUX3", ADCSSMUX3, 0x400380A0


    defconst "ADCSSCTL3", ADCSSCTL3, 0x400380A4


    defconst "ADCSSFIFO3", ADCSSFIFO3, 0x400380A8


    defconst "ADCSSFSTAT3", ADCSSFSTAT3, 0x400380AC


    defconst "ADCTMLB", ADCTMLB, 0x40038100


    defconst "SSI", SSI, 0x40008000


    defconst "SSI-CR0", SSI_CRZ, 0x40008000


    defconst "SSI-CR1", SSI_CRONE, 0x40008004


    defconst "SSI-DR", SSI_DR, 0x40008008


    defconst "SSI-SR", SSI_SR, 0x4000800C


    defconst "SSI-CPSR", SSI_CPSR, 0x40008010


    defconst "SSI-IM", SSI_IM, 0x40008014


    defconst "SSI-RIS", SSI_RIS, 0x40008018


    defconst "SSI-MIS", SSI_MIS, 0x4000801C


    defconst "SSI-ICR", SSI_ICR, 0x40008020


    defword "BUTTON0-IRQ", BUTTONZ_IRQ, 0x0
    .word LIT, 0x10, GPIOC, GPIO_ICR, CSTORE, LIT, 0xFF, PAD, STORE, RETI

    defword "BUTTON0-ENABLE", BUTTONZ_ENABLE, 0x0
    .word LIT, 0x4, NVIC_SETENAZ, SET_BITS, LIT, BUTTONZ_IRQ, IVT, LIT, 0x11, CELLS, PLUS, STORE, LIT, 0x10, GPIOC, GPIO_IM, SET_BITS, EXIT

    defvar "(I2C-DELAY)", LPARENITWOC_DELAYRPAREN, 0x4


    defword "I2CM-ENABLE", ITWOCM_ENABLE, 0x0
    .word LIT, 0xC, GPIOB, GPIO_AFSEL, SET_BITS, LIT, 0xC, GPIOB, GPIO_ODR, SET_BITS, LIT, 0xC, GPIOB, GPIO_PUR, SET_BITS, LIT, 0xC, GPIOB, GPIO_PDR, CLEAR_BITS, LIT, 0xC, GPIOB, GPIO_DEN, SET_BITS, LIT, 0x10, ITWOCMCR, SET_BITS, LIT, 0x8, LPARENITWOC_DELAYRPAREN, STORE, LIT, 0x2, ITWOCMTPR, CSTORE, EXIT

    defword "I2CS-ENABLE", ITWOCS_ENABLE, 0x0
    .word LIT, 0x20, ITWOCMCR, SET_BITS, LIT, 0x1, ITWOCSCSR, SET_BITS, LIT, 0x3C, ITWOCSOAR, CSTORE, EXIT

    defword "I2C-LOOPBACK", ITWOC_LOOPBACK, 0x0
    .word ITWOCM_ENABLE, ITWOCS_ENABLE, LIT, 0x1, ITWOCMCR, SET_BITS, LIT, 0x3C, TWOMUL, ITWOCMSA, CSTORE, EXIT

    defword "I2CM-SINGLE-SEND", ITWOCM_SINGLE_SEND, 0x0
    .word LIT, 0x7, ITWOCMCS, CSTORE, EXIT

    defword "I2CM-SEND-START", ITWOCM_SEND_START, 0x0
    .word LIT, 0x3, ITWOCMCS, CSTORE, EXIT

    defword "I2CM-SEND-RUN", ITWOCM_SEND_RUN, 0x0
    .word LIT, 0x1, ITWOCMCS, CSTORE, EXIT

    defword "I2CM-SEND-STOP", ITWOCM_SEND_STOP, 0x0
    .word LIT, 0x5, ITWOCMCS, CSTORE, EXIT

    defword "I2CM!", ITWOCMSTORE, 0x0
    .word ITWOCMDR, CSTORE, EXIT

    defword "I2CS@", ITWOCSFETCH, 0x0
    .word ITWOCSDR, CFETCH, EXIT

    defword "I2C-DELAY", ITWOC_DELAY, 0x0
    .word LPARENITWOC_DELAYRPAREN, FETCH, ONEMINUS, DUP, ZEQU, QBRANCH, 0xFFFFFFF0, DROP, EXIT

    defword "(I2CM-SINGLE-SEQ!)", LPARENITWOCM_SINGLE_SEQSTORERPAREN, 0x0
    .word DUP, CFETCH, LIT, 0x1, LPARENDORPAREN, DUP, I, PLUS, CFETCH, ITWOCMSTORE, I, LIT, 0x1, EQU, LIT, 0x2, AND, LIT, 0x1, OR, ITWOCMCS, CSTORE, ITWOC_DELAY, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFB0, DUP, CFETCH, PLUS, DUP, CFETCH, ITWOCMSTORE, SWAP, ITWOCMCS, CSTORE, ITWOC_DELAY, ONEPLUS, EXIT

    defword "I2CM-SINGLE-SEQ-START!", ITWOCM_SINGLE_SEQ_STARTSTORE, 0x0
    .word LIT, 0x1, SWAP, LPARENITWOCM_SINGLE_SEQSTORERPAREN, EXIT

    defword "I2CM-SINGLE-SEQ!", ITWOCM_SINGLE_SEQSTORE, 0x0
    .word LIT, 0x5, SWAP, LPARENITWOCM_SINGLE_SEQSTORERPAREN, EXIT

    defword "I2CM-SEQ!", ITWOCM_SEQSTORE, 0x0
    .word DUP, CFETCH, SWAP, ONEPLUS, SWAP, ONEPLUS, LIT, 0x1, LPARENDORPAREN, ITWOCM_SINGLE_SEQSTORE, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFF4, DROP, EXIT

    defword "POT-ENABLE", POT_ENABLE, 0x0
    .word LIT, 0x8, ADCACTSS, CSTORE, EXIT

    defword "POT@", POTFETCH, 0x0
    .word LIT, 0x8, ADCPSSI, CSTORE, ADCSSFIFO3, FETCH, EXIT

    defdata "DISP-INIT-SEQ", DISP_INIT_SEQ
    .word 0xAE800213, 0x2048002, 0x80041280, 0x22B8081, 0x8002A180, 0xD3800440, 0x80040080, 0x20F80A8, 0x8002A480, 0xB08002A6, 0x4C88002, 0x7280D580, 0x80D88004, 0xD9800400, 0x80042280, 0x41280DA, 0xF80DB80, 0x80AD8004, 0xAF80028B

    defdata "DISP-SELECT-ROW0", DISP_SELECT_ROWZ
    .word 0x80B08007, 0x40128004

    defdata "DISP-SELECT-ROW1", DISP_SELECT_ROWONE
    .word 0x80B18007, 0x40128004

    defword "DISP-ENABLE", DISP_ENABLE, 0x0
    .word ITWOCM_ENABLE, LIT, 0x3D, TWOMUL, ITWOCMSA, CSTORE, LIT, 0x16, LPARENITWOC_DELAYRPAREN, STORE, DISP_INIT_SEQ, ITWOCM_SEQSTORE, LIT, 0x8, LPARENITWOC_DELAYRPAREN, STORE, EXIT

    defword "DISP-FILL-ROW", DISP_FILL_ROW, 0x0
    .word ITWOCM_SINGLE_SEQ_STARTSTORE, DROP, LIT, 0x96, LIT, 0x0, LPARENDORPAREN, DUP, ITWOCMSTORE, ITWOCM_SEND_RUN, ITWOC_DELAY, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFE8, ITWOCMSTORE, ITWOCM_SEND_STOP, ITWOC_DELAY, EXIT

    defword "DISP-FILL", DISP_FILL, 0x0
    .word DUP, DISP_SELECT_ROWZ, DISP_FILL_ROW, DISP_SELECT_ROWONE, DISP_FILL_ROW, EXIT

    defword "DISP-SET", DISP_SET, 0x0
    .word LIT, 0xFF, DISP_FILL, EXIT

    defword "DISP-CLEAR", DISP_CLEAR, 0x0
    .word LIT, 0x0, DISP_FILL, EXIT

    defword "DISP-MOVE", DISP_MOVE, 0x0
    .word LIT, 0x80, ITWOCMSTORE, ITWOCM_SEND_START, ITWOC_DELAY, LIT, 0xB0, PLUS, ITWOCMSTORE, ITWOCM_SEND_RUN, ITWOC_DELAY, LIT, 0x80, ITWOCMSTORE, ITWOCM_SEND_RUN, ITWOC_DELAY, LIT, 0x4, PLUS, DUP, LIT, 0xF, AND, ITWOCMSTORE, ITWOCM_SEND_RUN, ITWOC_DELAY, LIT, 0x80, ITWOCMSTORE, ITWOCM_SEND_RUN, ITWOC_DELAY, TWOSLASH, TWOSLASH, TWOSLASH, TWOSLASH, LIT, 0xF, AND, LIT, 0x10, OR, ITWOCMSTORE, ITWOCM_SEND_STOP, ITWOC_DELAY, EXIT

    defword "DISP-EMIT", DISP_EMIT, 0x0
    .word LIT, 0x40, ITWOCMSTORE, ITWOCM_SEND_START, ITWOC_DELAY, LIT, 0x20, MINUS, LIT, 0x5, MUL, DISP_FONT, PLUS, LIT, 0x5, LIT, 0x0, LPARENDORPAREN, DUP, I, PLUS, CFETCH, ITWOCMSTORE, ITWOCM_SEND_RUN, ITWOC_DELAY, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFDC, DROP, LIT, 0x0, ITWOCMSTORE, ITWOCM_SEND_STOP, ITWOC_DELAY, EXIT

    defword "DISP-TYPE", DISP_TYPE, 0x0
    .word LIT, 0x0, LPARENDORPAREN, DUP, I, PLUS, CFETCH, DISP_EMIT, LPARENLOOPRPAREN, QBRANCH, 0xFFFFFFE4, DROP, EXIT

    defword "SSIM-ENABLE", SSIM_ENABLE, 0x0
    .word GPIOA, GPIO_AFSEL, DUP, FETCH, LIT, 0x3C, OR, SWAP, STORE, LIT, 0x0, SSI_CRONE, STORE, LIT, 0x2, SSI_CPSR, STORE, LIT, 0xF907, SSI_CRZ, STORE, LIT, 0x2, SSI_CRONE, STORE, EXIT

    defword "DISK-NAME", DISK_NAME, 0x0
    .word LPARENSQUOTRPAREN, 0x73696409, 0x6D692E6B, 0x67, EXIT

    defword "DISK-OPEN", DISK_OPEN, 0x0
    .word DISK_NAME, DROP, LIT, 0x2, FOPEN, EXIT

    defword "DISK-READ-BLK", DISK_READ_BLK, 0x0
    .word DISK_OPEN, DUP, ROT, CSLASHBLK, MUL, FSEEK, DROP, TUCK, SWAP, CSLASHBLK, FREAD, DROP, FCLOSE, DROP, EXIT

    defword "DISK-WRITE-BLK", DISK_WRITE_BLK, 0x0
    .word DISK_OPEN, DUP, ROT, CSLASHBLK, MUL, FSEEK, DROP, TUCK, SWAP, CSLASHBLK, FWRITE, DROP, FCLOSE, DROP, EXIT

    defvar "((BLOCK))", LPARENLPARENBLOCKRPARENRPAREN, 0x400


    defword "(BLOCK)", LPARENBLOCKRPAREN, 0x0
    .word DISK_READ_BLK, EXIT

    defword "(UPDATE)", LPARENUPDATERPAREN, 0x0
    .word DISK_WRITE_BLK, EXIT

    defword "PLL-50HZ", PLL_5ZHZ, 0x0
    .word SYSCTL_RCC, DUP, DUP, FETCH, LIT, 0xF83FFFFF, AND, LIT, 0x800, OR, SWAP, STORE, DUP, DUP, FETCH, LIT, 0xFFFFCFCF, AND, SWAP, STORE, DUP, FETCH, LIT, 0xF87FFC3F, AND, LIT, 0x1C002C0, OR, SWAP, STORE, SYSCTL_RIS, DUP, FETCH, LIT, 0x40, AND, QBRANCH, 0xFFFFFFE8, DROP, EXIT

    defword "USE-PLL", USE_PLL, 0x0
    .word SYSCTL_RCC, DUP, FETCH, LIT, 0xFFFF7FF, AND, SWAP, STORE, EXIT

    defword "UART0-DISABLE", UARTZ_DISABLE, 0x0
    .word LIT, 0x0, UARTZ, UART_CR, STORE, EXIT

    defword "UART0-ENABLE", UARTZ_ENABLE, 0x0
    .word LIT, 0x301, UARTZ, UART_CR, STORE, EXIT

    defword "UART0-BRR!", UARTZ_BRRSTORE, 0x0
    .word UARTZ, UART_FBRD, STORE, UARTZ, UART_IBRD, STORE, EXIT

    defword "UART0-BRR@", UARTZ_BRRFETCH, 0x0
    .word UARTZ, UART_IBRD, FETCH, UARTZ, UART_FBRD, FETCH, EXIT

    defword "LED0-ENABLE", LEDZ_ENABLE, 0x0
    .word LIT, 0x20, GPIOC, GPIO_DIR, SET_BITS, EXIT

    defword "LED0!", LEDZSTORE, 0x0
    .word LIT, 0x1, EQU, LIT, 0x20, AND, LIT, 0x20, GPIOC, GPIO_DATASTORE, EXIT

    defword "ANSI-ESC-START", ANSI_ESC_START, 0x0
    .word LIT, 0x1B, EMIT, LIT, 0x5B, EMIT, EXIT

    defword "AT-XY", AT_XY, 0x0
    .word ANSI_ESC_START, ONEPLUS, DOTD, LIT, 0x3B, EMIT, ONEPLUS, DOTD, LIT, 0x48, EMIT, EXIT

    defword "!CURSOR", STORECURSOR, 0x0
    .word LIT, 0x1B, EMIT, LIT, 0x37, EMIT, EXIT

    defword "@CURSOR", FETCHCURSOR, 0x0
    .word LIT, 0x1B, EMIT, LIT, 0x38, EMIT, EXIT

    defword "CLS", CLS, 0x0
    .word ANSI_ESC_START, LIT, 0x32, EMIT, LIT, 0x4A, EMIT, LIT, 0x0, LIT, 0x0, AT_XY, EXIT

    defword "CURSOR-UP", CURSOR_UP, 0x0
    .word ANSI_ESC_START, LIT, 0x41, EMIT, EXIT

    defword "CURSOR-DOWN", CURSOR_DOWN, 0x0
    .word ANSI_ESC_START, LIT, 0x42, EMIT, EXIT

    defword "CURSOR-RIGHT", CURSOR_RIGHT, 0x0
    .word ANSI_ESC_START, LIT, 0x43, EMIT, EXIT

    defword "CURSOR-LEFT", CURSOR_LEFT, 0x0
    .word ANSI_ESC_START, LIT, 0x44, EMIT, EXIT

    defword "CLR-EOL", CLR_EOL, 0x0
    .word ANSI_ESC_START, LIT, 0x30, EMIT, LIT, 0x4B, EMIT, EXIT

    defword "CLR-SOL", CLR_SOL, 0x0
    .word ANSI_ESC_START, LIT, 0x31, EMIT, LIT, 0x4B, EMIT, EXIT

    defword "CLR-LINE", CLR_LINE, 0x0
    .word ANSI_ESC_START, LIT, 0x32, EMIT, LIT, 0x4B, EMIT, EXIT

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


    defword "BLOCK", BLOCK, 0x0
    .word LPARENLPARENBLOCKRPARENRPAREN, SWAP, DUP, BLOCKNUM, FETCH, LTGT, QBRANCH, 0x1C, TWODUP, LPARENBLOCKRPAREN, BLOCKNUM, STORE, BRANCH, 0x8, DROP, EXIT

    defword "UPDATE", UPDATE, 0x0
    .word LPARENLPARENBLOCKRPARENRPAREN, BLOCKNUM, FETCH, LPARENUPDATERPAREN, EXIT

    defword "(LINE-START)", LPARENLINE_STARTRPAREN, 0x0
    .word CSLASHL, ONEMINUS, INVERT, AND, EXIT

    defword "(LINE-END)", LPARENLINE_ENDRPAREN, 0x0
    .word CSLASHL, ONEMINUS, OR, EXIT

    defword ">BLK", GTBLK, 0x0
    .word LPARENLPARENBLOCKRPARENRPAREN, PLUS, EXIT

    defword "CLR-LAST-CHR", CLR_LAST_CHR, 0x0
    .word LPARENLINE_ENDRPAREN, GTBLK, BL, SWAP, CSTORE, EXIT

    defword ">TAIL-LENGTH", GTTAIL_LENGTH, 0x0
    .word CSLASHL, TUCK, ONEMINUS, AND, MINUS, EXIT

    defword ".TAIL", DOTTAIL, 0x0
    .word STORECURSOR, DUP, GTBLK, SWAP, GTTAIL_LENGTH, TYPE, FETCHCURSOR, EXIT

    defword "TAIL>", TAILGT, 0x0
    .word DUP, GTBLK, DUP, ONEPLUS, ROT, GTTAIL_LENGTH, ONEMINUS, CMOVEGT, EXIT

    defword "TAIL<", TAILLT, 0x0
    .word DUP, DUP, GTBLK, DUP, ONEPLUS, SWAP, ROT, GTTAIL_LENGTH, CMOVE, CLR_LAST_CHR, EXIT

    defword "LL", LL, 0x0
    .word LIT, 0x7C, TUCK, EMIT, SPACE, CSLASHL, MUL, SCR, FETCH, BLOCK, PLUS, CSLASHL, TYPE, SPACE, EMIT, EXIT

    defword "LIST", LIST, 0x0
    .word DUP, SCR, STORE, DOTD, LPARENSQUOTRPAREN, 0x63732004, 0x72, TYPE, CR, LIT, 0x0, DUP, LL, CR, ONEPLUS, DUP, LIT, 0x10, EQU, QBRANCH, 0xFFFFFFDC, DROP, EXIT

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
    .word DUP, TAILGT, TWODUP, GTBLK, CSTORE, DUP, DOTTAIL, EXIT

    defword "LINE-START", LINE_START, 0x0
    .word LPARENLINE_STARTRPAREN, GTBLK, EXIT

    defword "LINE-END", LINE_END, 0x0
    .word LINE_START, CSLASHL, PLUS, ONEMINUS, EXIT

    defword "BLANK-LINE", BLANK_LINE, 0x0
    .word LINE_START, CSLASHL, ONEMINUS, BLANK, EXIT

    defword "INS-LINE", INS_LINE, 0x0
    .word DUP, LINE_START, DUP, CSLASHL, PLUS, DUP, CSLASHBLK, GTBLK, SWAP, MINUS, CMOVEGT, BLANK_LINE, EXIT

    defword "REMOVE-LINE", REMOVE_LINE, 0x0
    .word LINE_START, DUP, CSLASHL, PLUS, SWAP, OVER, CSLASHBLK, GTBLK, SWAP, MINUS, CMOVE, EXIT

    defword "CLR-LAST-LINE", CLR_LAST_LINE, 0x0
    .word CSLASHL, CSLASHBLK, GTBLK, OVER, MINUS, SWAP, BLANK, EXIT

    defword "?CH", QCH, 0x0
    .word OVER, BL, MINUS, LIT, 0x5F, ULT, QBRANCH, 0x10, STORECH, ONEPLUS, EXIT, OVER, KEY_LEFT, EQU, QBRANCH, 0x8, ONEMINUS, OVER, KEY_RIGHT, EQU, QBRANCH, 0x8, ONEPLUS, OVER, KEY_UP, EQU, QBRANCH, 0xC, CSLASHL, MINUS, OVER, KEY_DOWN, EQU, QBRANCH, 0xC, CSLASHL, PLUS, OVER, KEY_HOME, EQU, QBRANCH, 0x14, CSLASHL, ONEMINUS, INVERT, AND, OVER, KEY_DELETE, EQU, QBRANCH, 0x14, DUP, TAILLT, DUP, DOTTAIL, OVER, KEY_BACKSPACE, EQU, QBRANCH, 0x1C, ONEMINUS, DUP, TAILLT, STOREXY, DUP, DOTTAIL, OVER, KEY_PGUP, EQU, QBRANCH, 0x1C, UPDATE, B, L, DROP, LIT, 0x0, OVER, KEY_PGDOWN, EQU, QBRANCH, 0x1C, UPDATE, N, L, DROP, LIT, 0x0, OVER, LIT, 0x4, EQU, QBRANCH, 0x18, DUP, REMOVE_LINE, CLR_LAST_LINE, L, LPARENLINE_STARTRPAREN, OVER, LIT, 0x9, EQU, QBRANCH, 0x10, DUP, INS_LINE, L, OVER, LIT, 0xB, EQU, QBRANCH, 0x14, DUP, BLANK_LINE, L, LPARENLINE_STARTRPAREN, OVER, LIT, 0xD, EQU, QBRANCH, 0x18, CSLASHL, TWODUP, MOD, MINUS, PLUS, EXIT

    defword "EDIT", EDIT, 0x0
    .word CLS, LIT, 0x0, DUP, AT_XY, LIST, LIT, 0x0, STOREXY, KEY, SWAP, QCH, SWAP, LIT, 0x18, EQU, QBRANCH, 0xFFFFFFDC, UPDATE, DROP, L, EXIT

    defword "LOAD", LOAD, 0x0
    .word LIT, 0x0, STATE, STORE, BLOCK, DUP, CSLASHBLK, PLUS, TWODUP, LT, QBRANCH, 0x48, SWAP, CSLASHL, TWODUP, SOURCENUM, STORE, LPARENSOURCERPAREN, STORE, LIT, 0x0, GTSOURCE, STORE, LPARENINTERPRETRPAREN, TWODROP, PLUS, SWAP, BRANCH, 0xFFFFFFB0, TWODROP, EXIT

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

    defword "PAUSE", PAUSE, 0x0
    .word RPFETCH, SPFETCH, TOS, STORE, FOLLOWER, FETCH, GTR, EXIT

    defword "'S", TICKS, 0x0
    .word FOLLOWER, MINUS, PLUS, EXIT

    defword "(WAKE)", LPARENWAKERPAREN, 0x0
    .word RGT, UP, TWODUP, STORE, TOS, FETCH, SPSTORE, RPSTORE, EXIT

    defconst "WAKE", WAKE, LPARENWAKERPAREN


    defword "(PASS)", LPARENPASSRPAREN, 0x0
    .word RGT, FETCH, GTR, EXIT

    defconst "PASS", PASS, LPARENPASSRPAREN


    defword "STOP", STOP, 0x0
    .word PASS, STATUS, STORE, PAUSE, EXIT

    defword "SLEEP", SLEEP, 0x0
    .word PASS, SWAP, STATUS, TICKS, STORE, EXIT

    defword "AWAKE", AWAKE, 0x0
    .word WAKE, SWAP, STATUS, TICKS, STORE, EXIT

    defword "ACTIVATE", ACTIVATE, 0x0
    .word DUP, SZ, TICKS, FETCH, CELL, MINUS, OVER, RZ, TICKS, FETCH, RGT, OVER, STORE, OVER, STORE, OVER, TOS, TICKS, STORE, AWAKE, EXIT

    defword "ALSOTASK", ALSOTASK, 0x0
    .word DUP, SLEEP, FOLLOWER, FETCH, OVER, FOLLOWER, TICKS, STORE, STATUS, TICKS, FOLLOWER, STORE, EXIT

    defword "ONLYTASK", ONLYTASK, 0x0
    .word DUP, SLEEP, DUP, STATUS, TICKS, SWAP, FOLLOWER, TICKS, STORE, EXIT

    defword "NEWTASK", NEWTASK, 0x0
    .word CREATE, SWAP, FOLLOWER, TOS, MINUS, PLUS, CELL, PLUS, HERE, PLUS, DUP, COMMA, OVER, PLUS, COMMA, HERE, PASS, COMMA, COMMA, HERE, LIT, 0x2, CELLS, PLUS, COMMA, DUP, HERE, PLUS, COMMA, ALLOT, LPARENDOESGTRPAREN
    .set NEWTASK_XT, .
    .word 0x47884900, DODOES + 1, FETCH, EXIT

    defword ".TASK", DOTTASK, 0x0
    .word CR, DUP, LPARENSQUOTRPAREN, 0x3A44490A, 0x20202020, 0x202020, TYPE, DOT, CR, DUP, ANYGTLINK, LINKGTNAME, LPARENSQUOTRPAREN, 0x6D614E0A, 0x20203A65, 0x202020, TYPE, COUNT, TYPE, CR, DUP, SZ, TICKS, FETCH, OVER, RZ, TICKS, FETCH, LPARENSQUOTRPAREN, 0x6174530A, 0x3A736B63, 0x202020, TYPE, DOT, DOT, CR, DUP, STATUS, TICKS, FETCH, LPARENSQUOTRPAREN, 0x6174530A, 0x3A737574, 0x202020, TYPE, WAKE, EQU, QBRANCH, 0x1C, LPARENSQUOTRPAREN, 0x4B415704, 0x45, TYPE, BRANCH, 0x14, LPARENSQUOTRPAREN, 0x53415004, 0x53, TYPE, CR, DUP, FOLLOWER, TICKS, FETCH, LPARENSQUOTRPAREN, 0x6C6F460A, 0x65776F6C, 0x203A72, TYPE, CELL, PLUS, DOT, CR, TOS, TICKS, FETCH, LPARENSQUOTRPAREN, 0x534F540A, 0x2020203A, 0x202020, TYPE, DOT, CR, EXIT

    defword ".TASKS", DOTTASKS, 0x0
    .word UPFETCH, DUP, DOTTASK, FOLLOWER, TICKS, FETCH, CELL, PLUS, DUP, UPFETCH, EQU, QBRANCH, 0xFFFFFFD4, DROP, EXIT

    defword "STOP-FOR-KEY", STOP_FOR_KEY, 0x0
    .word KEYQ, ZEQU, QBRANCH, 0x10, STOP, BRANCH, 0xFFFFFFE8, EXIT

    defword "MULTITASKING-KEY", MULTITASKING_KEY, 0x0
    .word UPFETCH, 0x3B58, STORE, LIT, STOP_FOR_KEY, TICKWAIT_KEY, STORE, EXIT

    defword "INTERPRET", INTERPRET, 0x0
    .word LIT, 0x0, STATE, STORE, TIB, LPARENSOURCERPAREN, STORE, LIT, 0x0, GTSOURCE, STORE, ACCEPT, SOURCENUM, STORE, SPACE, LPARENINTERPRETRPAREN, QBRANCH, 0x20, DROP, LPARENSQUOTRPAREN, 0x6B6F2004, 0x20, TYPE, BRANCH, 0x18, COUNT, TYPE, LIT, 0x3F, EMIT, CR, EXIT

    defword "QUIT", QUIT, 0x0
    .word INTERPRET, BRANCH, 0xFFFFFFF8, EXIT

    defword "ABORT", ABORT, 0x0
    .word LPARENSQUOTRPAREN, 0x726F4310, 0x726F4665, 0x72206874, 0x79646165, 0x2E, TYPE, CR, QUIT, EXIT

    defword "?ABORT", QABORT, 0x0
    .word ROT, QBRANCH, 0xC, TYPE, ABORT, TWODROP, EXIT
