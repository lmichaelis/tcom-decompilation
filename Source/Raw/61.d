func string MEM_READSTRINGARRAY(var int ARR, var int INDEX) {
    return MEM_READSTRING((ARR) + ((20) * (INDEX)));
}

func int _MEM_ARRAYSORTFUNCC(var int V0, var int V1) {
    return 0 /* !broken stack! */;
}

func void _MEM_ARRAYSORTFUNC(var int L, var int R) {
    LOCALS();
    if ((L) >= (R)) {
        return;
    };
    T = L;
    M = (R) - (4);
    P = MEM_READINT(R);
    MEM_LABEL(0);
    MEM_LABEL(1);
    if (((_MEM_ARRAYSORTFUNCC(MEM_READINT(T), P)) <= (0)) && ((T) < (R))) {
        T += 4;
        MEM_GOTO(1);
    };
    MEM_LABEL(2);
    if (((_MEM_ARRAYSORTFUNCC(MEM_READINT(M), P)) >= (0)) && ((M) > (L))) {
        M -= 4;
        MEM_GOTO(2);
    };
    if ((T) < (M)) {
        C = MEM_READINT(M);
        MEM_WRITEINT(M, MEM_READINT(T));
        MEM_WRITEINT(T, C);
        MEM_GOTO(0);
    };
    if ((_MEM_ARRAYSORTFUNCC(MEM_READINT(T), P)) > (0)) {
        C = MEM_READINT(T);
        MEM_WRITEINT(T, MEM_READINT(R));
        MEM_WRITEINT(R, C);
    };
    _MEM_ARRAYSORTFUNC(L, (T) - (4));
    _MEM_ARRAYSORTFUNC((T) + (4), R);
}

var int _MEM_ARRAYSORTFUNC.C = 0;
var int _MEM_ARRAYSORTFUNC.T = 0;
var int _MEM_ARRAYSORTFUNC.M = 0;
var int _MEM_ARRAYSORTFUNC.P = 0;
func void MEM_ARRAYSORTFUNC(var int STREAM, var func FNC) {
    MEM_REPLACEFUNC(0x26c6, 0x26d2);
    _MEM_ARRAYSORTFUNC(MEM_READINT(STREAM), (MEM_READINT(STREAM)) + (((MEM_ARRAYSIZE(STREAM)) - (1)) << (2)));
}

const int HANDLESPOINTER = 0;
const int HANDLESINSTANCE = 0;
const int HANDLESWRAPPED = 0;
var int NEXTHANDLE = 0;
var int _PM_ARRAYELEMENTS = 0;
var int _PM_INST = 0;
var int _PM_STACK = 0;
const int PM_CURRHANDLE = 1;
const int _PM_FOREACHTABLE = 0;
func int NUMHANDLES() {
    if (HANDLESPOINTER) {
        return _HT_GETNUMBER(HANDLESPOINTER);
    };
    return FALSE;
}

func int ZCPARSER_CREATEINSTANCE(var int INST, var int PTR) {
    CALL_INTPARAM(PTR);
    CALL_INTPARAM(INST);
    CALL__THISCALL(PARSER, ZCPARSER__CREATEINSTANCE);
    return CALL_RETVALASINT();
}

func int HLP_ISVALIDHANDLE(var int H) {
    if (!(HANDLESPOINTER)) {
        return FALSE;
    };
    return !(!(_HT_GET(HANDLESPOINTER, H)));
}

func instance _PM_TOCLASS(var int INST) {
    SYMBINST = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, INST));
    SYMBCLS = MEM_PTRTOINST(SYMBINST.PARENT);
    if (((SYMBCLS.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE)) == (ZPAR_TYPE_PROTOTYPE)) {
    };
    return MEM_PTRTOINST(SYMBINST.PARENT);
}

instance _PM_TOCLASS.SYMBINST(ZCPAR_SYMBOL)
instance _PM_TOCLASS.SYMBCLS(ZCPAR_SYMBOL)
func string _PM_INSTNAME(var int INST) {
    SYMBINST = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, INST));
    return SYMBINST.NAME;
}

instance _PM_INSTNAME.SYMBINST(ZCPAR_SYMBOL)
func int SIZEOF(var int INST) {
    SYMB = _PM_TOCLASS(INST);
    return SYMB.OFFSET;
}

instance SIZEOF.SYMB(ZCPAR_SYMBOL)
func void CLEAR(var int H) {
    if (!(HLP_ISVALIDHANDLE(H))) {
        return;
    };
    A = _HT_GET(HANDLESPOINTER, H);
    MEM_FREE(A);
    _HT_REMOVE(HANDLESPOINTER, H);
    _HT_REMOVE(HANDLESINSTANCE, H);
}

var int CLEAR.A = 0;
func void RELEASE(var int H) {
    if (!(HLP_ISVALIDHANDLE(H))) {
        return;
    };
    _HT_REMOVE(HANDLESPOINTER, H);
    _HT_REMOVE(HANDLESINSTANCE, H);
    MEM_ARRAYREMOVEVALUE(HANDLESWRAPPED, H);
}

const int RBREAK = -42;
const int RCONTINUE = -23;
const int FOREACHHNDL_PTR = 0;
func void _PM_ADDTOFOREACHTABLE(var int H) {
    if (!(_PM_FOREACHTABLE)) {
        MEM_CALL(0x2701);
        return;
    };
    P = _HT_GET(HANDLESPOINTER, H);
    if (P) {
        I = _HT_GET(HANDLESINSTANCE, H);
        C = MEM_READINTARRAY(_PM_FOREACHTABLE, I);
        if (!(C)) {
            C = MEM_ARRAYCREATE();
            MEM_WRITEINTARRAY(_PM_FOREACHTABLE, I, C);
        };
        MEM_ARRAYINSERT(C, H);
    };
}

var int _PM_ADDTOFOREACHTABLE.P = 0;
var int _PM_ADDTOFOREACHTABLE.I = 0;
var int _PM_ADDTOFOREACHTABLE.C = 0;
func void _PM_REMOVEFROMFOREACHTABLE(var int H) {
    P = _HT_GET(HANDLESPOINTER, H);
    if (P) {
        I = _HT_GET(HANDLESINSTANCE, H);
        C = MEM_READINTARRAY(_PM_FOREACHTABLE, I);
        if (!(C)) {
            return;
        };
        MEM_ARRAYREMOVEVALUE(C, H);
        if (!(MEM_ARRAYSIZE(C))) {
            MEM_ARRAYFREE(C);
            MEM_WRITEINTARRAY(_PM_FOREACHTABLE, I, 0);
        };
    };
}

var int _PM_REMOVEFROMFOREACHTABLE.P = 0;
var int _PM_REMOVEFROMFOREACHTABLE.I = 0;
var int _PM_REMOVEFROMFOREACHTABLE.C = 0;
func void _PM_CREATEFOREACHTABLE_HTSUB(var int KEY, var int VAL) {
    _PM_ADDTOFOREACHTABLE(KEY);
}

func void _PM_CREATEFOREACHTABLE() {
    if (_PM_FOREACHTABLE) {
        MEM_FREE(_PM_FOREACHTABLE);
    };
    FOREACHHNDL_PTR = MEM_GETFUNCPTR(0x2702);
    _PM_FOREACHTABLE = MEM_ALLOC((CURRSYMBOLTABLELENGTH) * (4));
    if (HANDLESPOINTER) {
        _HT_FOREACH(HANDLESPOINTER, 0x26fe);
    };
}

func void FOREACHHNDL(var int INST, var func FNC) {
    LOCALS();
    if (!(_PM_FOREACHTABLE)) {
        return;
    };
    C = MEM_READINTARRAY(_PM_FOREACHTABLE, INST);
    if (!(C)) {
        return;
    };
    Z = _^(C);
    L = Z.NUMINARRAY;
    A = MEM_ALLOC((L) << (2));
    MEM_COPY(Z.ARRAY, A, L);
    I = 0;
    O = MEM_GETFUNCPTR(0x2704);
    FSYMB = _^(MEM_GETSYMBOLBYINDEX(MEM_GETFUNCID(0x2704)));
    WHILE((I) < (L));
    H = MEM_READINT((A) + ((I) << (2)));
    if (_HT_GET(HANDLESPOINTER, H)) {
        H;
        MEM_CALLBYPTR(O);
        if (FSYMB.OFFSET) {
            if ((MEM_POPINTRESULT()) == (RBREAK)) {
                BREAK;
            };
        };
    };
    I += 1;
    END;
    MEM_FREE(A);
}

var int FOREACHHNDL.C = 0;
instance FOREACHHNDL.Z(ZCARRAY)
var int FOREACHHNDL.L = 0;
var int FOREACHHNDL.A = 0;
var int FOREACHHNDL.I = 0;
var int FOREACHHNDL.O = 0;
instance FOREACHHNDL.FSYMB(ZCPAR_SYMBOL)
var int FOREACHHNDL.H = 0;
func int HASHNDL(var int INST) {
    if (!(_PM_FOREACHTABLE)) {
        return FALSE;
    };
    C = MEM_READINTARRAY(_PM_FOREACHTABLE, INST);
    if (!(C)) {
        return FALSE;
    };
    return (MEM_ARRAYSIZE(C)) > (0);
}

var int HASHNDL.C = 0;
func void FOREACHHNDLSORT(var int INST, var func CMP) {
    if (!(_PM_FOREACHTABLE)) {
        return;
    };
    C = MEM_READINTARRAY(_PM_FOREACHTABLE, INST);
    if (!(C)) {
        return;
    };
    MEM_ARRAYSORTFUNC(C, 0x2712);
}

