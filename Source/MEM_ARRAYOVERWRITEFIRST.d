func int MEM_ARRAYOVERWRITEFIRST(var int ARR, var int VAL, var int NEWVAL) {
    var int P;
    var int I;
    var ZCARRAY A;
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

func int FINAL() {
    var int S;
    var int IFL;
    var int IFP;
    var int PA;
    var int PTR;
    var int P;
    var int SETCALLERPOS;
    if ((SETCALLERPOS) == (-(1))) {
        SETCALLERPOS = MEM_GETFUNCOFFSET(5649);
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

