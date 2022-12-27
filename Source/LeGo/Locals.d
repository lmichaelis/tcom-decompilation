func int MEM_ARRAYLAST(var int ARR) {
    A = MEM_PTRTOINST(ARR);
    return MEM_READINT((A.ARRAY) + ((4) * ((A.NUMINARRAY) - (1))));
}

instance MEM_ARRAYLAST.A(ZCARRAY)
func int MEM_ARRAYOVERWRITE(var int ARR, var int VAL, var int NEWVAL) {
    A = MEM_PTRTOINST(ARR);
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < (A.NUMINARRAY)) {
        if ((MEM_READINT((A.ARRAY) + ((4) * (I)))) == (VAL)) {
            MEM_WRITEINT((A.ARRAY) + ((4) * (I)), NEWVAL);
            return I;
        };
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
    return -(1);
}

instance MEM_ARRAYOVERWRITE.A(ZCARRAY)
var int MEM_ARRAYOVERWRITE.I = 0;
var int MEM_ARRAYOVERWRITE.P = 0;
func int MEM_ARRAYOVERWRITEFIRST(var int ARR, var int VAL, var int NEWVAL) {
    A = MEM_PTRTOINST(ARR);
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < (A.NUMINARRAY)) {
        if ((MEM_READINT((A.ARRAY) + ((4) * (I)))) == (VAL)) {
            MEM_WRITEINT((A.ARRAY) + ((4) * (I)), NEWVAL);
            return I;
        };
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
    MEM_ARRAYINSERT(ARR, NEWVAL);
    return (A.NUMINARRAY) - (1);
}