var int FOREACHHNDLSORT.C = 0;
func void DELETE(var int H) {
    LOCALS();
    if (!(HLP_ISVALIDHANDLE(H))) {
        return;
    };
    _PM_REMOVEFROMFOREACHTABLE(H);
    INST = _HT_GET(HANDLESINSTANCE, H);
    SYMBCLS = _PM_TOCLASS(INST);
    FNC = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(SYMBCLS.NAME, "_DELETE"));
    if ((FNC) != (-(1))) {
        PTR = _HT_GET(HANDLESPOINTER, H);
        SYMBCLS = MEM_PTRTOINST(PTR);
        MEMINT_STACKPUSHINST(0x2717);
        MEM_CALLBYID(FNC);
    };
    if ((MEM_ARRAYINDEXOF(HANDLESWRAPPED, H)) != (-(1))) {
        RELEASE(H);
    };
    CLEAR(H);
}

var int DELETE.INST = 0;
instance DELETE.SYMBCLS(ZCPAR_SYMBOL)
var int DELETE.FNC = 0;
var int DELETE.PTR = 0;
func void FREE(var int H, var int INST) {
    if (!(H)) {
        return;
    };
    SYMBCLS = _PM_TOCLASS(INST);
    FNC = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(SYMBCLS.NAME, "_DELETE"));
    if ((FNC) != (-(1))) {
        SYMBCLS = MEM_PTRTOINST(H);
        H;
        MEMINT_STACKPUSHINST(0x271d);
        MEM_CALLBYID(FNC);
        H = MEMINT_STACKPOPINT();
    };
    MEM_FREE(H);
}

instance FREE.SYMBCLS(ZCPAR_SYMBOL)
var int FREE.FNC = 0;
func int CREATE(var int INST) {
    LOCALS();
    SYMBCLS = _PM_TOCLASS(INST);
    PTR = MEM_ALLOC(SYMBCLS.OFFSET);
    I = ZCPARSER_CREATEINSTANCE(INST, PTR);
    return PTR;
}

instance CREATE.SYMBCLS(ZCPAR_SYMBOL)
var int CREATE.PTR = 0;
var int CREATE.I = 0;
func int NEW(var int INST) {
    LOCALS();
    NEXTHANDLE += 1;
    if (!(HANDLESPOINTER)) {
        MEM_INFOBOX("This should never happen! If it does anyway, please report to Lehona on WorldOfGothic.");
        HANDLESPOINTER = _HT_CREATE();
        HANDLESINSTANCE = _HT_CREATE();
        HANDLESWRAPPED = MEM_ARRAYCREATE();
    };
    PTR = CREATE(INST);
    _HT_INSERT(HANDLESPOINTER, PTR, NEXTHANDLE);
    _HT_INSERT(HANDLESINSTANCE, INST, NEXTHANDLE);
    _PM_ADDTOFOREACHTABLE(NEXTHANDLE);
    return NEXTHANDLE;
}

var int NEW.PTR = 0;
func int WRAP(var int INST, var int PTR) {
    LOCALS();
    NEXTHANDLE += 1;
    if (!(HANDLESPOINTER)) {
        HANDLESPOINTER = _HT_CREATE();
        HANDLESINSTANCE = _HT_CREATE();
        HANDLESWRAPPED = MEM_ARRAYCREATE();
    };
    _HT_INSERT(HANDLESPOINTER, PTR, NEXTHANDLE);
    _HT_INSERT(HANDLESINSTANCE, INST, NEXTHANDLE);
    _PM_ADDTOFOREACHTABLE(NEXTHANDLE);
    MEM_ARRAYINSERT(HANDLESWRAPPED, NEXTHANDLE);
    return NEXTHANDLE;
}

func instance GET(var int H) {
    if (!(HLP_ISVALIDHANDLE(H))) {
        return 0 /* !broken stack! */;
    };
    P = _HT_GET(HANDLESPOINTER, H);
    if (P) {
        return MEM_PTRTOINST(P);
    };
    MEM_ERROR(CONCATSTRINGS("Tried to 'get' invalid handle ", INTTOSTRING(H)));
    MEMINT_STACKPUSHINST(0x131a);
    return 0 /* !broken stack! */;
}

var int GET.P = 0;
func int GETPTR(var int H) {
    if (!(HLP_ISVALIDHANDLE(H))) {
        return 0;
    };
    return _HT_GET(HANDLESPOINTER, H);
}

func int GETINST(var int H) {
    if (!(HLP_ISVALIDHANDLE(H))) {
        return 0;
    };
    return _HT_GET(HANDLESINSTANCE, H);
}

func void SETPTR(var int H, var int PTR) {
    if (!(HLP_ISVALIDHANDLE(H))) {
        return;
    };
    _HT_CHANGE(HANDLESPOINTER, PTR, H);
}

func void _DELETEALL(var int KEY, var int VAL) {
    DELETE(KEY);
}

func void _PM_RESET() {
    MEM_INFO("Reset ALL the handles!");
    if (HANDLESPOINTER) {
        _HT_FOREACH(HANDLESPOINTER, 0x2734);
        _HT_DESTROY(HANDLESPOINTER);
        _HT_DESTROY(HANDLESINSTANCE);
        MEM_ARRAYFREE(HANDLESWRAPPED);
        HANDLESPOINTER = 0;
        HANDLESINSTANCE = 0;
        HANDLESWRAPPED = 0;
    };
    MEM_INFO("Resetting done.");
}

const int _PM_VERSION = 2;
const int _PM_TABS = 0;
const int _PM_LINE = 0;
func void _PM_WTAB() {
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < (_PM_TABS)) {
        BW_BYTE(9);
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
}

var int _PM_WTAB.I = 0;
var int _PM_WTAB.P = 0;
func void _PM_TEXT(var string T) {
    _PM_WTAB();
    BW_TEXT(T);
}

func string _PM_TEXTLINE() {
    _PM_LINE += 1;
    P = MEM_STACKPOS.POSITION;
    if ((BR_BYTE()) == (9)) {
        MEM_STACKPOS.POSITION = P;
    };
    _BIN_CRSR -= 1;
    return BR_TEXTLINE();
}

var int _PM_TEXTLINE.P = 0;
const int _PM_STRING = 0;
const int _PM_INT = 1;
const int _PM_CLASS = 2;
const int _PM_CLASSPTR = 3;
const int _PM_INTARR = 4;
const int _PM_STRARR = 5;
class _PM_SAVEOBJECT_STR {
	var int TYPE;
	var string NAME;
	var string CONTENT;
};



instance _PM_SAVEOBJECT_STR@(_PM_SAVEOBJECT_STR)
const int _PM_SAVEOBJECT_STR_SIZE = 44;
class _PM_SAVEOBJECT_INT {
	var int TYPE;
	var string NAME;
	var int CONTENT;
};



instance _PM_SAVEOBJECT_INT@(_PM_SAVEOBJECT_INT)
const int _PM_SAVEOBJECT_INT_SIZE = 28;
class _PM_SAVEOBJECT_CLS {
	var int TYPE;
	var string NAME;
	var int CONTENT;
	var string CLASS;
};




instance _PM_SAVEOBJECT_CLS@(_PM_SAVEOBJECT_CLS)
const int _PM_SAVEOBJECT_CLS_SIZE = 48;
class _PM_SAVEOBJECT_ARR {
	var int TYPE;
	var string NAME;
	var int CONTENT;
	var int ELEMENTS;
};




instance _PM_SAVEOBJECT_ARR@(_PM_SAVEOBJECT_ARR)
const int _PM_SAVEOBJECT_ARR_SIZE = 32;
func int _PM_OBJECTTYPE(var int OBJ) {
    return MEM_READINT(OBJ);
}

func string _PM_OBJECTNAME(var int OBJ) {
    return MEM_READSTRING((OBJ) + (4));
}

class _PM_SAVESTRUCT {
	var string INSTNAME;
	var int INST;
	var string CLASSNAME;
	var int OFFSSTACK;
	var int CURROFFS;
	var int CONTENTSTACK;
	var int CONTENT;
};







instance _PM_SAVESTRUCT@(_PM_SAVESTRUCT)
const int _PM_FREEDNUM = 0;
const int _PM_FREEDSIZE = 0;
func void _PM_SAVESTRUCT_DELETEARR(var int ARR) {
    LOCALS();
    if (!(ARR)) {
        return;
    };
    A = MEM_PTRTOINST(ARR);
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < (A.NUMINARRAY)) {
        O = MEM_READINTARRAY(A.ARRAY, I);
        T = _PM_OBJECTTYPE(O);
        _PM_FREEDNUM += 1;
        if ((T) <= (_PM_INT)) {
            OS = MEM_PTRTOINST(O);
            if ((T) == (_PM_STRING)) {
                OS.CONTENT = "";
                _PM_FREEDSIZE += _PM_SAVEOBJECT_STR_SIZE;
            } else {
                _PM_FREEDSIZE += _PM_SAVEOBJECT_INT_SIZE;
            } else {
                OS.NAME = "";
            } else {
                /* set_instance(0) */;
            };
        };
        OC = MEM_PTRTOINST(O);
        if ((T) <= (_PM_CLASSPTR)) {
            OC.CLASS = "";
            _PM_FREEDSIZE += _PM_SAVEOBJECT_CLS_SIZE;
            if (OC.CONTENT) {
                _PM_SAVESTRUCT_DELETEARR(OC.CONTENT);
            };
        } else {
            _PM_FREEDSIZE += _PM_SAVEOBJECT_ARR_SIZE;
            if ((!(_PM_MODE)) && (OC.CONTENT)) {
                _PM_SAVESTRUCT_DELETEARR(OC.CONTENT);
            };
        } else {
            OC.NAME = "";
        } else {
            MEM_FREE(O);
        } else {
            I += 1;
        } else {
            MEM_STACKPOS.POSITION = P;
        };
    };
    MEM_ARRAYFREE(ARR);
}

