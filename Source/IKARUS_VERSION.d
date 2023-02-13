const int IKARUS_VERSION = 10202;
func int MEM_CHECKVERSION(var int BASE, var int MAJOR, var int MINOR) {
    if (((MAJOR) > (99)) || ((MINOR) > (99))) {
        return FALSE;
    };
    return ((((BASE) * (10000)) + ((MAJOR) * (100))) + (MINOR)) <= (IKARUS_VERSION);
}

func void MEM_PRINTSTACKTRACE() {
    var string ERROR;
    ERROR = "MEM_PrintStackTrace: Cannot print the stacktrace before MEM_InitAll was called!";
    MEM_SENDTOSPY(ZERR_TYPE_FAULT, ERROR);
}

func void MEMINT_HANDLEERROR(var int ERRORTYPE, var string TEXT) {
    var int ERRORBOXONCE;
    var int ONCE;
    if ((ERRORTYPE) >= (ZERR_PRINTSTACKTRACE)) {
        if ((!(ONCE)) || (!(ZERR_STACKTRACEONLYFORFIRST))) {
            ONCE = TRUE;
            MEM_PRINTSTACKTRACE();
        };
    };
    if ((ERRORTYPE) >= (ZERR_REPORTTOZSPY)) {
        if (((ERRORTYPE) >= (ZERR_SHOWERRORBOX)) && ((!(ZERR_ERRORBOXONLYFORFIRST)) || (!(ERRORBOXONCE)))) {
            MEMINT_FORCEERRORBOX = TRUE;
            ERRORBOXONCE = TRUE;
        };
        MEM_SENDTOSPY(ERRORTYPE, TEXT);
    };
}

func void MEM_INFO(var string INFO) {
    if (((ZERR_REPORTTOZSPY) > (ZERR_TYPE_INFO)) && ((ZERR_PRINTSTACKTRACE) > (ZERR_TYPE_INFO))) {
        return;
    };
    MEMINT_HANDLEERROR(ZERR_TYPE_INFO, INFO);
}

func void MEM_DEBUG(var string MESSAGE) {
    MESSAGE = CONCATSTRINGS(ZERR_DEBUG_PREFIX, MESSAGE);
    if (ZERR_DEBUG_TOSCREEN) {
        PRINT(MESSAGE);
    };
    if (ZERR_DEBUG_ERRORBOX) {
        MEMINT_FORCEERRORBOX = TRUE;
    };
    if ((ZERR_DEBUG_ERRORBOX) || (ZERR_DEBUG_TOSPY)) {
        MEM_SENDTOSPY(ZERR_DEBUG_TYPE, MESSAGE);
    };
}

instance MEMINT_INSTUNASSIGNED(MEMINT_HELPERCLASS);
instance MEMINT_POPDUMP(MEMINT_HELPERCLASS);
func int MEMINT_STACKPUSHINT(var int VAL) {
    return +(VAL);
}

func string MEMINT_STACKPUSHSTRING(var string VAL) {
    return VAL;
}

func void MEMINT_STACKPOPINST() {
    MEMINT_POPDUMP = MEMINT_STACKPOPINSTSUB();
}

func void MEMINT_STACKPUSHINST(var int VAL) {
    MEMINT_STACKPUSHINT(VAL);
    MEMINT_STACKPOPINST();
}

func int MEMINT_POPINT() {
    return 0 /* !broken stack! */;
}

func string MEMINT_POPSTRING() {
    return 0 /* !broken stack! */;
}

func int MEMINT_STACKPOPINT() {
    return 0 /* !broken stack! */;
}

func string MEMINT_STACKPOPSTRING() {
    return 0 /* !broken stack! */;
}

func int MEMINT_STACKPOPINSTASINT() {
    MEMINT_STACKPUSHINST(ZPAR_TOK_PUSHINT);
    return 0 /* !broken stack! */;
}

instance MEM_HELPER_INST(C_NPC) {
    NAME[0] = MEM_HELPER_NAME;
    ID = 42;
    FLAGS = 2;
    ATTRIBUTE[1] = 2;
    ATTRIBUTE[0] = 2;
    MDL_SETVISUAL(MEM_HELPER_INST, "Meatbug.mds");
}

instance MEM_HELPER(OCNPC);
func void MEMINT_GETMEMHELPER() {
    var C_NPC SELFBAK;
    MEM_HELPER = HLP_GETNPC(4909);
    if (!(HLP_ISVALIDNPC(MEM_HELPER))) {
        SELFBAK = HLP_GETNPC(1815);
        WLD_INSERTNPC(4909, TOT);
        MEM_HELPER = HLP_GETNPC(1815);
        SELF = HLP_GETNPC(4912);
    };
}

func int MEMINT_SWITCHG1G2(var int G1VAL, var int G2VAL) {
    if ((GOTHIC_BASE_VERSION) == (1)) {
        return +(G1VAL);
    };
    return +(G2VAL);
}

func void MEMINT_OLDWRITEINT(var int ADDRESS, var int VAL) {
    var int RES;
    MEM_HELPER.ENEMY = (ADDRESS) - (MEM_NPCID_OFFSET);
    RES = NPC_GETTARGET(MEM_HELPER);
    OTHER.ID = VAL;
}

func void MEMINT_ASSIGN() {
    MEMINT_PREPAREASSIGNMENTS();
}

func void MEMINT_STRASSIGN() {
    MEMINT_PREPAREASSIGNMENTS();
}

func void MEM_WRITEINT(var int ADDRESS, var int VAL) {
    if ((ADDRESS) == (0)) {
        MEM_ERROR("MEM_WriteInt: address is NULL");
        return;
    };
    MEMINT_STACKPUSHINT(VAL);
    MEMINT_STACKPUSHVAR(ADDRESS);
    MEMINT_ASSIGN();
}

func void MEM_WRITEBYTE(var int ADR, var int VAL) {
    if ((VAL) & (~(255))) {
        MEM_WARN("MEM_WriteByte: Val out of range! Truncating to 8 bits.");
        VAL = (VAL) & (255);
    };
    MEM_WRITEINT(ADR, ((MEM_READINT(ADR)) & (~(255))) | (VAL));
}

func int MEM_READBYTEARRAY(var int ARRAYADDRESS, var int OFFSET) {
    return MEM_READBYTE((ARRAYADDRESS) + (OFFSET));
}

const int CURRPARSERADDRESS = 0;
const int CURRSYMBOLTABLEADDRESS = 0;
const int CURRSYMBOLTABLELENGTH = 0;
const int CURRSORTEDSYMBOLTABLEADDRESS = 0;
const int CURRPARSERSTACKADDRESS = 0;
const int CONTENTSYMBOLTABLEADDRESS = 0;
func void MEM_REINITPARSER() {
    CURRPARSERADDRESS = CONTENTPARSERADDRESS;
    CURRSYMBOLTABLEADDRESS = MEM_READINT((CURRPARSERADDRESS) + (ZCPARSER_SYMTAB_TABLE_ARRAY_OFFSET));
    CURRSYMBOLTABLELENGTH = MEM_READINT(((CURRPARSERADDRESS) + (ZCPARSER_SYMTAB_TABLE_ARRAY_OFFSET)) + (8));
    CURRSORTEDSYMBOLTABLEADDRESS = MEM_READINT((CURRPARSERADDRESS) + (ZCPARSER_SORTED_SYMTAB_TABLE_ARRAY_OFFSET));
    CURRPARSERSTACKADDRESS = MEM_READINT((CURRPARSERADDRESS) + (ZCPARSER_STACK_OFFSET));
    CONTENTSYMBOLTABLEADDRESS = MEM_READINT((CONTENTPARSERADDRESS) + (ZCPARSER_SYMTAB_TABLE_ARRAY_OFFSET));
}

func void MEM_SETPARSER(var int ID) {
    if (!(ID)) {
        MEM_WARN("MEM_SetParser was removed in Ikarus Version 1.2 and should not be used any more.");
    };
    MEM_ERROR("MEM_SetParser was removed in Ikarus Version 1.2 and cannot be used to change the current parser any more.");
}

func void MEM_ASSIGNINST(var int INST, var int PTR) {
    var int SYM;
    if ((INST) <= (0)) {
        MEM_ERROR(CONCATSTRINGS("MEM_AssignInst: Invalid instance: ", INTTOSTRING(INST)));
        return;
    };
    if (((PTR) == (0)) && (!(MEM_ASSIGNINSTSUPPRESSNULLWARNING))) {
        MEM_WARN("MEM_AssignInst: ptr is NULL. Use MEM_AssignInstNull if that's what you want.");
    };
    SYM = MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, INST);
    MEM_WRITEINT((SYM) + (ZCPARSYMBOL_OFFSET_OFFSET), PTR);
}

func instance _^(var int PTR) {
    return MEM_PTRTOINST(PTR);
}

func instance MEM_CPYINST(var int INST) {
    MEMINT_STACKPUSHINST(INST);
    return 0 /* !broken stack! */;
}

func void MEM_ASSIGNCONTENTINSTNULL(var int INST) {
    var int ONCE;
    if (!(ONCE)) {
        ONCE = TRUE;
        MEM_WARN("MEM_AssignContentInstNull: This function was deprecated in Ikarus Version 1.2. Use the equivalent MEM_AssignInstNull instead.");
    };
    MEM_ASSIGNINSTNULL(INST);
}

func int MEM_INSTGETOFFSET(var int INST) {
    return MEM_INSTTOPTR(INST);
}

func void MEM_SETCURRPARSERSYMB(var int INST) {
    var int CURRPARSERSYMOFFSET;
    var int SYMOFFSET;
    if ((INST) <= (0)) {
        MEM_ERROR(CONCATSTRINGS("MEM_SetCurrParserSymb: Invalid inst: ", INTTOSTRING(INST)));
        return;
    };
    SYMOFFSET = MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, INST);
    CURRPARSERSYMOFFSET = MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, 5000);
    MEM_WRITEINT((CURRPARSERSYMOFFSET) + (ZCPARSYMBOL_OFFSET_OFFSET), SYMOFFSET);
}

instance MEM_STACKPOS(MEMINT_STACKPOS);
func void MEM_INITLABELS() {
    MEM_STACKPOS = _^((CONTENTPARSERADDRESS) + (ZCPARSER_STACK_STACKPTR_OFFSET));
}

func void MEM_CALLBYPTR(var int PTR) {
    MEM_STACKPOS.POSITION = PTR;
}

func int MEM_GETFUNCID(var func FNC) {
    var int RES;
    var int LOOP;
    var ZCPAR_SYMBOL SYMB;
    SYMB = MEM_PTRTOINST(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, (5015) - (1)));
    LOOP = MEM_STACKPOS.POSITION;
    if (((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) != (ZPAR_TYPE_FUNC)) {
        MEM_WARN("MEM_GetFuncID: Unresolvable request (probably uninitialised function variable).");
        return -(1);
    };
    if ((SYMB.BITFIELD) & (ZPAR_FLAG_CONST)) {
        return +(RES);
    };
    RES = SYMB.CONTENT;
    SYMB = MEM_PTRTOINST(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, RES));
    MEM_STACKPOS.POSITION = LOOP;
    return 0 /* !broken stack! */;
}

