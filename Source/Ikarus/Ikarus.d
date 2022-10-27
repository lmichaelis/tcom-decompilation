const int IKARUS_VERSION = 10202;
func int MEM_CHECKVERSION(var int BASE, var int MAJOR, var int MINOR) {
    if (((MAJOR) > (99)) || ((MINOR) > (99))) {
        return FALSE;
    };
    return ((((BASE) * (0x2710)) + ((MAJOR) * (100))) + (MINOR)) <= (IKARUS_VERSION);
}

var int MEMINT_FORCEERRORBOX = 0;
func void MEM_SENDTOSPY(var int ERRORTYPE, var string TEXT) {
    PRINTDEBUG(CONCATSTRINGS(TEXT, "<<< (This is a preliminary printing variant, use MEM_InitAll to get neat 'Q:' prefixed messages.) >>>"));
}

func void MEM_ERRORBOX(var string TEXT) {
    MEMINT_FORCEERRORBOX = TRUE;
    MEM_SENDTOSPY(ZERR_TYPE_FAULT, TEXT);
}

func void MEM_PRINTSTACKTRACE() {
    ERROR = "MEM_PrintStackTrace: Cannot print the stacktrace before MEM_InitAll was called!";
    MEM_SENDTOSPY(ZERR_TYPE_FAULT, ERROR);
}

var string MEM_PRINTSTACKTRACE.ERROR = "";
func void MEMINT_HANDLEERROR(var int ERRORTYPE, var string TEXT) {
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

const int MEMINT_HANDLEERROR.ONCE = 0;
const int MEMINT_HANDLEERROR.ERRORBOXONCE = 0;
func void MEM_ERROR(var string ERROR) {
    MEMINT_HANDLEERROR(ZERR_TYPE_FAULT, ERROR);
}

func void MEM_WARN(var string WARN) {
    MEMINT_HANDLEERROR(ZERR_TYPE_WARN, WARN);
}

func void MEM_INFO(var string INFO) {
    if (((ZERR_REPORTTOZSPY) > (ZERR_TYPE_INFO)) && ((ZERR_PRINTSTACKTRACE) > (ZERR_TYPE_INFO))) {
        return;
    };
    MEMINT_HANDLEERROR(ZERR_TYPE_INFO, INFO);
}

func void MEM_ASSERTFAIL(var string ASSERTFAILTEXT) {
    ASSERTFAILTEXT = CONCATSTRINGS("Assertion failed. Report this: ", ASSERTFAILTEXT);
    MEM_ERROR(ASSERTFAILTEXT);
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

class MEMINT_HELPERCLASS {
};
instance MEMINT_INSTUNASSIGNED(MEMINT_HELPERCLASS)
instance MEMINT_POPDUMP(MEMINT_HELPERCLASS)
func int MEMINT_STACKPUSHINT(var int VAL) {
    return +(VAL);
}

func float MEMINT_STACKPUSHFLOAT(var int VAL) {
    return VAL;
}

func string MEMINT_STACKPUSHSTRING(var string VAL) {
    return VAL;
}

func instance MEMINT_STACKPOPINSTSUB() {
    return 0 /* !broken stack! */;
}

func void MEMINT_STACKPOPINST() {
    MEMINT_POPDUMP = MEMINT_STACKPOPINSTSUB();
}

func void MEMINT_STACKPUSHINST(var int VAL) {
    MEMINT_STACKPUSHINT(VAL);
    MEMINT_STACKPOPINST();
}

func void MEMINT_STACKPUSHVAR(var int ADR) {
    MEMINT_STACKPUSHINST(ADR);
    MEMINT_STACKPUSHINST(ZPAR_TOK_PUSHVAR);
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

instance MEM_HELPER(OCNPC)
func void MEMINT_GETMEMHELPER() {
    MEM_HELPER = HLP_GETNPC(0x132d);
    if (!(HLP_ISVALIDNPC(MEM_HELPER))) {
        SELFBAK = HLP_GETNPC(0x717);
        WLD_INSERTNPC(0x132d, TOT);
        MEM_HELPER = HLP_GETNPC(0x717);
        SELF = HLP_GETNPC(0x1330);
    };
}

instance MEMINT_GETMEMHELPER.SELFBAK(C_NPC)
func int MEMINT_SWITCHG1G2(var int G1VAL, var int G2VAL) {
    if ((GOTHIC_BASE_VERSION) == (1)) {
        return +(G1VAL);
    };
    return +(G2VAL);
}

func int MEM_READINT(var int ADDRESS) {
    if ((ADDRESS) == (0)) {
        MEM_ERROR("MEM_ReadInt: address is NULL");
        return 0;
    };
    MEMINT_STACKPUSHVAR(ADDRESS);
    return MEMINT_STACKPUSHINT(MEMINT_STACKPOPINT());
}

func string MEM_READSTRING(var int ADDRESS) {
    if ((ADDRESS) == (0)) {
        MEM_ERROR("MEM_ReadString: address is NULL");
        return "";
    };
    MEMINT_STACKPUSHVAR(ADDRESS);
    return 0 /* !broken stack! */;
}

func void MEMINT_OLDWRITEINT(var int ADDRESS, var int VAL) {
    MEM_HELPER.ENEMY = (ADDRESS) - (MEM_NPCID_OFFSET);
    RES = NPC_GETTARGET(MEM_HELPER);
    OTHER.ID = VAL;
}

var int MEMINT_OLDWRITEINT.RES = 0;
func void MEMINT_PREPAREASSIGNMENTS() {
    SYMTAB = MEM_READINT((CONTENTPARSERADDRESS) + (ZCPARSER_SYMTAB_TABLE_ARRAY_OFFSET));
    STACKSTART = MEM_READINT((CONTENTPARSERADDRESS) + (ZCPARSER_STACK_OFFSET));
    MEMINT_ASSIGN_SYM = MEM_READINT((SYMTAB) + ((4) * ((0x1342) + (1))));
    MEMINT_ASSIGN_STACKPOS = MEM_READINT((MEMINT_ASSIGN_SYM) + (ZCPARSYMBOL_CONTENT_OFFSET));
    MEMINT_GETMEMHELPER();
    OTHBAK = HLP_GETNPC(0x718);
    MEMINT_OLDWRITEINT((STACKSTART) + (MEMINT_ASSIGN_STACKPOS), ((((ZPAR_OP_IS) << (0)) | ((ZPAR_TOK_RET) << (8))) | ((ZPAR_TOK_RET) << (16))) | ((ZPAR_TOK_RET) << (24)));
    MEMINT_OLDWRITEINT(((STACKSTART) + (MEMINT_ASSIGN_STACKPOS)) + (4), ((((ZPAR_TOK_RET) << (0)) | ((ZPAR_OP_IS) << (8))) | ((ZPAR_TOK_RET) << (16))) | ((ZPAR_TOK_RET) << (24)));
    MEMINT_OLDWRITEINT(((STACKSTART) + (MEMINT_ASSIGN_STACKPOS)) + (8), ((((ZPAR_TOK_ASSIGNSTR) << (0)) | ((ZPAR_TOK_RET) << (8))) | ((ZPAR_TOK_RET) << (16))) | ((ZPAR_TOK_RET) << (24)));
    MEMINT_OLDWRITEINT(((STACKSTART) + (MEMINT_ASSIGN_STACKPOS)) + (12), ((((ZPAR_TOK_RET) << (0)) | ((ZPAR_TOK_ASSIGNSTR) << (8))) | ((ZPAR_TOK_RET) << (16))) | ((ZPAR_TOK_RET) << (24)));
    MEM_HELPER.ENEMY = 0;
    OTHER = HLP_GETNPC(0x1341);
}

var int MEMINT_PREPAREASSIGNMENTS.SYMTAB = 0;
var int MEMINT_PREPAREASSIGNMENTS.MEMINT_ASSIGN_SYM = 0;
var int MEMINT_PREPAREASSIGNMENTS.MEMINT_ASSIGN_STACKPOS = 0;
var int MEMINT_PREPAREASSIGNMENTS.STACKSTART = 0;
instance MEMINT_PREPAREASSIGNMENTS.OTHBAK(C_NPC)
instance MEMINT_ASSIGNPREDECESSOR(MEMINT_HELPERCLASS)
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

func void MEM_WRITESTRING(var int ADDRESS, var string VAL) {
    if ((ADDRESS) == (0)) {
        MEM_ERROR("MEM_WriteString: address is NULL");
        return;
    };
    MEMINT_STACKPUSHSTRING(VAL);
    MEMINT_STACKPUSHVAR(ADDRESS);
    MEMINT_STRASSIGN();
}

func int MEM_READBYTE(var int ADR) {
    return (MEM_READINT(ADR)) & (255);
}

func void MEM_WRITEBYTE(var int ADR, var int VAL) {
    if ((VAL) & (~(255))) {
        MEM_WARN("MEM_WriteByte: Val out of range! Truncating to 8 bits.");
        VAL = (VAL) & (255);
    };
    MEM_WRITEINT(ADR, ((MEM_READINT(ADR)) & (~(255))) | (VAL));
}

func int MEM_READINTARRAY(var int ARRAYADDRESS, var int OFFSET) {
    return MEM_READINT((ARRAYADDRESS) + ((4) * (OFFSET)));
}

func void MEM_WRITEINTARRAY(var int ARRAYADDRESS, var int OFFSET, var int VALUE) {
    MEM_WRITEINT((ARRAYADDRESS) + ((4) * (OFFSET)), VALUE);
}

func int MEM_READBYTEARRAY(var int ARRAYADDRESS, var int OFFSET) {
    return MEM_READBYTE((ARRAYADDRESS) + (OFFSET));
}

func void MEM_WRITEBYTEARRAY(var int ARRAYADDRESS, var int OFFSET, var int VALUE) {
    MEM_WRITEBYTE((ARRAYADDRESS) + (OFFSET), VALUE);
}

func void MEM_WRITESTRINGARRAY(var int ARRAYADDRESS, var int OFFSET, var string VALUE) {
    MEM_WRITESTRING((ARRAYADDRESS) + ((SIZEOF_ZSTRING) * (OFFSET)), VALUE);
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

var int MEM_ASSIGNINSTSUPPRESSNULLWARNING = 0;
func void MEM_ASSIGNINST(var int INST, var int PTR) {
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

var int MEM_ASSIGNINST.SYM = 0;
func void MEM_ASSIGNINSTNULL(var int INST) {
    MEM_ASSIGNINSTSUPPRESSNULLWARNING = TRUE;
    MEM_ASSIGNINST(INST, 0);
    MEM_ASSIGNINSTSUPPRESSNULLWARNING = FALSE;
}

func instance MEM_PTRTOINST(var int PTR) {
    if (!(HLPOFFSETPTR)) {
        HLPOFFSETPTR = (MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, 0x1374)) + (ZCPARSYMBOL_OFFSET_OFFSET);
    };
    if (((PTR) == (0)) && (!(MEM_ASSIGNINSTSUPPRESSNULLWARNING))) {
        MEM_WARN("MEM_PtrToInst: ptr is NULL. Use MEM_NullToInst if that's what you want.");
        MEM_WRITEINT(HLPOFFSETPTR, 0);
    };
    MEM_WRITEINT(HLPOFFSETPTR, PTR);
    MEMINT_STACKPUSHINST(0x1374);
    return 0 /* !broken stack! */;
}

instance MEM_PTRTOINST.HLP(MEMINT_HELPERCLASS)
const int MEM_PTRTOINST.HLPOFFSETPTR = 0;
func instance _^(var int PTR) {
    return MEM_PTRTOINST(PTR);
}

func instance MEM_NULLTOINST() {
    MEMINT_STACKPUSHINST(0x1379);
    return 0 /* !broken stack! */;
}

instance MEM_NULLTOINST.HLP(MEMINT_HELPERCLASS)
func instance MEM_CPYINST(var int INST) {
    MEMINT_STACKPUSHINST(INST);
    return 0 /* !broken stack! */;
}

func void MEM_ASSIGNCONTENTINST(var int INST, var int PTR) {
    if (!(ONCE)) {
        ONCE = TRUE;
        MEM_WARN("MEM_AssignContentInst: This function was deprecated in Ikarus Version 1.2. Use the equivalent MEM_AssignInst instead.");
    };
    MEM_ASSIGNINST(INST, PTR);
}

const int MEM_ASSIGNCONTENTINST.ONCE = 0;
func void MEM_ASSIGNCONTENTINSTNULL(var int INST) {
    if (!(ONCE)) {
        ONCE = TRUE;
        MEM_WARN("MEM_AssignContentInstNull: This function was deprecated in Ikarus Version 1.2. Use the equivalent MEM_AssignInstNull instead.");
    };
    MEM_ASSIGNINSTNULL(INST);
}

const int MEM_ASSIGNCONTENTINSTNULL.ONCE = 0;
func int MEM_INSTTOPTR(var int INST) {
    if ((INST) <= (0)) {
        MEM_ERROR(CONCATSTRINGS("MEM_InstGetOffset: Invalid inst: ", INTTOSTRING(INST)));
        return 0;
    };
    SYMB = MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, INST);
    return MEM_READINT((SYMB) + (ZCPARSYMBOL_OFFSET_OFFSET));
}

var int MEM_INSTTOPTR.SYMB = 0;
func int MEM_INSTGETOFFSET(var int INST) {
    return MEM_INSTTOPTR(INST);
}

instance CURRPARSERSYMB(ZCPAR_SYMBOL)
func void MEM_SETCURRPARSERSYMB(var int INST) {
    if ((INST) <= (0)) {
        MEM_ERROR(CONCATSTRINGS("MEM_SetCurrParserSymb: Invalid inst: ", INTTOSTRING(INST)));
        return;
    };
    SYMOFFSET = MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, INST);
    CURRPARSERSYMOFFSET = MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, 0x1388);
    MEM_WRITEINT((CURRPARSERSYMOFFSET) + (ZCPARSYMBOL_OFFSET_OFFSET), SYMOFFSET);
}

var int MEM_SETCURRPARSERSYMB.SYMOFFSET = 0;
var int MEM_SETCURRPARSERSYMB.CURRPARSERSYMOFFSET = 0;
class MEMINT_STACKPOS {
	var int POSITION;
};

instance MEM_STACKPOS(MEMINT_STACKPOS)
func void MEM_INITLABELS() {
    MEM_STACKPOS = _^((CONTENTPARSERADDRESS) + (ZCPARSER_STACK_STACKPTR_OFFSET));
}

func void MEM_CALLBYPTR(var int PTR) {
    MEM_STACKPOS.POSITION = PTR;
}

func void MEM_CALLBYOFFSET(var int OFFSET) {
    MEM_CALLBYPTR((OFFSET) + (CURRPARSERSTACKADDRESS));
}

func int MEM_GETFUNCID(var func FNC) {
    SYMB = MEM_PTRTOINST(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, (0x1397) - (1)));
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

instance MEM_GETFUNCID.SYMB(ZCPAR_SYMBOL)
var int MEM_GETFUNCID.RES = 0;
var int MEM_GETFUNCID.LOOP = 0;
func int MEM_GETFUNCOFFSET(var func FNC) {
    R = MEM_GETFUNCID(0x139b);
    R = MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, R);
    R = MEM_READINT((R) + (ZCPARSYMBOL_CONTENT_OFFSET));
    return (R) + (0);
}

var int MEM_GETFUNCOFFSET.R = 0;
func int MEM_GETFUNCPTR(var func FNC) {
    return (MEM_GETFUNCOFFSET(0x139e)) + (CURRPARSERSTACKADDRESS);
}

func void MEM_REPLACEFUNC(var func F1, var func F2) {
    PTR = MEM_GETFUNCPTR(0x13a0);
    TARGET = MEM_GETFUNCOFFSET(0x13a1);
    MEM_WRITEBYTE(PTR, ZPAR_TOK_JUMP);
    MEM_WRITEINT((PTR) + (1), TARGET);
}

var int MEM_REPLACEFUNC.PTR = 0;
var int MEM_REPLACEFUNC.TARGET = 0;
var int MEMINT_OVERRIDEFUNC_PTR = 0;
func void MEMINT_INITOVERIDEFUNC(var func F) {
    MEMINT_OVERRIDEFUNC_PTR = MEM_GETFUNCPTR(0x13a6);
}

func void MEMINT_OFTOK(var int TOK) {
    MEM_WRITEBYTE(MEMINT_OVERRIDEFUNC_PTR, TOK);
    MEMINT_OVERRIDEFUNC_PTR += 1;
}

func void MEMINT_OFTOKPAR(var int TOK, var int PARAM) {
    MEMINT_OFTOK(TOK);
    MEM_WRITEINT(MEMINT_OVERRIDEFUNC_PTR, PARAM);
    MEMINT_OVERRIDEFUNC_PTR += 4;
}

func int MEM_GETINTADDRESS(var int I) {
    MEM_ERROR("MEM_GetIntAddress called before MEM_GetAddress_Init!");
    return 0;
}

func int MEM_GETFLOATADDRESS(var float F) {
    MEM_ERROR("MEM_GetFloatAddress called before MEM_GetAddress_Init!");
    return 0;
}

func int MEM_GETSTRINGADDRESS(var string S) {
    MEM_ERROR("MEM_GetStringAddress called before MEM_GetAddress_Init!");
    return 0;
}

func int _@(var int I) {
    MEM_ERROR("_@ called before MEM_GetAddress_Init!");
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    I = I;
    return 0;
}

func int _@S(var string S) {
    MEM_ERROR("_@s called before MEM_GetAddress_Init!");
    return 0;
}

func int _@F(var float F) {
    MEM_ERROR("_@f called before MEM_GetAddress_Init!");
    return 0;
}

func void MEMINT_GETADDRESS_INIT(var func F) {
    MEMINT_INITOVERIDEFUNC(0x13b9);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, 0x13ba);
    MEMINT_OFTOK(ZPAR_TOK_ASSIGNINST);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, ZPAR_TOK_PUSHINT);
    MEMINT_OFTOK(ZPAR_TOK_RET);
}

