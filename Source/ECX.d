var int ECX;
var int EDX;
var int EBX;
var int ESP;
var int EBP;
var int ESI;
var int EDI;
var int HOOKOVERWRITEINSTANCES;
func void _HOOK(var int EVTHADDR, var int _EDI, var int _ESI, var int _EBP, var int _ESP, var int _EBX, var int _EDX, var int _ECX, var int _EAX) {
    var int INSTBAK;
    var int IHLPBAK;
    var int _INSTBAK_TEMP;
    var int EDIBAK;
    var ZCARRAY A;
    var int EAXBAK;
    var int ESIBAK;
    var int ECXBAK;
    var int I;
    var int EDXBAK;
    var int ITEMBAK;
    var int EBXBAK;
    var int ESPBAK;
    var int INSTHLPADDR;
    var int EBPBAK;
    var int SELFBAK;
    var int OTHERBAK;
    _INSTBAK_TEMP = MEM_GETUSEINSTANCE();
    LOCALS();
    EAXBAK = EAX;
    ECXBAK = ECX;
    EDXBAK = EDX;
    EBXBAK = EBX;
    ESPBAK = ESP;
    EBPBAK = EBP;
    ESIBAK = ESI;
    EDIBAK = EDI;
    if (!(INSTHLPADDR)) {
        INSTHLPADDR = (MEM_GETSYMBOLBYINDEX(0)) + (ZCPARSYMBOL_OFFSET_OFFSET);
    };
    SELFBAK = _@(1815);
    OTHERBAK = _@(1816);
    ITEMBAK = _@(1818);
    IHLPBAK = MEM_READINT(INSTHLPADDR);
    INSTBAK = _INSTBAK_TEMP;
    EAX = _EAX;
    ECX = _ECX;
    EDX = _EDX;
    EBX = _EBX;
    ESP = _ESP;
    EBP = _EBP;
    ESI = _ESI;
    EDI = _EDI;
    if (!(_@(5777))) {
        MEM_INITLABELS();
        MEM_INITGLOBALINST();
    };
    HOOKOVERWRITEINSTANCES = FALSE;
    A = _^(EVTHADDR);
    REPEAT(I, A.NUMINARRAY);
    MEM_PARSER.DATASTACK_SPTR = 0;
    MEM_CALLBYID(MEM_READINTARRAY(A.ARRAY, I));
    if (!(HOOKOVERWRITEINSTANCES)) {
        MEM_ASSIGNINSTSUPPRESSNULLWARNING = TRUE;
        SELF = _^(SELFBAK);
        OTHER = _^(OTHERBAK);
        ITEM = _^(ITEMBAK);
        MEM_ASSIGNINSTSUPPRESSNULLWARNING = FALSE;
    };
    MEM_WRITEINT(INSTHLPADDR, IHLPBAK);
    MEM_SETUSEINSTANCE(INSTBAK);
    ESP = _ESP;
    EBP = _EBP;
    END;
    MEM_WRITEINT((ESP) - (40), EDI);
    MEM_WRITEINT((ESP) - (36), ESI);
    MEM_WRITEINT((ESP) - (24), EBX);
    MEM_WRITEINT((ESP) - (20), EDX);
    MEM_WRITEINT((ESP) - (16), ECX);
    MEM_WRITEINT((ESP) - (12), EAX);
    EDI = EDIBAK;
    ESI = ESIBAK;
    EBP = EBPBAK;
    ESP = ESPBAK;
    EBX = EBXBAK;
    EDX = EDXBAK;
    ECX = ECXBAK;
    EAX = EAXBAK;
    MEM_SETUSEINSTANCE(INSTBAK);
}

func void REMOVEHOOKI(var int ADDRESS, var int OLDINSTR, var int FUNCTION) {
    var int RVTCODEADDR;
    var int NEWCODEADDR;
    var int SYMBID;
    var int EV;
    if (!(ISHOOKI(ADDRESS, FUNCTION))) {
        return;
    };
    EV = _HT_GET(_HOOK_HTBL, ADDRESS);
    SYMBID = FUNCTION;
    MEM_PUSHINTPARAM(EV);
    MEM_PUSHINTPARAM(SYMBID);
    MEM_CALL(10734);
    MEM_PUSHINTPARAM(EV);
    MEM_CALL(10703);
    if ((MEM_POPINTRESULT()) && ((OLDINSTR) >= (5))) {
        _HT_REMOVE(_HOOK_HTBL, ADDRESS);
        MEM_PUSHINTPARAM(EV);
        MEM_CALL(10699);
        if ((MEM_READBYTE(ADDRESS)) != (ASMINT_OP_JMP)) {
            MEM_ERROR("HOOKENGINE: Hook was invalidated by overwritten opcode");
            return;
        };
        NEWCODEADDR = ((MEM_READINT((ADDRESS) + (1))) + (ADDRESS)) + (5);
        RVTCODEADDR = (NEWCODEADDR) + (25);
        MEM_COPYBYTES(RVTCODEADDR, ADDRESS, OLDINSTR);
        MEM_FREE(NEWCODEADDR);
    };
}

func void REPLACEENGINEFUNCF(var int FUNCADDR, var int THISCALL_NUMPARAMS, var func REPLACEFUNC) {
    REPLACEENGINEFUNCI(FUNCADDR, THISCALL_NUMPARAMS, MEM_GETFUNCID(9913));
}

func void DISABLEENGINEFUNC(var int FUNCADDR, var int THISCALL_NUMPARAMS) {
    REPLACEENGINEFUNCI(FUNCADDR, THISCALL_NUMPARAMS, -(1));
}

