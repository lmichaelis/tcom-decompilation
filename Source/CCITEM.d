class CCITEM {
	var int FNCID;
	var string CMD;
};
instance CCITEM@(CCITEM);
const int _CC_LIST = 0;
func int CC_ACTIVE(var func FUNCTION) {
    var CCITEM CC;
    var int I;
    var ZCARRAY A;
    var int SYMID;
    if (!(_CC_LIST)) {
        return FALSE;
    };
    SYMID = MEM_GETFUNCID(10952);
    A = _^(_CC_LIST);
    REPEAT(I, A.NUMINARRAY);
    CC = _^(MEM_READINTARRAY(A.ARRAY, I));
    if ((CC.FNCID) == (SYMID)) {
        return TRUE;
    };
    END;
    return FALSE;
}

func void CC_REMOVE(var func FUNCTION) {
    var CCITEM CC;
    var int CCPTR;
    var int I;
    var ZCARRAY A;
    var int SYMID;
    if (!(_CC_LIST)) {
        return;
    };
    SYMID = MEM_GETFUNCID(10958);
    A = _^(_CC_LIST);
    REPEAT(I, A.NUMINARRAY);
    CCPTR = MEM_READINTARRAY(A.ARRAY, I);
    CC = _^(CCPTR);
    if ((CC.FNCID) == (SYMID)) {
        MEM_ARRAYREMOVEINDEX(_CC_LIST, CCPTR);
        MEM_FREE(CCPTR);
    };
    END;
}

func void CC_AUTOCOMPLETE(var string COMMANDPREFIX, var string DESCRIPTION) {
    var int CALL;
    var int COMPTR;
    var int DESCPTR;
    DESCPTR = _@S(DESCRIPTION);
    COMPTR = _@S(COMMANDPREFIX);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(DESCPTR));
        CALL_PTRPARAM(_@(COMPTR));
        CALL__THISCALL(_@(ZCON_ADDRESS_LEGO), ZCCONSOLE__REGISTER);
        CALL = CALL_END();
    };
}

func void CC_REGISTER(var func FUNCTION, var string COMMANDPREFIX, var string DESCRIPTION) {
    var CCITEM CC;
    var int CCPTR;
    var ZCPAR_SYMBOL SYMB;
    var int SYMID;
    if (HASHNDL(10949)) {
        FOREACHHNDL(10949, 10993);
    };
    if (CC_ACTIVE(10971)) {
        return;
    };
    SYMID = MEM_GETFUNCID(10971);
    SYMB = _^(MEM_GETSYMBOLBYINDEX(SYMID));
    if ((((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE)) != (1)) || ((SYMB.OFFSET) != ((ZPAR_TYPE_STRING) >> (12)))) {
        MEM_ERROR(CONCATSTRINGS("CONSOLECOMMANDS: Function has to have one parameter and needs to return a string: ", SYMB.NAME));
        return;
    };
    SYMB = _^(MEM_GETSYMBOLBYINDEX((SYMID) + (1)));
    if (((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) != (ZPAR_TYPE_STRING)) {
        MEM_ERROR(CONCATSTRINGS("CONSOLECOMMANDS: Function parameter needs to be a string: ", SYMB.NAME));
        return;
    };
    COMMANDPREFIX = STR_UPPER(COMMANDPREFIX);
    CC_AUTOCOMPLETE(COMMANDPREFIX, DESCRIPTION);
    CCPTR = CREATE(10949);
    CC = _^(CCPTR);
    CC.FNCID = SYMID;
    CC.CMD = COMMANDPREFIX;
    if (!(_CC_LIST)) {
        _CC_LIST = MEM_ARRAYCREATE();
    };
    MEM_ARRAYINSERT(_CC_LIST, CCPTR);
}

func void _CC_HOOK() {
    var int QRYLEN;
    var int CMDLEN;
    var string RET;
    var CCITEM CC;
    var string QUERY;
    var int I;
    var ZCARRAY A;
    var int STACKOFFSET;
    if (!(_CC_LIST)) {
        return;
    };
    STACKOFFSET = MEMINT_SWITCHG1G2(684, 1060);
    QUERY = MEM_READSTRING(MEM_READINT(((ESP) + (STACKOFFSET)) + (4)));
    A = _^(_CC_LIST);
    REPEAT(I, A.NUMINARRAY);
    CC = _^(MEM_READINTARRAY(A.ARRAY, I));
    if (STR_STARTSWITH(QUERY, CC.CMD)) {
        CMDLEN = STR_LEN(CC.CMD);
        QRYLEN = STR_LEN(QUERY);
        STR_SUBSTR(QUERY, CMDLEN, (QRYLEN) - (CMDLEN));
        MEM_CALLBYID(CC.FNCID);
        RET = MEM_POPSTRINGRESULT();
        if (!(HLP_STRCMP(RET, ""))) {
            MEM_WRITESTRING(EAX, RET);
            BREAK;
        };
    };
    END;
}

func string CC_LEGO(var string _) {
    var string RET;
    var int S;
    S = SB_NEW();
    SB(LEGO_VERSION);
    SBC(10);
    SBC(13);
    _LEGO_FLAGS;
    MEM_CALL(12312);
    SB(MEM_POPSTRINGRESULT());
    RET = SB_TOSTRING();
    SB_DESTROY();
    return RET;
}

func void CCITEM_UNARCHIVER(var CCITEM THIS) {
}

func int _CCITEM_DELETEHANDLES(var int HNDL) {
    DELETE(HNDL);
    return RCONTINUE;
}

