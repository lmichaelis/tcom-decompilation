class INT64 {
	var int LO;
	var int HI;
};
instance INT64@(INT64) {
    LO = -(1060454374);
    HI = -(1378545154);
}

func void MK64(var int DEST, var int LO, var int HI) {
    MEM_WRITEINT(DEST, LO);
    MEM_WRITEINT((DEST) + (4), HI);
}

const int NEG64_ASM = 0;
func void NEG64(var int DEST) {
    var int DEST4;
    var int DEST0;
    DEST0 = MEM_READINT(DEST);
    DEST4 = MEM_READINT((DEST) + (4));
    if (!(NEG64_ASM)) {
        ASM_1(80);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(DEST0));
        ASM_1(247);
        ASM_1(216);
        ASM_1(163);
        ASM_4(MEM_GETINTADDRESS(DEST0));
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(DEST4));
        ASM_1(131);
        ASM_1(209);
        ASM_1(0);
        ASM_1(247);
        ASM_1(216);
        ASM_1(163);
        ASM_4(MEM_GETINTADDRESS(DEST4));
        ASM_1(88);
        NEG64_ASM = ASM_CLOSE();
    };
    ASM_RUN(NEG64_ASM);
    MEM_WRITEINT(DEST, DEST0);
    MEM_WRITEINT((DEST) + (4), DEST4);
}

const int ADD64_ASM = 0;
func void ADD64(var int DEST, var int SRC) {
    var int SRC4;
    var int SRC0;
    var int DEST4;
    var int DEST0;
    DEST0 = MEM_READINT(DEST);
    DEST4 = MEM_READINT((DEST) + (4));
    SRC0 = MEM_READINT(SRC);
    SRC4 = MEM_READINT((SRC) + (4));
    if (!(ADD64_ASM)) {
        ASM_OPEN(50);
        ASM_1(80);
        ASM_1(82);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(DEST0));
        ASM_1(139);
        ASM_1(21);
        ASM_4(MEM_GETINTADDRESS(DEST4));
        ASM_1(3);
        ASM_1(5);
        ASM_4(MEM_GETINTADDRESS(SRC0));
        ASM_1(19);
        ASM_1(21);
        ASM_4(MEM_GETINTADDRESS(SRC4));
        ASM_1(163);
        ASM_4(DEST);
        ASM_1(137);
        ASM_1(21);
        ASM_4((DEST) + (4));
        ASM_1(90);
        ASM_1(88);
        ADD64_ASM = ASM_CLOSE();
    };
    ASM_RUN(ADD64_ASM);
    MEM_WRITEINT(DEST, DEST0);
    MEM_WRITEINT((DEST) + (4), DEST4);
}

const int SUB64_ASM = 0;
func void SUB64(var int DEST, var int SRC) {
    var int SRC4;
    var int SRC0;
    var int DEST4;
    var int DEST0;
    DEST0 = MEM_READINT(DEST);
    DEST4 = MEM_READINT((DEST) + (4));
    SRC0 = MEM_READINT(SRC);
    SRC4 = MEM_READINT((SRC) + (4));
    if (!(SUB64_ASM)) {
        ASM_OPEN(50);
        ASM_1(80);
        ASM_1(82);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(DEST0));
        ASM_1(139);
        ASM_1(21);
        ASM_4(MEM_GETINTADDRESS(DEST4));
        ASM_1(43);
        ASM_1(5);
        ASM_4(MEM_GETINTADDRESS(SRC0));
        ASM_1(27);
        ASM_1(21);
        ASM_4(MEM_GETINTADDRESS(SRC4));
        ASM_1(163);
        ASM_4(MEM_GETINTADDRESS(DEST4));
        ASM_1(137);
        ASM_1(21);
        ASM_4(MEM_GETINTADDRESS(DEST0));
        ASM_1(90);
        ASM_1(88);
        SUB64_ASM = ASM_CLOSE();
    };
    ASM_RUN(SUB64_ASM);
    MEM_WRITEINT(DEST, DEST0);
    MEM_WRITEINT((DEST) + (4), DEST4);
}