instance MEMINT_GETADDRESS_INIT.SYMB(MEMINT_HELPERCLASS)
func void MEM_GETADDRESS_INIT() {
    if (!(INIT_DONE)) {
        MEMINT_GETADDRESS_INIT(0x13ac);
        MEMINT_GETADDRESS_INIT(0x13ae);
        MEMINT_GETADDRESS_INIT(0x13b0);
        MEMINT_GETADDRESS_INIT(0x13be);
        MEMINT_GETADDRESS_INIT(0x13b6);
        MEMINT_GETADDRESS_INIT(0x13b4);
        MEMINT_INITOVERIDEFUNC(0x13b2);
        MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, ZPAR_TOK_PUSHINT);
        MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINT, ZPAR_TOK_PUSHINT);
        MEMINT_OFTOK(ZPAR_OP_EQUAL);
        MEMINT_OFTOKPAR(ZPAR_TOK_JUMPF, ((MEMINT_OVERRIDEFUNC_PTR) + (16)) - (CURRPARSERSTACKADDRESS));
        MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, ZPAR_TOK_PUSHINT);
        MEMINT_OFTOKPAR(ZPAR_TOK_CALL, MEM_GETFUNCOFFSET(0x1383));
        MEMINT_OFTOK(ZPAR_TOK_RET);
        MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, ZPAR_TOK_PUSHINT);
        MEMINT_OFTOK(ZPAR_TOK_RET);
        INIT_DONE = TRUE;
    };
}

const int MEM_GETADDRESS_INIT.INIT_DONE = 0;
func void STR_GETADDRESSINIT() {
    MEM_GETADDRESS_INIT();
}

func int STR_GETADDRESS(var string STR) {
    STR = STR;
    MEM_GETADDRESS_INIT();
    return STR_GETADDRESS(STR);
}

func int MEMINT_READSTATARR(var int OFFSET) {
    if ((OFFSET) < (0)) {
        MEM_ERROR("MEM_ReadStatArr: Offset < 0!");
        return 0;
    };
    MEMINT_STACKPOPINST();
    MEMINT_STACKPUSHINST(ZPAR_TOK_PUSHINT);
    ADR = MEMINT_STACKPOPINT();
    return MEM_READINTARRAY(ADR, OFFSET);
}

var int MEMINT_READSTATARR.ADR = 0;
func void MEMINT_WRITESTATARR(var int OFFSET, var int VALUE) {
    if ((OFFSET) < (0)) {
        MEM_ERROR("MEM_WriteStatArr: Offset < 0!");
        return;
    };
    MEMINT_STACKPOPINST();
    MEMINT_STACKPUSHINST(ZPAR_TOK_PUSHINT);
    ADR = MEMINT_STACKPOPINT();
    MEM_WRITEINTARRAY(ADR, OFFSET, VALUE);
}

var int MEMINT_WRITESTATARR.ADR = 0;
func void MEMINT_WRITESTATSTRINGARR(var int OFFSET, var string VALUE) {
    if ((OFFSET) < (0)) {
        MEM_ERROR("MEM_WriteStatStringArr: Offset < 0!");
        return;
    };
    MEMINT_STACKPOPINST();
    MEMINT_STACKPUSHINST(ZPAR_TOK_PUSHINT);
    ADR = MEMINT_STACKPOPINT();
    ADR += (SIZEOF_ZSTRING) * (OFFSET);
    MEM_WRITESTRING(ADR, VALUE);
}

var int MEMINT_WRITESTATSTRINGARR.ADR = 0;
func string MEMINT_READSTATSTRINGARR(var int OFFSET) {
    if ((OFFSET) < (0)) {
        MEM_ERROR("MEM_ReadStatStringArr: Offset < 0!");
        return "";
    };
    MEMINT_STACKPOPINST();
    MEMINT_STACKPUSHINST(ZPAR_TOK_PUSHINT);
    ADR = MEMINT_STACKPOPINT();
    ADR += (SIZEOF_ZSTRING) * (OFFSET);
    return MEM_READSTRING(ADR);
}

var int MEMINT_READSTATSTRINGARR.ADR = 0;
func void MEM_WRITESTATARR(var int ARRAY, var int OFFSET, var int VALUE) {
    MEM_ERROR("MEM_WriteStatArr was called before MEM_InitStatArrs!");
}

func int MEM_READSTATARR(var int ARRAY, var int OFFSET) {
    MEM_ERROR("MEM_ReadStatArr was called before MEM_InitStatArrs!");
    return 0;
}

func void MEM_WRITESTATSTRINGARR(var string ARRAY, var int OFFSET, var string VALUE) {
    MEM_ERROR("MEM_WriteStatStringArr was called before MEM_InitStatArrs!");
}

func string MEM_READSTATSTRINGARR(var string ARRAY, var int OFFSET) {
    MEM_ERROR("MEM_ReadStatStringArr was called before MEM_InitStatArrs!");
    return 0 /* !broken stack! */;
}

func void MEM_INITSTATARRS() {
    if (!(DONE)) {
        MEM_REPLACEFUNC(0x13ce, 0x13c3);
        MEM_REPLACEFUNC(0x13d2, 0x13c0);
        MEM_REPLACEFUNC(0x13d5, 0x13c7);
        MEM_REPLACEFUNC(0x13d9, 0x13cb);
        DONE = TRUE;
    };
}

const int MEM_INITSTATARRS.DONE = 0;
func int MEM_ALLOC(var int AMOUNT) {
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

var int MEM_ALLOC.STRPTR = 0;
var string MEM_ALLOC.STR = "";
instance MEM_ALLOC.ZSTR(ZSTRING)
var int MEM_ALLOC.SIZE = 0;
var int MEM_ALLOC.LOOPSTART = 0;
var int MEM_ALLOC.RES = 0;
func void MEM_FREE(var int PTR) {
    if (!(PTR)) {
        MEM_WARN("MEM_Free: ptr is 0. Ignoring request.");
        return;
    };
    MEM_WRITEBYTE(PTR, 0);
    PTR += 1;
    STR = "";
    STRPTR = _@S(STR);
    ZSTR = _^(STRPTR);
    ZSTR.PTR = PTR;
    ZSTR.LEN = 1;
    ZSTR.RES = 1;
    STR = "";
}

var int MEM_FREE.STRPTR = 0;
var string MEM_FREE.STR = "";
instance MEM_FREE.ZSTR(ZSTRING)
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

func int ASMINT_POP() {
    if ((ASMINT_INTERNALSTACKWALKER) <= (0)) {
        MEM_ERROR("ASMINT_Pop: Underflow! This is probably connected to wrong use of the Call functions.");
    };
    ASMINT_INTERNALSTACKWALKER -= 1;
    return MEM_READINTARRAY(ASMINT_INTERNALSTACK, ASMINT_INTERNALSTACKWALKER);
}

const int ASMINT_CALLTARGET = 0;
func void ASMINT_MYEXTERNAL() {
}

func void ASMINT_CALLMYEXTERNAL() {
    EXITGAME();
}

func void ASMINT_INIT() {
    if (!(ASMINT_INTERNALSTACK)) {
        ASMINT_INTERNALSTACK = MEM_ALLOC((4) * (ASMINT_INTERNALSTACKSIZE));
        ASMINT_CALLTARGET = MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, MEM_GETFUNCID(0x1411));
        SYMB = _^(ASMINT_CALLTARGET);
        ASMINT_CALLTARGET += ZCPARSYMBOL_CONTENT_OFFSET;
        SYMB.BITFIELD = ((ZPAR_TYPE_FUNC) | (ZPAR_FLAG_EXTERNAL)) | (ZPAR_FLAG_CONST);
        MEM_WRITEINT((MEM_GETFUNCPTR(0x1412)) + (1), MEM_GETFUNCID(0x1411));
    };
}

instance ASMINT_INIT.SYMB(ZCPAR_SYMBOL)
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

func void ASM(var int DATA, var int LENGTH) {
    if (!(ASMINT_CURRRUN)) {
        ASM_OPEN(0);
    };
    if ((((ASMINT_CURSOR) - (ASMINT_CURRRUN)) + (LENGTH)) > (ASMINT_LENGTH)) {
        MEM_ERROR("ASM: Reserved length is exceeded.");
        return;
    };
    MEM_WRITEINT(ASMINT_CURSOR, DATA);
    ASMINT_CURSOR += LENGTH;
}

func void ASM_1(var int DATA) {
    ASM(DATA, 1);
}

func void ASM_2(var int DATA) {
    ASM(DATA, 2);
}

func void ASM_3(var int DATA) {
    ASM(DATA, 3);
}

func void ASM_4(var int DATA) {
    ASM(DATA, 4);
}

func int ASM_HERE() {
    if (!(ASMINT_CURRRUN)) {
        ASM_OPEN(0);
    };
    return ASMINT_CURSOR;
}

func int ASM_CLOSE() {
    ASM(ASMINT_OP_RETN, 1);
    RES = ASMINT_CURRRUN;
    ASMINT_CURRRUN = 0;
    return RES;
}

var int ASM_CLOSE.RES = 0;
func void ASM_RUN(var int PTR) {
    MEM_WRITEINT(ASMINT_CALLTARGET, PTR);
    ASMINT_CALLMYEXTERNAL();
}

func void ASM_RUNONCE() {
    if (!(ASMINT_CURRRUN)) {
        MEM_ERROR("ASM: ASM_Open has to be called before calling ASM_RunOnce.");
    };
    ASM(ASMINT_OP_RETN, 1);
    ASMINT_PUSH(ASMINT_CURRRUN);
    MEM_WRITEINT(ASMINT_CALLTARGET, ASMINT_CURRRUN);
    ASMINT_CURRRUN = 0;
    ASMINT_CALLMYEXTERNAL();
    MEM_FREE(ASMINT_POP());
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

func int CALL_CLOSE() {
    if ((CALLINT_CODEMODE) != (CALLINT_CODEMODE_RECYCLABLE)) {
        MEM_ERROR("CALL_Close: CALL_End or CALL_Close without matching CALL_Begin / CALL_Open? There is some serious problem with your code.");
        return 0;
    };
    PTR = ASM_CLOSE();
    ASMINT_POPCONTEXT();
    return PTR;
}

var int CALL_CLOSE.PTR = 0;
func int CALL_END() {
    PTR = CALL_CLOSE();
    ASMINT_PUSH(PTR);
    ASM_RUN(PTR);
    return ASMINT_POP();
}

var int CALL_END.PTR = 0;
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

func void CALL_PTRPARAM(var int PARAM) {
    CALL_INTPARAM(PARAM);
}

func void CALL_FLOATPARAM(var int PARAM) {
    CALL_INTPARAM(PARAM);
}

func string CALLINT_PUSHSTRING(var string STR) {
    N += 1;
    if ((N) == (10)) {
        N = 0;
    };
    if ((N) == (0)) {
        S0 = STR;
        return S0;
    };
    if ((N) == (1)) {
        S1 = STR;
        return S1;
    };
    if ((N) == (2)) {
        S2 = STR;
        return S2;
    };
    if ((N) == (3)) {
        S3 = STR;
        return S3;
    };
    if ((N) == (4)) {
        S4 = STR;
        return S4;
    };
    if ((N) == (5)) {
        S5 = STR;
        return S5;
    };
    if ((N) == (6)) {
        S6 = STR;
        return S6;
    };
    if ((N) == (7)) {
        S7 = STR;
        return S7;
    };
    if ((N) == (8)) {
        S8 = STR;
        return S8;
    };
    if ((N) == (9)) {
        S9 = STR;
        return S9;
    };
    MEM_ASSERTFAIL("Should be never here.");
    return 0 /* !broken stack! */;
}

var int CALLINT_PUSHSTRING.N = 0;
var string CALLINT_PUSHSTRING.S0 = "";
var string CALLINT_PUSHSTRING.S1 = "";
var string CALLINT_PUSHSTRING.S2 = "";
var string CALLINT_PUSHSTRING.S3 = "";
var string CALLINT_PUSHSTRING.S4 = "";
var string CALLINT_PUSHSTRING.S5 = "";
var string CALLINT_PUSHSTRING.S6 = "";
var string CALLINT_PUSHSTRING.S7 = "";
var string CALLINT_PUSHSTRING.S8 = "";
var string CALLINT_PUSHSTRING.S9 = "";
func int CALLINT_GETSTRINGADDRESS(var string STR) {
    return _@S(CALLINT_PUSHSTRING(STR));
}

func void CALL_ZSTRINGPTRPARAM(var string PARAM) {
    if ((CALLINT_CODEMODE) != (CALLINT_CODEMODE_DISPOSABLE)) {
        MEM_ERROR("CALL_zStringPtrParam: This function only works when writing a disposable call!");
        return;
    };
    CALL_INTPARAM(CALLINT_GETSTRINGADDRESS(PARAM));
}

func void CALL_CSTRINGPTRPARAM(var string PARAM) {
    if ((CALLINT_CODEMODE) != (CALLINT_CODEMODE_DISPOSABLE)) {
        MEM_ERROR("CALL_cStringPtrParam: This function only works when writing a disposable call!");
        return;
    };
    STR = _^(CALLINT_GETSTRINGADDRESS(PARAM));
    CALL_INTPARAM(STR.PTR);
}

instance CALL_CSTRINGPTRPARAM.STR(ZSTRING)
func void CALL_STRUCTPARAM(var int PTR, var int WORDS) {
    if ((CALLINT_CODEMODE) == (CALLINT_CODEMODE_RECYCLABLE)) {
        CALL_INTPARAM((PTR) + ((4) * ((WORDS) - (1))));
        CALL_STRUCTPARAM(PTR, (WORDS) - (1));
        return;
    };
    if ((WORDS) > (0)) {
        CALL_INTPARAM(MEM_READINTARRAY(PTR, (WORDS) - (1)));
        CALL_STRUCTPARAM(PTR, (WORDS) - (1));
    };
}

func void CALL_RETVALISSTRUCT(var int SIZE) {
    if ((CALLINT_CODEMODE) == (CALLINT_CODEMODE_RECYCLABLE)) {
        MEM_ERROR("CALL_RetValIsStruct: Only supported in disposable calls (not with CALL_Begin and CALL_End).");
        return;
    };
    CALLINT_RETVALSTRUCTSIZE = SIZE;
}

func void CALL_RETVALISZSTRING() {
    CALL_RETVALISSTRUCT(SIZEOF_ZSTRING);
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

var int CALLINT_RESULT = 0;
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

var string CALL_RETVALASZSTRING.RET = "";
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
        } else if (CALLINT_PUTRETVALTO) {
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

func void CALL__STDCALL(var int ADR) {
    CALLINT_MAKECALL(ADR, FALSE);
}

func void CALL__CDECL(var int ADR) {
    CALLINT_MAKECALL(ADR, TRUE);
}

func void CALL__THISCALL(var int THIS, var int ADR) {
    if ((CALLINT_CODEMODE) == (CALLINT_CODEMODE_RECYCLABLE)) {
        ASM_2(ASMINT_OP_MOVMEMTOECX);
    };
    ASM_1(ASMINT_OP_MOVIMTOECX);
    ASM_4(THIS);
    CALL__STDCALL(ADR);
}

func void CALL__FASTCALL(var int ECX, var int EDX, var int ADR) {
    if ((CALLINT_CODEMODE) == (CALLINT_CODEMODE_RECYCLABLE)) {
        ASM_2(ASMINT_OP_MOVMEMTOEDX);
    };
    ASM_1(ASMINT_OP_MOVIMTOEDX);
    ASM_4(EDX);
    CALL__THISCALL(ECX, ADR);
}

func void MEM_SETSHOWDEBUG(var int ON) {
    MEM_WRITEINT(SHOWDEBUGADDRESS, ON);
}

func void MEM_COPYBYTES(var int SRC, var int DST, var int BYTECOUNT) {
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(BYTECOUNT));
        CALL_INTPARAM(_@(SRC));
        CALL_INTPARAM(_@(DST));
        CALL_PUTRETVALTO(0);
        CALL__CDECL(MEMINT_SWITCHG1G2(MEMCPY_G1, MEMCPY_G2));
        CALL = CALL_END();
    };
}

const int MEM_COPYBYTES.MEMCPY_G1 = 7846464;
const int MEM_COPYBYTES.MEMCPY_G2 = 8213280;
const int MEM_COPYBYTES.CALL = 0;
func void MEM_COPYWORDS(var int SRC, var int DST, var int WORDCOUNT) {
    MEM_COPYBYTES(SRC, DST, (WORDCOUNT) * (4));
}

func void MEM_COPY(var int SRC, var int DST, var int WORDCOUNT) {
    MEM_COPYBYTES(SRC, DST, (WORDCOUNT) * (4));
}

func void MEM_SWAPBYTES(var int SRC, var int DST, var int BYTECOUNT) {
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(BYTECOUNT));
        CALL_PTRPARAM(_@(SRC));
        CALL_PTRPARAM(_@(DST));
        CALL_PUTRETVALTO(0);
        CALL__CDECL(MEMINT_SWITCHG1G2(SWAP_G1, SWAP_G2));
        CALL = CALL_END();
    };
}

const int MEM_SWAPBYTES.SWAP_G1 = 7829281;
const int MEM_SWAPBYTES.SWAP_G2 = 8196369;
const int MEM_SWAPBYTES.CALL = 0;
func void MEM_SWAP(var int SRC, var int DST, var int WORDCOUNT) {
    MEM_SWAPBYTES(SRC, DST, (WORDCOUNT) * (4));
}

func void MEM_SWAPWORDS(var int SRC, var int DST, var int WORDCOUNT) {
    MEM_SWAPBYTES(SRC, DST, (WORDCOUNT) * (4));
}