func int MEM_GETFUNCPTR(var func FNC) {
    return (MEM_GETFUNCOFFSET(5022)) + (CURRPARSERSTACKADDRESS);
}

var int MEMINT_OVERRIDEFUNC_PTR;
func void MEMINT_INITOVERIDEFUNC(var func F) {
    MEMINT_OVERRIDEFUNC_PTR = MEM_GETFUNCPTR(5030);
}

func void MEMINT_OFTOKPAR(var int TOK, var int PARAM) {
    MEMINT_OFTOK(TOK);
    MEM_WRITEINT(MEMINT_OVERRIDEFUNC_PTR, PARAM);
    MEMINT_OVERRIDEFUNC_PTR += 4;
}

func int MEM_GETSTRINGADDRESS(var string S) {
    MEM_ERROR("MEM_GetStringAddress called before MEM_GetAddress_Init!");
    return 0;
}

func int _@S(var string S) {
    MEM_ERROR("_@s called before MEM_GetAddress_Init!");
    return 0;
}

func void MEMINT_GETADDRESS_INIT(var func F) {
    MEMINT_INITOVERIDEFUNC(5049);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, 5050);
    MEMINT_OFTOK(ZPAR_TOK_ASSIGNINST);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, ZPAR_TOK_PUSHINT);
    MEMINT_OFTOK(ZPAR_TOK_RET);
}

func void STR_GETADDRESSINIT() {
    MEM_GETADDRESS_INIT();
}

func int STR_GETADDRESS(var string STR) {
    STR = STR;
    MEM_GETADDRESS_INIT();
    return STR_GETADDRESS(STR);
}

func void MEMINT_WRITESTATARR(var int OFFSET, var int VALUE) {
    var int ADR;
    if ((OFFSET) < (0)) {
        MEM_ERROR("MEM_WriteStatArr: Offset < 0!");
        return;
    };
    MEMINT_STACKPOPINST();
    MEMINT_STACKPUSHINST(ZPAR_TOK_PUSHINT);
    ADR = MEMINT_STACKPOPINT();
    MEM_WRITEINTARRAY(ADR, OFFSET, VALUE);
}

func void MEM_WRITESTATARR(var int ARRAY, var int OFFSET, var int VALUE) {
    MEM_ERROR("MEM_WriteStatArr was called before MEM_InitStatArrs!");
}

func void MEM_INITSTATARRS() {
    var int DONE;
    if (!(DONE)) {
        MEM_REPLACEFUNC(5070, 5059);
        MEM_REPLACEFUNC(5074, 5056);
        MEM_REPLACEFUNC(5077, 5063);
        MEM_REPLACEFUNC(5081, 5067);
        DONE = TRUE;
    };
}

func int MEM_ALLOC(var int AMOUNT) {
    var int RES;
    var int LOOPSTART;
    var int SIZE;
    var ZSTRING ZSTR;
    var int STRPTR;
    var string STR;
    STR = "AAAA";
    STRPTR = _@S(STR);
    ZSTR = _^(STRPTR);
    MEM_WRITEINT(ZSTR.PTR, 0);
    SIZE = 4;
    LOOPSTART = MEM_STACKPOS.POSITION;
    STR = CONCATSTRINGS(STR, STR);
    SIZE *= 2;
    if ((SIZE) < (AMOUNT)) {
        MEM_STACKPOS.POSITION = LOOPSTART;
    };
    RES = (ZSTR.PTR) - (1);
    ZSTR.PTR = 0;
    ZSTR.LEN = 0;
    ZSTR.RES = 0;
    STR = CONCATSTRINGS("", "");
    return RES;
}

const int ASMINT_OP_MOVIMTOECX = 185;
const int ASMINT_OP_MOVIMTOEDX = 186;
const int ASMINT_OP_PUSHIM = 104;
const int ASMINT_OP_CALL = 232;
const int ASMINT_OP_RETN = 195;
const int ASMINT_OP_NOP = 144;
const int ASMINT_OP_JMP = 233;
const int ASMINT_OP_PUSHEAX = 80;
const int ASMINT_OP_PUSHECX = 81;
const int ASMINT_OP_POPEAX = 88;
const int ASMINT_OP_POPECX = 89;
const int ASMINT_OP_PUSHA = 96;
const int ASMINT_OP_POPA = 97;
const int ASMINT_OP_MOVMEMTOEAX = 161;
const int ASMINT_OP_MOVALTOMEM = 162;
const int ASMINT_OP_MOVEAXTOMEM = 1417;
const int ASMINT_OP_MOVEAXTOAL = 138;
const int ASMINT_OP_MOVCLTOEAX = 2184;
const int ASMINT_OP_FLOATSTORETOMEM = 7641;
const int ASMINT_OP_ADDIMTOESP = 50307;
const int ASMINT_OP_MOVMEMTOECX = 3467;
const int ASMINT_OP_MOVMEMTOCL = 3466;
const int ASMINT_OP_MOVMEMTOEDX = 5515;
const int ASMINT_OP_MOVECXTOEAX = 49547;
const int ASMINT_OP_MOVESPTOEAX = 50315;
const int ASMINT_OP_MOVEAXTOECX = 49545;
const int ASMINT_OP_MOVEBXTOEAX = 55433;
const int ASMINT_OP_MOVEBPTOEAX = 50571;
const int ASMINT_OP_MOVEDITOEAX = 51083;
const int ASMINT_OP_ADDIMTOEAX = 49283;
const int ASM_STANDARDSTREAMLENGTH = 256;
const int ASMINT_INTERNALSTACK = 0;
const int ASMINT_INTERNALSTACKWALKER = 0;
const int ASMINT_INTERNALSTACKSIZE = 1024;
func void ASMINT_PUSH(var int DATA) {
    if ((ASMINT_INTERNALSTACKWALKER) >= (ASMINT_INTERNALSTACKSIZE)) {
        MEM_ERROR("ASMINT_Push: You seem to nest Engine Calls very extensively (or there is an Error in the ASM / CALL Package of Ikarus. Please contact Sekti with this problem!");
    };
    MEM_WRITEINTARRAY(ASMINT_INTERNALSTACK, ASMINT_INTERNALSTACKWALKER, DATA);
    ASMINT_INTERNALSTACKWALKER += 1;
}

const int ASMINT_CALLTARGET = 0;
func void ASMINT_MYEXTERNAL() {
}

func void ASMINT_CALLMYEXTERNAL() {
    EXITGAME();
}

func void ASMINT_INIT() {
    var ZCPAR_SYMBOL SYMB;
    if (!(ASMINT_INTERNALSTACK)) {
        ASMINT_INTERNALSTACK = MEM_ALLOC((4) * (ASMINT_INTERNALSTACKSIZE));
        ASMINT_CALLTARGET = MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, MEM_GETFUNCID(5137));
        SYMB = _^(ASMINT_CALLTARGET);
        ASMINT_CALLTARGET += ZCPARSYMBOL_CONTENT_OFFSET;
        SYMB.BITFIELD = ((ZPAR_TYPE_FUNC) | (ZPAR_FLAG_EXTERNAL)) | (ZPAR_FLAG_CONST);
        MEM_WRITEINT((MEM_GETFUNCPTR(5138)) + (1), MEM_GETFUNCID(5137));
    };
}

const int ASMINT_CURRRUN = 0;
const int ASMINT_CURSOR = 0;
const int ASMINT_LENGTH = 0;
func void ASM_OPEN(var int SPACE) {
    if (ASMINT_CURRRUN) {
        MEM_ERROR("ASM_Open: Only one stream of assembler code can be constructed at any given time (ASM_Open was called again before closing operation).");
        return;
    };
    if (!(SPACE)) {
        SPACE = ASM_STANDARDSTREAMLENGTH;
    };
    ASMINT_CURRRUN = MEM_ALLOC((SPACE) + (3));
    ASMINT_LENGTH = SPACE;
    ASMINT_CURSOR = ASMINT_CURRRUN;
}

func void ASM_1(var int DATA) {
    ASM(DATA, 1);
}

func void ASM_3(var int DATA) {
    ASM(DATA, 3);
}

func int ASM_HERE() {
    if (!(ASMINT_CURRRUN)) {
        ASM_OPEN(0);
    };
    return ASMINT_CURSOR;
}

func int ASM_CLOSE() {
    var int RES;
    ASM(ASMINT_OP_RETN, 1);
    RES = ASMINT_CURRRUN;
    ASMINT_CURRRUN = 0;
    return RES;
}

func void ASM_RUN(var int PTR) {
    MEM_WRITEINT(ASMINT_CALLTARGET, PTR);
    ASMINT_CALLMYEXTERNAL();
}

const int CALLINT_CODEMODE = 0;
const int CALLINT_CODEMODE_DISPOSABLE = 0;
const int CALLINT_CODEMODE_RECYCLABLE = 1;
const int CALLINT_NUMPARAMS = 0;
const int CALLINT_RETVALSTRUCTSIZE = 0;
const int CALLINT_RETVALISFLOAT = 0;
const int CALLINT_PUTRETVALTO = 0;
func void ASMINT_PUSHCONTEXT() {
    ASMINT_PUSH(CALLINT_RETVALSTRUCTSIZE);
    ASMINT_PUSH(CALLINT_RETVALISFLOAT);
    ASMINT_PUSH(CALLINT_PUTRETVALTO);
    ASMINT_PUSH(CALLINT_NUMPARAMS);
    ASMINT_PUSH(CALLINT_CODEMODE);
    ASMINT_PUSH(ASMINT_CURRRUN);
    ASMINT_PUSH(ASMINT_CURSOR);
    ASMINT_PUSH(ASMINT_LENGTH);
    ASMINT_CURRRUN = 0;
    CALLINT_CODEMODE = CALLINT_CODEMODE_DISPOSABLE;
    CALLINT_NUMPARAMS = 0;
    CALLINT_RETVALISFLOAT = 0;
    CALLINT_PUTRETVALTO = 0;
    CALLINT_RETVALSTRUCTSIZE = 0;
}

func void ASMINT_POPCONTEXT() {
    ASMINT_LENGTH = ASMINT_POP();
    ASMINT_CURSOR = ASMINT_POP();
    ASMINT_CURRRUN = ASMINT_POP();
    CALLINT_CODEMODE = ASMINT_POP();
    CALLINT_NUMPARAMS = ASMINT_POP();
    CALLINT_PUTRETVALTO = ASMINT_POP();
    CALLINT_RETVALISFLOAT = ASMINT_POP();
    CALLINT_RETVALSTRUCTSIZE = ASMINT_POP();
}

func void CALL_OPEN() {
    ASMINT_PUSHCONTEXT();
    CALLINT_CODEMODE = CALLINT_CODEMODE_RECYCLABLE;
}

func int CALL_BEGIN(var int PTR) {
    if (PTR) {
        ASM_RUN(PTR);
        return 0;
    };
    CALL_OPEN();
    return 1;
}

func int CALL_END() {
    var int PTR;
    PTR = CALL_CLOSE();
    ASMINT_PUSH(PTR);
    ASM_RUN(PTR);
    return ASMINT_POP();
}

