var int EAX = 0;
var int ECX = 0;
var int EDX = 0;
var int EBX = 0;
var int ESP = 0;
var int EBP = 0;
var int ESI = 0;
var int EDI = 0;
var int HOOKOVERWRITEINSTANCES = 0;
func void _HOOK(var int EVTHADDR, var int _EDI, var int _ESI, var int _EBP, var int _ESP, var int _EBX, var int _EDX, var int _ECX, var int _EAX) {
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
    SELFBAK = _@(0x717);
    OTHERBAK = _@(0x718);
    ITEMBAK = _@(0x71a);
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
    if (!(_@(0x1691))) {
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

var int _HOOK._INSTBAK_TEMP = 0;
var int _HOOK.EAXBAK = 0;
var int _HOOK.ECXBAK = 0;
var int _HOOK.EDXBAK = 0;
var int _HOOK.EBXBAK = 0;
var int _HOOK.ESPBAK = 0;
var int _HOOK.EBPBAK = 0;
var int _HOOK.ESIBAK = 0;
var int _HOOK.EDIBAK = 0;
const int _HOOK.INSTHLPADDR = 0;
var int _HOOK.SELFBAK = 0;
var int _HOOK.OTHERBAK = 0;
var int _HOOK.ITEMBAK = 0;
var int _HOOK.IHLPBAK = 0;
var int _HOOK.INSTBAK = 0;
instance _HOOK.A(ZCARRAY)
var int _HOOK.I = 0;
const int _HOOK_HTBL = 0;
func void HOOKENGINEI(var int ADDRESS, var int OLDINSTR, var int FUNCTION) {
    if ((OLDINSTR) < (5)) {
        PRINTDEBUG("HOOKENGINE: oldInstr is too small. The minimum required length is 5 bytes.");
        return;
    };
    SYMBID = FUNCTION;
    if ((SYMBID) == (-(1))) {
        PRINTDEBUG("HOOKENGINE: The provided deadalus function was not found.");
        return;
    };
    if (!(_HOOK_HTBL)) {
        _HOOK_HTBL = _HT_CREATE();
    };
    if (_HT_HAS(_HOOK_HTBL, ADDRESS)) {
        MEM_PUSHINTPARAM(_HT_GET(_HOOK_HTBL, ADDRESS));
        MEM_PUSHINTPARAM(SYMBID);
        MEM_CALL(0x29e5);
        return;
    };
    MEM_CALL(0x29c9);
    EV = MEM_POPINTRESULT();
    MEM_PUSHINTPARAM(EV);
    MEM_PUSHINTPARAM(SYMBID);
    MEM_CALL(0x29dc);
    _HT_INSERT(_HOOK_HTBL, EV, ADDRESS);
    PTR = MEM_ALLOC(OLDINSTR);
    MEM_COPYBYTES(ADDRESS, PTR, OLDINSTR);
    ASM_OPEN((((138) + (OLDINSTR)) + (6)) + (1));
    MEMORYPROTECTIONOVERRIDE(ADDRESS, (OLDINSTR) + (3));
    RELADR = ((ASMINT_CURRRUN) - (ADDRESS)) - (5);
    MEM_WRITEBYTE((ADDRESS) + (0), ASMINT_OP_JMP);
    MEM_WRITEINT((ADDRESS) + (1), RELADR);
    ASM_2(ASMINT_OP_SUBESPPLUS);
    ASM_1(8);
    ASM_1(ASMINT_OP_PUSHA);
    ASM_2(ASMINT_OP_MOVESPTOEAX);
    ASM_2(ASMINT_OP_ADDIMTOEAX);
    ASM_1((32) + (8));
    ASM_3(ASMINT_OP_MOVEAXTOESPPLUS);
    ASM_1(12);
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4((MEMINT_SWITCHG1G2(0x400, 0x800)) * (4));
    ASM_1(ASMINT_OP_CALL);
    ASM_4(((MALLOC_ADR) - (ASM_HERE())) - (4));
    ASM_2(ASMINT_OP_ADDIMTOESP);
    ASM_1(4);
    ASM_3(ASMINT_OP_MOVEAXTOESPPLUS);
    ASM_1((32) + (4));
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4((MEMINT_SWITCHG1G2(0x400, 0x800)) * (4));
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4((CONTENTPARSERADDRESS) + (ZCPARSER_DATASTACK_STACK_OFFSET));
    ASM_1(ASMINT_OP_PUSHEAX);
    ASM_1(ASMINT_OP_CALL);
    ASM_4(((MEMCPY_ADR) - (ASM_HERE())) - (4));
    ASM_2(ASMINT_OP_ADDIMTOESP);
    ASM_1(12);
    ASM_1(ASMINT_OP_MOVMEMTOEAX);
    ASM_4((CONTENTPARSERADDRESS) + (ZCPARSER_DATASTACK_SPTR_OFFSET));
    ASM_3(ASMINT_OP_MOVEAXTOESPPLUS);
    ASM_1(32);
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4(EV);
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4(MEM_GETFUNCID(0x2664));
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4(PARSER);
    ASM_1(ASMINT_OP_CALL);
    ASM_4(((ZPARSER__CALLFUNC) - (ASM_HERE())) - (4));
    ASM_2(ASMINT_OP_ADDIMTOESP);
    ASM_1(12);
    ASM_3(ASMINT_OP_MOVESPPLUSTOEAX);
    ASM_1(32);
    ASM_2(ASMINT_OP_MOVEAXTOMEM);
    ASM_4((CONTENTPARSERADDRESS) + (ZCPARSER_DATASTACK_SPTR_OFFSET));
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4((MEMINT_SWITCHG1G2(0x400, 0x800)) * (4));
    ASM_3(ASMINT_OP_PUSHESPPLUS);
    ASM_1(((32) + (4)) + (4));
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4((CONTENTPARSERADDRESS) + (ZCPARSER_DATASTACK_STACK_OFFSET));
    ASM_1(ASMINT_OP_CALL);
    ASM_4(((MEMCPY_ADR) - (ASM_HERE())) - (4));
    ASM_2(ASMINT_OP_ADDIMTOESP);
    ASM_1(12);
    ASM_3(ASMINT_OP_PUSHESPPLUS);
    ASM_1((32) + (4));
    ASM_1(ASMINT_OP_CALL);
    ASM_4(((FREE_ADR) - (ASM_HERE())) - (4));
    ASM_2(ASMINT_OP_ADDIMTOESP);
    ASM_1(4);
    ASM_1(ASMINT_OP_POPA);
    ASM_2(ASMINT_OP_ADDIMTOESP);
    ASM_1(8);
    MEM_COPYBYTES(PTR, ASMINT_CURSOR, OLDINSTR);
    MEM_FREE(PTR);
    ASMINT_CURSOR += OLDINSTR;
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4((ADDRESS) + (OLDINSTR));
    ASM_1(ASMINT_OP_RETN);
    I = ASM_CLOSE();
}

var int HOOKENGINEI.SYMBID = 0;
var int HOOKENGINEI.PTR = 0;
var int HOOKENGINEI.RELADR = 0;
var int HOOKENGINEI.EV = 0;
var int HOOKENGINEI.I = 0;
func void HOOKENGINEF(var int ADDRESS, var int OLDINSTR, var func FUNCTION) {
    HOOKENGINEI(ADDRESS, OLDINSTR, MEM_GETFUNCID(0x268c));
}

func void HOOKENGINE(var int ADDRESS, var int OLDINSTR, var string FUNCTION) {
    HOOKENGINEI(ADDRESS, OLDINSTR, MEM_FINDPARSERSYMBOL(STR_UPPER(FUNCTION)));
}

func void HOOKENGINES(var int ADDRESS, var int OLDINSTR, var string FUNCTION) {
    HOOKENGINE(ADDRESS, OLDINSTR, FUNCTION);
}

func int ISHOOKED(var int ADDRESS) {
    if (!(_HOOK_HTBL)) {
        return FALSE;
    };
    return _HT_HAS(_HOOK_HTBL, ADDRESS);
}

func int ISHOOKI(var int ADDRESS, var int FUNCTION) {
    if (!(ISHOOKED(ADDRESS))) {
        return FALSE;
    };
    EV = _HT_GET(_HOOK_HTBL, ADDRESS);
    SYMBID = FUNCTION;
    MEM_PUSHINTPARAM(EV);
    MEM_PUSHINTPARAM(SYMBID);
    MEM_CALL(0x29d3);
    return MEM_POPINTRESULT();
}

var int ISHOOKI.EV = 0;
var int ISHOOKI.SYMBID = 0;
func int ISHOOKF(var int ADDRESS, var func FUNCTION) {
    return ISHOOKI(ADDRESS, MEM_GETFUNCID(0x269e));
}

func int ISHOOK(var int ADDRESS, var string FUNCTION) {
    return ISHOOKI(ADDRESS, MEM_FINDPARSERSYMBOL(STR_UPPER(FUNCTION)));
}

func void REMOVEHOOKI(var int ADDRESS, var int OLDINSTR, var int FUNCTION) {
    if (!(ISHOOKI(ADDRESS, FUNCTION))) {
        return;
    };
    EV = _HT_GET(_HOOK_HTBL, ADDRESS);
    SYMBID = FUNCTION;
    MEM_PUSHINTPARAM(EV);
    MEM_PUSHINTPARAM(SYMBID);
    MEM_CALL(0x29ee);
    MEM_PUSHINTPARAM(EV);
    MEM_CALL(0x29cf);
    if ((MEM_POPINTRESULT()) && ((OLDINSTR) >= (5))) {
        _HT_REMOVE(_HOOK_HTBL, ADDRESS);
        MEM_PUSHINTPARAM(EV);
        MEM_CALL(0x29cb);
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

var int REMOVEHOOKI.EV = 0;
var int REMOVEHOOKI.SYMBID = 0;
var int REMOVEHOOKI.NEWCODEADDR = 0;
var int REMOVEHOOKI.RVTCODEADDR = 0;
func void REMOVEHOOKF(var int ADDRESS, var int OLDINSTR, var func FUNCTION) {
    REMOVEHOOKI(ADDRESS, OLDINSTR, MEM_GETFUNCID(0x26ad));
}

func void REMOVEHOOK(var int ADDRESS, var int OLDINSTR, var string FUNCTION) {
    REMOVEHOOKI(ADDRESS, OLDINSTR, MEM_FINDPARSERSYMBOL(STR_UPPER(FUNCTION)));
}

func void REPLACEENGINEFUNCI(var int FUNCADDR, var int THISCALL_NUMPARAMS, var int REPLACEFUNC) {
    if (ISHOOKED(FUNCADDR)) {
        if (!(ISHOOKI(FUNCADDR, REPLACEFUNC))) {
            MEM_ERROR("Cannot replace/disable engine function: Address already hooked");
        };
        return;
    };
    MEMORYPROTECTIONOVERRIDE(FUNCADDR, 3);
    if (THISCALL_NUMPARAMS) {
        MEM_WRITEBYTE(FUNCADDR, 194);
        MEM_WRITEBYTE((FUNCADDR) + (1), (THISCALL_NUMPARAMS) * (4));
        MEM_WRITEBYTE((FUNCADDR) + (2), 0);
    };
    MEM_WRITEBYTE(FUNCADDR, ASMINT_OP_RETN);
    if ((REPLACEFUNC) != (-(1))) {
        HOOKENGINEI(FUNCADDR, 5, REPLACEFUNC);
    };
}

func void REPLACEENGINEFUNCF(var int FUNCADDR, var int THISCALL_NUMPARAMS, var func REPLACEFUNC) {
    REPLACEENGINEFUNCI(FUNCADDR, THISCALL_NUMPARAMS, MEM_GETFUNCID(0x26b9));
}

func void REPLACEENGINEFUNC(var int FUNCADDR, var int THISCALL_NUMPARAMS, var string REPLACEFUNC) {
    REPLACEENGINEFUNCI(FUNCADDR, THISCALL_NUMPARAMS, MEM_FINDPARSERSYMBOL(STR_UPPER(REPLACEFUNC)));
}

func void HOOK_RETURNFALSE() {
    EAX = FALSE;
}

func void HOOK_RETURNTRUE() {
    EAX = TRUE;
}

func void DISABLEENGINEFUNC(var int FUNCADDR, var int THISCALL_NUMPARAMS) {
    REPLACEENGINEFUNCI(FUNCADDR, THISCALL_NUMPARAMS, -(1));
}