instance MEM_ARRAYOVERWRITEFIRST.A(ZCARRAY)
var int MEM_ARRAYOVERWRITEFIRST.I = 0;
var int MEM_ARRAYOVERWRITEFIRST.P = 0;
func void LOCALS() {
    if (!(LOCALS_ARR)) {
        LOCALS_ARR = MEM_ARRAYCREATE();
    };
    if ((ARRAYINSERT) == (-(1))) {
        ARRAYINSERT = MEM_GETFUNCOFFSET(0x150a);
        ARRAYPOP = MEM_GETFUNCOFFSET(0x1511);
        COPYBYTES = MEM_GETFUNCOFFSET(0x1476);
        CLEAR = MEM_GETFUNCOFFSET(0x1494);
        ALLOC = MEM_GETFUNCOFFSET(0x13de);
        FREE = MEM_GETFUNCOFFSET(0x13e6);
        READINT = MEM_GETFUNCOFFSET(0x1334);
        WRITEINT = MEM_GETFUNCOFFSET(0x1345);
        BUFFERSTR = (0x2554) + (1);
        BUFFERSTRPTR = (_@S(LOCALS_BUFFERSTR)) + (8);
        BUFFERINT = (0x2554) + (2);
        RETSTR = (0x2554) + (3);
    };
    STREAM = SB_NEW();
    P = MEM_GETCALLERSTACKPOS();
    FID = MEM_GETFUNCIDBYOFFSET(P);
    CID = FID;
    if ((CID) == (-(1))) {
        MEM_ERROR("Locals: CallStackPos invalid");
        return;
    };
    S = _^(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, CID));
    FNAME = CONCATSTRINGS(S.NAME, ".");
    FRET = S.OFFSET;
    FOFF = S.CONTENT;
    MEM_INFO(CONCATSTRINGS("Locals: Install at ", S.NAME));
    MEM_INFO(CONCATSTRINGS("        Offset is ", INTTOSTRING((P) - (FOFF))));
    SIZE = 0;
    WHILE(1);
    CID += 1;
    SPTR = MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, CID);
    S = _^(SPTR);
    if (!(STR_STARTSWITH(S.NAME, FNAME))) {
        BREAK;
    };
    ARR = (S.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE);
    TYPE = (S.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE);
    if ((ARR) > (1)) {
        if ((TYPE) == (ZPAR_TYPE_STRING)) {
            MEM_ERROR("Locals: Stringarrays are not implemented. Sorry!");
            return;
        };
        SIZE += (S_ARRAY) + (S_P_ARRAY);
    };
    if ((TYPE) == (ZPAR_TYPE_STRING)) {
        SIZE += (S_STRING) + (S_P_STRING);
    };
    if ((TYPE) == (ZPAR_TYPE_INSTANCE)) {
        SIZE += (S_INST) + (S_P_INST);
    };
    SIZE += (S_INT) + (S_P_INT);
    END;
    MID = CID;
    CID = FID;
    SIZE += ((((S_HEADER) + ((S_ASSIGNBLOCK) * (2))) + (S_SKIPBLOCK)) + (S_MISC)) + (10);
    if ((FRET) == (0)) {
    };
    if ((FRET) == ((ZPAR_TYPE_STRING) >> (12))) {
        SIZE += S_RET_STRING;
    };
    if ((FRET) == ((ZPAR_TYPE_INSTANCE) >> (12))) {
        SIZE += S_RET_INST;
    };
    SIZE += S_RET_INT;
    SB_INITBUFFER(SIZE);
    SBW(1000);
    STREAM = SB_GETSTREAM();
    SBC(ZPAR_TOK_PUSHINT);
    SBW(STREAM);
    SBC(ZPAR_TOK_CALL);
    SBW(READINT);
    SBC(ZPAR_TOK_JUMPF);
    SBW(FALSE);
    WHILE(1);
    CID += 1;
    if ((CID) == (MID)) {
        BREAK;
    };
    SPTR = MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, CID);
    S = _^(SPTR);
    ARR = (S.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE);
    TYPE = (S.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE);
    if ((ARR) > (1)) {
        ARR *= 4;
        SBC(ZPAR_TOK_PUSHINT);
        SBW(ARR);
        SBC(ZPAR_TOK_CALL);
        SBW(ALLOC);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_OP_IS);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(S.CONTENT);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(ARR);
        SBC(ZPAR_TOK_CALL);
        SBW(COPYBYTES);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(LOCALS_ARR);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_TOK_CALL);
        SBW(ARRAYINSERT);
    };
    if ((TYPE) == (ZPAR_TYPE_STRING)) {
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(CID);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERSTR);
        SBC(ZPAR_TOK_ASSIGNSTR);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(12);
        SBC(ZPAR_TOK_CALL);
        SBW(ALLOC);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_OP_IS);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(BUFFERSTRPTR);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(12);
        SBC(ZPAR_TOK_CALL);
        SBW(COPYBYTES);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(BUFFERSTRPTR);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(12);
        SBC(ZPAR_TOK_CALL);
        SBW(CLEAR);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(LOCALS_ARR);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_TOK_CALL);
        SBW(ARRAYINSERT);
    };
    if ((TYPE) == (ZPAR_TYPE_INSTANCE)) {
        SBC(ZPAR_TOK_PUSHINT);
        SBW(LOCALS_ARR);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(_@(S.OFFSET));
        SBC(ZPAR_TOK_CALL);
        SBW(READINT);
        SBC(ZPAR_TOK_CALL);
        SBW(ARRAYINSERT);
    };
    SBC(ZPAR_TOK_PUSHINT);
    SBW(LOCALS_ARR);
    SBC(ZPAR_TOK_PUSHVAR);
    SBW(CID);
    SBC(ZPAR_TOK_CALL);
    SBW(ARRAYINSERT);
    END;
    MEM_WRITEINT(((STREAM) + (4)) + (11), ((STREAM) + (SB_LENGTH())) - (CURRPARSERSTACKADDRESS));
    SBC(ZPAR_TOK_PUSHINT);
    SBW(STREAM);
    SBC(ZPAR_TOK_PUSHINT);
    SBW(STREAM);
    SBC(ZPAR_TOK_CALL);
    SBW(READINT);
    SBC(ZPAR_TOK_PUSHINT);
    SBW(1);
    SBC(ZPAR_OP_PLUS);
    SBC(ZPAR_TOK_CALL);
    SBW(WRITEINT);
    SBC(ZPAR_TOK_CALL);
    SBW((FOFF) + (5));
    SBC(ZPAR_TOK_PUSHINT);
    SBW(STREAM);
    SBC(ZPAR_TOK_PUSHINT);
    SBW(1);
    SBC(ZPAR_TOK_PUSHINT);
    SBW(STREAM);
    SBC(ZPAR_TOK_CALL);
    SBW(READINT);
    SBC(ZPAR_OP_MINUS);
    SBC(ZPAR_TOK_CALL);
    SBW(WRITEINT);
    SBC(ZPAR_TOK_PUSHINT);
    SBW(STREAM);
    SBC(ZPAR_TOK_CALL);
    SBW(READINT);
    SBC(ZPAR_OP_UN_NOT);
    SBC(ZPAR_TOK_JUMPF);
    SBW(((((STREAM) + (SB_LENGTH())) + (4)) + (1)) - (CURRPARSERSTACKADDRESS));
    SBC(ZPAR_TOK_RET);
    if ((FRET) == (0)) {
    };
    if ((FRET) == ((ZPAR_TYPE_STRING) >> (12))) {
        SBC(ZPAR_TOK_PUSHVAR);
        SBC(RETSTR);
        SBC(ZPAR_TOK_ASSIGNSTR);
        SBC(ZPAR_TOK_PUSHVAR);
        SBC(RETSTR);
    };
    if ((FRET) == ((ZPAR_TYPE_INSTANCE) >> (12))) {
        SBC(ZPAR_TOK_PUSHINST);
        SBC(0x2558);
        SBC(ZPAR_TOK_ASSIGNINST);
        SBC(ZPAR_TOK_PUSHINST);
        SBC(0x2558);
    };
    SBC(ZPAR_OP_UN_PLUS);
    WHILE(1);
    CID -= 1;
    if ((CID) == (FID)) {
        BREAK;
    };
    SPTR = MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, CID);
    S = _^(SPTR);
    ARR = (S.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE);
    TYPE = (S.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE);
    if ((ARR) > (1)) {
        ARR *= 4;
        SBC(ZPAR_TOK_PUSHINT);
        SBW(LOCALS_ARR);
        SBC(ZPAR_TOK_CALL);
        SBW(ARRAYPOP);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_OP_IS);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(S.CONTENT);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(ARR);
        SBC(ZPAR_TOK_CALL);
        SBW(COPYBYTES);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_TOK_CALL);
        SBW(FREE);
    };
    if ((TYPE) == (ZPAR_TYPE_STRING)) {
        SBC(ZPAR_TOK_PUSHINT);
        SBW(LOCALS_ARR);
        SBC(ZPAR_TOK_CALL);
        SBW(ARRAYPOP);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_OP_IS);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(BUFFERSTRPTR);
        SBC(ZPAR_TOK_PUSHINT);
        SBW(12);
        SBC(ZPAR_TOK_CALL);
        SBW(COPYBYTES);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERINT);
        SBC(ZPAR_TOK_CALL);
        SBW(FREE);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(BUFFERSTR);
        SBC(ZPAR_TOK_PUSHVAR);
        SBW(CID);
        SBC(ZPAR_TOK_ASSIGNSTR);
    };
    if ((TYPE) == (ZPAR_TYPE_INSTANCE)) {
        SBC(ZPAR_TOK_PUSHINT);
        SBW(_@(S.OFFSET));
        SBC(ZPAR_TOK_PUSHINT);
        SBW(LOCALS_ARR);
        SBC(ZPAR_TOK_CALL);
        SBW(ARRAYPOP);
        SBC(ZPAR_TOK_CALL);
        SBW(WRITEINT);
    };
    SBC(ZPAR_TOK_PUSHINT);
    SBW(LOCALS_ARR);
    SBC(ZPAR_TOK_CALL);
    SBW(ARRAYPOP);
    SBC(ZPAR_TOK_PUSHVAR);
    SBW(CID);
    SBC(ZPAR_OP_IS);
    END;
    SBC(ZPAR_TOK_RET);
    LEN = ((P) - (5)) - (FOFF);
    FOFF += CURRPARSERSTACKADDRESS;
    if (LEN) {
        PRE = MEM_ALLOC(LEN);
        MEM_COPYBYTES(FOFF, PRE, LEN);
        MEM_COPYBYTES(PRE, (FOFF) + (5), LEN);
        MEM_FREE(PRE);
    };
    if ((SB_LENGTH()) > (SIZE)) {
        MEM_ERROR(STR_UNESCAPE("LeGo::Locals\n\nLength of the StringBuilder exceeded calculated\nsize of locals stream.\n\nPlease report errorcode: loc403"));
    };
    SB_RELEASE();
    MEM_WRITEINT((FOFF) + (0), ZPAR_TOK_JUMP);
    MEM_WRITEINT((FOFF) + (1), ((STREAM) + (4)) - (CURRPARSERSTACKADDRESS));
    MEM_ARRAYINSERT(LOCALS_ARR, STREAM);
    MEM_CALLBYOFFSET(P);
    STREAM = MEM_ARRAYPOP(LOCALS_ARR);
    MEM_WRITEINT(STREAM, 0);
    MEM_SETCALLERSTACKPOS((_@(ZPAR_TOK_RET)) - (CURRPARSERSTACKADDRESS));
}