const int MUL64_ASM = 0;
func void MUL64(var int DEST, var int SRC) {
    var int PTR;
    var int SRC4;
    var int SIGN;
    var int SRC0;
    var int DEST4;
    var int DEST0;
    DEST0 = MEM_READINT(DEST);
    DEST4 = MEM_READINT((DEST) + (4));
    SRC0 = MEM_READINT(SRC);
    SRC4 = MEM_READINT((SRC) + (4));
    SIGN = 1;
    if ((DEST4) < (0)) {
        SIGN = -(SIGN);
        NEG64(DEST);
    };
    PTR = 0;
    if ((SRC4) < (0)) {
        SIGN = -(SIGN);
        PTR = MEM_ALLOC(8);
        MEM_COPYWORDS(SRC, PTR, 2);
        SRC = PTR;
        NEG64(SRC);
    };
    DEST0 = MEM_READINT(DEST);
    DEST4 = MEM_READINT((DEST) + (4));
    SRC0 = MEM_READINT(SRC);
    SRC4 = MEM_READINT((SRC) + (4));
    if (!(MUL64_ASM)) {
        ASM_OPEN(200);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(DEST4));
        ASM_1(80);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(DEST0));
        ASM_1(80);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(SRC4));
        ASM_1(80);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(SRC0));
        ASM_1(80);
        ASM_1(232);
        ASM_4(((8221184) - (ASM_HERE())) - (4));
        ASM_1(163);
        ASM_4(MEM_GETINTADDRESS(DEST0));
        ASM_1(137);
        ASM_1(21);
        ASM_4(MEM_GETINTADDRESS(DEST4));
        MUL64_ASM = ASM_CLOSE();
    };
    ASM_RUN(MUL64_ASM);
    MEM_WRITEINT(DEST, DEST0);
    MEM_WRITEINT((DEST) + (4), DEST4);
    if ((SIGN) == (-(1))) {
        NEG64(DEST);
    };
    if (PTR) {
        MEM_FREE(PTR);
    };
}

const int DIV64_ASM = 0;
func void DIV64(var int DEST, var int SRC) {
    var int PTR;
    var int SRC4;
    var int SIGN;
    var int SRC0;
    var int DEST4;
    var int DEST0;
    DEST0 = MEM_READINT(SRC);
    DEST4 = MEM_READINT((SRC) + (4));
    SRC0 = MEM_READINT(DEST);
    SRC4 = MEM_READINT((DEST) + (4));
    SIGN = 1;
    if ((DEST4) < (0)) {
        SIGN = -(SIGN);
        NEG64(DEST);
    };
    PTR = 0;
    if ((SRC4) < (0)) {
        SIGN = -(SIGN);
        PTR = MEM_ALLOC(8);
        MEM_COPYWORDS(SRC, PTR, 2);
        SRC = PTR;
        NEG64(SRC);
    };
    DEST0 = MEM_READINT(SRC);
    DEST4 = MEM_READINT((SRC) + (4));
    SRC0 = MEM_READINT(DEST);
    SRC4 = MEM_READINT((DEST) + (4));
    if (!(DIV64_ASM)) {
        ASM_OPEN(200);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(DEST4));
        ASM_1(80);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(DEST0));
        ASM_1(80);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(SRC4));
        ASM_1(80);
        ASM_1(161);
        ASM_4(MEM_GETINTADDRESS(SRC0));
        ASM_1(80);
        ASM_1(232);
        ASM_4(((8244256) - (ASM_HERE())) - (4));
        ASM_1(163);
        ASM_4(MEM_GETINTADDRESS(DEST0));
        ASM_1(137);
        ASM_1(21);
        ASM_4(MEM_GETINTADDRESS(DEST4));
        DIV64_ASM = ASM_CLOSE();
    };
    ASM_RUN(DIV64_ASM);
    MEM_WRITEINT(DEST, DEST0);
    MEM_WRITEINT((DEST) + (4), DEST4);
    if ((SIGN) == (-(1))) {
        NEG64(DEST);
    };
    if (PTR) {
        MEM_FREE(PTR);
    };
}