instance _PM_SAVESTRUCT_DELETEARR.A(ZCARRAY)
var int _PM_SAVESTRUCT_DELETEARR.I = 0;
var int _PM_SAVESTRUCT_DELETEARR.P = 0;
var int _PM_SAVESTRUCT_DELETEARR.O = 0;
var int _PM_SAVESTRUCT_DELETEARR.T = 0;
instance _PM_SAVESTRUCT_DELETEARR.OS(_PM_SAVEOBJECT_STR)
instance _PM_SAVESTRUCT_DELETEARR.OC(_PM_SAVEOBJECT_CLS)
func void _PM_SAVESTRUCT_DELETE(var _PM_SAVESTRUCT THIS) {
    THIS.INSTNAME = "";
    THIS.CLASSNAME = "";
    if (THIS.OFFSSTACK) {
        MEM_ARRAYFREE(THIS.OFFSSTACK);
    };
    if (THIS.CONTENTSTACK) {
        A = MEM_PTRTOINST(THIS.CONTENTSTACK);
        if (A.NUMINARRAY) {
            MEM_WARN(CONCATSTRINGS("contentStack not clean! ", INTTOSTRING(A.NUMINARRAY)));
        };
        MEM_ARRAYFREE(THIS.CONTENTSTACK);
    };
    if (THIS.CONTENT) {
        _PM_SAVESTRUCT_DELETEARR(THIS.CONTENT);
    };
}

instance _PM_SAVESTRUCT_DELETE.A(ZCARRAY)
const int _PM_HEADPTR = 0;
instance _PM_HEAD(_PM_SAVESTRUCT)
const string _PM_SEARCHOBJCACHE = "";
const int _PM_DATAPOOLNUM = 0;
const int _PM_DATAPOOLSIZE = 0;
func int _PM_ALLOC(var int SIZE) {
    _PM_DATAPOOLNUM += 1;
    _PM_DATAPOOLSIZE += SIZE;
    return MEM_ALLOC(SIZE);
}

const int _PM_MODE = 0;
func void _PM_ERROR(var string MSG) {
    RES = CONCATSTRINGS("PermMem: ", MSG);
    if (!(_PM_MODE)) {
        RES = CONCATSTRINGS(RES, ", line ");
        RES = CONCATSTRINGS(RES, INTTOSTRING(_PM_LINE));
    };
    MEM_ERROR(RES);
}

var string _PM_ERROR.RES = "";
func int _PM_NEWOBJECTSTRING(var string NAME, var string CONTENT) {
    PTR = _PM_ALLOC(_PM_SAVEOBJECT_STR_SIZE);
    OSTR = MEM_PTRTOINST(PTR);
    OSTR.NAME = NAME;
    OSTR.TYPE = _PM_STRING;
    OSTR.CONTENT = CONTENT;
    return PTR;
}

var int _PM_NEWOBJECTSTRING.PTR = 0;
instance _PM_NEWOBJECTSTRING.OSTR(_PM_SAVEOBJECT_STR)
func int _PM_NEWOBJECTINT(var string NAME, var int CONTENT) {
    PTR = _PM_ALLOC(_PM_SAVEOBJECT_INT_SIZE);
    OINT = MEM_PTRTOINST(PTR);
    OINT.NAME = NAME;
    OINT.TYPE = _PM_INT;
    OINT.CONTENT = CONTENT;
    return PTR;
}

var int _PM_NEWOBJECTINT.PTR = 0;
instance _PM_NEWOBJECTINT.OINT(_PM_SAVEOBJECT_INT)
func int _PM_NEWOBJECTCLASS(var string NAME, var string CLASS, var int P, var int CONTENT) {
    PTR = _PM_ALLOC(_PM_SAVEOBJECT_CLS_SIZE);
    OCLS = MEM_PTRTOINST(PTR);
    OCLS.NAME = NAME;
    if (!(P)) {
        OCLS.TYPE = _PM_CLASS;
    };
    OCLS.TYPE = _PM_CLASSPTR;
    OCLS.CLASS = CLASS;
    OCLS.CONTENT = CONTENT;
    return PTR;
}

var int _PM_NEWOBJECTCLASS.PTR = 0;
instance _PM_NEWOBJECTCLASS.OCLS(_PM_SAVEOBJECT_CLS)
func int _PM_NEWTEMPCLASS() {
    PTR = MEM_ALLOC(_PM_SAVEOBJECT_CLS_SIZE);
    OCLS = MEM_PTRTOINST(PTR);
    OCLS.CONTENT = _PM_HEAD.CONTENT;
    return PTR;
}

var int _PM_NEWTEMPCLASS.PTR = 0;
instance _PM_NEWTEMPCLASS.OCLS(_PM_SAVEOBJECT_CLS)
func int _PM_NEWOBJECTARRAY(var string NAME, var int TYPE, var int ELEMENTS, var int CONTENT) {
    PTR = _PM_ALLOC(_PM_SAVEOBJECT_ARR_SIZE);
    OARR = MEM_PTRTOINST(PTR);
    OARR.NAME = NAME;
    OARR.TYPE = TYPE;
    OARR.ELEMENTS = ELEMENTS;
    OARR.CONTENT = CONTENT;
    return PTR;
}

var int _PM_NEWOBJECTARRAY.PTR = 0;
instance _PM_NEWOBJECTARRAY.OARR(_PM_SAVEOBJECT_ARR)
func int _PM_STRINGTOOBJECT(var string LINE) {
    if ((STR_SPLITCOUNT(LINE, "=")) < (2)) {
        return -(1);
    };
    NAME = STR_SPLIT(LINE, "=", 0);
    NAMELEN = (STR_LEN(NAME)) + (1);
    DATALEN = (STR_LEN(LINE)) - (NAMELEN);
    if (!(DATALEN)) {
        return -(1);
    };
    DATA = STR_SUBSTR(LINE, NAMELEN, DATALEN);
    TYPE = STR_PREFIX(DATA, 1);
    CONT = STR_SUBSTR(DATA, 1, (DATALEN) - (1));
    if (!(STR_COMPARE(TYPE, "s"))) {
        return _PM_NEWOBJECTSTRING(NAME, CONT);
    };
    if (!(STR_COMPARE(TYPE, "i"))) {
        return _PM_NEWOBJECTINT(NAME, STR_TOINT(CONT));
    };
    if ((!(STR_COMPARE(TYPE, "c"))) || (!(STR_COMPARE(TYPE, "p")))) {
        return _PM_NEWOBJECTCLASS(NAME, CONT, !(STR_COMPARE(TYPE, "p")), 0);
    };
    if (!(STR_COMPARE(TYPE, "a"))) {
        if (!(STR_COMPARE(STR_PREFIX(CONT, 3), "INT"))) {
            return _PM_NEWOBJECTARRAY(NAME, _PM_INTARR, STR_TOINT(STR_SPLIT(CONT, ":", 1)), 0);
        };
        return _PM_NEWOBJECTARRAY(NAME, _PM_STRARR, STR_TOINT(STR_SPLIT(CONT, ":", 1)), 0);
    };
    return -(1);
}

var string _PM_STRINGTOOBJECT.NAME = "";
var int _PM_STRINGTOOBJECT.NAMELEN = 0;
var int _PM_STRINGTOOBJECT.DATALEN = 0;
var string _PM_STRINGTOOBJECT.DATA = "";
var string _PM_STRINGTOOBJECT.TYPE = "";
var string _PM_STRINGTOOBJECT.CONT = "";
func string _PM_OBJECTTOSTRING(var int OBJ) {
    TYPE = _PM_OBJECTTYPE(OBJ);
    NAME = CONCATSTRINGS(_PM_OBJECTNAME(OBJ), "=");
    if ((TYPE) == (_PM_STRING)) {
        OSTR = MEM_PTRTOINST(OBJ);
        DATA = CONCATSTRINGS("s", OSTR.CONTENT);
    };
    if ((TYPE) == (_PM_INT)) {
        OINT = MEM_PTRTOINST(OBJ);
        DATA = CONCATSTRINGS("i", INTTOSTRING(OINT.CONTENT));
    };
    if (((TYPE) == (_PM_CLASS)) || ((TYPE) == (_PM_CLASSPTR))) {
        OCLS = MEM_PTRTOINST(OBJ);
        if ((OCLS.TYPE) == (_PM_CLASS)) {
            PREFIX = "c";
        } else {
            PREFIX = "p";
        } else if (OCLS.CONTENT) {
            DATA = CONCATSTRINGS(PREFIX, OCLS.CLASS);
        } else {
            DATA = CONCATSTRINGS(PREFIX, "NULL");
        } else {
            /* set_instance(0) */;
        };
    };
    if (((TYPE) == (_PM_INTARR)) || ((TYPE) == (_PM_STRARR))) {
        OARR = MEM_PTRTOINST(OBJ);
        if ((TYPE) == (_PM_INTARR)) {
            PREFIX = "aINT:";
        } else {
            PREFIX = "aSTRING:";
        } else {
            DATA = CONCATSTRINGS(PREFIX, INTTOSTRING(OARR.ELEMENTS));
        } else {
            /* set_instance(0) */;
        };
    };
    return "";
}

var int _PM_OBJECTTOSTRING.TYPE = 0;
var string _PM_OBJECTTOSTRING.NAME = "";
var string _PM_OBJECTTOSTRING.DATA = "";
var string _PM_OBJECTTOSTRING.PREFIX = "";
instance _PM_OBJECTTOSTRING.OSTR(_PM_SAVEOBJECT_STR)
instance _PM_OBJECTTOSTRING.OINT(_PM_SAVEOBJECT_INT)
instance _PM_OBJECTTOSTRING.OCLS(_PM_SAVEOBJECT_CLS)
instance _PM_OBJECTTOSTRING.OARR(_PM_SAVEOBJECT_ARR)
func void _PM_DATATOSAVEOBJECT0(var string S0, var string S1) {
    MEM_REPLACEFUNC(0x27b5, 0x27d8);
    _PM_DATATOSAVEOBJECT0(S0, S1);
}