func void CALL_INTPARAM(var int PARAM) {
    if ((CALLINT_CODEMODE) == (CALLINT_CODEMODE_RECYCLABLE)) {
        ASM_1(ASMINT_OP_MOVMEMTOEAX);
        ASM_4(PARAM);
        ASM_1(ASMINT_OP_PUSHEAX);
    };
    ASM_1(ASMINT_OP_PUSHIM);
    ASM_4(PARAM);
    CALLINT_NUMPARAMS += 1;
}

func void CALL_FLOATPARAM(var int PARAM) {
    CALL_INTPARAM(PARAM);
}

func int CALLINT_GETSTRINGADDRESS(var string STR) {
    return _@S(CALLINT_PUSHSTRING(STR));
}

func void CALL_CSTRINGPTRPARAM(var string PARAM) {
    var ZSTRING STR;
    if ((CALLINT_CODEMODE) != (CALLINT_CODEMODE_DISPOSABLE)) {
        MEM_ERROR("CALL_cStringPtrParam: This function only works when writing a disposable call!");
        return;
    };
    STR = _^(CALLINT_GETSTRINGADDRESS(PARAM));
    CALL_INTPARAM(STR.PTR);
}

func void CALL_RETVALISSTRUCT(var int SIZE) {
    if ((CALLINT_CODEMODE) == (CALLINT_CODEMODE_RECYCLABLE)) {
        MEM_ERROR("CALL_RetValIsStruct: Only supported in disposable calls (not with CALL_Begin and CALL_End).");
        return;
    };
    CALLINT_RETVALSTRUCTSIZE = SIZE;
}

func void CALL_RETVALISFLOAT() {
    CALLINT_RETVALISFLOAT = TRUE;
}

func void CALL_PUTRETVALTO(var int ADR) {
    if ((ADR) == (0)) {
        CALLINT_PUTRETVALTO = -(1);
    };
    CALLINT_PUTRETVALTO = ADR;
}

func int CALL_RETVALASINT() {
    return +(CALLINT_RESULT);
}

func int CALL_RETVALASFLOAT() {
    return +(CALLINT_RESULT);
}

func int CALL_RETVALASPTR() {
    return +(CALLINT_RESULT);
}

func instance CALL_RETVALASSTRUCTPTR() {
    return _^(CALLINT_RESULT);
}

func string CALL_RETVALASZSTRINGPTR() {
    if (CALLINT_RESULT) {
        MEMINT_STACKPUSHVAR(CALLINT_RESULT);
    };
    return "";
}

func string CALL_RETVALASZSTRING() {
    var string RET;
    if (CALLINT_RESULT) {
        RET = CALL_RETVALASZSTRINGPTR();
        CALL_RETVALASZSTRINGPTR();
        MEMINT_STRASSIGN();
        MEMINT_STACKPUSHSTRING("");
        MEM_FREE(CALLINT_RESULT);
        CALLINT_RESULT = 0;
    };
    return RET;
}

func void CALLINT_MAKECALL(var int ADR, var int CLEANSTACK) {
    if (CALLINT_RETVALSTRUCTSIZE) {
        CALL_INTPARAM(MEM_ALLOC(CALLINT_RETVALSTRUCTSIZE));
        CALLINT_RETVALSTRUCTSIZE = 0;
    };
    ASM_1(ASMINT_OP_CALL);
    ASM_4(((ADR) - (ASM_HERE())) - (4));
    if ((CALLINT_PUTRETVALTO) != (-(1))) {
        if (!(CALLINT_RETVALISFLOAT)) {
            ASM_2(ASMINT_OP_MOVEAXTOMEM);
        } else {
            ASM_2(ASMINT_OP_FLOATSTORETOMEM);
        };
        if (CALLINT_PUTRETVALTO) {
            ASM_4(CALLINT_PUTRETVALTO);
        } else {
            ASM_4(MEM_GETINTADDRESS(CALLINT_RESULT));
        };
    };
    CALLINT_RETVALISFLOAT = FALSE;
    CALLINT_PUTRETVALTO = 0;
    if (CLEANSTACK) {
        ASM_2(ASMINT_OP_ADDIMTOESP);
        ASM_1((CALLINT_NUMPARAMS) * (4));
    };
    CALLINT_NUMPARAMS = 0;
    if ((CALLINT_CODEMODE) != (CALLINT_CODEMODE_RECYCLABLE)) {
        ASM_RUNONCE();
    };
}

func void CALL__THISCALL(var int THIS, var int ADR) {
    if ((CALLINT_CODEMODE) == (CALLINT_CODEMODE_RECYCLABLE)) {
        ASM_2(ASMINT_OP_MOVMEMTOECX);
    };
    ASM_1(ASMINT_OP_MOVIMTOECX);
    ASM_4(THIS);
    CALL__STDCALL(ADR);
}

func void MEM_COPYBYTES(var int SRC, var int DST, var int BYTECOUNT) {
    var int MEMCPY_G2;
    var int MEMCPY_G1;
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(BYTECOUNT));
        CALL_INTPARAM(_@(SRC));
        CALL_INTPARAM(_@(DST));
        CALL_PUTRETVALTO(0);
        CALL__CDECL(MEMINT_SWITCHG1G2(MEMCPY_G1, MEMCPY_G2));
        CALL = CALL_END();
    };
}

func void MEM_SWAP(var int SRC, var int DST, var int WORDCOUNT) {
    MEM_SWAPBYTES(SRC, DST, (WORDCOUNT) * (4));
}

func int MEM_COMPAREBYTES(var int PTR1, var int PTR2, var int BYTECOUNT) {
    var int MASK;
    var int LOOPPOS;
    if ((BYTECOUNT) < (0)) {
        MEM_ERROR("MEM_CompareBytes: Cannot compare less than 0 bytes!");
        return 0;
    };
    if ((BYTECOUNT) == (0)) {
        return 1;
    };
    if (((PTR1) == (0)) || ((PTR2) == (0))) {
        MEM_ERROR("MEM_CompareBytes: ptr1 or ptr2 is Null");
        return 0;
    };
    LOOPPOS = MEM_STACKPOS.POSITION;
    if ((BYTECOUNT) >= (4)) {
        if ((MEM_READINT(PTR1)) != (MEM_READINT(PTR2))) {
            return 0;
        };
        PTR1 += 4;
        PTR2 += 4;
        BYTECOUNT -= 4;
        MEM_STACKPOS.POSITION = LOOPPOS;
    };
    MASK = ((1) << ((BYTECOUNT) * (8))) - (1);
    return ((MEM_READINT(PTR1)) & (MASK)) == ((MEM_READINT(PTR2)) & (MASK));
}

func int GETPROCADDRESS(var int HMODULE, var string LPPROCNAME) {
    var int WINAPI__GETPROCADDRESS;
    var int RET;
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        if ((GOTHIC_BASE_VERSION) == (2)) {
            WINAPI__GETPROCADDRESS = MEM_READINT(8577688);
        } else {
            WINAPI__GETPROCADDRESS = MEM_READINT(8192260);
        };
        CALL_PTRPARAM((_@S(LPPROCNAME)) + (8));
        CALL_PTRPARAM(_@(HMODULE));
        CALL_PUTRETVALTO(_@(RET));
        CALL__STDCALL(WINAPI__GETPROCADDRESS);
        CALL = CALL_END();
    };
    return +(RET);
}

const int PAGE_EXECUTE_READ = 32;
const int PAGE_EXECUTE_READWRITE = 64;
const int PAGE_EXECUTE_WRITECOPY = 128;
const int PAGE_NOACCESS = 1;
const int PAGE_READONLY = 2;
const int PAGE_READWRITE = 4;
const int PAGE_WRITECOPY = 8;
func int VIRTUALPROTECT(var int LPADDRESS, var int DWSIZE, var int FLNEWPROTECT) {
    var int CALL;
    var int LPFLOLDPROTECT;
    var int LPFLOLDPROTECTPTR;
    var int ADR;
    if (!(ADR)) {
        ADR = FINDKERNELDLLFUNCTION("VirtualProtect");
    };
    LPFLOLDPROTECTPTR = _@(LPFLOLDPROTECT);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(LPFLOLDPROTECTPTR));
        CALL_INTPARAM(_@(FLNEWPROTECT));
        CALL_INTPARAM(_@(DWSIZE));
        CALL_PTRPARAM(_@(LPADDRESS));
        CALL_PUTRETVALTO(0);
        CALL__STDCALL(ADR);
        CALL = CALL_END();
    };
    return LPFLOLDPROTECT;
}

const int MB_ABORTRETRYIGNORE = 2;
const int MB_YESNOCANCEL = 3;
const int MB_YESNO = 4;
const int MB_RETRYCANCEL = 5;
const int MB_CANCELTRYCONTINUE = 6;
const int MB_ICONERROR = 16;
const int MB_ICONQUESTION = 32;
const int MB_ICONWARNING = 48;
const int MB_ICONINFORMATION = 64;
const int MB_ICONEXCLAMATION = 48;
const int MB_ICONASTERISK = 64;
const int MB_ICONSTOP = 16;
const int MB_ICONHAND = 16;
const int MB_DEFBUTTON1 = 0;
const int MB_DEFBUTTON2 = 256;
const int MB_DEFBUTTON3 = 512;
const int MB_DEFBUTTON4 = 768;
const int IDOK = 1;
const int IDCANCEL = 2;
const int IDABORT = 3;
const int IDRETRY = 4;
const int IDIGNORE = 5;
const int IDYES = 6;
const int IDNO = 7;
const int IDTRYAGAIN = 10;
const int IDCONTINUE = 11;
func int MEM_MESSAGEBOX(var string TXT, var string CAPTION, var int TYPE) {
    var int WINAPI__MESSAGEBOX_G1;
    var int WINAPI__MESSAGEBOX_G2;
    var int MB_TASKMODAL;
    CALL_INTPARAM((TYPE) | (MB_TASKMODAL));
    CALL_CSTRINGPTRPARAM(CAPTION);
    CALL_CSTRINGPTRPARAM(TXT);
    CALL_INTPARAM(0);
    CALL__STDCALL(MEMINT_SWITCHG1G2(WINAPI__MESSAGEBOX_G1, WINAPI__MESSAGEBOX_G2));
    return CALL_RETVALASINT();
}

func void MEM_ARRAYCLEAR(var int ZCARRAY_PTR) {
    var ZCARRAY ARRAY;
    ARRAY = _^(ZCARRAY_PTR);
    if (ARRAY.ARRAY) {
        MEM_FREE(ARRAY.ARRAY);
        ARRAY.ARRAY = 0;
    };
    ARRAY.NUMALLOC = 0;
    ARRAY.NUMINARRAY = 0;
}

func void MEM_ARRAYWRITE(var int ZCARRAY_PTR, var int POS, var int VALUE) {
    var ZCARRAY ARRAY;
    ARRAY = _^(ZCARRAY_PTR);
    if (((POS) < (0)) || ((ARRAY.NUMINARRAY) <= (POS))) {
        MEM_ERROR(CONCATSTRINGS("MEM_ArrayWrite: pos out of bounds: ", INTTOSTRING(POS)));
        return;
    };
    MEM_WRITEINTARRAY(ARRAY.ARRAY, POS, VALUE);
}