func void MEM_CLEAR(var int PTR, var int SIZE) {
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(SIZE));
        CALL_INTPARAM(_@(NULL));
        CALL_PTRPARAM(_@(PTR));
        CALL_PUTRETVALTO(0);
        CALL__CDECL(MEMINT_SWITCHG1G2(MEMSET_G1, MEMSET_G2));
        CALL = CALL_END();
    };
}

const int MEM_CLEAR.MEMSET_G1 = 7877040;
const int MEM_CLEAR.MEMSET_G2 = 8243856;
var int MEM_CLEAR.NULL = 0;
const int MEM_CLEAR.CALL = 0;
func int MEM_REALLOC(var int PTR, var int OLDSIZE, var int NEWSIZE) {
    if (!(PTR)) {
        if (!(OLDSIZE)) {
            MEM_ERROR("MEM_Realloc: ptr is 0 but oldsize is not 0.");
        };
        return MEM_ALLOC(NEWSIZE);
    };
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(NEWSIZE));
        CALL_PTRPARAM(_@(PTR));
        CALL_PUTRETVALTO(_@(PTR));
        CALL__CDECL(MEMINT_SWITCHG1G2(REALLOC_G1, REALLOC_G2));
        CALL = CALL_END();
    };
    if ((OLDSIZE) < (NEWSIZE)) {
        MEM_CLEAR((PTR) + (OLDSIZE), (NEWSIZE) - (OLDSIZE));
    };
    return +(PTR);
}

const int MEM_REALLOC.REALLOC_G1 = 7712186;
const int MEM_REALLOC.REALLOC_G2 = 8078522;
const int MEM_REALLOC.CALL = 0;
func int MEM_COMPAREBYTES(var int PTR1, var int PTR2, var int BYTECOUNT) {
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

var int MEM_COMPAREBYTES.LOOPPOS = 0;
var int MEM_COMPAREBYTES.MASK = 0;
func int MEM_COMPAREWORDS(var int PTR0, var int PTR1, var int WORDCOUNT) {
    return MEM_COMPAREBYTES(PTR0, PTR1, (WORDCOUNT) * (4));
}

func int MEM_COMPARE(var int PTR0, var int PTR1, var int WORDCOUNT) {
    return MEM_COMPAREBYTES(PTR0, PTR1, (WORDCOUNT) * (4));
}

func int LOADLIBRARY(var string LPFILENAME) {
    if (CALL_BEGIN(CALL)) {
        if ((GOTHIC_BASE_VERSION) == (2)) {
            WINAPI__LOADLIBRARY = MEM_READINT(0x82e244);
        } else {
            WINAPI__LOADLIBRARY = MEM_READINT(0x7d024c);
        } else {
            CALL_PTRPARAM((_@S(LPFILENAME)) + (8));
        } else {
            CALL_PUTRETVALTO(_@(RET));
        } else {
            CALL__STDCALL(WINAPI__LOADLIBRARY);
        } else {
            CALL = CALL_END();
        };
    };
    return +(RET);
}

const int LOADLIBRARY.CALL = 0;
var int LOADLIBRARY.WINAPI__LOADLIBRARY = 0;
var int LOADLIBRARY.RET = 0;
func int GETPROCADDRESS(var int HMODULE, var string LPPROCNAME) {
    if (CALL_BEGIN(CALL)) {
        if ((GOTHIC_BASE_VERSION) == (2)) {
            WINAPI__GETPROCADDRESS = MEM_READINT(0x82e298);
        } else {
            WINAPI__GETPROCADDRESS = MEM_READINT(0x7d0104);
        } else {
            CALL_PTRPARAM((_@S(LPPROCNAME)) + (8));
        } else {
            CALL_PTRPARAM(_@(HMODULE));
        } else {
            CALL_PUTRETVALTO(_@(RET));
        } else {
            CALL__STDCALL(WINAPI__GETPROCADDRESS);
        } else {
            CALL = CALL_END();
        };
    };
    return +(RET);
}

const int GETPROCADDRESS.CALL = 0;
var int GETPROCADDRESS.WINAPI__GETPROCADDRESS = 0;
var int GETPROCADDRESS.RET = 0;
func int FINDKERNELDLLFUNCTION(var string NAME) {
    if (!(KERNEL32DLL)) {
        KERNEL32DLL = LOADLIBRARY("KERNEL32.DLL");
    };
    return GETPROCADDRESS(KERNEL32DLL, NAME);
}

const int FINDKERNELDLLFUNCTION.KERNEL32DLL = 0;
const int PAGE_EXECUTE = 16;
const int PAGE_EXECUTE_READ = 32;
const int PAGE_EXECUTE_READWRITE = 64;
const int PAGE_EXECUTE_WRITECOPY = 128;
const int PAGE_NOACCESS = 1;
const int PAGE_READONLY = 2;
const int PAGE_READWRITE = 4;
const int PAGE_WRITECOPY = 8;
func int VIRTUALPROTECT(var int LPADDRESS, var int DWSIZE, var int FLNEWPROTECT) {
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

const int VIRTUALPROTECT.ADR = 0;
var int VIRTUALPROTECT.LPFLOLDPROTECT = 0;
var int VIRTUALPROTECT.LPFLOLDPROTECTPTR = 0;
const int VIRTUALPROTECT.CALL = 0;
func void MEMORYPROTECTIONOVERRIDE(var int ADDRESS, var int SIZE) {
    RESDUMP = VIRTUALPROTECT(ADDRESS, SIZE, PAGE_EXECUTE_READWRITE);
}

var int MEMORYPROTECTIONOVERRIDE.RESDUMP = 0;
const int MB_OK = 0;
const int MB_OKCANCEL = 1;
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
    CALL_INTPARAM((TYPE) | (MB_TASKMODAL));
    CALL_CSTRINGPTRPARAM(CAPTION);
    CALL_CSTRINGPTRPARAM(TXT);
    CALL_INTPARAM(0);
    CALL__STDCALL(MEMINT_SWITCHG1G2(WINAPI__MESSAGEBOX_G1, WINAPI__MESSAGEBOX_G2));
    return CALL_RETVALASINT();
}

const int MEM_MESSAGEBOX.WINAPI__MESSAGEBOX_G2 = 8079592;
const int MEM_MESSAGEBOX.WINAPI__MESSAGEBOX_G1 = 7713298;
const int MEM_MESSAGEBOX.MB_TASKMODAL = 8192;
func void MEM_INFOBOX(var string TXT) {
    RES = MEM_MESSAGEBOX(TXT, "Information:", (MB_OK) | (MB_ICONINFORMATION));
}

var int MEM_INFOBOX.RES = 0;
func int MEM_ARRAYCREATE() {
    return MEM_ALLOC(SIZEOF_ZCARRAY);
}

func void MEM_ARRAYFREE(var int ZCARRAY_PTR) {
    ARRAY = MEM_READINT(ZCARRAY_PTR);
    if (ARRAY) {
        MEM_FREE(ARRAY);
    };
    MEM_FREE(ZCARRAY_PTR);
}

var int MEM_ARRAYFREE.ARRAY = 0;
func void MEM_ARRAYCLEAR(var int ZCARRAY_PTR) {
    ARRAY = _^(ZCARRAY_PTR);
    if (ARRAY.ARRAY) {
        MEM_FREE(ARRAY.ARRAY);
        ARRAY.ARRAY = 0;
    };
    ARRAY.NUMALLOC = 0;
    ARRAY.NUMINARRAY = 0;
}

instance MEM_ARRAYCLEAR.ARRAY(ZCARRAY)
func int MEM_ARRAYSIZE(var int ZCARRAY_PTR) {
    return MEM_READINT((ZCARRAY_PTR) + (8));
}

func void MEM_ARRAYWRITE(var int ZCARRAY_PTR, var int POS, var int VALUE) {
    ARRAY = _^(ZCARRAY_PTR);
    if (((POS) < (0)) || ((ARRAY.NUMINARRAY) <= (POS))) {
        MEM_ERROR(CONCATSTRINGS("MEM_ArrayWrite: pos out of bounds: ", INTTOSTRING(POS)));
        return;
    };
    MEM_WRITEINTARRAY(ARRAY.ARRAY, POS, VALUE);
}

instance MEM_ARRAYWRITE.ARRAY(ZCARRAY)
func int MEM_ARRAYREAD(var int ZCARRAY_PTR, var int POS) {
    ARRAY = _^(ZCARRAY_PTR);
    if (((POS) < (0)) || ((ARRAY.NUMINARRAY) <= (POS))) {
        MEM_ERROR(CONCATSTRINGS("MEM_ArrayRead: pos out of bounds: ", INTTOSTRING(POS)));
        return 0;
    };
    return MEM_READINTARRAY(ARRAY.ARRAY, POS);
}

instance MEM_ARRAYREAD.ARRAY(ZCARRAY)
func void MEM_ARRAYINSERT(var int ZCARRAY_PTR, var int VALUE) {
    ARRAY = _^(ZCARRAY_PTR);
    if (!(ARRAY.ARRAY)) {
        ARRAY.NUMALLOC = 16;
        ARRAY.ARRAY = MEM_ALLOC((ARRAY.NUMALLOC) * (4));
    };
    if ((ARRAY.NUMINARRAY) >= (ARRAY.NUMALLOC)) {
        ARRAY.NUMALLOC = (2) * (ARRAY.NUMALLOC);
        ARRAY.ARRAY = MEM_REALLOC(ARRAY.ARRAY, (ARRAY.NUMINARRAY) * (4), (ARRAY.NUMALLOC) * (4));
    };
    MEM_WRITEINTARRAY(ARRAY.ARRAY, ARRAY.NUMINARRAY, VALUE);
    ARRAY.NUMINARRAY += 1;
}

instance MEM_ARRAYINSERT.ARRAY(ZCARRAY)
func void MEM_ARRAYPUSH(var int ZCARRAY_PTR, var int VALUE) {
    MEM_ARRAYINSERT(ZCARRAY_PTR, VALUE);
}

func int MEM_ARRAYPOP(var int ZCARRAY_PTR) {
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

instance MEM_ARRAYPOP.ARRAY(ZCARRAY)
func int MEM_ARRAYTOP(var int ZCARRAY_PTR) {
    if (!(ZCARRAY_PTR)) {
        MEM_ERROR("MEM_ArrayTop: Invalid address: zCArray_ptr may not be null!");
        return 0;
    };
    ARRAY = _^(ZCARRAY_PTR);
    if (!(ARRAY.NUMINARRAY)) {
        MEM_ERROR("MEM_ArrayTop: Underflow! Cannot pop from empty array.");
        return 0;
    };
    return MEM_READINTARRAY(ARRAY.ARRAY, (ARRAY.NUMINARRAY) - (1));
}

instance MEM_ARRAYTOP.ARRAY(ZCARRAY)
func int MEM_ARRAYINDEXOF(var int ZCARRAY_PTR, var int VALUE) {
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

instance MEM_ARRAYINDEXOF.ARRAY(ZCARRAY)
var int MEM_ARRAYINDEXOF.I = 0;
var int MEM_ARRAYINDEXOF.LOOP = 0;
func void MEM_ARRAYREMOVEINDEX(var int ZCARRAY_PTR, var int INDEX) {
    if (!(ZCARRAY_PTR)) {
        MEM_ERROR("MEM_ArrayRemoveIndex: Invalid address: zCArray_ptr may not be null!");
        return;
    };
    ARRAY = _^(ZCARRAY_PTR);
    if ((ARRAY.NUMINARRAY) <= (INDEX)) {
        MEM_ERROR("MEM_ArrayRemoveIndex: index lies beyond the end of the array!");
        return;
    };
    ARRAY.NUMINARRAY -= 1;
    MEM_WRITEINTARRAY(ARRAY.ARRAY, INDEX, MEM_READINTARRAY(ARRAY.ARRAY, ARRAY.NUMINARRAY));
}

instance MEM_ARRAYREMOVEINDEX.ARRAY(ZCARRAY)
var int MEMINT_ARRAYREMOVEVALUE_ONLYONCE = 0;
func void MEM_ARRAYREMOVEVALUE(var int ZCARRAY_PTR, var int VALUE) {
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
        } else {
            MEM_STACKPOS.POSITION = LOOP;
        };
    };
}

instance MEM_ARRAYREMOVEVALUE.ARRAY(ZCARRAY)
var int MEM_ARRAYREMOVEVALUE.I = 0;
var int MEM_ARRAYREMOVEVALUE.LOOP = 0;
func void MEM_ARRAYREMOVEVALUEONCE(var int ZCARRAY_PTR, var int VALUE) {
    MEMINT_ARRAYREMOVEVALUE_ONLYONCE = TRUE;
    MEM_ARRAYREMOVEVALUE(ZCARRAY_PTR, VALUE);
    if ((MEMINT_ARRAYREMOVEVALUE_ONLYONCE) != (2)) {
        MEM_WARN(CONCATSTRINGS("MEM_ArrayRemoveValueOnce: Could not find value: ", INTTOSTRING(VALUE)));
    };
    MEMINT_ARRAYREMOVEVALUE_ONLYONCE = FALSE;
}

func void MEMINT_QSORT(var int BASE, var int NUM, var int SIZE, var int COMPARATOR) {
    if ((COMPARATOR) == (0)) {
        COMPARATOR = MEMINT_SWITCHG1G2(COMPARE_G1, COMPARE_G2);
    };
    QSORT = MEMINT_SWITCHG1G2(QSORT_G1, QSORT_G2);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(COMPARATOR));
        CALL_INTPARAM(_@(SIZE));
        CALL_INTPARAM(_@(NUM));
        CALL_PTRPARAM(_@(BASE));
        CALL_PUTRETVALTO(0);
        CALL__CDECL(QSORT);
        CALL = CALL_END();
    };
}

const int MEMINT_QSORT.QSORT_G1 = 7828863;
const int MEMINT_QSORT.QSORT_G2 = 8195951;
const int MEMINT_QSORT.COMPARE_G1 = 5502288;
const int MEMINT_QSORT.COMPARE_G2 = 5586080;
var int MEMINT_QSORT.QSORT = 0;
const int MEMINT_QSORT.CALL = 0;
func void MEM_ARRAYSORT(var int ZCARRAY_PTR) {
    if (!(ZCARRAY_PTR)) {
        MEM_ERROR("MEM_ArraySort: Invalid address: zCArray_ptr may not be null!");
        return;
    };
    ARRAY = _^(ZCARRAY_PTR);
    MEMINT_QSORT(ARRAY.ARRAY, ARRAY.NUMINARRAY, 4, 0);
}

instance MEM_ARRAYSORT.ARRAY(ZCARRAY)
func void MEM_ARRAYUNIQUE(var int ZCARRAY_PTR) {
    if (!(ZCARRAY_PTR)) {
        MEM_ERROR("MEM_ArrayUnique: Invalid address: zCArray_ptr may not be null!");
        return;
    };
    ARRAY = _^(ZCARRAY_PTR);
    READER = 0;
    WRITER = 0;
    LOOP = MEM_STACKPOS.POSITION;
    if ((READER) < (ARRAY.NUMINARRAY)) {
        NEWVAL = MEM_READINTARRAY(ARRAY.ARRAY, READER);
        if ((!(READER)) || ((NEWVAL) != (OLDVAL))) {
            MEM_WRITEINTARRAY(ARRAY.ARRAY, WRITER, NEWVAL);
            WRITER += 1;
            OLDVAL = NEWVAL;
        };
        READER += 1;
        MEM_STACKPOS.POSITION = LOOP;
    };
    ARRAY.NUMINARRAY = WRITER;
}

instance MEM_ARRAYUNIQUE.ARRAY(ZCARRAY)
var int MEM_ARRAYUNIQUE.READER = 0;
var int MEM_ARRAYUNIQUE.WRITER = 0;
var int MEM_ARRAYUNIQUE.OLDVAL = 0;
var int MEM_ARRAYUNIQUE.NEWVAL = 0;
var int MEM_ARRAYUNIQUE.LOOP = 0;
func string MEM_ARRAYTOSTRING(var int ZCARRAY_PTR) {
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

var string MEM_ARRAYTOSTRING.RES = "";
instance MEM_ARRAYTOSTRING.ARRAY(ZCARRAY)
var int MEM_ARRAYTOSTRING.I = 0;
var int MEM_ARRAYTOSTRING.LOOP = 0;
func int STR_GETCHARAT(var string STR, var int POS) {
    ZSTR = _^(_@S(STR));
    if (((POS) < (0)) || ((POS) >= (ZSTR.LEN))) {
        MEM_WARN("STR_GetCharAt: Reading out of bounds! returning 0.");
        return 0;
    };
    return MEM_READBYTE((ZSTR.PTR) + (POS));
}

instance STR_GETCHARAT.ZSTR(ZSTRING)
func int STR_LEN(var string STR) {
    ZSTR = _^(_@S(STR));
    return +(ZSTR.LEN);
}

instance STR_LEN.ZSTR(ZSTRING)
func int STR_TOCHAR(var string STR) {
    ZSTR = _^(_@S(STR));
    return +(ZSTR.PTR);
}

instance STR_TOCHAR.ZSTR(ZSTRING)
func int STRINT_TOCHAR(var string STR) {
    return STR_TOCHAR(STR);
}

func string STR_FROMCHAR(var int CHAR) {
    STR = "";
    PTR = _@S(STR);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(CHAR));
        CALL__THISCALL(_@(PTR), MEMINT_SWITCHG1G2(0x4013a0, 0x4010c0));
        CALL = CALL_END();
    };
    return STR;
}