func void _PM_AUTOPACKSYMBOL(var int SYMBID) {
    SYM = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, SYMBID));
    TYPE = (SYM.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_TYPE);
    if ((((TYPE) == (ZPAR_TYPE_FLOAT)) || ((TYPE) == (ZPAR_TYPE_INT))) || ((TYPE) == (ZPAR_TYPE_FUNC))) {
        _PM_DATATOSAVEOBJECT0(SYM.NAME, "INT");
    };
    if ((TYPE) == (ZPAR_TYPE_STRING)) {
        _PM_DATATOSAVEOBJECT0(SYM.NAME, "STRING");
    };
    _PM_ERROR(CONCATSTRINGS("Symbol kann nicht automatisch gespeichert werden. ", SYM.NAME));
}

instance _PM_AUTOPACKSYMBOL.SYM(ZCPAR_SYMBOL)
var int _PM_AUTOPACKSYMBOL.TYPE = 0;
func void _PM_DATATOSAVESTRUCT_STRUCT(var int CLASSID, var int STRUCT) {
    LOCALS();
    ZSTRUCT = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, STRUCT));
    ZCLASS = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, CLASSID));
    STRUCTCNT = STR_UPPER(MEM_READSTRING(ZSTRUCT.CONTENT));
    CLASSID += 1;
    CURROFFS = 0;
    MAXOFFS = (ZCLASS.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE);
    I = 0;
    SPLITS = STR_SPLITCOUNT(STRUCTCNT, " ");
    P = MEM_STACKPOS.POSITION;
    if ((I) < (SPLITS)) {
        if ((CURROFFS) >= (MAXOFFS)) {
            _PM_ERROR(CONCATSTRINGS("Die struct beansprucht mehr Symbole als die Klasse besitzt! ", ZSTRUCT.NAME));
            return;
        };
        CURR = STR_SPLIT(STRUCTCNT, " ", I);
        NUM = 1;
        PTR = 0;
        if ((STR_SPLITCOUNT(CURR, "|")) > (1)) {
            NUM = STR_TOINT(STR_SPLIT(CURR, "|", 1));
            if (!(NUM)) {
                _PM_ERROR(CONCATSTRINGS("Struct kaputt! ", ZSTRUCT.NAME));
                return;
            };
            CURR = STR_SPLIT(CURR, "|", 0);
        };
        if ((STR_GETCHARAT(CURR, (STR_LEN(CURR)) - (1))) == (42)) {
            CURR = STR_PREFIX(CURR, (STR_LEN(CURR)) - (1));
            PTR = 1;
        };
        if (!(STR_COMPARE(CURR, "AUTO"))) {
            if (PTR) {
                _PM_ERROR(CONCATSTRINGS("auto* ist keine gültige Klasse. ", ZSTRUCT.NAME));
                return;
            };
            P1 = MEM_STACKPOS.POSITION;
            if (NUM) {
                _PM_AUTOPACKSYMBOL((CLASSID) + (CURROFFS));
                CURROFFS += 1;
                NUM -= 1;
                MEM_STACKPOS.POSITION = P1;
            };
            I += 1;
            MEM_STACKPOS.POSITION = P;
        };
        if (!(STR_COMPARE(CURR, "VOID"))) {
            if (PTR) {
                _PM_ERROR(CONCATSTRINGS("void* ist keine gültige Klasse. ", ZSTRUCT.NAME));
                return;
            };
            CURROFFS += NUM;
            I += 1;
            MEM_STACKPOS.POSITION = P;
        };
        P1 = MEM_STACKPOS.POSITION;
        if (NUM) {
            SYM = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, (CLASSID) + (CURROFFS)));
            MEM_ARRAYPUSH(_PM_HEAD.OFFSSTACK, _PM_HEAD.CURROFFS);
            _PM_HEAD.CURROFFS += SYM.OFFSET;
            _PM_HEAD.CURROFFS = MEM_READINT(_PM_HEAD.CURROFFS);
            NAME = STR_SPLIT(SYM.NAME, ".", 1);
            if (!(_PM_HEAD.CURROFFS)) {
                MEM_ARRAYINSERT(_PM_HEAD.CONTENT, _PM_NEWOBJECTCLASS(NAME, CURR, PTR, 0));
                NAME = "";
                _PM_HEAD.CURROFFS = MEM_ARRAYPOP(_PM_HEAD.OFFSSTACK);
                CURROFFS += 1;
                NUM -= 1;
                MEM_STACKPOS.POSITION = P1;
            };
            NARR = MEM_ARRAYCREATE();
            MEM_ARRAYINSERT(_PM_HEAD.CONTENT, _PM_NEWOBJECTCLASS(NAME, CURR, PTR, NARR));
            NAME = "";
            MEM_ARRAYPUSH(_PM_HEAD.CONTENTSTACK, _PM_HEAD.CONTENT);
            _PM_HEAD.CONTENT = NARR;
            _PM_DATATOSAVEOBJECT0("", CURR);
            _PM_HEAD.CURROFFS = MEM_ARRAYPOP(_PM_HEAD.OFFSSTACK);
            _PM_HEAD.CONTENT = MEM_ARRAYPOP(_PM_HEAD.CONTENTSTACK);
            CURROFFS += 1;
            NUM -= 1;
            MEM_STACKPOS.POSITION = P1;
        };
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
}

instance _PM_DATATOSAVESTRUCT_STRUCT.ZSTRUCT(ZCPAR_SYMBOL)
instance _PM_DATATOSAVESTRUCT_STRUCT.ZCLASS(ZCPAR_SYMBOL)
var string _PM_DATATOSAVESTRUCT_STRUCT.STRUCTCNT = "";
var int _PM_DATATOSAVESTRUCT_STRUCT.CURROFFS = 0;
var int _PM_DATATOSAVESTRUCT_STRUCT.MAXOFFS = 0;
var int _PM_DATATOSAVESTRUCT_STRUCT.I = 0;
var int _PM_DATATOSAVESTRUCT_STRUCT.SPLITS = 0;
var int _PM_DATATOSAVESTRUCT_STRUCT.P = 0;
var string _PM_DATATOSAVESTRUCT_STRUCT.CURR = "";
var int _PM_DATATOSAVESTRUCT_STRUCT.NUM = 0;
var int _PM_DATATOSAVESTRUCT_STRUCT.PTR = 0;
var int _PM_DATATOSAVESTRUCT_STRUCT.P1 = 0;
instance _PM_DATATOSAVESTRUCT_STRUCT.SYM(ZCPAR_SYMBOL)
var string _PM_DATATOSAVESTRUCT_STRUCT.NAME = "";
var int _PM_DATATOSAVESTRUCT_STRUCT.NARR = 0;
func int _PM_DATATOSAVESTRUCT_ARCHIVER(var int OFFS, var int ARCHIVER) {
    S = MEM_PTRTOINST((_PM_HEAD.CURROFFS) + (OFFS));
    MEMINT_STACKPUSHINST(0x27d1);
    MEM_CALLBYID(ARCHIVER);
    return 0 /* !broken stack! */;
}

instance _PM_DATATOSAVESTRUCT_ARCHIVER.S(ZCPAR_SYMBOL)
func void _PM_DATATOSAVESTRUCT_AUTO(var int CURRID) {
    SYM = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, CURRID));
    MAX = (SYM.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE);
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < (MAX)) {
        CURRID += 1;
        _PM_AUTOPACKSYMBOL(CURRID);
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
}

instance _PM_DATATOSAVESTRUCT_AUTO.SYM(ZCPAR_SYMBOL)
var int _PM_DATATOSAVESTRUCT_AUTO.MAX = 0;
var int _PM_DATATOSAVESTRUCT_AUTO.I = 0;
var int _PM_DATATOSAVESTRUCT_AUTO.P = 0;
func void _PM_DATATOSAVEOBJECT(var string NAME, var string CLASSNAME) {
    CLASSNAME = STR_UPPER(CLASSNAME);
    if ((STR_SPLITCOUNT(NAME, ".")) > (1)) {
        SYM = MEM_GETPARSERSYMBOL(NAME);
        if (!(SYM)) {
            _PM_ERROR(CONCATSTRINGS("Unbekanntes Symbol ", NAME));
            return;
        };
        ZSYM = MEM_PTRTOINST(SYM);
        OFFS = ZSYM.OFFSET;
        ELE = (ZSYM.BITFIELD) & (ZCPAR_SYMBOL_BITFIELD_ELE);
        NEWNAME = STR_SPLIT(NAME, ".", 1);
    };
    OFFS = 0;
    if (((!(STR_COMPARE(CLASSNAME, "INT"))) || (!(STR_COMPARE(CLASSNAME, "FLOAT")))) || (!(STR_COMPARE(CLASSNAME, "FUNC")))) {
        if ((ELE) == (1)) {
            PTR = _PM_NEWOBJECTINT(NEWNAME, MEM_READINT((_PM_HEAD.CURROFFS) + (OFFS)));
        } else {
            PTR = _PM_NEWOBJECTARRAY(NEWNAME, _PM_INTARR, ELE, (_PM_HEAD.CURROFFS) + (OFFS));
        } else {
            MEM_ARRAYINSERT(_PM_HEAD.CONTENT, PTR);
        } else {
            return;
        } else {
            /* set_instance(0) */;
        };
    };
    if (!(STR_COMPARE(CLASSNAME, "STRING"))) {
        if ((ELE) == (1)) {
            PTR = _PM_NEWOBJECTSTRING(NEWNAME, MEM_READSTRING((_PM_HEAD.CURROFFS) + (OFFS)));
        } else {
            PTR = _PM_NEWOBJECTARRAY(NEWNAME, _PM_STRARR, ELE, (_PM_HEAD.CURROFFS) + (OFFS));
        } else {
            MEM_ARRAYINSERT(_PM_HEAD.CONTENT, PTR);
        } else {
            return;
        };
    };
    CLASSID = MEM_FINDPARSERSYMBOL(CLASSNAME);
    if ((CLASSID) == (-(1))) {
        _PM_ERROR(CONCATSTRINGS("Unbekannte Klasse. ", CLASSNAME));
        return;
    };
    SYM = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(CLASSNAME, "_ARCHIVER"));
    if ((SYM) != (-(1))) {
        _PM_DATATOSAVESTRUCT_ARCHIVER(OFFS, SYM);
        return;
    };
    SYM = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(CLASSNAME, "_STRUCT"));
    if ((SYM) != (-(1))) {
        _PM_DATATOSAVESTRUCT_STRUCT(CLASSID, SYM);
        return;
    };
    _PM_DATATOSAVESTRUCT_AUTO(CLASSID);
}