instance LOCALS.S(ZCPAR_SYMBOL)
const string LOCALS.LOCALS_BUFFERSTR = "";
const int LOCALS.LOCALS_BUFFERINT = 0;
var string LOCALS.LOCALS_RETSTR = "";
instance LOCALS.RETINST(ZCPAR_SYMBOL)
var int LOCALS.ARR = 0;
var int LOCALS.TYPE = 0;
var int LOCALS.SPTR = 0;
const int LOCALS.LOCALS_ARR = 0;
const int LOCALS.ARRAYINSERT = -1;
const int LOCALS.ARRAYPOP = -1;
const int LOCALS.COPYBYTES = -1;
const int LOCALS.CLEAR = -1;
const int LOCALS.ALLOC = -1;
const int LOCALS.FREE = -1;
const int LOCALS.READINT = -1;
const int LOCALS.WRITEINT = -1;
const int LOCALS.BUFFERSTR = -1;
const int LOCALS.BUFFERSTRPTR = -1;
const int LOCALS.BUFFERINT = -1;
const int LOCALS.RETSTR = -1;
var int LOCALS.STREAM = 0;
var int LOCALS.P = 0;
var int LOCALS.FID = 0;
var int LOCALS.CID = 0;
var int LOCALS.MID = 0;
var string LOCALS.FNAME = "";
var int LOCALS.FRET = 0;
var int LOCALS.FOFF = 0;
var int LOCALS.SIZE = 0;
const int LOCALS.S_HEADER = 15;
const int LOCALS.S_ARRAY = 51;
const int LOCALS.S_STRING = 77;
const int LOCALS.S_INST = 20;
const int LOCALS.S_INT = 15;
const int LOCALS.S_ASSIGNBLOCK = 26;
const int LOCALS.S_SKIPBLOCK = 17;
const int LOCALS.S_RET_STRING = 11;
const int LOCALS.S_RET_INST = 11;
const int LOCALS.S_RET_INT = 1;
const int LOCALS.S_P_ARRAY = 46;
const int LOCALS.S_P_STRING = 57;
const int LOCALS.S_P_INST = 20;
const int LOCALS.S_P_INT = 16;
const int LOCALS.S_MISC = 10;
var int LOCALS.LEN = 0;
var int LOCALS.PRE = 0;
func int TOKEN_GETSIZE(var int TOK) {
    if ((((TOK) >= (ZPAR_TOK_CALL)) && ((TOK) <= (ZPAR_TOK_PUSHINDEX))) || (((TOK) >= (ZPAR_TOK_JUMP)) && ((TOK) <= (ZPAR_TOK_SETINSTANCE)))) {
        return 5;
    };
    if ((TOK) == (ZPAR_TOK_PUSH_ARRAYVAR)) {
        return 6;
    };
    return 1;
}