var string STR_FROMCHAR.STR = "";
var int STR_FROMCHAR.PTR = 0;
const int STR_FROMCHAR.CALL = 0;
func string STR_SUBSTR(var string STR, var int START, var int COUNT) {
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

instance STR_SUBSTR.ZSTRSRC(ZSTRING)
instance STR_SUBSTR.ZSTRDST(ZSTRING)
var string STR_SUBSTR.DSTSTR = "";
var string STR_SUBSTR.SAVESTR = "";
var int STR_SUBSTR.SAVESTART = 0;
var int STR_SUBSTR.SAVECOUNT = 0;
func string STR_PREFIX(var string STR, var int LEN) {
    return STR_SUBSTR(STR, 0, LEN);
}

const int STR_GREATER = 1;
const int STR_EQUAL = 0;
const int STR_SMALLER = -1;
func int STR_COMPARE(var string STR1, var string STR2) {
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

const int STR_COMPARE.STRNCMP_G1 = 7887344;
const int STR_COMPARE.STRNCMP_G2 = 8254144;
var int STR_COMPARE.PTR1 = 0;
var int STR_COMPARE.PTR2 = 0;
var int STR_COMPARE.LEN1 = 0;
var int STR_COMPARE.LEN2 = 0;
var int STR_COMPARE.N = 0;
const int STR_COMPARE.CALL = 0;
var int STR_COMPARE.RET = 0;
func int STR_TOINT(var string STR) {
    LEN = STR_LEN(STR);
    BUF = STR_TOCHAR(STR);
    INDEX = 0;
    RES = 0;
    MINUS = FALSE;
    LOOPSTART = MEM_STACKPOS.POSITION;
    if ((INDEX) < (LEN)) {
        CHR = (MEM_READINT((BUF) + (INDEX))) & (255);
        if (((CHR) >= (48)) && ((CHR) <= (57))) {
            RES = ((RES) * (10)) + ((CHR) - (48));
        } else if ((INDEX) == (0)) {
            if ((CHR) == (43)) {
            } else if ((CHR) == (45)) {
                MINUS = TRUE;
            } else {
                MEM_WARN(CONCATSTRINGS("STR_ToInt: cannot convert string: ", STR));
                return 0;
            } else {
                /* set_instance(0) */;
            };
        };
        MEM_WARN(CONCATSTRINGS("STR_ToInt: cannot convert string: ", STR));
        return 0;
    };
    if (MINUS) {
        return -(RES);
    };
    return +(RES);
}

var int STR_TOINT.LEN = 0;
var int STR_TOINT.BUF = 0;
var int STR_TOINT.INDEX = 0;
var int STR_TOINT.RES = 0;
var int STR_TOINT.MINUS = 0;
var int STR_TOINT.LOOPSTART = 0;
var int STR_TOINT.CHR = 0;
func int STR_INDEXOF(var string STR, var string TOK) {
    ZSTR = _^(_@S(STR));
    ZTOK = _^(_@S(TOK));
    if ((ZTOK.LEN) == (0)) {
        return 0;
    };
    if ((ZSTR.LEN) == (0)) {
        return -(1);
    };
    STARTPOS = ZSTR.PTR;
    STARTMAX = ((ZSTR.PTR) + (ZSTR.LEN)) - (ZTOK.LEN);
    LOOPPOS = MEM_STACKPOS.POSITION;
    if ((STARTPOS) <= (STARTMAX)) {
        if (MEM_COMPAREBYTES(STARTPOS, ZTOK.PTR, ZTOK.LEN)) {
            return (STARTPOS) - (ZSTR.PTR);
        };
        STARTPOS += 1;
        MEM_STACKPOS.POSITION = LOOPPOS;
    };
    return -(1);
}

instance STR_INDEXOF.ZSTR(ZSTRING)
instance STR_INDEXOF.ZTOK(ZSTRING)
var int STR_INDEXOF.STARTPOS = 0;
var int STR_INDEXOF.STARTMAX = 0;
var int STR_INDEXOF.LOOPPOS = 0;
const int STRINT_SPLITARRAY = 0;
func void STRINT_SPLITRESET() {
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

instance STRINT_SPLITRESET.ARR(ZCARRAY)
var int STRINT_SPLITRESET.I = 0;
var int STRINT_SPLITRESET.LOOPPOS = 0;
func void STRINT_SPLIT(var string STR, var string SEPERATOR) {
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

instance STRINT_SPLIT.ZSTR(ZSTRING)
var int STRINT_SPLIT.CSEP = 0;
var int STRINT_SPLIT.CURRTOKSTART = 0;
var int STRINT_SPLIT.STREND = 0;
var int STRINT_SPLIT.WALKER = 0;
var int STRINT_SPLIT.LOOPPOS = 0;
var int STRINT_SPLIT.LEN = 0;
var int STRINT_SPLIT.SUBSTR = 0;
func string STRINT_SPLITGET(var int OFFSET) {
    ARR = _^(STRINT_SPLITARRAY);
    if (((ARR.NUMINARRAY) / (2)) <= (OFFSET)) {
        MEM_ERROR("STR_Split: The string does not decompose into that many substrings!");
        return "";
    };
    STR = "";
    ZSTR = _^(_@S(STR));
    LEN = MEM_READINTARRAY(ARR.ARRAY, (2) * (OFFSET));
    ZSTR.PTR = (MEM_ALLOC((LEN) + (2))) + (1);
    ZSTR.LEN = LEN;
    ZSTR.RES = LEN;
    MEM_COPYBYTES(MEM_READINTARRAY(ARR.ARRAY, ((2) * (OFFSET)) + (1)), ZSTR.PTR, LEN);
    return STR;
}

instance STRINT_SPLITGET.ARR(ZCARRAY)
var string STRINT_SPLITGET.STR = "";
instance STRINT_SPLITGET.ZSTR(ZSTRING)
var int STRINT_SPLITGET.LEN = 0;
var string STRINT_SPLITCACHE = "";
var string STRINT_SPLITSEPERATORCACHE = "";
func string STR_SPLIT(var string STR, var string SEPARATOR, var int OFFSET) {
    if (((HLP_STRCMP(STRINT_SPLITCACHE, STR)) && (!(HLP_STRCMP(STRINT_SPLITCACHE, "")))) && (HLP_STRCMP(STRINT_SPLITSEPERATORCACHE, SEPARATOR))) {
        return STRINT_SPLITGET(OFFSET);
    };
    STRINT_SPLIT(STR, SEPARATOR);
    STRINT_SPLITCACHE = STR;
    STRINT_SPLITSEPERATORCACHE = SEPARATOR;
    return STRINT_SPLITGET(OFFSET);
}

func int STR_SPLITCOUNT(var string STR, var string SEPERATOR) {
    if (((!(HLP_STRCMP(STRINT_SPLITCACHE, STR))) || (!(HLP_STRCMP(STRINT_SPLITSEPERATORCACHE, SEPERATOR)))) || (HLP_STRCMP(STRINT_SPLITCACHE, ""))) {
        STRINT_SPLIT(STR, SEPERATOR);
        STRINT_SPLITCACHE = STR;
        STRINT_SPLITSEPERATORCACHE = SEPERATOR;
    };
    ARR = _^(STRINT_SPLITARRAY);
    return (ARR.NUMINARRAY) / (2);
}

instance STR_SPLITCOUNT.ARR(ZCARRAY)
func string STR_UPPER(var string STR) {
    PTR = _@S(STR);
    if (CALL_BEGIN(CALL)) {
        CALL_PUTRETVALTO(0);
        CALL__THISCALL(_@(PTR), MEMINT_SWITCHG1G2(ZSTRING__UPPER_G1, ZSTRING__UPPER_G2));
        CALL = CALL_END();
    };
    return STR;
}

const int STR_UPPER.ZSTRING__UPPER_G1 = 4608912;
const int STR_UPPER.ZSTRING__UPPER_G2 = 4631296;
var int STR_UPPER.PTR = 0;
const int STR_UPPER.CALL = 0;
func string STR_LOWER(var string STR) {
    PTR = _@S(STR);
    if (CALL_BEGIN(CALL)) {
        CALL_PUTRETVALTO(0);
        CALL__THISCALL(_@(PTR), MEMINT_SWITCHG1G2(ZSTRING__LOWER_G1, ZSTRING__LOWER_G2));
        CALL = CALL_END();
    };
    return STR;
}

const int STR_LOWER.ZSTRING__LOWER_G1 = 4608640;
const int STR_LOWER.ZSTRING__LOWER_G2 = 4631024;
var int STR_LOWER.PTR = 0;
const int STR_LOWER.CALL = 0;
func int MEMINT_GETBUF_8K_SUB() {
    return BUF[0];
}

var int MEMINT_GETBUF_8K_SUB.BUF[2048] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
func int MEMINT_GETBUF_8K() {
    MEMINT_GETBUF_8K_SUB();
    MEMINT_STACKPOPINST();
    MEMINT_STACKPUSHINST(ZPAR_TOK_PUSHINT);
    return 0 /* !broken stack! */;
}

func int MEM_FINDPARSERSYMBOL(var string INST) {
    PTR = _@S(INST);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(PTR));
        CALL_PUTRETVALTO(_@(RET));
        CALL__THISCALL(_@(CURRPARSERADDRESS), MEMINT_SWITCHG1G2(ZCPARSER__GETINDEX_G1, ZCPARSER__GETINDEX_G2));
        CALL = CALL_END();
    };
    return +(RET);
}

const int MEM_FINDPARSERSYMBOL.ZCPARSER__GETINDEX_G1 = 7250112;
const int MEM_FINDPARSERSYMBOL.ZCPARSER__GETINDEX_G2 = 7943280;
var int MEM_FINDPARSERSYMBOL.PTR = 0;
const int MEM_FINDPARSERSYMBOL.CALL = 0;
var int MEM_FINDPARSERSYMBOL.RET = 0;
func int MEM_GETSYMBOLINDEX(var string INST) {
    return MEM_FINDPARSERSYMBOL(INST);
}

func int MEM_GETPARSERSYMBOL(var string INST) {
    SYMID = MEM_FINDPARSERSYMBOL(INST);
    if ((SYMID) == (-(1))) {
        return 0;
    };
    return MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, SYMID);
}

var int MEM_GETPARSERSYMBOL.SYMID = 0;
func int MEM_GETSYMBOL(var string INST) {
    return MEM_GETPARSERSYMBOL(INST);
}

func int MEM_GETSYMBOLBYINDEX(var int ID) {
    if (((ID) < (0)) || ((ID) >= (CURRSYMBOLTABLELENGTH))) {
        MEM_ERROR(CONCATSTRINGS("MEM_GetSymbolByIndex: Index is not in valid bounds: ", INTTOSTRING(ID)));
        return 0;
    };
    return MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, ID);
}

func int MEMINT_PUSHINTPARAM(var int PARAM) {
    return +(PARAM);
}

func void MEM_PUSHINTPARAM(var int PARAM) {
    MEMINT_PUSHINTPARAM(PARAM);
}

func void MEM_PUSHINSTPARAM(var int INST) {
    MEMINT_STACKPUSHINST(INST);
}

func void MEM_PUSHFLOATPARAM(var int INST) {
    MEMINT_STACKPUSHFLOAT(INST);
}

func string MEMINT_PUSHSTRINGPARAMSUB(var string STR) {
    N += 1;
    if ((N) == (10)) {
        N = 0;
    };
    if ((N) == (0)) {
        S0 = STR;
        return S0;
    };
    if ((N) == (1)) {
        S1 = STR;
        return S1;
    };
    if ((N) == (2)) {
        S2 = STR;
        return S2;
    };
    if ((N) == (3)) {
        S3 = STR;
        return S3;
    };
    if ((N) == (4)) {
        S4 = STR;
        return S4;
    };
    if ((N) == (5)) {
        S5 = STR;
        return S5;
    };
    if ((N) == (6)) {
        S6 = STR;
        return S6;
    };
    if ((N) == (7)) {
        S7 = STR;
        return S7;
    };
    if ((N) == (8)) {
        S8 = STR;
        return S8;
    };
    if ((N) == (9)) {
        S9 = STR;
        return S9;
    };
    MEM_ASSERTFAIL("Should be never here.");
    return 0 /* !broken stack! */;
}

var int MEMINT_PUSHSTRINGPARAMSUB.N = 0;
var string MEMINT_PUSHSTRINGPARAMSUB.S0 = "";
var string MEMINT_PUSHSTRINGPARAMSUB.S1 = "";
var string MEMINT_PUSHSTRINGPARAMSUB.S2 = "";
var string MEMINT_PUSHSTRINGPARAMSUB.S3 = "";
var string MEMINT_PUSHSTRINGPARAMSUB.S4 = "";
var string MEMINT_PUSHSTRINGPARAMSUB.S5 = "";
var string MEMINT_PUSHSTRINGPARAMSUB.S6 = "";
var string MEMINT_PUSHSTRINGPARAMSUB.S7 = "";
var string MEMINT_PUSHSTRINGPARAMSUB.S8 = "";
var string MEMINT_PUSHSTRINGPARAMSUB.S9 = "";
func void MEM_PUSHSTRINGPARAM(var string STR) {
    MEMINT_PUSHSTRINGPARAMSUB(STR);
}

func int MEM_POPINTRESULT() {
    return 0 /* !broken stack! */;
}

func string MEM_POPSTRINGRESULT() {
    return 0 /* !broken stack! */;
}

func instance MEM_POPINSTRESULT() {
    return 0 /* !broken stack! */;
}