func int MEM_ARRAYPOP(var int ZCARRAY_PTR) {
    var ZCARRAY ARRAY;
    if (!(ZCARRAY_PTR)) {
        MEM_ERROR("MEM_ArrayPop: Invalid address: zCArray_ptr may not be null!");
        return 0;
    };
    ARRAY = _^(ZCARRAY_PTR);
    if (!(ARRAY.NUMINARRAY)) {
        MEM_ERROR("MEM_ArrayPop: Underflow! Cannot pop from empty array.");
        return 0;
    };
    ARRAY.NUMINARRAY -= 1;
    return MEM_READINTARRAY(ARRAY.ARRAY, ARRAY.NUMINARRAY);
}

func int MEM_ARRAYINDEXOF(var int ZCARRAY_PTR, var int VALUE) {
    var int LOOP;
    var int I;
    var ZCARRAY ARRAY;
    if (!(ZCARRAY_PTR)) {
        MEM_ERROR("MEM_ArrayIndexOf: Invalid address: zCArray_ptr may not be null!");
        return -(1);
    };
    ARRAY = _^(ZCARRAY_PTR);
    I = 0;
    LOOP = MEM_STACKPOS.POSITION;
    if ((I) < (ARRAY.NUMINARRAY)) {
        if ((MEM_READINTARRAY(ARRAY.ARRAY, I)) == (VALUE)) {
            return I;
        };
        I += 1;
        MEM_STACKPOS.POSITION = LOOP;
    };
    return -(1);
}

func void MEM_ARRAYREMOVEVALUE(var int ZCARRAY_PTR, var int VALUE) {
    var int LOOP;
    var int I;
    var ZCARRAY ARRAY;
    if (!(ZCARRAY_PTR)) {
        MEM_ERROR("MEM_ArrayRemoveValue: Invalid address: zCArray_ptr may not be null!");
        return;
    };
    ARRAY = _^(ZCARRAY_PTR);
    I = 0;
    LOOP = MEM_STACKPOS.POSITION;
    if ((I) < (ARRAY.NUMINARRAY)) {
        if ((MEM_READINTARRAY(ARRAY.ARRAY, I)) == (VALUE)) {
            ARRAY.NUMINARRAY -= 1;
            MEM_WRITEINTARRAY(ARRAY.ARRAY, I, MEM_READINTARRAY(ARRAY.ARRAY, ARRAY.NUMINARRAY));
            if (MEMINT_ARRAYREMOVEVALUE_ONLYONCE) {
                MEMINT_ARRAYREMOVEVALUE_ONLYONCE = 2;
                return;
            };
        } else {
            I += 1;
        };
        MEM_STACKPOS.POSITION = LOOP;
    };
}

func void MEM_ARRAYSORT(var int ZCARRAY_PTR) {
    var ZCARRAY ARRAY;
    if (!(ZCARRAY_PTR)) {
        MEM_ERROR("MEM_ArraySort: Invalid address: zCArray_ptr may not be null!");
        return;
    };
    ARRAY = _^(ZCARRAY_PTR);
    MEMINT_QSORT(ARRAY.ARRAY, ARRAY.NUMINARRAY, 4, 0);
}

func string MEM_ARRAYTOSTRING(var int ZCARRAY_PTR) {
    var int LOOP;
    var int I;
    var ZCARRAY ARRAY;
    var string RES;
    RES = "";
    if (!(ZCARRAY_PTR)) {
        MEM_ERROR("MEM_ArrayRemoveValue: Invalid address: zCArray_ptr may not be null!");
        return "";
    };
    ARRAY = _^(ZCARRAY_PTR);
    I = 0;
    LOOP = MEM_STACKPOS.POSITION;
    if ((I) < (ARRAY.NUMINARRAY)) {
        RES = CONCATSTRINGS(RES, INTTOSTRING(MEM_READINTARRAY(ARRAY.ARRAY, I)));
        if ((I) < ((ARRAY.NUMINARRAY) - (1))) {
            RES = CONCATSTRINGS(RES, ",");
        };
        I += 1;
        MEM_STACKPOS.POSITION = LOOP;
    };
    return RES;
}

func int STR_LEN(var string STR) {
    var ZSTRING ZSTR;
    ZSTR = _^(_@S(STR));
    return +(ZSTR.LEN);
}

func int STRINT_TOCHAR(var string STR) {
    return STR_TOCHAR(STR);
}

func string STR_SUBSTR(var string STR, var int START, var int COUNT) {
    var int SAVESTART;
    var string SAVESTR;
    var int SAVECOUNT;
    var ZSTRING ZSTRDST;
    var ZSTRING ZSTRSRC;
    var string DSTSTR;
    if (((START) < (0)) || ((COUNT) < (0))) {
        MEM_ERROR("STR_SubStr: start and count may not be negative.");
        return "";
    };
    DSTSTR = "";
    ZSTRSRC = _^(_@S(STR));
    ZSTRDST = _^(_@S(DSTSTR));
    if ((ZSTRSRC.LEN) < ((START) + (COUNT))) {
        if ((ZSTRSRC.LEN) < (START)) {
            MEM_WARN("STR_SubStr: The desired start of the substring lies beyond the end of the string.");
            return "";
        };
        SAVESTR = STR;
        SAVESTART = START;
        SAVECOUNT = COUNT;
        MEM_WARN("STR_SubStr: The end of the desired substring exceeds the end of the string.");
        STR = SAVESTR;
        START = SAVESTART;
        COUNT = SAVECOUNT;
        COUNT = (ZSTRSRC.LEN) - (START);
    };
    ZSTRDST.PTR = (MEM_ALLOC((COUNT) + (2))) + (1);
    ZSTRDST.RES = COUNT;
    MEM_COPYBYTES((ZSTRSRC.PTR) + (START), ZSTRDST.PTR, COUNT);
    ZSTRDST.LEN = COUNT;
    return DSTSTR;
}

const int STR_SMALLER = -1;
func int STR_COMPARE(var string STR1, var string STR2) {
    var int STRNCMP_G1;
    var int STRNCMP_G2;
    var int RET;
    var int CALL;
    var int N;
    var int LEN1;
    var int LEN2;
    var int PTR2;
    var int PTR1;
    PTR1 = _@S(STR1);
    PTR2 = _@S(STR2);
    LEN1 = MEM_READINT((PTR1) + (12));
    LEN2 = MEM_READINT((PTR2) + (12));
    if ((LEN1) > (LEN2)) {
        N = LEN2;
    };
    N = LEN1;
    PTR1 = MEM_READINT((PTR1) + (8));
    PTR2 = MEM_READINT((PTR2) + (8));
    if ((!(PTR1)) && (!(PTR2))) {
        return STR_EQUAL;
    };
    if (!(PTR1)) {
        return STR_SMALLER;
    };
    if (!(PTR2)) {
        return STR_GREATER;
    };
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(N));
        CALL_PTRPARAM(_@(PTR2));
        CALL_PTRPARAM(_@(PTR1));
        CALL_PUTRETVALTO(_@(RET));
        CALL__CDECL(MEMINT_SWITCHG1G2(STRNCMP_G1, STRNCMP_G2));
        CALL = CALL_END();
    };
    if ((RET) == (0)) {
        if ((LEN1) > (LEN2)) {
            return STR_GREATER;
        };
        if ((LEN1) < (LEN2)) {
            return STR_SMALLER;
        };
    };
    return +(RET);
}

const int STRINT_SPLITARRAY = 0;
func void STRINT_SPLITRESET() {
    var int LOOPPOS;
    var int I;
    var ZCARRAY ARR;
    if (!(STRINT_SPLITARRAY)) {
        STRINT_SPLITARRAY = MEM_ARRAYCREATE();
        return;
    };
    ARR = _^(STRINT_SPLITARRAY);
    I = 0;
    LOOPPOS = MEM_STACKPOS.POSITION;
    if ((I) < (ARR.NUMINARRAY)) {
        MEM_FREE(MEM_READINTARRAY(ARR.ARRAY, (I) + (1)));
        I += 2;
        MEM_STACKPOS.POSITION = LOOPPOS;
    };
    MEM_ARRAYCLEAR(STRINT_SPLITARRAY);
}

func void STRINT_SPLIT(var string STR, var string SEPERATOR) {
    var int SUBSTR;
    var int LEN;
    var int WALKER;
    var int LOOPPOS;
    var int CURRTOKSTART;
    var int STREND;
    var int CSEP;
    var ZSTRING ZSTR;
    STRINT_SPLITRESET();
    ZSTR = _^(_@S(STR));
    if ((STR_LEN(SEPERATOR)) != (1)) {
        MEM_ERROR("STR_Split: Seperator must be a string of length 1!");
        return;
    };
    if ((ZSTR.LEN) == (0)) {
        MEM_ARRAYINSERT(STRINT_SPLITARRAY, 0);
        MEM_ARRAYINSERT(STRINT_SPLITARRAY, MEM_ALLOC(0));
        return;
    };
    CSEP = STR_GETCHARAT(SEPERATOR, 0);
    CURRTOKSTART = ZSTR.PTR;
    STREND = (ZSTR.PTR) + (ZSTR.LEN);
    WALKER = CURRTOKSTART;
    LOOPPOS = MEM_STACKPOS.POSITION;
    if ((WALKER) <= (STREND)) {
        if (((WALKER) == (STREND)) || ((MEM_READBYTE(WALKER)) == (CSEP))) {
            LEN = (WALKER) - (CURRTOKSTART);
            SUBSTR = MEM_ALLOC(LEN);
            MEM_COPYBYTES(CURRTOKSTART, SUBSTR, LEN);
            MEM_ARRAYINSERT(STRINT_SPLITARRAY, LEN);
            MEM_ARRAYINSERT(STRINT_SPLITARRAY, SUBSTR);
            CURRTOKSTART = (WALKER) + (1);
        };
        WALKER += 1;
        MEM_STACKPOS.POSITION = LOOPPOS;
    };
}

var string STRINT_SPLITSEPERATORCACHE;
func string STR_SPLIT(var string STR, var string SEPARATOR, var int OFFSET) {
    if (((HLP_STRCMP(STRINT_SPLITCACHE, STR)) && (!(HLP_STRCMP(STRINT_SPLITCACHE, "")))) && (HLP_STRCMP(STRINT_SPLITSEPERATORCACHE, SEPARATOR))) {
        return STRINT_SPLITGET(OFFSET);
    };
    STRINT_SPLIT(STR, SEPARATOR);
    STRINT_SPLITCACHE = STR;
    STRINT_SPLITSEPERATORCACHE = SEPARATOR;
    return STRINT_SPLITGET(OFFSET);
}

func int MEMINT_GETBUF_8K_SUB() {
    var int BUF;
    return BUF[0];
}

func int MEMINT_GETBUF_8K() {
    MEMINT_GETBUF_8K_SUB();
    MEMINT_STACKPOPINST();
    MEMINT_STACKPUSHINST(ZPAR_TOK_PUSHINT);
    return 0 /* !broken stack! */;
}

func int MEM_FINDPARSERSYMBOL(var string INST) {
    var int ZCPARSER__GETINDEX_G1;
    var int ZCPARSER__GETINDEX_G2;
    var int RET;
    var int CALL;
    var int PTR;
    PTR = _@S(INST);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(PTR));
        CALL_PUTRETVALTO(_@(RET));
        CALL__THISCALL(_@(CURRPARSERADDRESS), MEMINT_SWITCHG1G2(ZCPARSER__GETINDEX_G1, ZCPARSER__GETINDEX_G2));
        CALL = CALL_END();
    };
    return +(RET);
}