var int _PM_DATATOSAVEOBJECT.PTR = 0;
var int _PM_DATATOSAVEOBJECT.OFFS = 0;
var int _PM_DATATOSAVEOBJECT.SYM = 0;
var int _PM_DATATOSAVEOBJECT.ELE = 0;
var string _PM_DATATOSAVEOBJECT.NEWNAME = "";
instance _PM_DATATOSAVEOBJECT.ZSYM(ZCPAR_SYMBOL)
var int _PM_DATATOSAVEOBJECT.CLASSID = 0;
func void _PM_INSTTOSAVESTRUCT(var int PTR, var int INST) {
    if (_PM_HEADPTR) {
        FREE(_PM_HEADPTR, 0x276e);
    };
    _PM_HEADPTR = CREATE(0x276e);
    _PM_HEAD = MEM_PTRTOINST(_PM_HEADPTR);
    _PM_HEAD.CONTENTSTACK = MEM_ARRAYCREATE();
    _PM_HEAD.OFFSSTACK = MEM_ARRAYCREATE();
    _PM_HEAD.INSTNAME = _PM_INSTNAME(INST);
    SYMBCLASS = _PM_TOCLASS(INST);
    _PM_HEAD.CLASSNAME = SYMBCLASS.NAME;
    _PM_HEAD.CURROFFS = PTR;
    _PM_HEAD.CONTENT = MEM_ARRAYCREATE();
    SYM = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(_PM_HEAD.INSTNAME, "_ARCHIVER"));
    if ((SYM) != (-(1))) {
        _PM_DATATOSAVESTRUCT_ARCHIVER(0, SYM);
        return;
    };
    _PM_DATATOSAVEOBJECT("", _PM_HEAD.CLASSNAME);
}

instance _PM_INSTTOSAVESTRUCT.SYMBCLASS(ZCPAR_SYMBOL)
var int _PM_INSTTOSAVESTRUCT.SYM = 0;
func void _PM_WRITEARRAY(var int OBJ) {
    OARR = MEM_PTRTOINST(OBJ);
    _PM_TEXT("[");
    BW_NEXTLINE();
    _PM_TABS += 1;
    J = 0;
    P = MEM_STACKPOS.POSITION;
    if ((J) < (OARR.ELEMENTS)) {
        _PM_TEXT(CONCATSTRINGS(INTTOSTRING(J), "="));
        if ((OARR.TYPE) == (_PM_INTARR)) {
            BW_TEXT(CONCATSTRINGS("i", INTTOSTRING(MEM_READINTARRAY(OARR.CONTENT, J))));
        } else {
            BW_TEXT(CONCATSTRINGS("s", MEM_READSTRINGARRAY(OARR.CONTENT, J)));
        } else {
            BW_NEXTLINE();
        } else {
            J += 1;
        } else {
            MEM_STACKPOS.POSITION = P;
        };
    };
    _PM_TABS -= 1;
    _PM_TEXT("]");
    BW_NEXTLINE();
}

instance _PM_WRITEARRAY.OARR(_PM_SAVEOBJECT_ARR)
var int _PM_WRITEARRAY.J = 0;
var int _PM_WRITEARRAY.P = 0;
func void _PM_WRITECLASS(var int OBJ) {
    LOCALS();
    OCLS = MEM_PTRTOINST(OBJ);
    if (!(OCLS.CONTENT)) {
        return;
    };
    MEM_ARRAYPUSH(_PM_HEAD.CONTENTSTACK, _PM_HEAD.CONTENT);
    _PM_HEAD.CONTENT = OCLS.CONTENT;
    _PM_TEXT("{");
    BW_NEXTLINE();
    _PM_TABS += 1;
    ARR = MEM_PTRTOINST(_PM_HEAD.CONTENT);
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < (ARR.NUMINARRAY)) {
        CURROBJ = MEM_READINTARRAY(ARR.ARRAY, I);
        _PM_TEXT(_PM_OBJECTTOSTRING(CURROBJ));
        BW_NEXTLINE();
        if ((_PM_OBJECTTYPE(CURROBJ)) >= (_PM_CLASS)) {
            TYPE = _PM_OBJECTTYPE(CURROBJ);
            if ((TYPE) >= (_PM_INTARR)) {
                _PM_WRITEARRAY(CURROBJ);
            } else {
                _PM_WRITECLASS(CURROBJ);
            };
        };
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
    _PM_TABS -= 1;
    _PM_TEXT("}");
    BW_NEXTLINE();
    _PM_HEAD.CONTENT = MEM_ARRAYPOP(_PM_HEAD.CONTENTSTACK);
}

instance _PM_WRITECLASS.OCLS(_PM_SAVEOBJECT_CLS)
instance _PM_WRITECLASS.ARR(ZCARRAY)
var int _PM_WRITECLASS.I = 0;
var int _PM_WRITECLASS.P = 0;
var int _PM_WRITECLASS.CURROBJ = 0;
var int _PM_WRITECLASS.TYPE = 0;
func void _PM_WRITESAVESTRUCT() {
    _PM_HEAD = MEM_PTRTOINST(_PM_HEADPTR);
    BW_TEXT(_PM_HEAD.CLASSNAME);
    BW_TEXT(":");
    BW_TEXT(_PM_HEAD.INSTNAME);
    BW_NEXTLINE();
    NEWOBJ = _PM_NEWTEMPCLASS();
    _PM_WRITECLASS(NEWOBJ);
    MEM_FREE(NEWOBJ);
    BW_NEXTLINE();
}

var int _PM_WRITESAVESTRUCT.NEWOBJ = 0;
var int PM_HANDLELIST = 0;
func void _PM_ARCHIVE_HTSUB(var int KEY, var int VAL) {
    if (!(PM_HANDLELIST)) {
        KEY;
        MEM_CALL(0x296a);
        PM_HANDLELIST = MEM_POPINTRESULT();
    };
    MEM_GETFUNCID(0x2984);
    MEM_CALL(0x298c);
    KEY;
}

func void _PM_ARCHIVE_LISTSUB(var int LPTR) {
    LIST = _^(LPTR);
    KEY = LIST.DATA;
    PM_CURRHANDLE = KEY;
    _PM_INSTTOSAVESTRUCT(_HT_GET(HANDLESPOINTER, KEY), _HT_GET(HANDLESINSTANCE, KEY));
    BW_TEXT(CONCATSTRINGS("HNDL:", INTTOSTRING(KEY)));
    BW_NEXTLINE();
    _PM_WRITESAVESTRUCT();
}

instance _PM_ARCHIVE_LISTSUB.LIST(ZCLIST)
var int _PM_ARCHIVE_LISTSUB.KEY = 0;
func void _PM_ARCHIVE() {
    MEM_INFO("===  PermMem::Archive  ===");
    TIME = MEM_GETSYSTEMTIME();
    _PM_DATAPOOLSIZE = 0;
    _PM_DATAPOOLNUM = 0;
    _PM_FREEDSIZE = 0;
    _PM_FREEDNUM = 0;
    _PM_MODE = 1;
    ARRMAX = _HT_GETNUMBER(HANDLESPOINTER);
    NEWARR = MEM_ARRAYCREATE();
    _PM_TABS = 0;
    BW_TEXT(CONCATSTRINGS("PermMem::v", INTTOSTRING(_PM_VERSION)));
    BW_NEXTLINE();
    BW_NEXTLINE();
    _HT_FOREACH(HANDLESPOINTER, 0x27f7);
    if (PM_HANDLELIST) {
        MEM_GETFUNCID(0x27fa);
        MEM_CALL(0x2904);
        PM_HANDLELIST;
        MEM_CALL(0x28fc);
    };
    PM_HANDLELIST = 0;
    PM_CURRHANDLE = 1;
    BW_TEXT("PermMem::End");
    BW_NEXTLINE();
    FREE(_PM_HEADPTR, 0x276e);
    _PM_HEADPTR = 0;
    MEM_INFO(CONCATSTRINGS("buffer used:     ", INTTOSTRING(_PM_DATAPOOLSIZE)));
    MEM_INFO(CONCATSTRINGS("buffer cleaned:  ", INTTOSTRING(_PM_FREEDSIZE)));
    MEM_INFO(CONCATSTRINGS("objects created: ", INTTOSTRING(_PM_DATAPOOLNUM)));
    MEM_INFO(CONCATSTRINGS("objects cleaned: ", INTTOSTRING(_PM_FREEDNUM)));
    MEM_INFO(CONCATSTRINGS("ellapsed time:   ", INTTOSTRING((MEM_GETSYSTEMTIME()) - (TIME))));
    MEM_INFO("===        Done        ===");
}