func void MEM_CALLBYID(var int SYMBID) {
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

instance MEM_CALLBYID.SYM(ZCPAR_SYMBOL)
var int MEM_CALLBYID.TYPE = 0;
func void MEM_CALLBYSTRING(var string FNC) {
    if (HLP_STRCMP(FNC, "")) {
        MEM_ERROR("MEM_CallByString: fnc may not be an empty string!");
        return;
    };
    if (HLP_STRCMP(CACHEFUNC, FNC)) {
        SYMBID = CACHESYMBID;
    };
    SYMBID = MEM_FINDPARSERSYMBOL(FNC);
    if ((SYMBID) == (-(1))) {
        MEM_ERROR(CONCATSTRINGS("MEM_CallByString: Undefined symbol: ", FNC));
        return;
    };
    CACHEFUNC = FNC;
    CACHESYMBID = SYMBID;
    MEM_CALLBYID(SYMBID);
}

var int MEM_CALLBYSTRING.SYMBID = 0;
const string MEM_CALLBYSTRING.CACHEFUNC = "";
const int MEM_CALLBYSTRING.CACHESYMBID = 0;
func void MEM_CALL(var func FNC) {
    MEM_CALLBYID(MEM_GETFUNCID(0x15e8));
}

func int MEMINT_BUILDFUNCSTARTSARRAY() {
    ARRAY = MEM_ARRAYCREATE();
    LASTOFFSET = 0;
    WASSORTED = 1;
    I = 0;
    LOOP = MEM_STACKPOS.POSITION;
    if ((I) < (MEM_PARSER.SYMTAB_TABLE_NUMINARRAY)) {
        SYMB = _^(MEM_READINTARRAY(MEM_PARSER.SYMTAB_TABLE_ARRAY, I));
        TYPE = (SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE);
        if (((((SYMB.BITFIELD) & (ZPAR_FLAG_CONST)) && (!((SYMB.BITFIELD) & (ZPAR_FLAG_EXTERNAL)))) && (((TYPE) == (ZPAR_TYPE_FUNC)) || ((TYPE) == (ZPAR_TYPE_INSTANCE)))) || ((TYPE) == (ZPAR_TYPE_PROTOTYPE))) {
            if ((WASSORTED) && ((LASTOFFSET) > (SYMB.CONTENT))) {
                WASSORTED = 0;
                MEM_INFO("The functions in the symbol table do not seem to be sorted by stack-offset.");
            };
            LASTOFFSET = SYMB.CONTENT;
            MEM_ARRAYINSERT(ARRAY, SYMB.CONTENT);
            MEM_ARRAYINSERT(ARRAY, I);
        };
        I += 1;
        MEM_STACKPOS.POSITION = LOOP;
    };
    if (!(WASSORTED)) {
        ZCARR = _^(ARRAY);
        MEMINT_QSORT(ZCARR.ARRAY, (ZCARR.NUMINARRAY) / (2), 8, 0);
    };
    return ARRAY;
}

var int MEMINT_BUILDFUNCSTARTSARRAY.ARRAY = 0;
var int MEMINT_BUILDFUNCSTARTSARRAY.LASTOFFSET = 0;
var int MEMINT_BUILDFUNCSTARTSARRAY.WASSORTED = 0;
var int MEMINT_BUILDFUNCSTARTSARRAY.I = 0;
var int MEMINT_BUILDFUNCSTARTSARRAY.LOOP = 0;
instance MEMINT_BUILDFUNCSTARTSARRAY.SYMB(ZCPAR_SYMBOL)
var int MEMINT_BUILDFUNCSTARTSARRAY.TYPE = 0;
instance MEMINT_BUILDFUNCSTARTSARRAY.ZCARR(ZCARRAY)
func int MEM_GETFUNCIDBYOFFSET(var int OFFSET) {
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
        } else {
            /* set_instance(0) */;
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

const int MEM_GETFUNCIDBYOFFSET.FUNCSTARTSARRAY = 0;
var int MEM_GETFUNCIDBYOFFSET.TARGET = 0;
instance MEM_GETFUNCIDBYOFFSET.ARRAY(ZCARRAY)
var int MEM_GETFUNCIDBYOFFSET.RES = 0;
var int MEM_GETFUNCIDBYOFFSET.LOW = 0;
var int MEM_GETFUNCIDBYOFFSET.HIGH = 0;
var int MEM_GETFUNCIDBYOFFSET.LOOP = 0;
var int MEM_GETFUNCIDBYOFFSET.MED = 0;
var int MEM_GETFUNCIDBYOFFSET.MEDOFFSET = 0;
func int MEMINT_GETESP() {
    if (CALL_BEGIN(CALL)) {
        ASM_2(ASMINT_OP_MOVESPTOEAX);
        ASM_2(ASMINT_OP_MOVEAXTOMEM);
        ASM_4(_@(ESP));
        ASM_1(ASMINT_OP_RETN);
        CALL = CALL_END();
        if (CALL_BEGIN(CALL)) {
            ESP;
            return 0 /* !broken stack! */;
        };
    };
    return ESP;
}

var int MEMINT_GETESP.ESP = 0;
const int MEMINT_GETESP.CALL = 0;
func int MEMINT_ISFRAMEBOUNDARY(var int ESP) {
    if (!(RETADR)) {
        RETADR = MEMINT_SWITCHG1G2(0x6e91a4, 0x792504);
    };
    return ((MEM_READINT(ESP)) == (-(1))) && ((MEM_READINT((ESP) + (4))) == (RETADR));
}

const int MEMINT_ISFRAMEBOUNDARY.RETADR = 0;
func int MEMINT_FINDFRAMEBOUNDARY(var int ESP, var int SEARCHWORDSMAX) {
    LOOP = MEM_STACKPOS.POSITION;
    if ((SEARCHWORDSMAX) == (0)) {
        return 0;
    };
    if (!(MEMINT_ISFRAMEBOUNDARY(ESP))) {
        ESP += 4;
        SEARCHWORDSMAX -= 1;
        MEM_STACKPOS.POSITION = LOOP;
    };
    return ESP;
}

var int MEMINT_FINDFRAMEBOUNDARY.LOOP = 0;
const int MEMINT_DOSTACKFRAMESIZE = 88;
const int MEMINT_DOSTACKPOPPOSOFFSET = 152;
func int MEM_GETFRAMEBOUNDARY() {
    ESP = MEMINT_GETESP();
    if (!(OFFSET)) {
        REALESP = ESP;
        REALESP += (4) * (MEMINT_DOSTACKFRAMESIZE);
        REALESP = MEMINT_FINDFRAMEBOUNDARY(REALESP, MEMINT_DOSTACKFRAMESIZE);
        if (!(REALESP)) {
            MEM_ASSERTFAIL("MEM_GetFrameBoundary: Could not locate start of stackframe.");
            return 0;
        };
        MYID = MEM_GETFUNCID(0x1609);
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

const int MEM_GETFRAMEBOUNDARY.OFFSET = 0;
var int MEM_GETFRAMEBOUNDARY.ESP = 0;
var int MEM_GETFRAMEBOUNDARY.REALESP = 0;
var int MEM_GETFRAMEBOUNDARY.MYID = 0;
var int MEM_GETFRAMEBOUNDARY.LOOP = 0;
var int MEM_GETFRAMEBOUNDARY.POPPOS = 0;
func int MEM_GETCALLERSTACKPOS() {
    return MEM_READINT(((MEM_GETFRAMEBOUNDARY()) + ((2) * (MEMINT_DOSTACKFRAMESIZE))) - (MEMINT_DOSTACKPOPPOSOFFSET));
}

func void MEM_SETCALLERSTACKPOS(var int POPPOS) {
    MEM_WRITEINT(((MEM_GETFRAMEBOUNDARY()) + ((2) * (MEMINT_DOSTACKFRAMESIZE))) - (MEMINT_DOSTACKPOPPOSOFFSET), POPPOS);
}

func void MEMINT_TOKENIZEFUNCTION(var int FUNCID, var int TOKENARRAY, var int PARAMARRAY, var int POSARR) {
    SYMB = _^(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, FUNCID));
    POS = SYMB.CONTENT;
    POS += CURRPARSERSTACKADDRESS;
    LOOP = MEM_STACKPOS.POSITION;
    MEM_ARRAYINSERT(POSARR, POS);
    TOK = MEM_READBYTE(POS);
    POS += 1;
    if ((((((TOK) == (ZPAR_TOK_CALL)) || ((TOK) == (ZPAR_TOK_CALLEXTERN))) || (((TOK) == (ZPAR_TOK_PUSHINT)) || ((TOK) == (ZPAR_TOK_PUSHVAR)))) || (((TOK) == (ZPAR_TOK_PUSHINST)) || ((TOK) == (ZPAR_TOK_SETINSTANCE)))) || (((TOK) == (ZPAR_TOK_JUMP)) || ((TOK) == (ZPAR_TOK_JUMPF)))) {
        PARAM = MEM_READINT(POS);
        POS += 4;
    };
    if ((TOK) == (ZPAR_TOK_PUSH_ARRAYVAR)) {
        PARAM = MEM_READINT(POS);
        POS += 4;
        POS += 1;
    };
    if ((TOK) > (ZPAR_TOK_SETINSTANCE)) {
        ERR = CONCATSTRINGS("MEMINT_TokenizeFunction: Invalid Token in function ", SYMB.NAME);
        ERR = CONCATSTRINGS(ERR, ". Did you break it? This will probably cause more errors.");
        MEM_ERROR(ERR);
        return;
    };
    PARAM = 0;
    MEM_ARRAYINSERT(TOKENARRAY, TOK);
    MEM_ARRAYINSERT(PARAMARRAY, PARAM);
    if ((TOK) == (ZPAR_TOK_RET)) {
        if (((MEM_GETFUNCIDBYOFFSET((POS) - (CURRPARSERSTACKADDRESS))) != (FUNCID)) || ((POS) >= (MEM_PARSER.STACK_STACKLAST))) {
            MEM_ARRAYINSERT(POSARR, POS);
            MEM_ARRAYINSERT(TOKENARRAY, -(1));
            MEM_ARRAYINSERT(PARAMARRAY, -(1));
            return;
        };
    };
    MEM_STACKPOS.POSITION = LOOP;
}

var int MEMINT_TOKENIZEFUNCTION.POS = 0;
instance MEMINT_TOKENIZEFUNCTION.SYMB(ZCPAR_SYMBOL)
var int MEMINT_TOKENIZEFUNCTION.LOOP = 0;
var int MEMINT_TOKENIZEFUNCTION.TOK = 0;
var int MEMINT_TOKENIZEFUNCTION.PARAM = 0;
var string MEMINT_TOKENIZEFUNCTION.ERR = "";
func int MEMINT_TRACEPARAMETER(var int POS, var int TOKENARR, var int PARAMARR) {
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
        } else {
            SYMB = _^(MEM_GETSYMBOLBYINDEX(SYMBID));
        } else {
            PARAMSNEEDED += (SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE);
        } else {
            PARAMSNEEDED -= (SYMB.OFFSET) != (0);
        } else {
            /* set_instance(0) */;
        };
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

var int MEMINT_TRACEPARAMETER.PARAMSNEEDED = 0;
var int MEMINT_TRACEPARAMETER.LOOP = 0;
var int MEMINT_TRACEPARAMETER.TOK = 0;
instance MEMINT_TRACEPARAMETER.SYMB(ZCPAR_SYMBOL)
var int MEMINT_TRACEPARAMETER.SYMBID = 0;
func string MEMINT_GETLABELNAME(var int LABELVALUE) {
    if (((1000) < (LABELVALUE)) && ((LABELVALUE) < (MEM_PARSER.SYMTAB_TABLE_NUMINARRAY))) {
        SYMB = _^(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, LABELVALUE));
        return SYMB.NAME;
    };
    return INTTOSTRING(LABELVALUE);
}

instance MEMINT_GETLABELNAME.SYMB(ZCPAR_SYMBOL)
func void MEMINT_PREPARELOOPSANDJUMPS(var int STACKPOS) {
    TOKENARR = MEM_ARRAYCREATE();
    PARAMARR = MEM_ARRAYCREATE();
    POSARR = MEM_ARRAYCREATE();
    MEMINT_TOKENIZEFUNCTION(MEM_GETFUNCIDBYOFFSET(STACKPOS), TOKENARR, PARAMARR, POSARR);
    SIZE = MEM_ARRAYSIZE(POSARR);
    LABELFUNC = MEM_GETFUNCOFFSET(0x165f);
    LABELSARR = MEM_ARRAYCREATE();
    LABELPOSARR = MEM_ARRAYCREATE();
    GOTOFUNC = MEM_GETFUNCOFFSET(0x1661);
    GOTOARR = MEM_ARRAYCREATE();
    GOTOPOSARR = MEM_ARRAYCREATE();
    USEDLABELS = MEM_ARRAYCREATE();
    I = 0;
    LOOP = MEM_STACKPOS.POSITION;
    if ((I) < (SIZE)) {
        if ((MEM_ARRAYREAD(TOKENARR, I)) != (ZPAR_TOK_CALL)) {
            TYPE = 0;
        } else if ((MEM_ARRAYREAD(PARAMARR, I)) == (GOTOFUNC)) {
            TYPE = GOTO;
        } else if ((MEM_ARRAYREAD(PARAMARR, I)) == (LABELFUNC)) {
            TYPE = LABEL;
        } else {
            TYPE = 0;
        } else if (TYPE) {
            PUSHINGTOK = MEM_ARRAYREAD(TOKENARR, (I) - (1));
            if ((PUSHINGTOK) == (ZPAR_TOK_PUSHINT)) {
                LABELVALUE = MEM_ARRAYREAD(PARAMARR, (I) - (1));
            } else if ((PUSHINGTOK) == (ZPAR_TOK_PUSHVAR)) {
                LABELVALUE = MEM_ARRAYREAD(PARAMARR, (I) - (1));
                SYMB = _^(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, LABELVALUE));
                LABELVALUE = SYMB.CONTENT;
            } else {
                MEM_ERROR("MEMINT_PrepareLoopsAndJumps: Invalid label found. The parameters for MEM_Goto and MEM_Label must be a constant!");
                I += 1;
                MEM_STACKPOS.POSITION = LOOP;
            } else if ((TYPE) == (LABEL)) {
                MEM_ARRAYPUSH(LABELSARR, LABELVALUE);
                MEM_ARRAYPUSH(LABELPOSARR, MEM_ARRAYREAD(POSARR, (I) + (1)));
            } else {
                MEM_ARRAYPUSH(GOTOARR, LABELVALUE);
                MEM_ARRAYPUSH(GOTOPOSARR, MEM_ARRAYREAD(POSARR, (I) - (1)));
            };
        };
        I += 1;
        MEM_STACKPOS.POSITION = LOOP;
    };
    I = 0;
    LOOP = MEM_STACKPOS.POSITION;
    if ((I) < (MEM_ARRAYSIZE(GOTOARR))) {
        LABELVALUE = MEM_ARRAYREAD(GOTOARR, I);
        GOTOPOS = MEM_ARRAYREAD(GOTOPOSARR, I);
        LABELINDEX = MEM_ARRAYINDEXOF(LABELSARR, LABELVALUE);
        if ((LABELINDEX) == (-(1))) {
            ERR = "MEMINT_PrepareLoopsAndJumps: Goto to non-existing label found: ";
            ERR = CONCATSTRINGS(ERR, MEMINT_GETLABELNAME(LABELVALUE));
            ERR = CONCATSTRINGS(ERR, ".");
            MEM_ERROR(ERR);
            LABELPOS = (GOTOPOS) + (10);
        } else {
            LABELPOS = MEM_ARRAYREAD(LABELPOSARR, LABELINDEX);
        } else {
            LABELPOS -= CURRPARSERSTACKADDRESS;
        } else {
            MEM_WRITEBYTE(GOTOPOS, ZPAR_TOK_JUMP);
        } else {
            GOTOPOS += 1;
        } else {
            MEM_WRITEINT(GOTOPOS, LABELPOS);
        } else {
            GOTOPOS += 4;
        } else {
            MEM_WRITEBYTE(GOTOPOS, ZPAR_TOK_JUMP);
        } else {
            GOTOPOS += 1;
        } else {
            MEM_WRITEINT(GOTOPOS, LABELPOS);
        } else {
            GOTOPOS += 4;
        } else {
            MEM_ARRAYINSERT(USEDLABELS, LABELVALUE);
        } else {
            I += 1;
        } else {
            MEM_STACKPOS.POSITION = LOOP;
        };
    };
    LOOP = MEM_STACKPOS.POSITION;
    if (MEM_ARRAYSIZE(LABELSARR)) {
        LABELVALUE = MEM_ARRAYREAD(LABELSARR, 0);
        MEM_ARRAYREMOVEINDEX(LABELSARR, 0);
        if ((MEM_ARRAYINDEXOF(LABELSARR, LABELVALUE)) != (-(1))) {
            ERROR = "MEMINT_PrepareLoopsAndJumps: Label declared more than once: ";
            ERROR = CONCATSTRINGS(ERROR, MEMINT_GETLABELNAME(LABELVALUE));
            ERROR = CONCATSTRINGS(ERROR, ".");
            MEM_ERROR(ERROR);
        } else if ((MEM_ARRAYINDEXOF(USEDLABELS, LABELVALUE)) == (-(1))) {
            ERROR = "MEMINT_PrepareLoopsAndJumps: Unused Label: ";
            ERROR = CONCATSTRINGS(ERROR, MEMINT_GETLABELNAME(LABELVALUE));
            ERROR = CONCATSTRINGS(ERROR, ".");
            MEM_WARN(ERROR);
        };
        MEM_STACKPOS.POSITION = LOOP;
    };
    MEM_ARRAYFREE(LABELSARR);
    MEM_ARRAYFREE(LABELPOSARR);
    MEM_ARRAYFREE(GOTOARR);
    MEM_ARRAYFREE(GOTOPOSARR);
    MEM_ARRAYFREE(USEDLABELS);
    WHILEOFFSET = MEM_GETFUNCOFFSET(0x165c);
    REPEATOFFSET = MEM_GETFUNCOFFSET(0x1664);
    ENDID = MEM_FINDPARSERSYMBOL("END");
    BREAKID = MEM_FINDPARSERSYMBOL("BREAK");
    CONTINUEID = MEM_FINDPARSERSYMBOL("CONTINUE");
    LOOPTYPE = -(1);
    CONTTARGET = -(1);
    LOOPSTACK = MEM_ARRAYCREATE();
    JUMPENDSTACK = MEM_ARRAYCREATE();
    I = 0;
    LOOP = MEM_STACKPOS.POSITION;
    if ((I) < (SIZE)) {
        TOK = MEM_ARRAYREAD(TOKENARR, I);
        PARAM = MEM_ARRAYREAD(PARAMARR, I);
        POS = MEM_ARRAYREAD(POSARR, I);
        if (((TOK) == (ZPAR_TOK_CALL)) && ((PARAM) == (WHILEOFFSET))) {
            MEM_ARRAYPUSH(LOOPSTACK, LOOPTYPE);
            MEM_ARRAYPUSH(LOOPSTACK, CONTTARGET);
            MEM_WRITEBYTE(POS, ZPAR_TOK_JUMPF);
            CONTTARGET = MEM_ARRAYREAD(POSARR, MEMINT_TRACEPARAMETER(I, TOKENARR, PARAMARR));
            LOOPTYPE = W;
            MEM_ARRAYPUSH(JUMPENDSTACK, -(1));
            MEM_ARRAYPUSH(JUMPENDSTACK, (POS) + (1));
        } else if (((TOK) == (ZPAR_TOK_CALL)) && ((PARAM) == (REPEATOFFSET))) {
            MEM_ARRAYPUSH(LOOPSTACK, LOOPTYPE);
            MEM_ARRAYPUSH(LOOPSTACK, CONTTARGET);
            LOOPTYPE = R;
            CODE = MEM_ALLOC(30);
            MEM_WRITEBYTE(POS, ZPAR_TOK_JUMP);
            MEM_WRITEINT((POS) + (1), (CODE) - (CURRPARSERSTACKADDRESS));
            DATAPTR = MEM_ALLOC(8);
            ENTRYFIDDLER = MEM_GETFUNCOFFSET(0x166e);
            REDOCHECKER = MEM_GETFUNCOFFSET(0x1673);
            MEM_WRITEBYTE(CODE, ZPAR_TOK_PUSHINT);
            CODE += 1;
            MEM_WRITEINT(CODE, DATAPTR);
            CODE += 4;
            MEM_WRITEBYTE(CODE, ZPAR_TOK_CALL);
            CODE += 1;
            MEM_WRITEINT(CODE, ENTRYFIDDLER);
            CODE += 4;
            CONTTARGET = CODE;
            MEM_WRITEBYTE(CODE, ZPAR_TOK_PUSHINT);
            CODE += 1;
            MEM_WRITEINT(CODE, DATAPTR);
            CODE += 4;
            MEM_WRITEBYTE(CODE, ZPAR_TOK_CALL);
            CODE += 1;
            MEM_WRITEINT(CODE, REDOCHECKER);
            CODE += 4;
            MEM_WRITEBYTE(CODE, ZPAR_TOK_JUMPF);
            CODE += 1;
            MEM_ARRAYPUSH(JUMPENDSTACK, -(1));
            MEM_ARRAYPUSH(JUMPENDSTACK, CODE);
            CODE += 4;
            MEM_WRITEBYTE(CODE, ZPAR_TOK_JUMP);
            CODE += 1;
            MEM_WRITEINT(CODE, ((POS) + (5)) - (CURRPARSERSTACKADDRESS));
            CODE += 4;
        } else if (((TOK) == (ZPAR_TOK_PUSHVAR)) && ((PARAM) == (ENDID))) {
            if ((LOOPTYPE) == (-(1))) {
                MEM_ERROR("MEMINT_PrepareLoopsAndJumps: end found outside of loop!");
                I += 1;
                MEM_STACKPOS.POSITION = LOOP;
            };
            MEM_WRITEBYTE(POS, ZPAR_TOK_JUMP);
            MEM_WRITEINT((POS) + (1), (CONTTARGET) - (CURRPARSERSTACKADDRESS));
            BRKLOOP = MEM_STACKPOS.POSITION;
            JMPENDPOS = MEM_ARRAYPOP(JUMPENDSTACK);
            if ((JMPENDPOS) != (-(1))) {
                MEM_WRITEINT(JMPENDPOS, ((POS) + (5)) - (CURRPARSERSTACKADDRESS));
                MEM_STACKPOS.POSITION = BRKLOOP;
            };
            CONTTARGET = MEM_ARRAYPOP(LOOPSTACK);
            LOOPTYPE = MEM_ARRAYPOP(LOOPSTACK);
        } else if (((TOK) == (ZPAR_TOK_PUSHVAR)) && ((PARAM) == (BREAKID))) {
            if ((LOOPTYPE) == (-(1))) {
                MEM_ERROR("MEMINT_PrepareLoopsAndJumps: break found outside of loop!");
            } else {
                MEM_WRITEBYTE(POS, ZPAR_TOK_JUMP);
                MEM_ARRAYPUSH(JUMPENDSTACK, (POS) + (1));
            } else {
                /* set_instance(0) */;
            };
        };
        if (((TOK) == (ZPAR_TOK_PUSHVAR)) && ((PARAM) == (CONTINUEID))) {
            if ((LOOPTYPE) == (-(1))) {
                MEM_ERROR("MEMINT_PrepareLoopsAndJumps: continue found outside of loop!");
            } else {
                MEM_WRITEBYTE(POS, ZPAR_TOK_JUMP);
                MEM_WRITEINT((POS) + (1), (CONTTARGET) - (CURRPARSERSTACKADDRESS));
            };
        };
        I += 1;
        MEM_STACKPOS.POSITION = LOOP;
    };
    if ((LOOPTYPE) != (-(1))) {
        MEM_ERROR("MEMINT_PrepareLoopsAndJumps: Loop not closed with 'end;'.");
    };
    MEM_ARRAYFREE(LOOPSTACK);
    MEM_ARRAYFREE(JUMPENDSTACK);
    MEM_ARRAYFREE(TOKENARR);
    MEM_ARRAYFREE(PARAMARR);
    MEM_ARRAYFREE(POSARR);
}

var int MEMINT_PREPARELOOPSANDJUMPS.TOKENARR = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.PARAMARR = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.POSARR = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.SIZE = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.LABELFUNC = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.LABELSARR = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.LABELPOSARR = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.GOTOFUNC = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.GOTOARR = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.GOTOPOSARR = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.USEDLABELS = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.I = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.LOOP = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.TYPE = 0;
const int MEMINT_PREPARELOOPSANDJUMPS.GOTO = 1;
const int MEMINT_PREPARELOOPSANDJUMPS.LABEL = 2;
var int MEMINT_PREPARELOOPSANDJUMPS.LABELVALUE = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.PUSHINGTOK = 0;
instance MEMINT_PREPARELOOPSANDJUMPS.SYMB(ZCPAR_SYMBOL)
var int MEMINT_PREPARELOOPSANDJUMPS.GOTOPOS = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.LABELINDEX = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.LABELPOS = 0;
var string MEMINT_PREPARELOOPSANDJUMPS.ERR = "";
var string MEMINT_PREPARELOOPSANDJUMPS.ERROR = "";
var int MEMINT_PREPARELOOPSANDJUMPS.WHILEOFFSET = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.REPEATOFFSET = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.ENDID = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.BREAKID = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.CONTINUEID = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.LOOPTYPE = 0;
const int MEMINT_PREPARELOOPSANDJUMPS.W = 0;
const int MEMINT_PREPARELOOPSANDJUMPS.R = 1;
var int MEMINT_PREPARELOOPSANDJUMPS.CONTTARGET = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.LOOPSTACK = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.JUMPENDSTACK = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.TOK = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.PARAM = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.POS = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.CODE = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.DATAPTR = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.ENTRYFIDDLER = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.REDOCHECKER = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.BRKLOOP = 0;
var int MEMINT_PREPARELOOPSANDJUMPS.JMPENDPOS = 0;
class C_LABEL {
};
const int BREAK = -42;
const int CONTINUE = -23;
const int END = -72;
func void WHILE(var int B) {
    CALLEDFROM = (MEM_GETCALLERSTACKPOS()) - (5);
    if (((MEM_READBYTE((CALLEDFROM) + (CURRPARSERSTACKADDRESS))) != (ZPAR_TOK_CALL)) || ((MEM_READINT(((CALLEDFROM) + (1)) + (CURRPARSERSTACKADDRESS))) != (MEM_GETFUNCOFFSET(0x165c)))) {
        MEM_ERROR("while: While was called in an unorthodox way! This cannot be handled.");
        return;
    };
    MEMINT_PREPARELOOPSANDJUMPS(CALLEDFROM);
    B;
    MEM_SETCALLERSTACKPOS(CALLEDFROM);
}

var int WHILE.CALLEDFROM = 0;
func void MEM_LABEL(var int LBL) {
}

func void MEM_GOTO(var int LBL) {
    CALLEDFROM = (MEM_GETCALLERSTACKPOS()) - (5);
    if (((MEM_READBYTE((CALLEDFROM) + (CURRPARSERSTACKADDRESS))) != (ZPAR_TOK_CALL)) || ((MEM_READINT(((CALLEDFROM) + (1)) + (CURRPARSERSTACKADDRESS))) != (MEM_GETFUNCOFFSET(0x1661)))) {
        MEM_ERROR("MEM_Goto: MEM_Goto was called in an unorthodox way! This cannot be handled.");
        return;
    };
    MEMINT_PREPARELOOPSANDJUMPS(CALLEDFROM);
    MEM_SETCALLERSTACKPOS(CALLEDFROM);
}

var int MEM_GOTO.CALLEDFROM = 0;
func void REPEAT(var int VARIABLE, var int LIMIT) {
    MEM_ERROR("MEM_Repat was called before MEM_InitRepeat / MEM_InitAll");
}

func void MEMINT_REPEAT() {
    CALLEDFROM = (MEM_GETCALLERSTACKPOS()) - (5);
    if (((MEM_READBYTE((CALLEDFROM) + (CURRPARSERSTACKADDRESS))) != (ZPAR_TOK_CALL)) || ((MEM_READINT(((CALLEDFROM) + (1)) + (CURRPARSERSTACKADDRESS))) != (MEM_GETFUNCOFFSET(0x1664)))) {
        MEM_ERROR("repeat: repeat was called in an unorthodox way! This cannot be handled.");
        return;
    };
    MEMINT_PREPARELOOPSANDJUMPS(CALLEDFROM);
    MEM_SETCALLERSTACKPOS(CALLEDFROM);
}

var int MEMINT_REPEAT.CALLEDFROM = 0;
func void MEM_INITREPEAT() {
    if (!(DONE)) {
        MEM_REPLACEFUNC(0x1664, 0x1667);
        DONE = TRUE;
    };
}

const int MEM_INITREPEAT.DONE = 0;
class MEMINT_REPEATDATA {
	var int VARADR;
	var int LIMIT;
};


func void MEMINT_REPEATENTRYFIDDLE(var int LIMIT, var int LOOPDATA) {
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

var int MEMINT_REPEATENTRYFIDDLE.TOK = 0;
var int MEMINT_REPEATENTRYFIDDLE.VARADR = 0;
func int MEMINT_REPEATREDOCHECK(var int LOOPDATA) {
    DATA = _^(LOOPDATA);
    VAL = MEM_READINT(DATA.VARADR);
    VAL += 1;
    MEM_WRITEINT(DATA.VARADR, VAL);
    return (VAL) < (DATA.LIMIT);
}

instance MEMINT_REPEATREDOCHECK.DATA(MEMINT_REPEATDATA)
var int MEMINT_REPEATREDOCHECK.VAL = 0;
func int MEM_GETMENUBYSTRING(var string MENUNAME) {
    MENUS = _^(MEMINT_MENUARRAYOFFSET);
    POS = 0;
    LOOPSTART = MEM_STACKPOS.POSITION;
    if ((POS) >= (MENUS.NUMINARRAY)) {
        return 0;
    };
    MENUADDR = MEM_READINTARRAY(MENUS.ARRAY, POS);
    MENU = _^(MENUADDR);
    if (HLP_STRCMP(MENU.NAME, MENUNAME)) {
        return MENUADDR;
    };
    POS += 1;
    MEM_STACKPOS.POSITION = LOOPSTART;
    return 0 /* !broken stack! */;
}

instance MEM_GETMENUBYSTRING.MENUS(ZCARRAY)
var int MEM_GETMENUBYSTRING.POS = 0;
var int MEM_GETMENUBYSTRING.LOOPSTART = 0;
var int MEM_GETMENUBYSTRING.MENUADDR = 0;
instance MEM_GETMENUBYSTRING.MENU(ZCMENU)
func int MEM_GETMENUITEMBYSTRING(var string MENUITEMNAME) {
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

instance MEM_GETMENUITEMBYSTRING.MENUITEMS(ZCARRAY)
var int MEM_GETMENUITEMBYSTRING.POS = 0;
var int MEM_GETMENUITEMBYSTRING.LOOPSTART = 0;
var int MEM_GETMENUITEMBYSTRING.MENUITEMADDR = 0;
instance MEM_GETMENUITEMBYSTRING.MENUITEM(ZCMENUITEM)
instance MEM_GAME(OCGAME)
instance MEM_WORLD(OWORLD)
instance MEM_TIMER(ZCTIMER)
instance MEM_WORLDTIMER(OCWORLDTIMER)
instance MEM_VOBTREE(ZCTREE)
instance MEM_INFOMAN(OCINFOMANAGER)
instance MEM_INFORMATIONMAN(OCINFORMATIONMANAGER)
instance MEM_WAYNET(ZCWAYNET)
instance MEM_CAMERA(ZCCAMERA)
instance MEM_SKYCONTROLLER(ZCSKYCONTROLLER_OUTDOOR)
instance MEM_SPAWNMANAGER(OCSPAWNMANAGER)
instance MEM_GAMEMANAGER(CGAMEMANAGER)
instance MEM_PARSER(ZCPARSER)
func void MEM_INITGLOBALINST() {
    MEM_GAME = _^(MEM_READINT(MEMINT_OGAME_POINTER_ADDRESS));
    MEM_WORLD = _^(MEM_GAME._ZCSESSION_WORLD);
    MEM_VOBTREE = _^((MEM_GAME._ZCSESSION_WORLD) + (36));
    if (MEM_GAME.INFOMAN) {
        MEM_INFOMAN = _^(MEM_GAME.INFOMAN);
    };
    MEM_ASSIGNINSTNULL(0x168a);
    MEM_INFORMATIONMAN = _^(MEMINT_OCINFORMATIONMANAGER_ADDRESS);
    MEM_WAYNET = _^(MEM_WORLD.WAYNET);
    if (MEM_GAME._ZCSESSION_CAMERA) {
        MEM_CAMERA = _^(MEM_GAME._ZCSESSION_CAMERA);
    };
    MEM_ASSIGNINSTNULL(0x168d);
    if (MEM_WORLD.SKYCONTROLEROUTDOOR) {
        MEM_SKYCONTROLLER = _^(MEM_WORLD.SKYCONTROLEROUTDOOR);
    };
    MEM_ASSIGNINSTNULL(0x168e);
    if (MEM_GAME.SPAWNMAN) {
        MEM_SPAWNMANAGER = _^(MEM_GAME.SPAWNMAN);
    };
    MEM_ASSIGNINSTNULL(0x168f);
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

func int HLP_IS_ZCMOVER(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (ZCMOVER_VTBL);
}

func int HLP_IS_OCMOB(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    VTBL = MEM_READINT(PTR);
    return ((((((((((VTBL) == (OCMOB_VTBL)) | ((VTBL) == (OCMOBINTER_VTBL))) | ((VTBL) == (OCMOBSWITCH_VTBL))) | ((VTBL) == (OCMOBWHEEL_VTBL))) | ((VTBL) == (OCMOBCONTAINER_VTBL))) | ((VTBL) == (OCMOBLOCKABLE_VTBL))) | ((VTBL) == (OCMOBLADDER_VTBL))) | ((VTBL) == (OCMOBFIRE_VTBL))) | ((VTBL) == (OCMOBBED_VTBL))) | ((VTBL) == (OCMOBDOOR_VTBL));
}

var int HLP_IS_OCMOB.VTBL = 0;
func int HLP_IS_OCMOBINTER(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    VTBL = MEM_READINT(PTR);
    return (((((((((VTBL) == (OCMOBINTER_VTBL)) | ((VTBL) == (OCMOBSWITCH_VTBL))) | ((VTBL) == (OCMOBWHEEL_VTBL))) | ((VTBL) == (OCMOBCONTAINER_VTBL))) | ((VTBL) == (OCMOBLOCKABLE_VTBL))) | ((VTBL) == (OCMOBLADDER_VTBL))) | ((VTBL) == (OCMOBFIRE_VTBL))) | ((VTBL) == (OCMOBBED_VTBL))) | ((VTBL) == (OCMOBDOOR_VTBL));
}

var int HLP_IS_OCMOBINTER.VTBL = 0;
func int HLP_IS_OCMOBLOCKABLE(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    VTBL = MEM_READINT(PTR);
    return (((VTBL) == (OCMOBCONTAINER_VTBL)) | ((VTBL) == (OCMOBLOCKABLE_VTBL))) | ((VTBL) == (OCMOBDOOR_VTBL));
}

var int HLP_IS_OCMOBLOCKABLE.VTBL = 0;
func int HLP_IS_OCMOBCONTAINER(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBCONTAINER_VTBL);
}

func int HLP_IS_OCMOBDOOR(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBDOOR_VTBL);
}

func int HLP_IS_OCMOBBED(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBBED_VTBL);
}

func int HLP_IS_OCMOBSWITCH(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBSWITCH_VTBL);
}