func int MEM_GETPARSERSYMBOL(var string INST) {
    var int SYMID;
    SYMID = MEM_FINDPARSERSYMBOL(INST);
    if ((SYMID) == (-(1))) {
        return 0;
    };
    return MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, SYMID);
}

func int MEM_GETSYMBOLBYINDEX(var int ID) {
    if (((ID) < (0)) || ((ID) >= (CURRSYMBOLTABLELENGTH))) {
        MEM_ERROR(CONCATSTRINGS("MEM_GetSymbolByIndex: Index is not in valid bounds: ", INTTOSTRING(ID)));
        return 0;
    };
    return MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, ID);
}

func void MEM_PUSHINTPARAM(var int PARAM) {
    MEMINT_PUSHINTPARAM(PARAM);
}

func void MEM_PUSHFLOATPARAM(var int INST) {
    MEMINT_STACKPUSHFLOAT(INST);
}

func void MEM_PUSHSTRINGPARAM(var string STR) {
    MEMINT_PUSHSTRINGPARAMSUB(STR);
}

func string MEM_POPSTRINGRESULT() {
    return 0 /* !broken stack! */;
}

func instance MEM_POPINSTRESULT() {
    return 0 /* !broken stack! */;
}

func void MEM_CALLBYID(var int SYMBID) {
    var int TYPE;
    var ZCPAR_SYMBOL SYM;
    if ((SYMBID) < (0)) {
        MEM_ERROR(CONCATSTRINGS("MEM_CallByID: symbID may not be negative but is ", INTTOSTRING(SYMBID)));
        return;
    };
    SYM = _^(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, SYMBID));
    TYPE = (SYM.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE);
    if ((((TYPE) != (ZPAR_TYPE_FUNC)) && ((TYPE) != (ZPAR_TYPE_PROTOTYPE))) && ((TYPE) != (ZPAR_TYPE_INSTANCE))) {
        MEM_ERROR(CONCATSTRINGS("MEM_CallByID: Provided symbol is not callable (not function, prototype or instance): ", SYM.NAME));
        return;
    };
    if ((SYM.BITFIELD) & (ZPAR_FLAG_EXTERNAL)) {
        CALL__STDCALL(SYM.CONTENT);
    };
    MEM_CALLBYPTR((SYM.CONTENT) + (CURRPARSERSTACKADDRESS));
}

func void MEM_CALL(var func FNC) {
    MEM_CALLBYID(MEM_GETFUNCID(5608));
}

func int MEM_GETFUNCIDBYOFFSET(var int OFFSET) {
    var int MED;
    var int LOOP;
    var int HIGH;
    var int MEDOFFSET;
    var int LOW;
    var int RES;
    var ZCARRAY ARRAY;
    var int TARGET;
    var int FUNCSTARTSARRAY;
    if (!(FUNCSTARTSARRAY)) {
        FUNCSTARTSARRAY = MEMINT_BUILDFUNCSTARTSARRAY();
    };
    if (((OFFSET) < (0)) || ((OFFSET) >= (MEM_PARSER.STACK_STACKSIZE))) {
        MEM_ERROR("MEM_GetFuncIDByOffset: Offset is not in valid bounds (0 <= offset < ParserStackSize).");
        return -(1);
    };
    if ((MEM_READBYTE((OFFSET) + (CURRPARSERSTACKADDRESS))) == (ZPAR_TOK_JUMP)) {
        TARGET = MEM_READINT(((OFFSET) + (CURRPARSERSTACKADDRESS)) + (1));
        if (((TARGET) >= (0)) && ((TARGET) < (MEM_PARSER.STACK_STACKSIZE))) {
            return MEM_GETFUNCIDBYOFFSET(TARGET);
        };
    };
    ARRAY = _^(FUNCSTARTSARRAY);
    RES = -(1);
    LOW = 0;
    HIGH = ((ARRAY.NUMINARRAY) / (2)) - (1);
    LOOP = MEM_STACKPOS.POSITION;
    MED = ((LOW) + (HIGH)) / (2);
    MEDOFFSET = MEM_READINTARRAY(ARRAY.ARRAY, (2) * (MED));
    if ((MEDOFFSET) >= (OFFSET)) {
        HIGH = MED;
    };
    if ((LOW) == (MED)) {
        if ((MEM_READINTARRAY(ARRAY.ARRAY, (2) * (HIGH))) <= (OFFSET)) {
            RES = HIGH;
        } else {
            RES = LOW;
        };
    };
    LOW = MED;
    if ((LOW) == (HIGH)) {
        RES = LOW;
    };
    if ((RES) != (-(1))) {
        return MEM_READINTARRAY(ARRAY.ARRAY, ((2) * (RES)) + (1));
    };
    MEM_STACKPOS.POSITION = LOOP;
    return 0 /* !broken stack! */;
}

func int MEMINT_ISFRAMEBOUNDARY(var int ESP) {
    var int RETADR;
    if (!(RETADR)) {
        RETADR = MEMINT_SWITCHG1G2(7246244, 7939332);
    };
    return ((MEM_READINT(ESP)) == (-(1))) && ((MEM_READINT((ESP) + (4))) == (RETADR));
}

const int MEMINT_DOSTACKFRAMESIZE = 88;
const int MEMINT_DOSTACKPOPPOSOFFSET = 152;
func int MEM_GETFRAMEBOUNDARY() {
    var int POPPOS;
    var int LOOP;
    var int MYID;
    var int OFFSET;
    var int REALESP;
    var int ESP;
    ESP = MEMINT_GETESP();
    if (!(OFFSET)) {
        REALESP = ESP;
        REALESP += (4) * (MEMINT_DOSTACKFRAMESIZE);
        REALESP = MEMINT_FINDFRAMEBOUNDARY(REALESP, MEMINT_DOSTACKFRAMESIZE);
        if (!(REALESP)) {
            MEM_ASSERTFAIL("MEM_GetFrameBoundary: Could not locate start of stackframe.");
            return 0;
        };
        MYID = MEM_GETFUNCID(5641);
        LOOP = MEM_STACKPOS.POSITION;
        POPPOS = MEM_READINTARRAY((REALESP) - (MEMINT_DOSTACKPOPPOSOFFSET), 0);
        REALESP += MEMINT_DOSTACKFRAMESIZE;
        if ((MEM_GETFUNCIDBYOFFSET(POPPOS)) != (MYID)) {
            MEM_STACKPOS.POSITION = LOOP;
        };
        OFFSET = (REALESP) - (ESP);
    };
    return (ESP) + (OFFSET);
}

func int MEM_GETCALLERSTACKPOS() {
    return MEM_READINT(((MEM_GETFRAMEBOUNDARY()) + ((2) * (MEMINT_DOSTACKFRAMESIZE))) - (MEMINT_DOSTACKPOPPOSOFFSET));
}

func void MEM_SETCALLERSTACKPOS(var int POPPOS) {
    MEM_WRITEINT(((MEM_GETFRAMEBOUNDARY()) + ((2) * (MEMINT_DOSTACKFRAMESIZE))) - (MEMINT_DOSTACKPOPPOSOFFSET), POPPOS);
}

func int MEMINT_TRACEPARAMETER(var int POS, var int TOKENARR, var int PARAMARR) {
    var ZCPAR_SYMBOL SYMB;
    var int SYMBID;
    var int TOK;
    var int LOOP;
    var int PARAMSNEEDED;
    PARAMSNEEDED = 1;
    LOOP = MEM_STACKPOS.POSITION;
    if ((POS) == (0)) {
        MEM_ERROR("MEMINT_TraceParameter: The parameter was pushed outside the function.");
        return -(1);
    };
    POS -= 1;
    TOK = MEM_ARRAYREAD(TOKENARR, POS);
    if (((((TOK) == (ZPAR_TOK_PUSHINT)) || ((TOK) == (ZPAR_TOK_PUSHVAR))) || ((TOK) == (ZPAR_TOK_PUSH_ARRAYVAR))) || ((TOK) == (ZPAR_TOK_PUSHINST))) {
        PARAMSNEEDED -= 1;
    };
    if (((((TOK) >= (ZPAR_TOK_ASSIGNSTR)) && ((TOK) <= (ZPAR_TOK_ASSIGNINST))) || ((TOK) == (ZPAR_OP_IS))) || (((TOK) <= (ZPAR_OP_ISDIV)) && ((TOK) >= (ZPAR_OP_ISPLUS)))) {
        MEM_ERROR("MEMINT_TraceParameter: Assignment within expression that is expected to produce non-void result. This does not make sense.");
        PARAMSNEEDED += 2;
    };
    if (((TOK) == (ZPAR_TOK_CALL)) || ((TOK) == (ZPAR_TOK_CALLEXTERN))) {
        if ((TOK) == (ZPAR_TOK_CALL)) {
            SYMBID = MEM_GETFUNCIDBYOFFSET(MEM_ARRAYREAD(PARAMARR, POS));
        } else {
            SYMBID = MEM_ARRAYREAD(PARAMARR, POS);
        };
        SYMB = _^(MEM_GETSYMBOLBYINDEX(SYMBID));
        PARAMSNEEDED += (SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE);
        PARAMSNEEDED -= (SYMB.OFFSET) != (0);
    };
    if ((((TOK) >= (ZPAR_OP_UNARY)) && ((TOK) <= (ZPAR_OP_MAX))) || ((TOK) == (ZPAR_TOK_SETINSTANCE))) {
    };
    if ((TOK) <= (ZPAR_OP_HIGHER_EQ)) {
        PARAMSNEEDED += 1;
    };
    MEM_ERROR("MEMINT_TraceParameter: Invalid token!");
    if ((PARAMSNEEDED) == (0)) {
        if ((POS) > (0)) {
            if ((MEM_ARRAYREAD(TOKENARR, (POS) - (1))) == (ZPAR_TOK_SETINSTANCE)) {
                POS -= 1;
            };
        };
        return POS;
    };
    MEM_STACKPOS.POSITION = LOOP;
    return 0 /* !broken stack! */;
}

const int BREAK = -42;
const int CONTINUE = -23;
const int END = -72;
func void WHILE(var int B) {
    var int CALLEDFROM;
    CALLEDFROM = (MEM_GETCALLERSTACKPOS()) - (5);
    if (((MEM_READBYTE((CALLEDFROM) + (CURRPARSERSTACKADDRESS))) != (ZPAR_TOK_CALL)) || ((MEM_READINT(((CALLEDFROM) + (1)) + (CURRPARSERSTACKADDRESS))) != (MEM_GETFUNCOFFSET(5724)))) {
        MEM_ERROR("while: While was called in an unorthodox way! This cannot be handled.");
        return;
    };
    MEMINT_PREPARELOOPSANDJUMPS(CALLEDFROM);
    B;
    MEM_SETCALLERSTACKPOS(CALLEDFROM);
}