var int _PM_ARCHIVE.TIME = 0;
var int _PM_ARCHIVE.ARRMAX = 0;
var int _PM_ARCHIVE.NEWARR = 0;
func void _PM_READARRAY(var int TYPE) {
    if (STR_COMPARE(_PM_TEXTLINE(), "[")) {
        _PM_ERROR(CONCATSTRINGS("'[' erwartet. ", _PM_HEAD.INSTNAME));
        return;
    };
    _PM_TABS += 1;
    P = MEM_STACKPOS.POSITION;
    STR = _PM_TEXTLINE();
    if (STR_COMPARE(STR, "]")) {
        OBJ = _PM_STRINGTOOBJECT(STR);
        if ((_PM_OBJECTTYPE(OBJ)) != (TYPE)) {
            _PM_ERROR(CONCATSTRINGS("Unerwarteter Typ im Array. ", _PM_HEAD.INSTNAME));
            return;
        };
        MEM_ARRAYINSERT(_PM_HEAD.CONTENT, OBJ);
        MEM_STACKPOS.POSITION = P;
    };
    _PM_TABS -= 1;
}

var int _PM_READARRAY.P = 0;
var string _PM_READARRAY.STR = "";
var int _PM_READARRAY.OBJ = 0;
func void _PM_READCLASS() {
    if (STR_COMPARE(_PM_TEXTLINE(), "{")) {
        _PM_ERROR(CONCATSTRINGS("'{' erwartet. ", _PM_HEAD.INSTNAME));
        return;
    };
    _PM_TABS += 1;
    P = MEM_STACKPOS.POSITION;
    STR = _PM_TEXTLINE();
    if (STR_COMPARE(STR, "}")) {
        OBJ = _PM_STRINGTOOBJECT(STR);
        TYPE = _PM_OBJECTTYPE(OBJ);
        MEM_ARRAYINSERT(_PM_HEAD.CONTENT, OBJ);
        if (((TYPE) == (_PM_CLASS)) || ((TYPE) == (_PM_CLASSPTR))) {
            C = MEM_PTRTOINST(OBJ);
            if (STR_COMPARE(C.CLASS, "NULL")) {
                C.CONTENT = MEM_ARRAYCREATE();
                MEM_ARRAYPUSH(_PM_HEAD.CONTENTSTACK, _PM_HEAD.CONTENT);
                _PM_HEAD.CONTENT = C.CONTENT;
                _PM_READCLASS();
                _PM_HEAD.CONTENT = MEM_ARRAYPOP(_PM_HEAD.CONTENTSTACK);
            };
        } else if ((TYPE) >= (_PM_INTARR)) {
            A = MEM_PTRTOINST(OBJ);
            A.CONTENT = MEM_ARRAYCREATE();
            MEM_ARRAYPUSH(_PM_HEAD.CONTENTSTACK, _PM_HEAD.CONTENT);
            _PM_HEAD.CONTENT = A.CONTENT;
            if ((TYPE) == (_PM_INTARR)) {
                _PM_READARRAY(_PM_INT);
            } else {
                _PM_READARRAY(_PM_STRING);
            } else {
                _PM_HEAD.CONTENT = MEM_ARRAYPOP(_PM_HEAD.CONTENTSTACK);
            };
        };
        MEM_STACKPOS.POSITION = P;
    };
    _PM_TABS -= 1;
}

var int _PM_READCLASS.P = 0;
var string _PM_READCLASS.STR = "";
var int _PM_READCLASS.OBJ = 0;
var int _PM_READCLASS.TYPE = 0;
instance _PM_READCLASS.C(_PM_SAVEOBJECT_CLS)
instance _PM_READCLASS.A(_PM_SAVEOBJECT_ARR)
func void _PM_SKIPCLASS() {
    if (STR_COMPARE(_PM_TEXTLINE(), "{")) {
        _PM_ERROR(CONCATSTRINGS("'{' erwartet. ", _PM_HEAD.INSTNAME));
        return;
    };
    _PM_TABS += 1;
    P = MEM_STACKPOS.POSITION;
    STR = _PM_TEXTLINE();
    if (STR_COMPARE(STR, "}")) {
        MEM_STACKPOS.POSITION = P;
    };
    _PM_TABS -= 1;
}

var int _PM_SKIPCLASS.P = 0;
var string _PM_SKIPCLASS.STR = "";
func void _PM_READSAVESTRUCT() {
    if (_PM_HEADPTR) {
        FREE(_PM_HEADPTR, 0x276e);
    };
    _PM_HEADPTR = CREATE(0x276e);
    _PM_HEAD = MEM_PTRTOINST(_PM_HEADPTR);
    _PM_HEAD.CONTENTSTACK = MEM_ARRAYCREATE();
    _PM_HEAD.OFFSSTACK = MEM_ARRAYCREATE();
    _PM_HEAD.CONTENT = MEM_ARRAYCREATE();
    STR = _PM_TEXTLINE();
    if ((STR_SPLITCOUNT(STR, ":")) < (2)) {
        _PM_ERROR(CONCATSTRINGS("Ungültiger Objektkopf: ", STR));
        return;
    };
    _PM_HEAD.CLASSNAME = STR_SPLIT(STR, ":", 0);
    _PM_HEAD.INSTNAME = STR_SPLIT(STR, ":", 1);
    _PM_HEAD.INST = MEM_FINDPARSERSYMBOL(_PM_HEAD.INSTNAME);
    if ((_PM_HEAD.INST) == (-(1))) {
        _PM_ERROR(CONCATSTRINGS("Unbekannte Instanz: ", _PM_HEAD.INSTNAME));
        _PM_SKIPCLASS();
        _PM_HEAD = MEM_NULLTOINST();
        FREE(_PM_HEADPTR, 0x276e);
        _PM_HEADPTR = 0;
        return;
    };
    CLASSPTR = MEM_GETPARSERSYMBOL(_PM_HEAD.CLASSNAME);
    if (!(CLASSPTR)) {
        _PM_ERROR(CONCATSTRINGS("Unbekannte Klasse: ", _PM_HEAD.CLASSNAME));
        _PM_SKIPCLASS();
        _PM_HEAD = MEM_NULLTOINST();
        FREE(_PM_HEADPTR, 0x276e);
        _PM_HEADPTR = 0;
        return;
    };
    CLASSSYM = MEM_PTRTOINST(CLASSPTR);
    _PM_HEAD.CURROFFS = MEM_ALLOC(CLASSSYM.OFFSET);
    _PM_READCLASS();
}

var string _PM_READSAVESTRUCT.STR = "";
var int _PM_READSAVESTRUCT.CLASSPTR = 0;
instance _PM_READSAVESTRUCT.CLASSSYM(ZCPAR_SYMBOL)
func int _PM_GETSYMBOFFS(var string CLASSNAME, var string SYMB) {
    BUF = CONCATSTRINGS(CLASSNAME, ".");
    SYMPTR = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(BUF, SYMB));
    if ((SYMPTR) == (-(1))) {
        return -(1);
    };
    return MEM_READINT((MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, SYMPTR)) + (ZCPARSYMBOL_OFFSET_OFFSET));
}

var string _PM_GETSYMBOFFS.BUF = "";
var int _PM_GETSYMBOFFS.SYMPTR = 0;
func void _PM_CLASSTOINST0(var string S0) {
    MEM_REPLACEFUNC(0x281a, 0x2839);
    _PM_CLASSTOINST0(S0);
}

func void _PM_CLASSTOINST_CLASSTOPTR(var int OBJ, var int PTR) {
    LOCALS();
    OC = MEM_PTRTOINST(OBJ);
    MEM_ARRAYPUSH(_PM_HEAD.OFFSSTACK, _PM_HEAD.CURROFFS);
    MEM_ARRAYPUSH(_PM_HEAD.CONTENTSTACK, _PM_HEAD.CONTENT);
    _PM_HEAD.CURROFFS = PTR;
    _PM_HEAD.CONTENT = OC.CONTENT;
    _PM_CLASSTOINST0(OC.CLASS);
    _PM_HEAD.CURROFFS = MEM_ARRAYPOP(_PM_HEAD.OFFSSTACK);
    _PM_HEAD.CONTENT = MEM_ARRAYPOP(_PM_HEAD.CONTENTSTACK);
}

instance _PM_CLASSTOINST_CLASSTOPTR.OC(_PM_SAVEOBJECT_CLS)
func void _PM_CLASSTOINST_ARRTOPTR(var int OBJ, var int OFFS) {
    OA = MEM_PTRTOINST(OBJ);
    NARR = MEM_PTRTOINST(OA.CONTENT);
    J = 0;
    P0 = MEM_STACKPOS.POSITION;
    if ((J) < (NARR.NUMINARRAY)) {
        if ((OA.TYPE) == (_PM_INTARR)) {
            OI = MEM_PTRTOINST(MEM_READINTARRAY(NARR.ARRAY, J));
            MEM_WRITEINTARRAY(OFFS, STR_TOINT(OI.NAME), OI.CONTENT);
        } else {
            OS = MEM_PTRTOINST(MEM_READINTARRAY(NARR.ARRAY, J));
            MEM_WRITESTRING((OFFS) + ((20) * (STR_TOINT(OS.NAME))), OS.CONTENT);
        } else {
            J += 1;
        } else {
            MEM_STACKPOS.POSITION = P0;
        };
    };
}