func int HLP_IS_OCMOBWHEEL(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBWHEEL_VTBL);
}

func int HLP_IS_OCMOBLADDER(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCMOBLADDER_VTBL);
}

func int HLP_IS_OCNPC(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCNPC_VTBL);
}

func int HLP_IS_OCITEM(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (OCITEM_VTBL);
}

func int HLP_IS_ZCVOBLIGHT(var int PTR) {
    if (!(PTR)) {
        return 0;
    };
    return (MEM_READINT(PTR)) == (ZCVOBLIGHT_VTBL);
}

func int MEM_GETCLASSDEF(var int OBJPTR) {
    if (!(OBJPTR)) {
        MEM_ERROR("MEMINT_GetClassDef: ObjPtr == 0.");
        return 0;
    };
    return MEM_READINT((1) + (MEM_READINT(MEM_READINT(OBJPTR))));
}

func string MEM_GETCLASSNAME(var int OBJPTR) {
    CLASSDEF = MEM_GETCLASSDEF(OBJPTR);
    if (CLASSDEF) {
        return MEM_READSTRING(CLASSDEF);
    };
    return "";
}

var int MEM_GETCLASSNAME.CLASSDEF = 0;
func int MEM_INSERTVOB(var string VIS, var string WP) {
    PLAYERADR = MEMINT_SWITCHG1G2(OCNPC__PLAYER_G1, OCNPC__PLAYER_G2);
    WASINVALID = 0;
    if (!(HLP_IS_OCNPC(MEM_READINT(PLAYERADR)))) {
        WASINVALID = 1;
        MEMINT_GETMEMHELPER();
        MEM_WRITEINT(PLAYERADR, MEM_INSTGETOFFSET(0x132e));
        OLDWORLD = MEM_HELPER._ZCVOB_HOMEWORLD;
        MEM_HELPER._ZCVOB_HOMEWORLD = MEM_INSTGETOFFSET(0x1686);
    };
    WLD_INSERTOBJECT(VIS, WP);
    if (WASINVALID) {
        MEM_WRITEINT(PLAYERADR, 0);
        MEM_HELPER._ZCVOB_HOMEWORLD = OLDWORLD;
    };
    NEWTREENODE = _^(MEM_WORLD.GLOBALVOBTREE_FIRSTCHILD);
    return NEWTREENODE.DATA;
}

const int MEM_INSERTVOB.OCNPC__PLAYER_G1 = 9288624;
const int MEM_INSERTVOB.OCNPC__PLAYER_G2 = 11216516;
var int MEM_INSERTVOB.PLAYERADR = 0;
var int MEM_INSERTVOB.WASINVALID = 0;
var int MEM_INSERTVOB.OLDWORLD = 0;
instance MEM_INSERTVOB.NEWTREENODE(ZCTREE)
func void MEM_DELETEVOB(var int VOBPTR) {
    WORLD = MEM_GAME._ZCSESSION_WORLD;
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(VOBPTR));
        CALL__THISCALL(_@(WORLD), MEMINT_SWITCHG1G2(0x6d6ef0, 0x7800c0));
        CALL = CALL_END();
    };
}

var int MEM_DELETEVOB.WORLD = 0;
const int MEM_DELETEVOB.CALL = 0;
func int MEM_GETBUFFERCRC32(var int BUF, var int BUFLEN) {
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(NULL));
        CALL_INTPARAM(_@(BUFLEN));
        CALL_PTRPARAM(_@(BUF));
        CALL_PUTRETVALTO(_@(RET));
        CALL__CDECL(MEMINT_SWITCHG1G2(GETBUFFERCRC32_G1, GETBUFFERCRC32_G2));
        CALL = CALL_END();
    };
    return +(RET);
}

const int MEM_GETBUFFERCRC32.GETBUFFERCRC32_G1 = 6088464;
const int MEM_GETBUFFERCRC32.GETBUFFERCRC32_G2 = 6265360;
var int MEM_GETBUFFERCRC32.NULL = 0;
const int MEM_GETBUFFERCRC32.CALL = 0;
var int MEM_GETBUFFERCRC32.RET = 0;
func int MEM_GETSTRINGHASH(var string STR) {
    return MEM_GETBUFFERCRC32(STR_TOCHAR(STR), STR_LEN(STR));
}

func int MEMINT_GETWORLDHASHBUCKET(var int HASH) {
    BUCKETPTR = _@(0x1686);
    BUCKETPTR += (ZCWORLD_VOBHASHTABLE_OFFSET) + ((12) * (HASH));
    return BUCKETPTR;
}