func void MEM_GOTO(var int LBL) {
    var int CALLEDFROM;
    CALLEDFROM = (MEM_GETCALLERSTACKPOS()) - (5);
    if (((MEM_READBYTE((CALLEDFROM) + (CURRPARSERSTACKADDRESS))) != (ZPAR_TOK_CALL)) || ((MEM_READINT(((CALLEDFROM) + (1)) + (CURRPARSERSTACKADDRESS))) != (MEM_GETFUNCOFFSET(5729)))) {
        MEM_ERROR("MEM_Goto: MEM_Goto was called in an unorthodox way! This cannot be handled.");
        return;
    };
    MEMINT_PREPARELOOPSANDJUMPS(CALLEDFROM);
    MEM_SETCALLERSTACKPOS(CALLEDFROM);
}

func void MEMINT_REPEAT() {
    var int CALLEDFROM;
    CALLEDFROM = (MEM_GETCALLERSTACKPOS()) - (5);
    if (((MEM_READBYTE((CALLEDFROM) + (CURRPARSERSTACKADDRESS))) != (ZPAR_TOK_CALL)) || ((MEM_READINT(((CALLEDFROM) + (1)) + (CURRPARSERSTACKADDRESS))) != (MEM_GETFUNCOFFSET(5732)))) {
        MEM_ERROR("repeat: repeat was called in an unorthodox way! This cannot be handled.");
        return;
    };
    MEMINT_PREPARELOOPSANDJUMPS(CALLEDFROM);
    MEM_SETCALLERSTACKPOS(CALLEDFROM);
}

func void MEM_INITREPEAT() {
    var int DONE;
    if (!(DONE)) {
        MEM_REPLACEFUNC(5732, 5735);
        DONE = TRUE;
    };
}

class MEMINT_REPEATDATA {
	var int VARADR;
	var int LIMIT;
};
func void MEMINT_REPEATENTRYFIDDLE(var int LIMIT, var int LOOPDATA) {
    var int VARADR;
    var int TOK;
    TOK = MEMINT_STACKPOPINSTASINT();
    if ((TOK) != (ZPAR_TOK_PUSHVAR)) {
        MEM_ERROR("MEMINT_RepeatEntryFiddle: First Parameter given to MEM_Repeat is not an lValue (not modifiable).");
        return;
    };
    VARADR = MEMINT_STACKPOPINSTASINT();
    MEM_WRITEINT(VARADR, -(1));
    MEM_WRITEINT(LOOPDATA, VARADR);
    MEM_WRITEINT((LOOPDATA) + (4), LIMIT);
}

func int MEM_GETMENUITEMBYSTRING(var string MENUITEMNAME) {
    var ZCMENUITEM MENUITEM;
    var int MENUITEMADDR;
    var int LOOPSTART;
    var int POS;
    var ZCARRAY MENUITEMS;
    MENUITEMS = _^(MEMINT_MENUITEMARRAYADDRES);
    POS = 0;
    LOOPSTART = MEM_STACKPOS.POSITION;
    if ((POS) >= (MENUITEMS.NUMINARRAY)) {
        return 0;
    };
    MENUITEMADDR = MEM_READINTARRAY(MENUITEMS.ARRAY, POS);
    MENUITEM = _^(MENUITEMADDR);
    if (HLP_STRCMP(MENUITEM.ID, MENUITEMNAME)) {
        return MENUITEMADDR;
    };
    POS += 1;
    MEM_STACKPOS.POSITION = LOOPSTART;
    return 0 /* !broken stack! */;
}

instance MEM_WORLD(OWORLD);
instance MEM_TIMER(ZCTIMER);
instance MEM_WORLDTIMER(OCWORLDTIMER);
instance MEM_VOBTREE(ZCTREE);
instance MEM_INFOMAN(OCINFOMANAGER);
instance MEM_INFORMATIONMAN(OCINFORMATIONMANAGER);
instance MEM_WAYNET(ZCWAYNET);
instance MEM_CAMERA(ZCCAMERA);
instance MEM_SKYCONTROLLER(ZCSKYCONTROLLER_OUTDOOR);
instance MEM_SPAWNMANAGER(OCSPAWNMANAGER);
instance MEM_GAMEMANAGER(CGAMEMANAGER);
instance MEM_PARSER(ZCPARSER);
func void MEM_INITGLOBALINST() {
    MEM_GAME = _^(MEM_READINT(MEMINT_OGAME_POINTER_ADDRESS));
    MEM_WORLD = _^(MEM_GAME._ZCSESSION_WORLD);
    MEM_VOBTREE = _^((MEM_GAME._ZCSESSION_WORLD) + (36));
    if (MEM_GAME.INFOMAN) {
        MEM_INFOMAN = _^(MEM_GAME.INFOMAN);
    };
    MEM_ASSIGNINSTNULL(5770);
    MEM_INFORMATIONMAN = _^(MEMINT_OCINFORMATIONMANAGER_ADDRESS);
    MEM_WAYNET = _^(MEM_WORLD.WAYNET);
    if (MEM_GAME._ZCSESSION_CAMERA) {
        MEM_CAMERA = _^(MEM_GAME._ZCSESSION_CAMERA);
    };
    MEM_ASSIGNINSTNULL(5773);
    if (MEM_WORLD.SKYCONTROLEROUTDOOR) {
        MEM_SKYCONTROLLER = _^(MEM_WORLD.SKYCONTROLEROUTDOOR);
    };
    MEM_ASSIGNINSTNULL(5774);
    if (MEM_GAME.SPAWNMAN) {
        MEM_SPAWNMANAGER = _^(MEM_GAME.SPAWNMAN);
    };
    MEM_ASSIGNINSTNULL(5775);
    MEM_TIMER = _^(MEMINT_ZTIMER_ADDRESS);
    MEM_WORLDTIMER = _^(MEM_GAME.WLDTIMER);
    MEM_GAMEMANAGER = _^(MEM_READINT(MEMINT_GAMEMAN_POINTER_ADDRESS));
    MEM_PARSER = _^(CONTENTPARSERADDRESS);
}

func int HLP_IS_OCMOBFIRE(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBFIRE_VTBL);
}

func int HLP_IS_OCMOB(var int PTR) {
    var int VTBL;
    if (!(PTR)) {
        return 0;
    };
    VTBL = MEM_READINT(PTR);
    return ((((((((((VTBL) == (OCMOB_VTBL)) | ((VTBL) == (OCMOBINTER_VTBL))) | ((VTBL) == (OCMOBSWITCH_VTBL))) | ((VTBL) == (OCMOBWHEEL_VTBL))) | ((VTBL) == (OCMOBCONTAINER_VTBL))) | ((VTBL) == (OCMOBLOCKABLE_VTBL))) | ((VTBL) == (OCMOBLADDER_VTBL))) | ((VTBL) == (OCMOBFIRE_VTBL))) | ((VTBL) == (OCMOBBED_VTBL))) | ((VTBL) == (OCMOBDOOR_VTBL));
}

func int HLP_IS_OCMOBLOCKABLE(var int PTR) {
    var int VTBL;
    if (!(PTR)) {
        return 0;
    };
    VTBL = MEM_READINT(PTR);
    return (((VTBL) == (OCMOBCONTAINER_VTBL)) | ((VTBL) == (OCMOBLOCKABLE_VTBL))) | ((VTBL) == (OCMOBDOOR_VTBL));
}

func int HLP_IS_OCMOBDOOR(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBDOOR_VTBL);
}

func int HLP_IS_OCMOBSWITCH(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBSWITCH_VTBL);
}

func int HLP_IS_OCMOBLADDER(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBLADDER_VTBL);
}

func int HLP_IS_OCITEM(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCITEM_VTBL);
}

func int MEM_GETCLASSDEF(var int OBJPTR) {
    if (!(OBJPTR)) {
        MEM_ERROR("MEMINT_GetClassDef: ObjPtr == 0.");
        return 0;
    };
    return MEM_READINT((1) + (MEM_READINT(MEM_READINT(OBJPTR))));
}

func int MEM_INSERTVOB(var string VIS, var string WP) {
    var ZCTREE NEWTREENODE;
    var int OLDWORLD;
    var int WASINVALID;
    var int OCNPC__PLAYER_G1;
    var int OCNPC__PLAYER_G2;
    var int PLAYERADR;
    PLAYERADR = MEMINT_SWITCHG1G2(OCNPC__PLAYER_G1, OCNPC__PLAYER_G2);
    WASINVALID = 0;
    if (!(HLP_IS_OCNPC(MEM_READINT(PLAYERADR)))) {
        WASINVALID = 1;
        MEMINT_GETMEMHELPER();
        MEM_WRITEINT(PLAYERADR, MEM_INSTGETOFFSET(4910));
        OLDWORLD = MEM_HELPER._ZCVOB_HOMEWORLD;
        MEM_HELPER._ZCVOB_HOMEWORLD = MEM_INSTGETOFFSET(5766);
    };
    WLD_INSERTOBJECT(VIS, WP);
    if (WASINVALID) {
        MEM_WRITEINT(PLAYERADR, 0);
        MEM_HELPER._ZCVOB_HOMEWORLD = OLDWORLD;
    };
    NEWTREENODE = _^(MEM_WORLD.GLOBALVOBTREE_FIRSTCHILD);
    return NEWTREENODE.DATA;
}

func int MEM_GETSTRINGHASH(var string STR) {
    return MEM_GETBUFFERCRC32(STR_TOCHAR(STR), STR_LEN(STR));
}

func int MEM_SEARCHVOBBYNAME(var string STR) {
    var int OCWORLD__SEARCHVOBBYNAME_G2;
    var int OCWORLD__SEARCHVOBBYNAME_G1;
    var int WORLD;
    var int RET;
    var int CALL;
    var int PTR;
    PTR = _@S(STR);
    WORLD = _@(5766);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(PTR));
        CALL_PUTRETVALTO(_@(RET));
        CALL__THISCALL(_@(WORLD), MEMINT_SWITCHG1G2(OCWORLD__SEARCHVOBBYNAME_G1, OCWORLD__SEARCHVOBBYNAME_G2));
        CALL = CALL_END();
    };
    return +(RET);
}

func void MEM_RENAMEVOB(var int VOBPTR, var string NEWNAME) {
    var int ZCVOB_SETVOBNAME_G1;
    var int ZCVOB_SETVOBNAME_G2;
    var int CALL;
    var int PTR;
    PTR = _@S(NEWNAME);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(PTR));
        CALL_PUTRETVALTO(0);
        CALL__THISCALL(_@(VOBPTR), MEMINT_SWITCHG1G2(ZCVOB_SETVOBNAME_G1, ZCVOB_SETVOBNAME_G2));
        CALL = CALL_END();
    };
}

func void MEM_UNTRIGGERVOB(var int VOBPTR) {
    var int ZCEVENTMANAGER_ONUNTRIGGER_G1;
    var int ZCEVENTMANAGER_ONUNTRIGGER_G2;
    var int CALL;
    var int EVENTMAN;
    if (!(VOBPTR)) {
        MEM_ERROR("MEM_UntriggerVob: VobPtr may not be null!");
        return;
    };
    EVENTMAN = MEMINT_VOBGETEM(VOBPTR);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(VOBPTR));
        CALL_PTRPARAM(_@(VOBPTR));
        CALL_PUTRETVALTO(0);
        CALL__THISCALL(_@(EVENTMAN), MEMINT_SWITCHG1G2(ZCEVENTMANAGER_ONUNTRIGGER_G1, ZCEVENTMANAGER_ONUNTRIGGER_G2));
        CALL = CALL_END();
    };
}