instance _PM_CLASSTOINST_ARRTOPTR.OI(_PM_SAVEOBJECT_INT)
instance _PM_CLASSTOINST_ARRTOPTR.OS(_PM_SAVEOBJECT_STR)
instance _PM_CLASSTOINST_ARRTOPTR.OA(_PM_SAVEOBJECT_ARR)
instance _PM_CLASSTOINST_ARRTOPTR.NARR(ZCARRAY)
var int _PM_CLASSTOINST_ARRTOPTR.J = 0;
var int _PM_CLASSTOINST_ARRTOPTR.P0 = 0;
func void _PM_CLASSTOINST_AUTO(var string CLASSNAME) {
    LOCALS();
    ARR = MEM_PTRTOINST(_PM_HEAD.CONTENT);
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < (ARR.NUMINARRAY)) {
        OBJ = MEM_READINTARRAY(ARR.ARRAY, I);
        TYPE = _PM_OBJECTTYPE(OBJ);
        OFFS = _PM_GETSYMBOFFS(CLASSNAME, _PM_OBJECTNAME(OBJ));
        if ((OFFS) == (-(1))) {
            _PM_ERROR(CONCATSTRINGS("Unknown Symbol. ", _PM_OBJECTNAME(OBJ)));
            return;
        };
        OFFS += _PM_HEAD.CURROFFS;
        if ((TYPE) == (_PM_STRING)) {
            OS = MEM_PTRTOINST(OBJ);
            MEM_WRITESTRING(OFFS, OS.CONTENT);
        } else if ((TYPE) == (_PM_INT)) {
            OI = MEM_PTRTOINST(OBJ);
            MEM_WRITEINT(OFFS, OI.CONTENT);
        } else if ((TYPE) == (_PM_CLASS)) {
            _PM_CLASSTOINST_CLASSTOPTR(OBJ, OFFS);
        } else if ((TYPE) == (_PM_CLASSPTR)) {
            OC = MEM_PTRTOINST(OBJ);
            if (OC.CONTENT) {
                CLASSPTR = MEM_GETPARSERSYMBOL(OC.CLASS);
                if (!(CLASSPTR)) {
                    _PM_ERROR(CONCATSTRINGS("Unknown class. ", OC.CLASS));
                    return;
                };
                PTR = MEM_ALLOC(MEM_READINT((CLASSPTR) + (ZCPARSYMBOL_OFFSET_OFFSET)));
                MEM_WRITEINT(OFFS, PTR);
                _PM_CLASSTOINST_CLASSTOPTR(OBJ, PTR);
            };
        } else if ((TYPE) >= (_PM_INTARR)) {
            _PM_CLASSTOINST_ARRTOPTR(OBJ, OFFS);
        };
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
}

instance _PM_CLASSTOINST_AUTO.OI(_PM_SAVEOBJECT_INT)
instance _PM_CLASSTOINST_AUTO.OS(_PM_SAVEOBJECT_STR)
instance _PM_CLASSTOINST_AUTO.ARR(ZCARRAY)
var int _PM_CLASSTOINST_AUTO.I = 0;
var int _PM_CLASSTOINST_AUTO.P = 0;
var int _PM_CLASSTOINST_AUTO.OBJ = 0;
var int _PM_CLASSTOINST_AUTO.TYPE = 0;
var int _PM_CLASSTOINST_AUTO.OFFS = 0;
instance _PM_CLASSTOINST_AUTO.OC(_PM_SAVEOBJECT_CLS)
var int _PM_CLASSTOINST_AUTO.CLASSPTR = 0;
var int _PM_CLASSTOINST_AUTO.PTR = 0;
func void _PM_CLASSTOINST_UNARCHIVER(var int UNARCHIVER) {
    S = MEM_PTRTOINST(_PM_HEAD.CURROFFS);
    MEMINT_STACKPUSHINST(0x2838);
    MEM_CALLBYID(UNARCHIVER);
}

instance _PM_CLASSTOINST_UNARCHIVER.S(ZCPAR_SYMBOL)
func void _PM_CLASSTOINST(var string CLASSNAME) {
    SYM = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(CLASSNAME, "_UNARCHIVER"));
    if ((SYM) != (-(1))) {
        _PM_CLASSTOINST_UNARCHIVER(SYM);
        return;
    };
    _PM_CLASSTOINST_AUTO(CLASSNAME);
}

var int _PM_CLASSTOINST.SYM = 0;
func void _PM_SAVESTRUCTTOINST() {
    SYM = MEM_GETPARSERSYMBOL(_PM_HEAD.INSTNAME);
    S = MEM_PTRTOINST(SYM);
    S.OFFSET = _PM_HEAD.CURROFFS;
    SYM = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(_PM_HEAD.INSTNAME, "_UNARCHIVER"));
    if ((SYM) != (-(1))) {
        _PM_CLASSTOINST_UNARCHIVER(SYM);
        return;
    };
    _PM_CLASSTOINST(_PM_HEAD.CLASSNAME);
}

var int _PM_SAVESTRUCTTOINST.SYM = 0;
instance _PM_SAVESTRUCTTOINST.S(ZCPAR_SYMBOL)
func void _PM_UNARCHIVE() {
    MEM_INFO("=== PermMem::UnArchive ===");
    TIME = MEM_GETSYSTEMTIME();
    _PM_DATAPOOLSIZE = 0;
    _PM_DATAPOOLNUM = 0;
    _PM_FREEDSIZE = 0;
    _PM_FREEDNUM = 0;
    _PM_MODE = 0;
    STR = BR_TEXTLINE();
    if (((STR_LEN(STR)) != (11)) || (STR_COMPARE("PermMem::v", STR_PREFIX(STR, 10)))) {
        _PM_ERROR("Keine valide PermMem Speicherdatei.");
        return;
    };
    V = STR_TOINT(STR_SUBSTR(STR, 10, 1));
    if ((V) < (_PM_VERSION)) {
        _PM_ERROR("Die PermMem Speicherdatei ist veraltet und kann nicht gelesen werden.");
        return;
    };
    if ((V) > (_PM_VERSION)) {
        _PM_ERROR("Die PermMem Speicherdatei ist zu neu für diese Scripte und kann nicht gelesen werden.");
        return;
    };
    BR_NEXTLINE();
    _PM_RESET();
    _PM_LINE = 2;
    HANDLESPOINTER = _HT_CREATE();
    HANDLESINSTANCE = _HT_CREATE();
    HANDLESWRAPPED = MEM_ARRAYCREATE();
    P = MEM_STACKPOS.POSITION;
    STR = _PM_TEXTLINE();
    if (!(STR_COMPARE("HNDL:", STR_PREFIX(STR, 5)))) {
        I = STR_TOINT(STR_SUBSTR(STR, 5, (STR_LEN(STR)) - (5)));
        PM_CURRHANDLE = I;
        _PM_READSAVESTRUCT();
        _PM_SEARCHOBJCACHE = "";
        if (_PM_HEADPTR) {
            _PM_SAVESTRUCTTOINST();
            _HT_INSERT(HANDLESPOINTER, _PM_HEAD.CURROFFS, I);
            _HT_INSERT(HANDLESINSTANCE, _PM_HEAD.INST, I);
        };
        BR_NEXTLINE();
        _PM_LINE += 1;
        MEM_STACKPOS.POSITION = P;
    };
    if (STR_COMPARE("PermMem::End", STR)) {
        _PM_ERROR(CONCATSTRINGS("Unbekannte Zeile in Speicherdatei. ", STR));
        return;
    };
    PM_CURRHANDLE = 1;
    FREE(_PM_HEADPTR, 0x276e);
    _PM_HEADPTR = 0;
    _PM_CREATEFOREACHTABLE();
    MEM_INFO(CONCATSTRINGS("buffer used:     ", INTTOSTRING(_PM_DATAPOOLSIZE)));
    MEM_INFO(CONCATSTRINGS("buffer cleaned:  ", INTTOSTRING(_PM_FREEDSIZE)));
    MEM_INFO(CONCATSTRINGS("objects created: ", INTTOSTRING(_PM_DATAPOOLNUM)));
    MEM_INFO(CONCATSTRINGS("objects cleaned: ", INTTOSTRING(_PM_FREEDNUM)));
    MEM_INFO(CONCATSTRINGS("ellapsed time:   ", INTTOSTRING((MEM_GETSYSTEMTIME()) - (TIME))));
    MEM_INFO("===        Done        ===");
}

var int _PM_UNARCHIVE.TIME = 0;
var string _PM_UNARCHIVE.STR = "";
var int _PM_UNARCHIVE.V = 0;
var int _PM_UNARCHIVE.P = 0;
var int _PM_UNARCHIVE.I = 0;
func void _PM_ARCHIVEERROR() {
    if (((_PM_MODE) == (1)) && (PM_CURRHANDLE)) {
        return;
    };
    _PM_ERROR("Archiverfunktionen dürfen nur innerhalb eines Archivers genutzt werden!");
}

func void _PM_UNARCHIVEERROR() {
    if (((_PM_MODE) == (0)) && (PM_CURRHANDLE)) {
        return;
    };
    _PM_ERROR("Unarchiverfunktionen dürfen nur innerhalb eines Unarchivers genutzt werden!");
}

func void PM_SAVEINT(var string NAME, var int VAL) {
    _PM_ARCHIVEERROR();
    MEM_ARRAYINSERT(_PM_HEAD.CONTENT, _PM_NEWOBJECTINT(STR_UPPER(NAME), VAL));
}

func void PM_SAVEFLOAT(var string NAME, var int FLT) {
    PM_SAVEINT(NAME, FLT);
}

func void PM_SAVESTRING(var string NAME, var string VAL) {
    _PM_ARCHIVEERROR();
    MEM_ARRAYINSERT(_PM_HEAD.CONTENT, _PM_NEWOBJECTSTRING(STR_UPPER(NAME), VAL));
}

func void PM_SAVEFUNCID(var string NAME, var int FNC) {
    SYM = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, FNC));
    PM_SAVESTRING(NAME, SYM.NAME);
}

instance PM_SAVEFUNCID.SYM(ZCPAR_SYMBOL)
func void PM_SAVEFUNCOFFSET(var string NAME, var int FNC) {
    PM_SAVEFUNCID(NAME, MEM_GETFUNCIDBYOFFSET(FNC));
}