var int MEMINT_GETWORLDHASHBUCKET.BUCKETPTR = 0;
func int MEM_SEARCHVOBBYNAME(var string STR) {
    PTR = _@S(STR);
    WORLD = _@(0x1686);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(PTR));
        CALL_PUTRETVALTO(_@(RET));
        CALL__THISCALL(_@(WORLD), MEMINT_SWITCHG1G2(OCWORLD__SEARCHVOBBYNAME_G1, OCWORLD__SEARCHVOBBYNAME_G2));
        CALL = CALL_END();
    };
    return +(RET);
}

const int MEM_SEARCHVOBBYNAME.OCWORLD__SEARCHVOBBYNAME_G1 = 7173120;
const int MEM_SEARCHVOBBYNAME.OCWORLD__SEARCHVOBBYNAME_G2 = 7865872;
var int MEM_SEARCHVOBBYNAME.PTR = 0;
var int MEM_SEARCHVOBBYNAME.WORLD = 0;
const int MEM_SEARCHVOBBYNAME.CALL = 0;
var int MEM_SEARCHVOBBYNAME.RET = 0;
func int MEM_SEARCHALLVOBSBYNAME(var string STR) {
    ARR = MEM_ARRAYCREATE();
    PTR = _@S(STR);
    WORLD = _@(0x1686);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(ARR));
        CALL_PTRPARAM(_@(PTR));
        CALL_PUTRETVALTO(0);
        CALL__THISCALL(_@(WORLD), MEMINT_SWITCHG1G2(OCWORLD__SEARCHVOBLISTBYNAME_G1, OCWORLD__SEARCHVOBLISTBYNAME_G2));
        CALL = CALL_END();
    };
    MEM_ARRAYSORT(ARR);
    MEM_ARRAYUNIQUE(ARR);
    return +(ARR);
}

const int MEM_SEARCHALLVOBSBYNAME.OCWORLD__SEARCHVOBLISTBYNAME_G1 = 7173296;
const int MEM_SEARCHALLVOBSBYNAME.OCWORLD__SEARCHVOBLISTBYNAME_G2 = 7866048;
var int MEM_SEARCHALLVOBSBYNAME.ARR = 0;
var int MEM_SEARCHALLVOBSBYNAME.PTR = 0;
var int MEM_SEARCHALLVOBSBYNAME.WORLD = 0;
const int MEM_SEARCHALLVOBSBYNAME.CALL = 0;
func void MEM_RENAMEVOB(var int VOBPTR, var string NEWNAME) {
    PTR = _@S(NEWNAME);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(PTR));
        CALL_PUTRETVALTO(0);
        CALL__THISCALL(_@(VOBPTR), MEMINT_SWITCHG1G2(ZCVOB_SETVOBNAME_G1, ZCVOB_SETVOBNAME_G2));
        CALL = CALL_END();
    };
}

const int MEM_RENAMEVOB.ZCVOB_SETVOBNAME_G1 = 6113648;
const int MEM_RENAMEVOB.ZCVOB_SETVOBNAME_G2 = 6290896;
var int MEM_RENAMEVOB.PTR = 0;
const int MEM_RENAMEVOB.CALL = 0;
func int MEMINT_VOBGETEM(var int VOBPTR) {
    if (CALL_BEGIN(CALL)) {
        CALL_PUTRETVALTO(_@(RET));
        CALL__FASTCALL(_@(VOBPTR), _@(NULL), MEMINT_SWITCHG1G2(ZCVOB__GETEM_G1, ZCVOB__GETEM_G2));
        CALL = CALL_END();
    };
    return +(RET);
}

const int MEMINT_VOBGETEM.ZCVOB__GETEM_G1 = 6113712;
const int MEMINT_VOBGETEM.ZCVOB__GETEM_G2 = 6290960;
const int MEMINT_VOBGETEM.NULL = 0;
const int MEMINT_VOBGETEM.CALL = 0;
var int MEMINT_VOBGETEM.RET = 0;
func void MEM_TRIGGERVOB(var int VOBPTR) {
    if (!(VOBPTR)) {
        MEM_ERROR("MEM_TriggerVob: VobPtr may not be null!");
        return;
    };
    EVENTMAN = MEMINT_VOBGETEM(VOBPTR);
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(VOBPTR));
        CALL_PTRPARAM(_@(VOBPTR));
        CALL_PUTRETVALTO(0);
        CALL__THISCALL(_@(EVENTMAN), MEMINT_SWITCHG1G2(ZCEVENTMANAGER_ONTRIGGER_G1, ZCEVENTMANAGER_ONTRIGGER_G2));
        CALL = CALL_END();
    };
}

