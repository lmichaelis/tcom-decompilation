class STRINGBUILDER {
	var int PTR;
	var int CLN;
	var int CAL;
};



const int _SB_CURRENT = 0;
func void SB_USE(var int SB) {
    _SB_CURRENT = SB;
}

func int SB_GET() {
    return _SB_CURRENT;
}

func int SB_NEW() {
    SB_USE(MEM_ALLOC(12));
    return _SB_CURRENT;
}

func void SB_INITBUFFER(var int SIZE) {
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

instance SB_INITBUFFER.C(STRINGBUILDER)
func void SB_CLEAR() {
    C = _^(_SB_CURRENT);
    if (C.PTR) {
        MEM_FREE(C.PTR);
    };
    C.PTR = 0;
    C.CLN = 0;
    C.CAL = 0;
}

instance SB_CLEAR.C(STRINGBUILDER)
func void SB_RELEASE() {
    MEM_FREE(_SB_CURRENT);
    _SB_CURRENT = 0;
}

func void SB_DESTROY() {
    SB_CLEAR();
    SB_RELEASE();
}

func string SB_TOSTRING() {
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

instance SB_TOSTRING.C(STRINGBUILDER)
var string SB_TOSTRING.RET = "";
instance SB_TOSTRING.Z(ZSTRING)
func int SB_GETSTREAM() {
    if (!(_SB_CURRENT)) {
        return 0;
    };
    return MEM_READINT(_SB_CURRENT);
}

func int SB_TOSTREAM() {
    if (!(_SB_CURRENT)) {
        return 0;
    };
    C = _^(_SB_CURRENT);
    P = MEM_ALLOC(C.CLN);
    MEM_COPYBYTES(C.PTR, P, C.CLN);
    return P;
}

instance SB_TOSTREAM.C(STRINGBUILDER)
var int SB_TOSTREAM.P = 0;
func int SB_LENGTH() {
    if (!(_SB_CURRENT)) {
        return 0;
    };
    return MEM_READINT((_SB_CURRENT) + (4));
}

func void SBRAW(var int PTR, var int LEN) {
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

instance SBRAW.C(STRINGBUILDER)
var int SBRAW.N = 0;
var int SBRAW.O = 0;
func void SB(var string S) {
    Z = _^(_@S(S));
    SBRAW(Z.PTR, Z.LEN);
}

instance SB.Z(ZSTRING)
func void SBI(var int I) {
    SB(INTTOSTRING(I));
}

func void SBC(var int B) {
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

instance SBC.C(STRINGBUILDER)
func void SBW(var int B) {
    C = _^(_SB_CURRENT);
    if (!(C.PTR)) {
        SB_INITBUFFER(32);
    };
    if (((C.CLN) + (4)) > (C.CAL)) {
        C.PTR = MEM_REALLOC(C.PTR, C.CAL, (C.CAL) << (1));
        C.CAL *= 2;
    };
    MEM_WRITEINT((C.PTR) + (C.CLN), B);
    C.CLN += 4;
}

instance SBW.C(STRINGBUILDER)
func void SBFLT(var float F) {
    SB(FLOATTOSTRING(F));
}

func void SBF(var int F) {
    F;
    MEM_CALL(0x2522);
}

func void SB_SETLENGTH(var int L) {
    WHILE((L) > (SB_LENGTH()));
    SBW(0);
    END;
    MEM_WRITEINT((_SB_CURRENT) + (4), L);
}

const int STR_SEQUENCES[33] = {48, 49, 50, 51, 52, 53, 54, 97, 98, 116, 110, 118, 102, 114, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 95};
func string STR_ESCAPE(var string S0) {
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

var int STR_ESCAPE.OSB = 0;
instance STR_ESCAPE.Z(ZSTRING)
const int STR_ESCAPE.SB = 0;
var int STR_ESCAPE.I = 0;
var int STR_ESCAPE.L = 0;
var int STR_ESCAPE.C = 0;
var string STR_ESCAPE.RES = "";
func string STR_UNESCAPE(var string S0) {
    OSB = SB_GET();
    Z = _^(_@S(S0));
    if (!(SB)) {
        SB = SB_NEW();
    };
    SB_USE(SB);
    SB_INITBUFFER(Z.LEN);
    I = 0;
    L = Z.LEN;
    WHILE((I) < (L));
    C = MEM_READBYTE((Z.PTR) + (I));
    if ((C) == (92)) {
        I += 1;
        C = MEM_READBYTE((Z.PTR) + (I));
        if ((C) == (92)) {
            SBC(92);
        } else {
            J = 0;
            WHILE((J) < (33));
            N = MEM_READSTATARR(STR_SEQUENCES[0], J);
            if ((C) == (N)) {
                SBC(J);
                BREAK;
            };
            J += 1;
            END;
        } else {
            /* set_instance(0) */;
        };
    };
    SBC(C);
    I += 1;
    END;
    RES = SB_TOSTRING();
    SB_CLEAR();
    SB_USE(OSB);
    return RES;
}

var int STR_UNESCAPE.OSB = 0;
instance STR_UNESCAPE.Z(ZSTRING)
const int STR_UNESCAPE.SB = 0;
var int STR_UNESCAPE.I = 0;
var int STR_UNESCAPE.L = 0;
var int STR_UNESCAPE.C = 0;
var int STR_UNESCAPE.J = 0;
var int STR_UNESCAPE.N = 0;
var string STR_UNESCAPE.RES = "";
func int STR_STARTSWITH(var string STR, var string START) {
    Z0 = _^(_@S(STR));
    Z1 = _^(_@S(START));
    if ((Z1.LEN) > (Z0.LEN)) {
        return 0;
    };
    return MEM_COMPAREBYTES(Z0.PTR, Z1.PTR, Z1.LEN);
}

instance STR_STARTSWITH.Z0(ZSTRING)
instance STR_STARTSWITH.Z1(ZSTRING)
