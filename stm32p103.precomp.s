    defword "QUIT", QUIT, 0x0
    .word SZ, SPSTORE, RZ, RPSTORE, LPARENSQUOTRPAREN, 0x726f4310, 0x726f4665, 0x72206874, 0x79646165, 0x2e, TYPE, CR, INTERPRET, BRANCH, 0xfffffff8, EXIT

    defword "INTERPRET", INTERPRET, 0x0
    .word LIT, 0x0, STATE, STORE, TIB, LPARENSOURCERPAREN, STORE, LIT, 0x0, GTSOURCE, STORE, ACCEPT, SOURCENUM, STORE, SPACE, LPARENINTERPRETRPAREN, ZBRANCH, 0x20, DROP, LPARENSQUOTRPAREN, 0x6b6f2004, 0x20, TYPE, BRANCH, 0x18, COUNT, TYPE, LIT, 0x3f, EMIT, CR, EXIT

    defword "ACCEPT", ACCEPT, 0x0
    .word LIT, 0x0, TIBNUM, STORE, LIT, 0x0, GTTIB, STORE, KEY, DUP, LIT, 0x20, LIT, 0x7f, WITHIN, MINUSFULLQ, AND, ZBRANCH, 0x18, INSERT, DOTTIB_TAIL, CURSORGT, BRANCH, 0x12c, DUP, LIT, 0x7f, EQU, MINUSSTARTQ, AND, ZBRANCH, 0x1c, DROP, CURSORLT, DELETE, DOTTIB_TAIL, BRANCH, 0xf4, DUP, LIT, 0x8, EQU, OVER, LIT, 0xffffff99, EQU, OR, MINUSENDQ, AND, ZBRANCH, 0x18, DROP, DELETE, DOTTIB_TAIL, BRANCH, 0xac, DUP, LIT, 0xd, EQU, OVER, LIT, 0xa, EQU, OR, ZBRANCH, 0x1c, DROP, TIBNUM, FETCH, EXIT, BRANCH, 0x68, DUP, LIT, 0xfffffffd, EQU, MINUSENDQ, AND, ZBRANCH, 0x14, DROP, CURSORGT, BRANCH, 0x38, DUP, LIT, 0xfffffffc, EQU, MINUSSTARTQ, AND, ZBRANCH, 0x14, DROP, CURSORLT, BRANCH, 0x8, DROP, BRANCH, 0xfffffe94, EXIT

    defword "-FULL?", MINUSFULLQ, 0x0
    .word TIBNUM, FETCH, NUMTIB, LT, EXIT

    defword "-END?", MINUSENDQ, 0x0
    .word GTTIB, FETCH, TIBNUM, FETCH, LT, EXIT

    defword "-START?", MINUSSTARTQ, 0x0
    .word GTTIB, FETCH, ZGT, EXIT

    defword "DELETE", DELETE, 0x0
    .word LIT, 0x1, TIBNUM, MINUSSTORE, TIB_TAIL, OVER, ONEPLUS, MINUSROT, CMOVE, EXIT

    defword "INSERT", INSERT, 0x0
    .word TIB_TAIL, OVER, ONEPLUS, SWAP, CMOVEGT, LIT, 0x1, TIBNUM, PLUSSTORE, TIB, GTTIB, FETCH, PLUS, CSTORE, EXIT

    defword "CURSOR<", CURSORLT, 0x0
    .word LIT, 0x1, GTTIB, MINUSSTORE, CURSOR_LEFT, EXIT

    defword "CURSOR>", CURSORGT, 0x0
    .word LIT, 0x1, GTTIB, PLUSSTORE, CURSOR_RIGHT, EXIT

    defword ".TIB-TAIL", DOTTIB_TAIL, 0x0
    .word CLR_EOL, STORECURSOR, TIB_TAIL, TYPE, FETCHCURSOR, EXIT

    defword "TIB-TAIL", TIB_TAIL, 0x0
    .word GTTIB, FETCH, TIBNUM, FETCH, OVER, MINUS, SWAP, TIB, PLUS, SWAP, EXIT