const int MEM_TRIGGERVOB.ZCEVENTMANAGER_ONTRIGGER_G1 = 7202656;
const int MEM_TRIGGERVOB.ZCEVENTMANAGER_ONTRIGGER_G2 = 7895536;
var int MEM_TRIGGERVOB.EVENTMAN = 0;
const int MEM_TRIGGERVOB.CALL = 0;
func void MEM_UNTRIGGERVOB(var int VOBPTR) {
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

const int MEM_UNTRIGGERVOB.ZCEVENTMANAGER_ONUNTRIGGER_G1 = 7202848;
const int MEM_UNTRIGGERVOB.ZCEVENTMANAGER_ONUNTRIGGER_G2 = 7895728;
var int MEM_UNTRIGGERVOB.EVENTMAN = 0;
const int MEM_UNTRIGGERVOB.CALL = 0;
const int KEY_UP = 0;
const int KEY_PRESSED = 1;
const int KEY_HOLD = 2;
const int KEY_RELEASED = 3;
func int MEM_KEYPRESSED(var int KEY) {
    return (MEM_READINT((MEMINT_KEYEVENT_OFFSET) + (KEY))) & (255);
}

var int MEMINT_KEYSTATE[1024] = {0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0};
func int MEM_KEYSTATE(var int KEY) {
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
        } else {
            /* set_instance(0) */;
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

var int MEM_KEYSTATE.PRESSED = 0;
var int MEM_KEYSTATE.ADR = 0;
var int MEM_KEYSTATE.KEYSTATE = 0;
func void MEM_INSERTKEYEVENT(var int KEY) {
    MEM_ARRAYINSERT(MEMINT_KEYBUFFER_OFFSET, KEY);
}

instance MEMINT_OPT_SET(ZCOPTION)
instance MEMINT_OPT_SECTION(ZCOPTIONSECTION)
instance MEMINT_OPT_ENTRY(ZCOPTIONENTRY)
func int MEMINT_OPT_FINDENTRY(var string OPTNAME) {
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

var int MEMINT_OPT_FINDENTRY.I = 0;
var int MEMINT_OPT_FINDENTRY.LOOPSTART = 0;
var int MEMINT_OPT_FINDENTRY.PTR = 0;
func int MEMINT_OPT_FINDSECTION(var string SECTNAME) {
    if (!(MEMINT_OPT_SET.SECTIONLIST_NUMINARRAY)) {
        return FALSE;
    };
    I = 0;
    LOOPSTART = MEM_STACKPOS.POSITION;
    if ((I) < (MEMINT_OPT_SET.SECTIONLIST_NUMINARRAY)) {
        PTR = MEM_READINTARRAY(MEMINT_OPT_SET.SECTIONLIST_ARRAY, I);
        MEMINT_OPT_SECTION = _^(PTR);
        if (HLP_STRCMP(MEMINT_OPT_SECTION.SECNAME, SECTNAME)) {
            return TRUE;
        };
        I += 1;
        MEM_STACKPOS.POSITION = LOOPSTART;
    };
    return FALSE;
}

var int MEMINT_OPT_FINDSECTION.I = 0;
var int MEMINT_OPT_FINDSECTION.LOOPSTART = 0;
var int MEMINT_OPT_FINDSECTION.PTR = 0;
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

func int MEM_GOTHOPTSECTIONEXISTS(var string SECTIONNAME) {
    MEMINT_OPT_SET = _^(MEM_READINT(ZOPTIONS_POINTER_ADDRESS));
    return MEMINT_OPT_FINDSECTION(SECTIONNAME);
}

func int MEM_GOTHOPTEXISTS(var string SECTIONNAME, var string OPTIONNAME) {
    if (!(MEM_GOTHOPTSECTIONEXISTS(SECTIONNAME))) {
        return FALSE;
    };
    return MEMINT_OPT_FINDENTRY(OPTIONNAME);
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

func int MEM_MODOPTSECTIONEXISTS(var string SECTIONNAME) {
    MEMINT_OPT_SET = _^(MEM_READINT(ZGAMEOPTIONS_POINTER_ADDRESS));
    return MEMINT_OPT_FINDSECTION(SECTIONNAME);
}

func int MEM_MODOPTEXISTS(var string SECTIONNAME, var string OPTIONNAME) {
    if (!(MEM_MODOPTSECTIONEXISTS(SECTIONNAME))) {
        return FALSE;
    };
    return MEMINT_OPT_FINDENTRY(OPTIONNAME);
}

func string MEM_GETCOMMANDLINE() {
    MEMINT_OPT_SET = _^(MEM_READINT(ZOPTIONS_POINTER_ADDRESS));
    return MEMINT_OPT_SET.COMMANDLINE;
}

func void MEM_SETGOTHOPT(var string SECTION, var string OPTION, var string VALUE) {
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
        SECTPTR = MEM_INSTGETOFFSET(0x170a);
        MEM_ARRAYINSERT((SECTPTR) + (20), NEWENTRY_PTR);
    };
    MEMINT_OPT_ENTRY.VARVALUE = VALUE;
    MEMINT_OPT_ENTRY.VARVALUETEMP = VALUE;
}

var int MEM_SETGOTHOPT.OPTSETPTR = 0;
var int MEM_SETGOTHOPT.NEWSECT_PTR = 0;
var int MEM_SETGOTHOPT.NEWENTRY_PTR = 0;
var int MEM_SETGOTHOPT.SECTPTR = 0;
func void MEM_APPLYGOTHOPT() {
    if (CALL_BEGIN(CALL)) {
        CALL__THISCALL(MEMINT_GAMEMAN_POINTER_ADDRESS, MEMINT_SWITCHG1G2(0x4267c0, 0x4276b0));
        CALL = CALL_END();
    };
}

const int MEM_APPLYGOTHOPT.CALL = 0;
func int MEMINT_HEXCHARTOINT(var int C) {
    if (((C) >= (ASCII_0)) && ((C) < ((ASCII_0) + (10)))) {
        return (C) - (ASCII_0);
    };
    if (((C) >= (ASCII_A)) && ((C) < ((ASCII_A) + (6)))) {
        return ((10) + (C)) - (ASCII_A);
    };
    if (((C) >= (ASCII_A_)) && ((C) < ((ASCII_A_) + (6)))) {
        return ((10) + (C)) - (ASCII_A_);
    };
    MEM_ERROR(CONCATSTRINGS("Invalid Hex Char: ", INTTOSTRING(C)));
    return 0;
}

const int MEMINT_HEXCHARTOINT.ASCII_A = 97;
const int MEMINT_HEXCHARTOINT.ASCII_A_ = 65;
const int MEMINT_HEXCHARTOINT.ASCII_0 = 48;
func int MEMINT_KEYSTRINGTOKEY(var string HEX) {
    STR = _^(_@S(HEX));
    RES = 0;
    RES += (MEMINT_HEXCHARTOINT(MEM_READBYTE((STR.PTR) + (0)))) << (4);
    RES += (MEMINT_HEXCHARTOINT(MEM_READBYTE((STR.PTR) + (1)))) << (0);
    RES += (MEMINT_HEXCHARTOINT(MEM_READBYTE((STR.PTR) + (2)))) << (12);
    RES += (MEMINT_HEXCHARTOINT(MEM_READBYTE((STR.PTR) + (3)))) << (8);
    return RES;
}

instance MEMINT_KEYSTRINGTOKEY.STR(ZSTRING)
var int MEMINT_KEYSTRINGTOKEY.RES = 0;
func int MEM_GETKEY(var string NAME) {
    RAW = MEM_GETGOTHOPT("KEYS", NAME);
    if ((STR_LEN(RAW)) < (4)) {
        MEM_WARN(CONCATSTRINGS("Could not find key with name: ", NAME));
        return 0;
    };
    return MEMINT_KEYSTRINGTOKEY(RAW);
}

var string MEM_GETKEY.RAW = "";
func int MEM_GETSECONDARYKEY(var string NAME) {
    RAW = MEM_GETGOTHOPT("KEYS", NAME);
    if ((STR_LEN(RAW)) < (8)) {
        return 0;
    };
    RAW = STR_SUBSTR(RAW, 4, 4);
    return MEMINT_KEYSTRINGTOKEY(RAW);
}

var string MEM_GETSECONDARYKEY.RAW = "";
func string MEMINT_BYTETOKEYHEX(var int BYTE) {
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

const int MEMINT_BYTETOKEYHEX.ASCII_0 = 48;
const int MEMINT_BYTETOKEYHEX.ASCII_A = 65;
var int MEMINT_BYTETOKEYHEX.C1 = 0;
var int MEMINT_BYTETOKEYHEX.C2 = 0;
const int MEMINT_BYTETOKEYHEX.MEM = 0;
func void MEM_SETKEYS(var string NAME, var int PRIMARY, var int SECONDARY) {
    STR = "";
    STR = CONCATSTRINGS(STR, MEMINT_BYTETOKEYHEX(PRIMARY));
    STR = CONCATSTRINGS(STR, MEMINT_BYTETOKEYHEX((PRIMARY) >> (8)));
    STR = CONCATSTRINGS(STR, MEMINT_BYTETOKEYHEX(SECONDARY));
    STR = CONCATSTRINGS(STR, MEMINT_BYTETOKEYHEX((SECONDARY) >> (8)));
    MEM_SETGOTHOPT("KEYS", NAME, STR);
    if (CALL_BEGIN(CALL)) {
        ZINPUTPTR = MEMINT_SWITCHG1G2(0x86cca0, 0x8d1650);
        ZCINPUT__BINDKEYS = MEMINT_SWITCHG1G2(0x4c5930, 0x4cfe00);
        CALL_INTPARAM(_@(NULL));
        CALL__THISCALL(ZINPUTPTR, ZCINPUT__BINDKEYS);
        CALL = CALL_END();
    };
}

var string MEM_SETKEYS.STR = "";
const int MEM_SETKEYS.CALL = 0;
var int MEM_SETKEYS.ZINPUTPTR = 0;
var int MEM_SETKEYS.ZCINPUT__BINDKEYS = 0;
var int MEM_SETKEYS.NULL = 0;
func void MEM_SETKEY(var string NAME, var int KEY) {
    MEM_SETKEYS(NAME, KEY, MEM_GETSECONDARYKEY(NAME));
}

func void MEM_SETSECONDARYKEY(var string NAME, var int KEY) {
    MEM_SETKEYS(NAME, MEM_GETKEY(NAME), KEY);
}

func int MEM_GETSYSTEMTIME() {
    if (CALL_BEGIN(CALL)) {
        CALL_PUTRETVALTO(_@(RET));
        CALL__CDECL(MEMINT_SWITCHG1G2(SYSGETTIMEPTR_G1, SYSGETTIMEPTR_G2));
        CALL = CALL_END();
    };
    return +(RET);
}

const int MEM_GETSYSTEMTIME.SYSGETTIMEPTR_G1 = 5204320;
const int MEM_GETSYSTEMTIME.SYSGETTIMEPTR_G2 = 5264000;
const int MEM_GETSYSTEMTIME.CALL = 0;
var int MEM_GETSYSTEMTIME.RET = 0;
func int MEM_GETPERFORMANCECOUNTER() {
    SPACE = _@(BUF[0]);
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(SPACE));
        CALL_PUTRETVALTO(0);
        CALL__STDCALL(MEMINT_SWITCHG1G2(QUERYPERFORMANCECOUNTER_G1, QUERYPERFORMANCECOUNTER_G2));
        CALL = CALL_END();
    };
    return BUF[0];
}

var int MEM_GETPERFORMANCECOUNTER.BUF[2] = {0, 0};
var int MEM_GETPERFORMANCECOUNTER.SPACE = 0;
const int MEM_GETPERFORMANCECOUNTER.QUERYPERFORMANCECOUNTER_G1 = 7712432;
const int MEM_GETPERFORMANCECOUNTER.QUERYPERFORMANCECOUNTER_G2 = 8079382;
const int MEM_GETPERFORMANCECOUNTER.CALL = 0;
func void MEMINT_BENCHMARK_HELPER() {
    MEMINT_BENCHMARK_HELPER();
}

const int MEMINT_BENCHMARK_MS = 0;
const int MEMINT_BENCHMARK_PC = 1;
const int MEMINT_BENCHMARK_MMS = 2;
func int MEMINT_BENCHMARK(var func F, var int TIMES, var int UNIT) {
    MEM_WRITEINT((MEM_GETFUNCPTR(0x1761)) + (1), MEM_GETFUNCOFFSET(0x1766));
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
    if ((PC) > (0x20c49b)) {
        return ((PC) / (MEM_READINT(PC_TICKSPERMS_ADDRESS))) * (1000);
    };
    return ((PC) * (1000)) / (MEM_READINT(PC_TICKSPERMS_ADDRESS));
}

var int MEMINT_BENCHMARK.I = 0;
var int MEMINT_BENCHMARK.STARTTIME = 0;
var int MEMINT_BENCHMARK.LOOP = 0;
var int MEMINT_BENCHMARK.PC = 0;
func int MEM_BENCHMARKMS(var func F) {
    return MEMINT_BENCHMARK(0x176e, 1, MEMINT_BENCHMARK_MS);
}

func int MEM_BENCHMARKMS_N(var func F, var int N) {
    return MEMINT_BENCHMARK(0x1770, N, MEMINT_BENCHMARK_MS);
}

func int MEM_BENCHMARKMMS(var func F) {
    return MEMINT_BENCHMARK(0x1773, 1, MEMINT_BENCHMARK_MMS);
}

func int MEM_BENCHMARKMMS_N(var func F, var int N) {
    return MEMINT_BENCHMARK(0x1775, N, MEMINT_BENCHMARK_MMS);
}

func int MEM_BENCHMARKPC(var func F) {
    return MEMINT_BENCHMARK(0x1778, 1, MEMINT_BENCHMARK_PC);
}

func int MEM_BENCHMARKPC_N(var func F, var int N) {
    return MEMINT_BENCHMARK(0x177a, N, MEMINT_BENCHMARK_PC);
}

func void MEMINT_SENDTOSPY_IMPLEMENTATION(var int ERRORTYPE, var string TEXT) {
    if ((ERRORTYPE) == (ZERR_TYPE_FATAL)) {
        TEXT = CONCATSTRINGS("  ", TEXT);
    };
    TEXT = CONCATSTRINGS("Q: ", TEXT);
    ZERRPTR = MEMINT_SWITCHG1G2(ZERR_G1, ZERR_G2);
    ZERR = _^(ZERRPTR);
    OLD_ACK_TYPE = ZERR.ACK_TYPE;
    if (MEMINT_FORCEERRORBOX) {
        if ((GOTHIC_BASE_VERSION) == (1)) {
            MEMORYPROTECTIONOVERRIDE(0x4f55c2, 1);
            MEM_WRITEBYTE(0x4f55c2, 1);
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

const int MEMINT_SENDTOSPY_IMPLEMENTATION.ZERR_G1 = 8821208;
const int MEMINT_SENDTOSPY_IMPLEMENTATION.ZERR_G2 = 9231568;
var int MEMINT_SENDTOSPY_IMPLEMENTATION.ZERRPTR = 0;
instance MEMINT_SENDTOSPY_IMPLEMENTATION.ZERR(ZERROR)
var int MEMINT_SENDTOSPY_IMPLEMENTATION.OLD_ACK_TYPE = 0;
const int MEMINT_SENDTOSPY_IMPLEMENTATION.ZERROR_REPORT_G1 = 4489808;
const int MEMINT_SENDTOSPY_IMPLEMENTATION.ZERROR_REPORT_G2 = 4507856;
var int MEMINT_SENDTOSPY_IMPLEMENTATION.NULL = 0;
var int MEMINT_SENDTOSPY_IMPLEMENTATION.PTR = 0;
const int MEMINT_SENDTOSPY_IMPLEMENTATION.CALL = 0;
func void MEMINT_PRINTSTACKTRACELINE(var int POPPOS) {
    if (((POPPOS) < (0)) || ((POPPOS) >= (MEM_PARSER.STACK_STACKSIZE))) {
        VALID = FALSE;
    };
    VALID = TRUE;
    FUNCID = MEM_GETFUNCIDBYOFFSET(POPPOS);
    SYMB = _^(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, FUNCID));
    PRT = STR_PREFIX(SPACES, 8);
    if (VALID) {
        PRT = CONCATSTRINGS(PRT, SYMB.NAME);
        PRT = CONCATSTRINGS(PRT, "(");
        I = 1;
        LOOP = MEM_STACKPOS.POSITION;
        if ((I) <= ((SYMB.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE))) {
            PARAM = _^(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, (FUNCID) + (I)));
            if ((I) > (1)) {
                PRT = CONCATSTRINGS(PRT, ", ");
            };
            if (((PARAM.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_INT)) {
                PRT = CONCATSTRINGS(PRT, INTTOSTRING(PARAM.CONTENT));
            } else if (((PARAM.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_STRING)) {
                PRT = CONCATSTRINGS(PRT, "'");
                PRT = CONCATSTRINGS(PRT, MEM_READSTRING(PARAM.CONTENT));
                PRT = CONCATSTRINGS(PRT, "'");
            } else if (((PARAM.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_FUNC)) {
                FUNCPARM = _^(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, PARAM.CONTENT));
                PRT = CONCATSTRINGS(PRT, FUNCPARM.NAME);
            } else if (((PARAM.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_INSTANCE)) {
                PRT = CONCATSTRINGS(PRT, "(instance)");
                PRT = CONCATSTRINGS(PRT, INTTOSTRING(PARAM.OFFSET));
            } else {
                PRT = CONCATSTRINGS(PRT, "[Parameter of Unknown type]");
            } else {
                I += 1;
            } else {
                MEM_STACKPOS.POSITION = LOOP;
            };
        };
        PRT = CONCATSTRINGS(PRT, ")");
    };
    PRT = CONCATSTRINGS(PRT, "[UNKNOWN]");
    if ((STR_LEN(PRT)) < (70)) {
        PRT = CONCATSTRINGS(PRT, STR_PREFIX(SPACES, (70) - (STR_LEN(PRT))));
    };
    PRT = CONCATSTRINGS(PRT, " +");
    if (VALID) {
        BYTES = INTTOSTRING((POPPOS) - (SYMB.CONTENT));
    };
    BYTES = INTTOSTRING(POPPOS);
    if ((STR_LEN(BYTES)) < (5)) {
        BYTES = CONCATSTRINGS(STR_PREFIX(SPACES, (5) - (STR_LEN(BYTES))), BYTES);
    };
    BYTES = CONCATSTRINGS(BYTES, " bytes");
    PRT = CONCATSTRINGS(PRT, BYTES);
    MEM_SENDTOSPY(ZERR_TYPE_FAULT, PRT);
}

var int MEMINT_PRINTSTACKTRACELINE.VALID = 0;
var int MEMINT_PRINTSTACKTRACELINE.FUNCID = 0;
instance MEMINT_PRINTSTACKTRACELINE.SYMB(ZCPAR_SYMBOL)
const string MEMINT_PRINTSTACKTRACELINE.SPACES = "                                                                                                    ";
var string MEMINT_PRINTSTACKTRACELINE.PRT = "";
var int MEMINT_PRINTSTACKTRACELINE.LOOP = 0;
var int MEMINT_PRINTSTACKTRACELINE.I = 0;
instance MEMINT_PRINTSTACKTRACELINE.PARAM(ZCPAR_SYMBOL)
instance MEMINT_PRINTSTACKTRACELINE.FUNCPARM(ZCPAR_SYMBOL)
var string MEMINT_PRINTSTACKTRACELINE.BYTES = "";
func void MEMINT_PRINTSTACKTRACE_IMPLEMENTATION() {
    ERR = _^(ZERRPTR);
    FILTERLEVELBAK = ERR.FILTER_LEVEL;
    ERR.FILTER_LEVEL = 1;
    MEM_SENDTOSPY(ZERR_TYPE_FAULT, "[start of stacktrace]");
    ESP = MEMINT_FINDFRAMEBOUNDARY(MEMINT_GETESP(), -(1));
    ESP += MEMINT_DOSTACKFRAMESIZE;
    PASSEDMYSELF = 0;
    MYSELF = MEM_GETFUNCID(0x1795);
    LOOP = MEM_STACKPOS.POSITION;
    POPPOS = MEM_READINT((ESP) - (MEMINT_DOSTACKPOPPOSOFFSET));
    if (PASSEDMYSELF) {
        MEMINT_PRINTSTACKTRACELINE(POPPOS);
    };
    if ((POPPOS) < (MEM_PARSER.STACK_STACKSIZE)) {
        FUNCID = MEM_GETFUNCIDBYOFFSET(POPPOS);
        PASSEDMYSELF = (FUNCID) == (MYSELF);
    };
    if (MEMINT_ISFRAMEBOUNDARY(ESP)) {
        ESP += MEMINT_DOSTACKFRAMESIZE;
        MEM_STACKPOS.POSITION = LOOP;
    };
    MEM_SENDTOSPY(ZERR_TYPE_FAULT, "[end of stacktrace]");
    ERR.FILTER_LEVEL = FILTERLEVELBAK;
}

instance MEMINT_PRINTSTACKTRACE_IMPLEMENTATION.ERR(ZERROR)
var int MEMINT_PRINTSTACKTRACE_IMPLEMENTATION.FILTERLEVELBAK = 0;
var int MEMINT_PRINTSTACKTRACE_IMPLEMENTATION.ESP = 0;
var int MEMINT_PRINTSTACKTRACE_IMPLEMENTATION.PASSEDMYSELF = 0;
var int MEMINT_PRINTSTACKTRACE_IMPLEMENTATION.MYSELF = 0;
var int MEMINT_PRINTSTACKTRACE_IMPLEMENTATION.LOOP = 0;
var int MEMINT_PRINTSTACKTRACE_IMPLEMENTATION.POPPOS = 0;
var int MEMINT_PRINTSTACKTRACE_IMPLEMENTATION.FUNCID = 0;
var int MEMINT_EXCEPTIONHANDLERESP = 0;
var int MEMINT_TOPPOPPOS = 0;
func void MEMINT_EXCEPTIONHANDLER() {
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

const int MEMINT_EXCEPTIONHANDLER.INVOKED_ONCE = 0;
instance MEMINT_EXCEPTIONHANDLER.ERR(ZERROR)
var int MEMINT_EXCEPTIONHANDLER.FILTERLEVELBAK = 0;
var int MEMINT_EXCEPTIONHANDLER.ESP = 0;
var int MEMINT_EXCEPTIONHANDLER.LOOP = 0;
func void MEMINT_SETUPEXCEPTIONHANDLER() {
    if (!(CALL)) {
        CALL_OPEN();
        HANDLEROFFSET = MEM_GETFUNCOFFSET(0x17a0);
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

const int MEMINT_SETUPEXCEPTIONHANDLER.CALL = 0;
var int MEMINT_SETUPEXCEPTIONHANDLER.HANDLEROFFSET = 0;
const int MEMINT_SETUPEXCEPTIONHANDLER.ZCPARSER__DOSTACK_G1 = 7243264;
const int MEMINT_SETUPEXCEPTIONHANDLER.ZCPARSER__DOSTACK_G2 = 7936352;
const int MEMINT_SETUPEXCEPTIONHANDLER.ZCPARSER__DOSTACK_SEH_G1 = 8146176;
const int MEMINT_SETUPEXCEPTIONHANDLER.ZCPARSER__DOSTACK_SEH_G2 = 8562816;
var int MEMINT_SETUPEXCEPTIONHANDLER.SEH = 0;
const int MEMINT_SETUPEXCEPTIONHANDLER.ZCPARSER__DOSTACK_SEH_PUSHER_G1 = 7243267;
const int MEMINT_SETUPEXCEPTIONHANDLER.ZCPARSER__DOSTACK_SEH_PUSHER_G2 = 7936355;
var int MEMINT_SETUPEXCEPTIONHANDLER.SEHPUSHER = 0;
func void MEMINT_REPLACELOGGINGFUNCTIONS() {
    if (!(INIT)) {
        INIT = TRUE;
        MEM_INFO("This will be the last Ikarus message printed with PrintDebug and prefix 'U: Skript:'. Subsequent messages will be printed with prefix 'Q:'.");
        MEM_REPLACEFUNC(0x1303, 0x177c);
        MEM_INFO("Ikarus log functions now print in colour with prefix 'Q:'.");
        MEM_REPLACEFUNC(0x1308, 0x1795);
    };
}

const int MEMINT_REPLACELOGGINGFUNCTIONS.INIT = 0;
func void MEM_READINT_() {
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

var int MEM_READINT_.I = 0;
func void MEM_WRITEINT_() {
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

var int MEM_WRITEINT_.I = 0;
func int MEM_READBYTE_(var int ADDR) {
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

const int MEM_READBYTE_.CALL = 0;
var int MEM_READBYTE_.RET = 0;
func void MEM_WRITEBYTE_(var int ADDR, var int VAL) {
    if ((VAL) & (~(255))) {
        MEM_WARN("MEM_WriteByte: Val out of range! Truncating to 8 bits.");
    };
    if (CALL_BEGIN(CALL)) {
        ASM_OPEN(18);
        ASM_1(ASMINT_OP_PUSHEAX);
        ASM_1(ASMINT_OP_PUSHECX);
        ASM_1(ASMINT_OP_MOVMEMTOEAX);
        ASM_4(_@(ADDR));
        ASM_2(ASMINT_OP_MOVMEMTOCL);
        ASM_4(_@(VAL));
        ASM_2(ASMINT_OP_MOVCLTOEAX);
        ASM_1(ASMINT_OP_POPECX);
        ASM_1(ASMINT_OP_POPEAX);
        CALL = CALL_END();
    };
}

const int MEM_WRITEBYTE_.CALL = 0;
func void MEMINT_INITFASTERREADWRITE() {
    MEMINT_INITOVERIDEFUNC(0x17b3);
    MEMINT_OFTOK(ZPAR_OP_UN_PLUS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, 0x17c0);
    MEMINT_OFTOK(ZPAR_TOK_ASSIGNINST);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, ZPAR_TOK_PUSHVAR);
    MEMINT_OFTOK(ZPAR_OP_UN_PLUS);
    MEMINT_OFTOK(ZPAR_TOK_RET);
    MEM_REPLACEFUNC(0x1334, 0x17b3);
    MEM_REPLACEFUNC(0x134b, 0x17b7);
    MEM_REPLACEFUNC(0x134d, 0x17bb);
    ID = MEM_GETFUNCID(0x1345);
    MEMINT_INITOVERIDEFUNC(0x17b5);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHVAR, (ID) + (2));
    MEMINT_OFTOK(ZPAR_OP_IS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHVAR, (ID) + (1));
    MEMINT_OFTOK(ZPAR_OP_IS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHVAR, (ID) + (2));
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHVAR, (ID) + (1));
    MEMINT_OFTOK(ZPAR_OP_UN_PLUS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, 0x17c0);
    MEMINT_OFTOK(ZPAR_TOK_ASSIGNINST);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, ZPAR_TOK_PUSHVAR);
    MEMINT_OFTOK(ZPAR_OP_IS);
    MEMINT_OFTOK(ZPAR_TOK_RET);
    BUF = MEM_ALLOC(5);
    MEM_WRITEBYTE(BUF, ZPAR_TOK_JUMP);
    MEM_WRITEINT((BUF) + (1), MEM_GETFUNCOFFSET(0x17b5));
    MEM_COPYBYTES(BUF, MEM_GETFUNCPTR(0x1345), 5);
}

instance MEMINT_INITFASTERREADWRITE.SYMB(MEMINT_HELPERCLASS)
var int MEMINT_INITFASTERREADWRITE.ID = 0;
var int MEMINT_INITFASTERREADWRITE.BUF = 0;
func void MEMINT_INITFASTERPUSHINST() {
    MEMINT_INITOVERIDEFUNC(0x1324);
    MEMINT_OFTOK(ZPAR_OP_UN_PLUS);
    MEMINT_OFTOKPAR(ZPAR_TOK_PUSHINST, 0x17c4);
    MEMINT_OFTOK(ZPAR_TOK_ASSIGNINST);
    MEMINT_OFTOK(ZPAR_TOK_RET);
}

instance MEMINT_INITFASTERPUSHINST.SYMB(MEMINT_HELPERCLASS)
func int MEM_ALLOC_(var int ELE) {
    SIZE = 1;
    if (CALL_BEGIN(CALL)) {
        CALLOC_PTR = MEMINT_SWITCHG1G2(0x75adf0, 0x7b44f0);
        CALL_INTPARAM(_@(SIZE));
        CALL_INTPARAM(_@(ELE));
        CALL_PUTRETVALTO(_@(RET));
        CALL__CDECL(CALLOC_PTR);
        CALL = CALL_END();
    };
    return +(RET);
}

var int MEM_ALLOC_.SIZE = 0;
const int MEM_ALLOC_.CALL = 0;
var int MEM_ALLOC_.CALLOC_PTR = 0;
var int MEM_ALLOC_.RET = 0;
func void MEM_FREE_(var int PTR) {
    if (!(PTR)) {
        MEM_WARN("MEM_Free: ptr is 0. Ignoring request.");
        return;
    };
    if (CALL_BEGIN(CALL)) {
        FREE_PTR = MEMINT_SWITCHG1G2(0x75ad6f, 0x7b44cc);
        CALL_INTPARAM(_@(PTR));
        CALL_PUTRETVALTO(0);
        CALL__CDECL(FREE_PTR);
        CALL = CALL_END();
    };
}

const int MEM_FREE_.CALL = 0;
var int MEM_FREE_.FREE_PTR = 0;
func void MEMINT_REPLACESLOWFUNCTIONS() {
    if (!(INIT)) {
        INIT = TRUE;
        MEM_FREE_(MEM_ALLOC_(1));
        MEM_REPLACEFUNC(0x13de, 0x17c5);
        MEM_REPLACEFUNC(0x13e6, 0x17cb);
        MEMINT_INITFASTERREADWRITE();
        MEMINT_INITFASTERPUSHINST();
        MEM_REPLACEFUNC(0x1376, 0x1372);
    };
}

const int MEMINT_REPLACESLOWFUNCTIONS.INIT = 0;
func void MEMINT_VERSIONERROR() {
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

const string MEMINT_VERSIONERROR.G1 = "Gothic 1.08k";
const string MEMINT_VERSIONERROR.G2 = "der sogenannten 'Report-Version' von Gothic 2";
const string MEMINT_VERSIONERROR.G2EN = "the so-called 'Report-Version' of Gothic 2";
var string MEMINT_VERSIONERROR.STR = "";
func int MEMINT_REPORTVERSIONCHECK() {
    VAL = MEMINT_SWITCHG1G2(-(0x1f13fa39), 0x1e1405c7);
    PTR = 0x401000;
    if ((MEM_READINT(PTR)) != (VAL)) {
        MEMINT_VERSIONERROR();
        return FALSE;
    };
    return TRUE;
}

var int MEMINT_REPORTVERSIONCHECK.VAL = 0;
var int MEMINT_REPORTVERSIONCHECK.PTR = 0;
func void MEM_INITALL() {
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

var int MEM_INITALL.DUMP = 0;
