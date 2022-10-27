class CCITEM {
	var int FNCID;
	var string CMD;
};


instance CCITEM@(CCITEM)
const int _CC_LIST = 0;
func int CC_ACTIVE(var func FUNCTION) {
    if (!(_CC_LIST)) {
        return FALSE;
    };
    SYMID = MEM_GETFUNCID(0x2ac8);
    A = _^(_CC_LIST);
    REPEAT(I, A.NUMINARRAY);
    CC = _^(MEM_READINTARRAY(A.ARRAY, I));
    if ((CC.FNCID) == (SYMID)) {
        return TRUE;
    };
    END;
    return FALSE;
}

var int CC_ACTIVE.SYMID = 0;
instance CC_ACTIVE.A(ZCARRAY)
var int CC_ACTIVE.I = 0;
instance CC_ACTIVE.CC(CCITEM)
func void CC_REMOVE(var func FUNCTION) {
    if (!(_CC_LIST)) {
        return;
    };
    SYMID = MEM_GETFUNCID(0x2ace);
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

var int CC_REMOVE.SYMID = 0;
instance CC_REMOVE.A(ZCARRAY)
var int CC_REMOVE.I = 0;
var int CC_REMOVE.CCPTR = 0;
instance CC_REMOVE.CC(CCITEM)
func void CC_AUTOCOMPLETE(var string COMMANDPREFIX, var string DESCRIPTION) {
    DESCPTR = _@S(DESCRIPTION);
    COMPTR = _@S(COMMANDPREFIX);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(DESCPTR));
        CALL_PTRPARAM(_@(COMPTR));
        CALL__THISCALL(_@(ZCON_ADDRESS_LEGO), ZCCONSOLE__REGISTER);
        CALL = CALL_END();
    };
}

var int CC_AUTOCOMPLETE.DESCPTR = 0;
var int CC_AUTOCOMPLETE.COMPTR = 0;
const int CC_AUTOCOMPLETE.CALL = 0;
func void CC_REGISTER(var func FUNCTION, var string COMMANDPREFIX, var string DESCRIPTION) {
    if (HASHNDL(0x2ac5)) {
        FOREACHHNDL(0x2ac5, 0x2af1);
    };
    if (CC_ACTIVE(0x2adb)) {
        return;
    };
    SYMID = MEM_GETFUNCID(0x2adb);
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
    CCPTR = CREATE(0x2ac5);
    CC = _^(CCPTR);
    CC.FNCID = SYMID;
    CC.CMD = COMMANDPREFIX;
    if (!(_CC_LIST)) {
        _CC_LIST = MEM_ARRAYCREATE();
    };
    MEM_ARRAYINSERT(_CC_LIST, CCPTR);
}

var int CC_REGISTER.SYMID = 0;
instance CC_REGISTER.SYMB(ZCPAR_SYMBOL)
var int CC_REGISTER.CCPTR = 0;
instance CC_REGISTER.CC(CCITEM)
func void _CC_HOOK() {
    if (!(_CC_LIST)) {
        return;
    };
    STACKOFFSET = MEMINT_SWITCHG1G2(684, 0x424);
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

var int _CC_HOOK.STACKOFFSET = 0;
var string _CC_HOOK.QUERY = "";
instance _CC_HOOK.A(ZCARRAY)
var int _CC_HOOK.I = 0;
instance _CC_HOOK.CC(CCITEM)
var int _CC_HOOK.CMDLEN = 0;
var int _CC_HOOK.QRYLEN = 0;
var string _CC_HOOK.RET = "";
func string CC_LEGO(var string _) {
    S = SB_NEW();
    SB(LEGO_VERSION);
    SBC(10);
    SBC(13);
    _LEGO_FLAGS;
    MEM_CALL(0x3018);
    SB(MEM_POPSTRINGRESULT());
    RET = SB_TOSTRING();
    SB_DESTROY();
    return RET;
}

var int CC_LEGO.S = 0;
var string CC_LEGO.RET = "";
func void CCITEM_UNARCHIVER(var CCITEM THIS) {
}

func int _CCITEM_DELETEHANDLES(var int HNDL) {
    DELETE(HNDL);
    return RCONTINUE;
}

