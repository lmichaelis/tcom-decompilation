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

func int _CCITEM_DELETEHANDLES(var int HNDL) {
    DELETE(HNDL);
    return RCONTINUE;
}