func void PM_SAVEFUNCPTR(var string NAME, var int FNC) {
    PM_SAVEFUNCOFFSET(NAME, (FNC) - (CURRPARSERSTACKADDRESS));
}

func void _PM_SAVECLASSPTR(var string NAME, var int PTR, var string CLASSNAME, var int P) {
    _PM_ARCHIVEERROR();
    NAME = STR_UPPER(NAME);
    CLASSNAME = STR_UPPER(CLASSNAME);
    if (!(PTR)) {
        MEM_ARRAYINSERT(_PM_HEAD.CONTENT, _PM_NEWOBJECTCLASS(NAME, CLASSNAME, P, 0));
        return;
    };
    NARR = MEM_ARRAYCREATE();
    MEM_ARRAYINSERT(_PM_HEAD.CONTENT, _PM_NEWOBJECTCLASS(NAME, CLASSNAME, P, NARR));
    MEM_ARRAYPUSH(_PM_HEAD.CONTENTSTACK, _PM_HEAD.CONTENT);
    MEM_ARRAYPUSH(_PM_HEAD.OFFSSTACK, _PM_HEAD.CURROFFS);
    _PM_HEAD.CONTENT = NARR;
    _PM_HEAD.CURROFFS = PTR;
    _PM_DATATOSAVEOBJECT("", CLASSNAME);
    _PM_HEAD.CONTENT = MEM_ARRAYPOP(_PM_HEAD.CONTENTSTACK);
    _PM_HEAD.CURROFFS = MEM_ARRAYPOP(_PM_HEAD.OFFSSTACK);
}

var int _PM_SAVECLASSPTR.NARR = 0;
func void PM_SAVECLASSPTR(var string NAME, var int PTR, var string CLASSNAME) {
    _PM_SAVECLASSPTR(NAME, PTR, CLASSNAME, 1);
}

func void PM_SAVECLASS(var string NAME, var int PTR, var string CLASSNAME) {
    _PM_SAVECLASSPTR(NAME, PTR, CLASSNAME, 0);
}

func void _PM_SAVEARRAY(var string NAME, var int PTR, var int ELEMENTS, var int TYPE) {
    _PM_ARCHIVEERROR();
    MEM_ARRAYINSERT(_PM_HEAD.CONTENT, _PM_NEWOBJECTARRAY(STR_UPPER(NAME), TYPE, ELEMENTS, PTR));
}

func void PM_SAVEINTARRAY(var string NAME, var int PTR, var int ELEMENTS) {
    _PM_SAVEARRAY(NAME, PTR, ELEMENTS, _PM_INTARR);
}

func void PM_SAVESTRINGARRAY(var string NAME, var int PTR, var int ELEMENTS) {
    _PM_SAVEARRAY(NAME, PTR, ELEMENTS, _PM_STRARR);
}

const int _PM_SEARCHWARN = 1;
func int _PM_SEARCHOBJ(var string NAME) {
    _PM_UNARCHIVEERROR();
    NAME = STR_UPPER(NAME);
    if (!(STR_COMPARE(_PM_SEARCHOBJCACHE, NAME))) {
        return LAST;
    };
    _PM_SEARCHOBJCACHE = NAME;
    I = 0;
    ARR = MEM_PTRTOINST(_PM_HEAD.CONTENT);
    P = MEM_STACKPOS.POSITION;
    if ((I) < (ARR.NUMINARRAY)) {
        OBJ = MEM_READINTARRAY(ARR.ARRAY, I);
        if (!(STR_COMPARE(_PM_OBJECTNAME(OBJ), NAME))) {
            LAST = OBJ;
            return OBJ;
        };
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
    if (_PM_SEARCHWARN) {
        MEM_WARN(CONCATSTRINGS("Objekt konnte nicht gefunden werden. ", NAME));
    };
    _PM_SEARCHWARN = 1;
    LAST = 0;
    return 0;
}

const int _PM_SEARCHOBJ.LAST = 0;
var int _PM_SEARCHOBJ.I = 0;
instance _PM_SEARCHOBJ.ARR(ZCARRAY)
var int _PM_SEARCHOBJ.P = 0;
var int _PM_SEARCHOBJ.OBJ = 0;
func int PM_EXISTS(var string NAME) {
    _PM_SEARCHWARN = 0;
    return !(!(_PM_SEARCHOBJ(NAME)));
}

func int _PM_LOAD(var string OBJNAME, var int TYPE, var int PTR) {
    LOCALS();
    OBJ = _PM_SEARCHOBJ(OBJNAME);
    if (!(OBJ)) {
        return 0;
    };
    if ((TYPE) == (-(1))) {
        TYPE = _PM_OBJECTTYPE(OBJ);
    };
    if ((((_PM_OBJECTTYPE(OBJ)) != (TYPE)) && ((TYPE) < (_PM_INTARR))) || (!(OBJ))) {
        MEM_WARN(CONCATSTRINGS("Objekt ist invalid oder Typ stimmt nicht überein. ", OBJNAME));
        return 0;
    };
    if ((TYPE) == (_PM_STRING)) {
        if (!(PTR)) {
            return 0;
        };
        OS = MEM_PTRTOINST(OBJ);
        MEM_WRITESTRING(PTR, OS.CONTENT);
        return PTR;
    };
    if ((TYPE) == (_PM_INT)) {
        OI = MEM_PTRTOINST(OBJ);
        if (PTR) {
            MEM_WRITEINT(PTR, OI.CONTENT);
        };
        return OI.CONTENT;
    };
    if (((TYPE) == (_PM_CLASS)) || ((TYPE) == (_PM_CLASSPTR))) {
        OC = MEM_PTRTOINST(OBJ);
        if (!(STR_COMPARE(OC.CLASS, "NULL"))) {
            return 0;
        };
        if (!(PTR)) {
            PTR = MEM_ALLOC(MEM_READINT((MEM_GETPARSERSYMBOL(OC.CLASS)) + (ZCPARSYMBOL_OFFSET_OFFSET)));
        };
        _PM_CLASSTOINST_CLASSTOPTR(OBJ, PTR);
        return PTR;
    };
    if ((TYPE) >= (_PM_INTARR)) {
        if (!(PTR)) {
            OA = MEM_PTRTOINST(OBJ);
            if ((TYPE) == (_PM_INTARR)) {
                if ((OA.ELEMENTS) > (0)) {
                    PTR = MEM_ALLOC((OA.ELEMENTS) * (4));
                };
            } else {
                PTR = MEM_ALLOC((OA.ELEMENTS) * (20));
            };
        };
        _PM_CLASSTOINST_ARRTOPTR(OBJ, PTR);
        return PTR;
    };
    return 0;
}

var int _PM_LOAD.OBJ = 0;
instance _PM_LOAD.OS(_PM_SAVEOBJECT_STR)
instance _PM_LOAD.OI(_PM_SAVEOBJECT_INT)
instance _PM_LOAD.OC(_PM_SAVEOBJECT_CLS)
instance _PM_LOAD.OA(_PM_SAVEOBJECT_ARR)
func int PM_LOADINT(var string NAME) {
    return _PM_LOAD(NAME, _PM_INT, 0);
}

func int PM_LOADFLOAT(var string NAME) {
    return PM_LOADINT(NAME);
}

func string PM_LOADSTRING(var string NAME) {
    OBJ = _PM_SEARCHOBJ(NAME);
    if ((!(OBJ)) || ((_PM_OBJECTTYPE(OBJ)) != (_PM_STRING))) {
        MEM_WARN(CONCATSTRINGS("Objekt ist invalid oder kein String. ", NAME));
        return "";
    };
    OS = MEM_PTRTOINST(OBJ);
    return OS.CONTENT;
}

var int PM_LOADSTRING.OBJ = 0;
instance PM_LOADSTRING.OS(_PM_SAVEOBJECT_STR)
func void _PM_EMPTYFUNC_VOID() {
}

func void _PM_EMPTYFUNC_INT(var int I) {
}

func void _PM_EMPTYFUNC_INT_INT(var int I, var int J) {
}

func int PM_LOADFUNCID(var string NAME) {
    FUNCID = MEM_FINDPARSERSYMBOL(PM_LOADSTRING(NAME));
    if ((FUNCID) == (-(1))) {
        FUNCID = MEM_GETFUNCID(0x2891);
    };
    return FUNCID;
}

var int PM_LOADFUNCID.FUNCID = 0;
func int PM_LOADFUNCOFFSET(var string NAME) {
    S = _^(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, PM_LOADFUNCID(NAME)));
    return S.CONTENT;
}

instance PM_LOADFUNCOFFSET.S(ZCPAR_SYMBOL)
func int PM_LOADFUNCPTR(var string NAME) {
    return (PM_LOADFUNCOFFSET(NAME)) + (CURRPARSERSTACKADDRESS);
}

func void PM_LOADCLASS(var string NAME, var int DESTPTR) {
    DESTPTR = _PM_LOAD(NAME, _PM_CLASS, DESTPTR);
}

func int PM_LOADCLASSPTR(var string NAME) {
    return _PM_LOAD(NAME, _PM_CLASSPTR, 0);
}

func int PM_LOADARRAY(var string NAME) {
    return _PM_LOAD(NAME, _PM_INTARR, 0);
}

func void PM_LOADARRAYTOPTR(var string NAME, var int DESTPTR) {
    DESTPTR = _PM_LOAD(NAME, _PM_INTARR, DESTPTR);
}

func int PM_LOAD(var string NAME) {
    return _PM_LOAD(NAME, -(1), 0);
}

func void PM_LOADTOPTR(var string NAME, var int DESTPTR) {
    DESTPTR = _PM_LOAD(NAME, -(1), DESTPTR);
}

