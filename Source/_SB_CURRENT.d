const int _SB_CURRENT = 0;
func void SB_USE(var int SB) {
    _SB_CURRENT = SB;
}

func int SB_NEW() {
    SB_USE(MEM_ALLOC(12));
    return _SB_CURRENT;
}

func void SB_INITBUFFER(var int SIZE) {
    var STRINGBUILDER C;
    C = _^(_SB_CURRENT);
    if (C.PTR) {
        MEM_ERROR("SB_InitBuffer: Der StringBuilder hat bereits einen Buffer.");
        return;
    };
    if ((SIZE) < (8)) {
        SIZE = 8;
    };
    C.PTR = MEM_ALLOC(SIZE);
    C.CLN = 0;
    C.CAL = SIZE;
}

func void SB_RELEASE() {
    MEM_FREE(_SB_CURRENT);
    _SB_CURRENT = 0;
}

func void SB_DESTROY() {
    SB_CLEAR();
    SB_RELEASE();
}

func string SB_TOSTRING() {
    var ZSTRING Z;
    var string RET;
    var STRINGBUILDER C;
    C = _^(_SB_CURRENT);
    if (!(C.PTR)) {
        return "";
    };
    RET = "";
    Z = _^(_@S(RET));
    Z.PTR = (MEM_ALLOC((C.CLN) + (2))) + (1);
    MEM_COPYBYTES(C.PTR, Z.PTR, C.CLN);
    Z.LEN = C.CLN;
    Z.RES = C.CLN;
    return RET;
}

func int SB_GETSTREAM() {
    if (!(_SB_CURRENT)) {
        return 0;
    };
    return MEM_READINT(_SB_CURRENT);
}

func int SB_TOSTREAM() {
    var int P;
    var STRINGBUILDER C;
    if (!(_SB_CURRENT)) {
        return 0;
    };
    C = _^(_SB_CURRENT);
    P = MEM_ALLOC(C.CLN);
    MEM_COPYBYTES(C.PTR, P, C.CLN);
    return P;
}

func int SB_LENGTH() {
    if (!(_SB_CURRENT)) {
        return 0;
    };
    return MEM_READINT((_SB_CURRENT) + (4));
}

func void SBRAW(var int PTR, var int LEN) {
    var int O;
    var int N;
    var STRINGBUILDER C;
    C = _^(_SB_CURRENT);
    if (!(C.PTR)) {
        SB_INITBUFFER(32);
    };
    N = (C.CLN) + (LEN);
    if ((N) > (C.CAL)) {
        O = C.CAL;
        WHILE((N) > (C.CAL));
        C.CAL *= 2;
        END;
        C.PTR = MEM_REALLOC(C.PTR, O, C.CAL);
    };
    MEM_COPYBYTES(PTR, (C.PTR) + (C.CLN), LEN);
    C.CLN = N;
}

func void SBC(var int B) {
    var STRINGBUILDER C;
    C = _^(_SB_CURRENT);
    if (!(C.PTR)) {
        SB_INITBUFFER(32);
    };
    if (((C.CLN) + (4)) > (C.CAL)) {
        C.PTR = MEM_REALLOC(C.PTR, C.CAL, (C.CAL) << (1));
        C.CAL *= 2;
    };
    MEM_WRITEINT((C.PTR) + (C.CLN), B);
    C.CLN += 1;
}

func void SBFLT(var float F) {
    SB(FLOATTOSTRING(F));
}

func void SB_SETLENGTH(var int L) {
    WHILE((L) > (SB_LENGTH()));
    SBW(0);
    END;
    MEM_WRITEINT((_SB_CURRENT) + (4), L);
}

func string STR_ESCAPE(var string S0) {
    var string RES;
    var int L;
    var ZSTRING Z;
    var int C;
    var int I;
    var int SB;
    var int OSB;
    OSB = SB_GET();
    Z = _^(_@S(S0));
    if (!(SB)) {
        SB = SB_NEW();
    };
    SB_USE(SB);
    SB_INITBUFFER((Z.LEN) * (2));
    I = 0;
    L = Z.LEN;
    WHILE((I) < (L));
    C = MEM_READBYTE((Z.PTR) + (I));
    if ((C) == (92)) {
        SBC(92);
        SBC(92);
    };
    if ((C) < (33)) {
        SBC(92);
        SBC(MEM_READSTATARR(STR_SEQUENCES[0], C));
    };
    SBC(C);
    I += 1;
    END;
    RES = SB_TOSTRING();
    SB_CLEAR();
    SB_USE(OSB);
    return RES;
}

func int STR_STARTSWITH(var string STR, var string START) {
    var ZSTRING Z1;
    var ZSTRING Z0;
    Z0 = _^(_@S(STR));
    Z1 = _^(_@S(START));
    if ((Z1.LEN) > (Z0.LEN)) {
        return 0;
    };
    return MEM_COMPAREBYTES(Z0.PTR, Z1.PTR, Z1.LEN);
}