const int KEY_PRESSED = 1;
const int KEY_HOLD = 2;
const int KEY_RELEASED = 3;
func int MEM_KEYPRESSED(var int KEY) {
    return (MEM_READINT((MEMINT_KEYEVENT_OFFSET) + (KEY))) & (255);
}

func int MEM_KEYSTATE(var int KEY) {
    var int ADR;
    var int KEYSTATE;
    var int PRESSED;
    PRESSED = MEM_KEYPRESSED(KEY);
    ADR = _@(MEMINT_KEYSTATE[0]);
    ADR += (4) * (KEY);
    KEYSTATE = MEM_READINT(ADR);
    if ((KEYSTATE) == (KEY_UP)) {
        if (PRESSED) {
            KEYSTATE = KEY_PRESSED;
        };
    };
    if ((KEYSTATE) == (KEY_PRESSED)) {
        if (PRESSED) {
            KEYSTATE = KEY_HOLD;
        } else {
            KEYSTATE = KEY_RELEASED;
        };
    };
    if ((KEYSTATE) == (KEY_HOLD)) {
        if (!(PRESSED)) {
            KEYSTATE = KEY_RELEASED;
        };
    };
    if (PRESSED) {
        KEYSTATE = KEY_PRESSED;
    };
    KEYSTATE = KEY_UP;
    MEM_WRITEINT(ADR, KEYSTATE);
    return KEYSTATE;
}

instance MEMINT_OPT_SET(ZCOPTION);
instance MEMINT_OPT_SECTION(ZCOPTIONSECTION);
instance MEMINT_OPT_ENTRY(ZCOPTIONENTRY);
func int MEMINT_OPT_FINDENTRY(var string OPTNAME) {
    var int PTR;
    var int LOOPSTART;
    var int I;
    if (!(MEMINT_OPT_SECTION.ENTRYLIST_NUMINARRAY)) {
        return FALSE;
    };
    I = 0;
    LOOPSTART = MEM_STACKPOS.POSITION;
    if ((I) < (MEMINT_OPT_SECTION.ENTRYLIST_NUMINARRAY)) {
        PTR = MEM_READINTARRAY(MEMINT_OPT_SECTION.ENTRYLIST_ARRAY, I);
        MEMINT_OPT_ENTRY = _^(PTR);
        if (HLP_STRCMP(MEMINT_OPT_ENTRY.VARNAME, OPTNAME)) {
            return TRUE;
        };
        I += 1;
        MEM_STACKPOS.POSITION = LOOPSTART;
    };
    return FALSE;
}

func string MEM_GETGOTHOPT(var string SECTIONNAME, var string OPTIONNAME) {
    MEMINT_OPT_SET = _^(MEM_READINT(ZOPTIONS_POINTER_ADDRESS));
    if (!(MEMINT_OPT_FINDSECTION(SECTIONNAME))) {
        return "";
    };
    if (!(MEMINT_OPT_FINDENTRY(OPTIONNAME))) {
        return "";
    };
    return MEMINT_OPT_ENTRY.VARVALUE;
}

func string MEM_GETMODOPT(var string SECTIONNAME, var string OPTIONNAME) {
    MEMINT_OPT_SET = _^(MEM_READINT(ZGAMEOPTIONS_POINTER_ADDRESS));
    if (!(MEMINT_OPT_FINDSECTION(SECTIONNAME))) {
        return "";
    };
    if (!(MEMINT_OPT_FINDENTRY(OPTIONNAME))) {
        return "";
    };
    return MEMINT_OPT_ENTRY.VARVALUE;
}

func string MEM_GETCOMMANDLINE() {
    MEMINT_OPT_SET = _^(MEM_READINT(ZOPTIONS_POINTER_ADDRESS));
    return MEMINT_OPT_SET.COMMANDLINE;
}

func void MEM_SETGOTHOPT(var string SECTION, var string OPTION, var string VALUE) {
    var int SECTPTR;
    var int NEWENTRY_PTR;
    var int NEWSECT_PTR;
    var int OPTSETPTR;
    OPTSETPTR = MEM_READINT(ZOPTIONS_POINTER_ADDRESS);
    MEMINT_OPT_SET = _^(OPTSETPTR);
    if (!(MEMINT_OPT_FINDSECTION(SECTION))) {
        MEM_INFO(CONCATSTRINGS("MEM_SetGothOpt: Creating new Section: ", SECTION));
        NEWSECT_PTR = MEM_ALLOC(SIZEOF_ZCOPTIONSECTION);
        MEMINT_OPT_SECTION = _^(NEWSECT_PTR);
        MEMINT_OPT_SECTION.SECNAME = SECTION;
        MEM_ARRAYINSERT((OPTSETPTR) + (8), NEWSECT_PTR);
    };
    if (!(MEMINT_OPT_FINDENTRY(OPTION))) {
        MEM_INFO(CONCATSTRINGS("MEM_SetGothOpt: Creating new entry: ", OPTION));
        NEWENTRY_PTR = MEM_ALLOC(SIZEOF_ZCOPTIONENTRY);
        MEMINT_OPT_ENTRY = _^(NEWENTRY_PTR);
        MEMINT_OPT_ENTRY.VARNAME = OPTION;
        SECTPTR = MEM_INSTGETOFFSET(5898);
        MEM_ARRAYINSERT((SECTPTR) + (20), NEWENTRY_PTR);
    };
    MEMINT_OPT_ENTRY.VARVALUE = VALUE;
    MEMINT_OPT_ENTRY.VARVALUETEMP = VALUE;
}

func int MEM_GETKEY(var string NAME) {
    var string RAW;
    RAW = MEM_GETGOTHOPT("KEYS", NAME);
    if ((STR_LEN(RAW)) < (4)) {
        MEM_WARN(CONCATSTRINGS("Could not find key with name: ", NAME));
        return 0;
    };
    return MEMINT_KEYSTRINGTOKEY(RAW);
}

func string MEMINT_BYTETOKEYHEX(var int BYTE) {
    var int MEM;
    var int C2;
    var int ASCII_0;
    var int ASCII_A;
    var int C1;
    BYTE = (BYTE) & (255);
    C1 = (BYTE) >> (4);
    if ((C1) >= (10)) {
        C1 += ((ASCII_A) - (ASCII_0)) - (10);
    };
    C2 = (BYTE) & (15);
    if ((C2) >= (10)) {
        C2 += ((ASCII_A) - (ASCII_0)) - (10);
    };
    if (!(MEM)) {
        MEM = MEM_ALLOC(3);
    };
    MEM_WRITEBYTE(MEM, (C1) + (ASCII_0));
    MEM_WRITEBYTE((MEM) + (1), (C2) + (ASCII_0));
    return STR_FROMCHAR(MEM);
}

func void MEM_SETKEY(var string NAME, var int KEY) {
    MEM_SETKEYS(NAME, KEY, MEM_GETSECONDARYKEY(NAME));
}

func int MEM_GETPERFORMANCECOUNTER() {
    var int QUERYPERFORMANCECOUNTER_G1;
    var int QUERYPERFORMANCECOUNTER_G2;
    var int CALL;
    var int BUF;
    var int SPACE;
    SPACE = _@(BUF[0]);
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(SPACE));
        CALL_PUTRETVALTO(0);
        CALL__STDCALL(MEMINT_SWITCHG1G2(QUERYPERFORMANCECOUNTER_G1, QUERYPERFORMANCECOUNTER_G2));
        CALL = CALL_END();
    };
    return BUF[0];
}

func void MEMINT_BENCHMARK_HELPER() {
    MEMINT_BENCHMARK_HELPER();
}

const int MEMINT_BENCHMARK_MS = 0;
const int MEMINT_BENCHMARK_PC = 1;
const int MEMINT_BENCHMARK_MMS = 2;
func int MEMINT_BENCHMARK(var func F, var int TIMES, var int UNIT) {
    var int PC;
    var int LOOP;
    var int STARTTIME;
    var int I;
    MEM_WRITEINT((MEM_GETFUNCPTR(5985)) + (1), MEM_GETFUNCOFFSET(5990));
    I = 0;
    if ((UNIT) == (MEMINT_BENCHMARK_MS)) {
        STARTTIME = MEM_GETSYSTEMTIME();
    };
    STARTTIME = MEM_GETPERFORMANCECOUNTER();
    LOOP = MEM_STACKPOS.POSITION;
    if ((I) < (TIMES)) {
        MEMINT_BENCHMARK_HELPER();
        I += 1;
        MEM_STACKPOS.POSITION = LOOP;
    };
    if ((UNIT) == (MEMINT_BENCHMARK_MS)) {
        return (MEM_GETSYSTEMTIME()) - (STARTTIME);
    };
    PC = (MEM_GETPERFORMANCECOUNTER()) - (STARTTIME);
    if ((UNIT) == (MEMINT_BENCHMARK_PC)) {
        return PC;
    };
    if ((PC) > (2147483)) {
        return ((PC) / (MEM_READINT(PC_TICKSPERMS_ADDRESS))) * (1000);
    };
    return ((PC) * (1000)) / (MEM_READINT(PC_TICKSPERMS_ADDRESS));
}

func int MEM_BENCHMARKMMS_N(var func F, var int N) {
    return MEMINT_BENCHMARK(6005, N, MEMINT_BENCHMARK_MMS);
}

func void MEMINT_SENDTOSPY_IMPLEMENTATION(var int ERRORTYPE, var string TEXT) {
    var int ZERROR_REPORT_G2;
    var int CALL;
    var int PTR;
    var int OLD_ACK_TYPE;
    var int NULL;
    var ZERROR ZERR;
    var int ZERR_G1;
    var int ZERR_G2;
    var int ZERROR_REPORT_G1;
    var int ZERRPTR;
    if ((ERRORTYPE) == (ZERR_TYPE_FATAL)) {
        TEXT = CONCATSTRINGS("  ", TEXT);
    };
    TEXT = CONCATSTRINGS("Q: ", TEXT);
    ZERRPTR = MEMINT_SWITCHG1G2(ZERR_G1, ZERR_G2);
    ZERR = _^(ZERRPTR);
    OLD_ACK_TYPE = ZERR.ACK_TYPE;
    if (MEMINT_FORCEERRORBOX) {
        if ((GOTHIC_BASE_VERSION) == (1)) {
            MEMORYPROTECTIONOVERRIDE(5199298, 1);
            MEM_WRITEBYTE(5199298, 1);
        };
        ZERR.ACK_TYPE = ZERR_TYPE_WARN;
        if ((ERRORTYPE) < (ZERR_TYPE_WARN)) {
            ERRORTYPE = ZERR_TYPE_WARN;
        };
        MEMINT_FORCEERRORBOX = 0;
    };
    ZERR.ACK_TYPE = ZERR_TYPE_FATAL;
    PTR = _@S(TEXT);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(NULL));
        CALL_PTRPARAM(_@(NULL));
        CALL_INTPARAM(_@(NULL));
        CALL_INTPARAM(_@(NULL));
        CALL_INTPARAM(_@(NULL));
        CALL_PTRPARAM(_@(PTR));
        CALL_PTRPARAM(_@(NULL));
        CALL_PTRPARAM(_@(ERRORTYPE));
        CALL_PUTRETVALTO(0);
        CALL__THISCALL(_@(ZERRPTR), MEMINT_SWITCHG1G2(ZERROR_REPORT_G1, ZERROR_REPORT_G2));
        CALL = CALL_END();
    };
    ZERR.ACK_TYPE = OLD_ACK_TYPE;
}

