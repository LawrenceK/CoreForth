    .set base_UART1,         0x40013800
    .set base_UART2,         0x40004400
    .set base_UART3,         0x40004800
    .set offset_UART_SR,             0x00
    .set offset_UART_DR,             0x04
    .set offset_UART_BRR,            0x08
    .set offset_UART_CR1,            0x0c
    .set offset_UART_CR2,            0x10
    .set offset_UART_CR3,            0x14
    .set offset_UART_GPTR,           0x18

    .set base_RCC,           0x40021000
    .set offset_RCC_CR,              0x00
    .set offset_RCC_CFGR,            0x04
    .set offset_RCC_CIR,             0x08
    .set offset_RCC_APB2RSTR,        0x0c
    .set offset_RCC_APB1RSTR,        0x10
    .set offset_RCC_AHBENR,          0x14
    .set offset_RCC_APB2ENR,         0x18
    .set offset_RCC_APB1ENR,         0x1c
    .set offset_RCC_BDCR,            0x20
    .set offset_RCC_CSR,             0x24
    .set offset_RCC_AHBRSTR,         0x28
    .set offset_RCC_CFGR2,           0x2c

    .set base_NVIC,          0xe000e000
    .set offset_NVIC_SETENA_BASE,   0x100
    .set offset_NVIC_ACTIVE_BASE,   0x300

    .set base_GPIOA,         0x40010800
    .set base_GPIOB,         0x40010c00
    .set base_GPIOC,         0x40011000
    .set base_GPIOD,         0x40011400
    .set base_GPIOE,         0x40011800
    .set offset_GPIO_CRL,           0x000
    .set offset_GPIO_CRH,           0x004
    .set offset_GPIO_IDR,           0x008
    .set offset_GPIO_ODR,           0x00c
    .set offset_GPIO_BSRR,          0x010
    .set offset_GPIO_BRR,           0x014
    .set offset_GPIO_LCKR,          0x018

    .set addr_STCTRL,        0xe000e010
    .set addr_STRELOAD,      0xe000e014
    .set addr_STCURRENT,     0xe000e018

    .set base_FPEC,          0x40022000
    .set offset_FLASH_ACR,           0x00
    .set offset_FLASH_KEYR,          0x04
    .set offset_FLASH_OPTKEYR,       0x08
    .set offset_FLASH_SR,            0x0C
    .set offset_FLASH_CR,            0x10
    .set offset_FLASH_AR,            0x14
    .set offset_FLASH_OBR,           0x1C
    .set offset_FLASH_WRPR,          0x20