func int TOKENS_COPY(var int SRC, var int DEST, var int LEN) {
    P = MEM_ALLOC(LEN);
    MEM_COPYBYTES(SRC, P, LEN);
    MEM_COPYBYTES(P, DEST, LEN);
    MEM_FREE(P);
    DSTC = DEST;
    DSTF = (DEST) + (LEN);
    SRCF = (SRC) + (LEN);
    DIFF = (DEST) - (SRC);
    WHILE((DSTC) < (DSTF));
    TOK = MEM_READBYTE(DSTC);
    if (((TOK) == (ZPAR_TOK_JUMPF)) || ((TOK) == (ZPAR_TOK_JUMP))) {
        MEM_INFO("Move if for Bytes.");
        MEM_INFO(INTTOSTRING(DIFF));
        TRG = MEM_READINT((DSTC) + (1));
        if (((TRG) <= (SRCF)) && ((TRG) >= (SRC))) {
            MEM_WRITEINT((DSTC) + (1), (TRG) + (DIFF));
        };
    };
    DSTC += TOKEN_GETSIZE(TOK);
    return END;
}

var int TOKENS_COPY.P = 0;
var int TOKENS_COPY.DSTC = 0;
var int TOKENS_COPY.DSTF = 0;
var int TOKENS_COPY.SRCF = 0;
var int TOKENS_COPY.DIFF = 0;
var int TOKENS_COPY.TOK = 0;
var int TOKENS_COPY.TRG = 0;
func int FINAL() {
    if ((SETCALLERPOS) == (-(1))) {
        SETCALLERPOS = MEM_GETFUNCOFFSET(0x1611);
    };
    P = MEM_GETCALLERSTACKPOS();
    PA = (P) + (CURRPARSERSTACKADDRESS);
    if ((MEM_READBYTE(PA)) != (ZPAR_TOK_JUMPF)) {
        MEM_ERROR("final() darf nur hinter einem if verwendet werden!");
        return FALSE;
    };
    IFP = MEM_READINT((PA) + (1));
    IFL = ((IFP) - (P)) - (5);
    S = SB_NEW();
    SBC(ZPAR_TOK_PUSHINT);
    SBW(P);
    SBC(ZPAR_TOK_CALL);
    SBW(SETCALLERPOS);
    SBC(ZPAR_TOK_JUMP);
    SBW(IFP);
    PTR = SB_GETSTREAM();
    SB_RELEASE();
    MEM_WRITEINT((PA) - (5), ZPAR_TOK_CALL);
    MEM_WRITEINT((PA) - (4), (PTR) - (CURRPARSERSTACKADDRESS));
    TOKENS_COPY((PA) + (5), PA, IFL);
    MEM_WRITEINT((PA) + (IFL), (((ZPAR_TOK_RET) | ((ZPAR_TOK_RET) << (8))) | ((ZPAR_TOK_RET) << (16))) | ((ZPAR_TOK_RET) << (24)));
    MEM_SETCALLERSTACKPOS((P) - (5));
    return 0 /* !broken stack! */;
}

const int FINAL.SETCALLERPOS = -1;
var int FINAL.P = 0;
var int FINAL.PA = 0;
var int FINAL.IFP = 0;
var int FINAL.IFL = 0;
var int FINAL.S = 0;
var int FINAL.PTR = 0;