var int MEMINT_EXCEPTIONHANDLERESP;
var int MEMINT_TOPPOPPOS;
func void MEMINT_EXCEPTIONHANDLER() {
    var int LOOP;
    var int FILTERLEVELBAK;
    var ZERROR ERR;
    var int ESP;
    var int INVOKED_ONCE;
    if (!(INVOKED_ONCE)) {
        INVOKED_ONCE = TRUE;
        ERR = _^(ZERRPTR);
        FILTERLEVELBAK = ERR.FILTER_LEVEL;
        ERR.FILTER_LEVEL = 1;
        MEM_SENDTOSPY(ZERR_TYPE_FAULT, "[start of stacktrace]");
        MEMINT_PRINTSTACKTRACELINE((MEMINT_TOPPOPPOS) - (MEM_PARSER.STACK_STACK));
        ESP = MEMINT_FINDFRAMEBOUNDARY(MEMINT_EXCEPTIONHANDLERESP, 500);
        if (ESP) {
            ESP += MEMINT_DOSTACKFRAMESIZE;
            LOOP = MEM_STACKPOS.POSITION;
            MEMINT_PRINTSTACKTRACELINE(MEM_READINT((ESP) - (MEMINT_DOSTACKPOPPOSOFFSET)));
            if (MEMINT_ISFRAMEBOUNDARY(ESP)) {
                ESP += MEMINT_DOSTACKFRAMESIZE;
                MEM_STACKPOS.POSITION = LOOP;
            };
        };
        MEM_SENDTOSPY(ZERR_TYPE_FAULT, "[end of stacktrace]");
        ERR.FILTER_LEVEL = FILTERLEVELBAK;
        MEM_ERRORBOX("Exception handler was invoked. Ikarus tried to print a Daedalus-Stacktrace to zSpy. Gothic will now crash and probably give you a stacktrace of its own.");
    };
}

func void MEMINT_SETUPEXCEPTIONHANDLER() {
    var int ZCPARSER__DOSTACK_SEH_PUSHER_G2;
    var int SEHPUSHER;
    var int ZCPARSER__DOSTACK_SEH_G1;
    var int ZCPARSER__DOSTACK_SEH_G2;
    var int SEH;
    var int ZCPARSER__DOSTACK_G1;
    var int ZCPARSER__DOSTACK_G2;
    var int ZCPARSER__DOSTACK_SEH_PUSHER_G1;
    var int HANDLEROFFSET;
    var int CALL;
    if (!(CALL)) {
        CALL_OPEN();
        HANDLEROFFSET = MEM_GETFUNCOFFSET(6048);
        ASM_1(ASMINT_OP_MOVMEMTOEAX);
        ASM_4(_@(MEM_PARSER.STACK_STACKPTR));
        ASM_2(ASMINT_OP_MOVEAXTOMEM);
        ASM_4(_@(MEMINT_TOPPOPPOS));
        ASM_2(ASMINT_OP_MOVESPTOEAX);
        ASM_2(ASMINT_OP_MOVEAXTOMEM);
        ASM_4(_@(MEMINT_EXCEPTIONHANDLERESP));
        CALL_INTPARAM(_@(HANDLEROFFSET));
        CALL_PUTRETVALTO(0);
        CALL__THISCALL(_@(CONTENTPARSERADDRESS), MEMINT_SWITCHG1G2(ZCPARSER__DOSTACK_G1, ZCPARSER__DOSTACK_G2));
        SEH = MEMINT_SWITCHG1G2(ZCPARSER__DOSTACK_SEH_G1, ZCPARSER__DOSTACK_SEH_G2);
        ASM_1(ASMINT_OP_JMP);
        ASM_4((SEH) - ((ASM_HERE()) + (4)));
        CALL = CALL_CLOSE();
        SEHPUSHER = MEMINT_SWITCHG1G2(ZCPARSER__DOSTACK_SEH_PUSHER_G1, ZCPARSER__DOSTACK_SEH_PUSHER_G2);
        MEMORYPROTECTIONOVERRIDE(SEHPUSHER, 4);
        MEM_WRITEINT(SEHPUSHER, CALL);
    };
}

func void MEMINT_REPLACELOGGINGFUNCTIONS() {
    var int INIT;
    if (!(INIT)) {
        INIT = TRUE;
        MEM_INFO("This will be the last Ikarus message printed with PrintDebug and prefix 'U: Skript:'. Subsequent messages will be printed with prefix 'Q:'.");
        MEM_REPLACEFUNC(4867, 6012);
        MEM_INFO("Ikarus log functions now print in colour with prefix 'Q:'.");
        MEM_REPLACEFUNC(4872, 6037);
    };
}

func void MEM_READINT_() {
    var int I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
}

func void MEM_WRITEINT_() {
    var int I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
}

func int MEM_READBYTE_(var int ADDR) {
    var int RET;
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        ASM_OPEN(15);
        ASM_1(ASMINT_OP_PUSHEAX);
        ASM_1(ASMINT_OP_MOVMEMTOEAX);
        ASM_4(_@(ADDR));
        ASM_2(ASMINT_OP_MOVEAXTOAL);
        ASM_1(ASMINT_OP_MOVALTOMEM);
        ASM_4(_@(RET));
        ASM_1(ASMINT_OP_POPEAX);
        CALL = CALL_END();
    };
    return +(RET);
}

func void MEMINT_INITFASTERREADWRITE() {
    var int BUF;
    var int ID;
    MEMINT_INITOVERIDEFUNC(6067);
    MEMINT_OFTOK(ZPAR_OP_UN_PLUS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, 6080);
    MEMINT_OFTOK(ZPAR_TOK_ASSIGNINST);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, ZPAR_TOK_PUSHVAR);
    MEMINT_OFTOK(ZPAR_OP_UN_PLUS);
    MEMINT_OFTOK(ZPAR_TOK_RET);
    MEM_REPLACEFUNC(4916, 6067);
    MEM_REPLACEFUNC(4939, 6071);
    MEM_REPLACEFUNC(4941, 6075);
    ID = MEM_GETFUNCID(4933);
    MEMINT_INITOVERIDEFUNC(6069);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHVAR, (ID) + (2));
    MEMINT_OFTOK(ZPAR_OP_IS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHVAR, (ID) + (1));
    MEMINT_OFTOK(ZPAR_OP_IS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHVAR, (ID) + (2));
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHVAR, (ID) + (1));
    MEMINT_OFTOK(ZPAR_OP_UN_PLUS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, 6080);
    MEMINT_OFTOK(ZPAR_TOK_ASSIGNINST);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, ZPAR_TOK_PUSHVAR);
    MEMINT_OFTOK(ZPAR_OP_IS);
    MEMINT_OFTOK(ZPAR_TOK_RET);
    BUF = MEM_ALLOC(5);
    MEM_WRITEBYTE(BUF, ZPAR_TOK_JUMP);
    MEM_WRITEINT((BUF) + (1), MEM_GETFUNCOFFSET(6069));
    MEM_COPYBYTES(BUF, MEM_GETFUNCPTR(4933), 5);
}

func void MEMINT_INITFASTERPUSHINST() {
    MEMINT_INITOVERIDEFUNC(4900);
    MEMINT_OFTOK(ZPAR_OP_UN_PLUS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, 6084);
    MEMINT_OFTOK(ZPAR_TOK_ASSIGNINST);
    MEMINT_OFTOK(ZPAR_TOK_RET);
}

func int MEM_ALLOC_(var int ELE) {
    var int CALLOC_PTR;
    var int RET;
    var int CALL;
    var int SIZE;
    SIZE = 1;
    if (CALL_BEGIN(CALL)) {
        CALLOC_PTR = MEMINT_SWITCHG1G2(7712240, 8078576);
        CALL_INTPARAM(_@(SIZE));
        CALL_INTPARAM(_@(ELE));
        CALL_PUTRETVALTO(_@(RET));
        CALL__CDECL(CALLOC_PTR);
        CALL = CALL_END();
    };
    return +(RET);
}

func void MEMINT_REPLACESLOWFUNCTIONS() {
    var int INIT;
    if (!(INIT)) {
        INIT = TRUE;
        MEM_FREE_(MEM_ALLOC_(1));
        MEM_REPLACEFUNC(5086, 6085);
        MEM_REPLACEFUNC(5094, 6091);
        MEMINT_INITFASTERREADWRITE();
        MEMINT_INITFASTERPUSHINST();
        MEM_REPLACEFUNC(4982, 4978);
    };
}

func void MEMINT_VERSIONERROR() {
    var string G2EN;
    var string G1;
    var string G2;
    var string STR;
    STR = "Diese Mod funktioniert nur mit ";
    if ((GOTHIC_BASE_VERSION) == (1)) {
        STR = CONCATSTRINGS(STR, G1);
    };
    STR = CONCATSTRINGS(STR, G2);
    STR = CONCATSTRINGS(STR, ", da sie Funktionalität aus dem Skriptpaket 'Ikarus' verwendet. Es ist wahrscheinlich, dass Gothic unmittelbar nach dieser Fehlermeldung abstürzt. Die genannte Version von Gothic steht zum Beispiel auf worldofgothic.de zum Download bereit. Der merkwürdige Charakter dieser Fehlermeldung ist leider nicht zu vermeiden. ### This mod only works with ");
    if ((GOTHIC_BASE_VERSION) == (1)) {
        STR = CONCATSTRINGS(STR, G1);
    };
    STR = CONCATSTRINGS(STR, G2EN);
    STR = CONCATSTRINGS(STR, ", because it uses parts of the script package 'Ikarus'. Gothic will probably crash immediatly after displaying this error message. Said version of Gothic is available for download at worldofgothic.com. The weirdness of this error message is unavoidable.                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                !README!                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                                           ");
    WLD_INSERTOBJECT(STR, TOT);
}

func int MEMINT_REPORTVERSIONCHECK() {
    var int PTR;
    var int VAL;
    VAL = MEMINT_SWITCHG1G2(-(521402937), 504628679);
    PTR = 4198400;
    if ((MEM_READINT(PTR)) != (VAL)) {
        MEMINT_VERSIONERROR();
        return FALSE;
    };
    return TRUE;
}

func void MEM_INITALL() {
    var int DUMP;
    if (!(MEMINT_REPORTVERSIONCHECK())) {
        return;
    };
    MEM_REINITPARSER();
    MEM_INITLABELS();
    MEM_INITGLOBALINST();
    MEM_GETADDRESS_INIT();
    MEM_INITSTATARRS();
    ASMINT_INIT();
    MEMINT_REPLACELOGGINGFUNCTIONS();
    MEMINT_REPLACESLOWFUNCTIONS();
    MEM_INITREPEAT();
    DUMP = MEM_GETFUNCIDBYOFFSET(0);
}

