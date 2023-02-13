func void _MEM_ARRAYSORTFUNC(var int L, var int R) {
    var int C;
    var int P;
    var int M;
    var int T;
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

const int HANDLESINSTANCE = 0;
const int HANDLESWRAPPED = 0;
var int NEXTHANDLE;
var int _PM_ARRAYELEMENTS;
var int _PM_INST;
var int _PM_STACK;
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

func string _PM_INSTNAME(var int INST) {
    var ZCPAR_SYMBOL SYMBINST;
    SYMBINST = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, INST));
    return SYMBINST.NAME;
}

func void CLEAR(var int H) {
    var int A;
    if (!(HLP_ISVALIDHANDLE(H))) {
        return;
    };
    A = _HT_GET(HANDLESPOINTER, H);
    MEM_FREE(A);
    _HT_REMOVE(HANDLESPOINTER, H);
    _HT_REMOVE(HANDLESINSTANCE, H);
}

const int RBREAK = -42;
const int RCONTINUE = -23;
const int FOREACHHNDL_PTR = 0;
func void _PM_ADDTOFOREACHTABLE(var int H) {
    var int C;
    var int I;
    var int P;
    if (!(_PM_FOREACHTABLE)) {
        MEM_CALL(9985);
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

func void _PM_CREATEFOREACHTABLE_HTSUB(var int KEY, var int VAL) {
    _PM_ADDTOFOREACHTABLE(KEY);
}

func int HASHNDL(var int INST) {
    var int C;
    if (!(_PM_FOREACHTABLE)) {
        return FALSE;
    };
    C = MEM_READINTARRAY(_PM_FOREACHTABLE, INST);
    if (!(C)) {
        return FALSE;
    };
    return (MEM_ARRAYSIZE(C)) > (0);
}

func void DELETE(var int H) {
    var int PTR;
    var int FNC;
    var ZCPAR_SYMBOL SYMBCLS;
    var int INST;
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
        MEMINT_STACKPUSHINST(10007);
        MEM_CALLBYID(FNC);
    };
    if ((MEM_ARRAYINDEXOF(HANDLESWRAPPED, H)) != (-(1))) {
        RELEASE(H);
    };
    CLEAR(H);
}

func int CREATE(var int INST) {
    var int I;
    var int PTR;
    var ZCPAR_SYMBOL SYMBCLS;
    LOCALS();
    SYMBCLS = _PM_TOCLASS(INST);
    PTR = MEM_ALLOC(SYMBCLS.OFFSET);
    I = ZCPARSER_CREATEINSTANCE(INST, PTR);
    return PTR;
}

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

func int GETINST(var int H) {
    if (!(HLP_ISVALIDHANDLE(H))) {
        return 0;
    };
    return _HT_GET(HANDLESINSTANCE, H);
}

func void _DELETEALL(var int KEY, var int VAL) {
    DELETE(KEY);
}

const int _PM_TABS = 0;
const int _PM_LINE = 0;
func void _PM_WTAB() {
    var int P;
    var int I;
    I = 0;
    P = MEM_STACKPOS.POSITION;
    if ((I) < (_PM_TABS)) {
        BW_BYTE(9);
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
}

func void _PM_TEXT(var string T) {
    _PM_WTAB();
    BW_TEXT(T);
}

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
instance _PM_SAVEOBJECT_STR@(_PM_SAVEOBJECT_STR);
const int _PM_SAVEOBJECT_STR_SIZE = 44;
class _PM_SAVEOBJECT_INT {
	var int TYPE;
	var string NAME;
	var int CONTENT;
};
instance _PM_SAVEOBJECT_INT@(_PM_SAVEOBJECT_INT);
const int _PM_SAVEOBJECT_INT_SIZE = 28;
class _PM_SAVEOBJECT_CLS {
	var int TYPE;
	var string NAME;
	var int CONTENT;
	var string CLASS;
};
instance _PM_SAVEOBJECT_CLS@(_PM_SAVEOBJECT_CLS);
const int _PM_SAVEOBJECT_CLS_SIZE = 48;
class _PM_SAVEOBJECT_ARR {
	var int TYPE;
	var string NAME;
	var int CONTENT;
	var int ELEMENTS;
};
instance _PM_SAVEOBJECT_ARR@(_PM_SAVEOBJECT_ARR);
const int _PM_SAVEOBJECT_ARR_SIZE = 32;
func int _PM_OBJECTTYPE(var int OBJ) {
    return MEM_READINT(OBJ);
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
instance _PM_SAVESTRUCT@(_PM_SAVESTRUCT);
const int _PM_FREEDNUM = 0;
const int _PM_FREEDSIZE = 0;
func void _PM_SAVESTRUCT_DELETEARR(var int ARR) {
    var _PM_SAVEOBJECT_CLS OC;
    var _PM_SAVEOBJECT_STR OS;
    var int T;
    var int O;
    var int P;
    var int I;
    var ZCARRAY A;
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
            };
            OS.NAME = "";
        } else {
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
            };
            OC.NAME = "";
        };
        MEM_FREE(O);
        I += 1;
        MEM_STACKPOS.POSITION = P;
    };
    MEM_ARRAYFREE(ARR);
}

const int _PM_HEADPTR = 0;
instance _PM_HEAD(_PM_SAVESTRUCT);
const string _PM_SEARCHOBJCACHE = "";
const int _PM_DATAPOOLNUM = 0;
const int _PM_DATAPOOLSIZE = 0;
func int _PM_ALLOC(var int SIZE) {
    _PM_DATAPOOLNUM += 1;
    _PM_DATAPOOLSIZE += SIZE;
    return MEM_ALLOC(SIZE);
}

func void _PM_ERROR(var string MSG) {
    var string RES;
    RES = CONCATSTRINGS("PermMem: ", MSG);
    if (!(_PM_MODE)) {
        RES = CONCATSTRINGS(RES, ", line ");
        RES = CONCATSTRINGS(RES, INTTOSTRING(_PM_LINE));
    };
    MEM_ERROR(RES);
}

func int _PM_NEWOBJECTINT(var string NAME, var int CONTENT) {
    var _PM_SAVEOBJECT_INT OINT;
    var int PTR;
    PTR = _PM_ALLOC(_PM_SAVEOBJECT_INT_SIZE);
    OINT = MEM_PTRTOINST(PTR);
    OINT.NAME = NAME;
    OINT.TYPE = _PM_INT;
    OINT.CONTENT = CONTENT;
    return PTR;
}

func int _PM_NEWOBJECTARRAY(var string NAME, var int TYPE, var int ELEMENTS, var int CONTENT) {
    var _PM_SAVEOBJECT_ARR OARR;
    var int PTR;
    PTR = _PM_ALLOC(_PM_SAVEOBJECT_ARR_SIZE);
    OARR = MEM_PTRTOINST(PTR);
    OARR.NAME = NAME;
    OARR.TYPE = TYPE;
    OARR.ELEMENTS = ELEMENTS;
    OARR.CONTENT = CONTENT;
    return PTR;
}

func void _PM_DATATOSAVESTRUCT_STRUCT(var int CLASSID, var int STRUCT) {
    var ZCPAR_SYMBOL ZSTRUCT;
    var int MAXOFFS;
    var ZCPAR_SYMBOL ZCLASS;
    var int P1;
    var string STRUCTCNT;
    var int SPLITS;
    var int I;
    var int P;
    var int PTR;
    var string CURR;
    var int CURROFFS;
    var int NUM;
    var int NARR;
    var string NAME;
    var ZCPAR_SYMBOL SYM;
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

func void _PM_DATATOSAVEOBJECT(var string NAME, var string CLASSNAME) {
    var int PTR;
    var string NEWNAME;
    var int ELE;
    var int CLASSID;
    var int OFFS;
    var ZCPAR_SYMBOL ZSYM;
    var int SYM;
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
        };
        MEM_ARRAYINSERT(_PM_HEAD.CONTENT, PTR);
        return;
    };
    if (!(STR_COMPARE(CLASSNAME, "STRING"))) {
        if ((ELE) == (1)) {
            PTR = _PM_NEWOBJECTSTRING(NEWNAME, MEM_READSTRING((_PM_HEAD.CURROFFS) + (OFFS)));
        } else {
            PTR = _PM_NEWOBJECTARRAY(NEWNAME, _PM_STRARR, ELE, (_PM_HEAD.CURROFFS) + (OFFS));
        };
        MEM_ARRAYINSERT(_PM_HEAD.CONTENT, PTR);
        return;
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

func void _PM_WRITECLASS(var int OBJ) {
    var int TYPE;
    var int CURROBJ;
    var int P;
    var int I;
    var ZCARRAY ARR;
    var _PM_SAVEOBJECT_CLS OCLS;
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

var int PM_HANDLELIST;
func void _PM_ARCHIVE_HTSUB(var int KEY, var int VAL) {
    if (!(PM_HANDLELIST)) {
        KEY;
        MEM_CALL(10602);
        PM_HANDLELIST = MEM_POPINTRESULT();
    };
    MEM_GETFUNCID(10628);
    MEM_CALL(10636);
    KEY;
}

func void _PM_READARRAY(var int TYPE) {
    var int OBJ;
    var string STR;
    var int P;
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

func void _PM_SKIPCLASS() {
    var string STR;
    var int P;
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

func void _PM_READSAVESTRUCT() {
    var ZCPAR_SYMBOL CLASSSYM;
    var int CLASSPTR;
    var string STR;
    if (_PM_HEADPTR) {
        FREE(_PM_HEADPTR, 10094);
    };
    _PM_HEADPTR = CREATE(10094);
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
        FREE(_PM_HEADPTR, 10094);
        _PM_HEADPTR = 0;
        return;
    };
    CLASSPTR = MEM_GETPARSERSYMBOL(_PM_HEAD.CLASSNAME);
    if (!(CLASSPTR)) {
        _PM_ERROR(CONCATSTRINGS("Unbekannte Klasse: ", _PM_HEAD.CLASSNAME));
        _PM_SKIPCLASS();
        _PM_HEAD = MEM_NULLTOINST();
        FREE(_PM_HEADPTR, 10094);
        _PM_HEADPTR = 0;
        return;
    };
    CLASSSYM = MEM_PTRTOINST(CLASSPTR);
    _PM_HEAD.CURROFFS = MEM_ALLOC(CLASSSYM.OFFSET);
    _PM_READCLASS();
}

func int _PM_GETSYMBOFFS(var string CLASSNAME, var string SYMB) {
    var int SYMPTR;
    var string BUF;
    BUF = CONCATSTRINGS(CLASSNAME, ".");
    SYMPTR = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(BUF, SYMB));
    if ((SYMPTR) == (-(1))) {
        return -(1);
    };
    return MEM_READINT((MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, SYMPTR)) + (ZCPARSYMBOL_OFFSET_OFFSET));
}

func void _PM_CLASSTOINST_ARRTOPTR(var int OBJ, var int OFFS) {
    var _PM_SAVEOBJECT_STR OS;
    var _PM_SAVEOBJECT_INT OI;
    var int P0;
    var int J;
    var ZCARRAY NARR;
    var _PM_SAVEOBJECT_ARR OA;
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
        };
        J += 1;
        MEM_STACKPOS.POSITION = P0;
    };
}

func void _PM_CLASSTOINST(var string CLASSNAME) {
    var int SYM;
    SYM = MEM_FINDPARSERSYMBOL(CONCATSTRINGS(CLASSNAME, "_UNARCHIVER"));
    if ((SYM) != (-(1))) {
        _PM_CLASSTOINST_UNARCHIVER(SYM);
        return;
    };
    _PM_CLASSTOINST_AUTO(CLASSNAME);
}

func void _PM_UNARCHIVE() {
    var int I;
    var int V;
    var string STR;
    var int P;
    var int TIME;
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
    FREE(_PM_HEADPTR, 10094);
    _PM_HEADPTR = 0;
    _PM_CREATEFOREACHTABLE();
    MEM_INFO(CONCATSTRINGS("buffer used:     ", INTTOSTRING(_PM_DATAPOOLSIZE)));
    MEM_INFO(CONCATSTRINGS("buffer cleaned:  ", INTTOSTRING(_PM_FREEDSIZE)));
    MEM_INFO(CONCATSTRINGS("objects created: ", INTTOSTRING(_PM_DATAPOOLNUM)));
    MEM_INFO(CONCATSTRINGS("objects cleaned: ", INTTOSTRING(_PM_FREEDNUM)));
    MEM_INFO(CONCATSTRINGS("ellapsed time:   ", INTTOSTRING((MEM_GETSYSTEMTIME()) - (TIME))));
    MEM_INFO("===        Done        ===");
}

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

func void PM_SAVEFUNCID(var string NAME, var int FNC) {
    var ZCPAR_SYMBOL SYM;
    SYM = MEM_PTRTOINST(MEM_READINTARRAY(CURRSYMBOLTABLEADDRESS, FNC));
    PM_SAVESTRING(NAME, SYM.NAME);
}

func void _PM_SAVECLASSPTR(var string NAME, var int PTR, var string CLASSNAME, var int P) {
    var int NARR;
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

func void PM_SAVESTRINGARRAY(var string NAME, var int PTR, var int ELEMENTS) {
    _PM_SAVEARRAY(NAME, PTR, ELEMENTS, _PM_STRARR);
}

func int _PM_LOAD(var string OBJNAME, var int TYPE, var int PTR) {
    var _PM_SAVEOBJECT_ARR OA;
    var _PM_SAVEOBJECT_CLS OC;
    var _PM_SAVEOBJECT_INT OI;
    var _PM_SAVEOBJECT_STR OS;
    var int OBJ;
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

func void _PM_EMPTYFUNC_VOID() {
}

func void _PM_EMPTYFUNC_INT(var int I) {
}

func int PM_LOADFUNCID(var string NAME) {
    var int FUNCID;
    FUNCID = MEM_FINDPARSERSYMBOL(PM_LOADSTRING(NAME));
    if ((FUNCID) == (-(1))) {
        FUNCID = MEM_GETFUNCID(10385);
    };
    return FUNCID;
}

func int PM_LOADFUNCPTR(var string NAME) {
    return (PM_LOADFUNCOFFSET(NAME)) + (CURRPARSERSTACKADDRESS);
}

func int PM_LOADCLASSPTR(var string NAME) {
    return _PM_LOAD(NAME, _PM_CLASSPTR, 0);
}

func void PM_LOADARRAYTOPTR(var string NAME, var int DESTPTR) {
    DESTPTR = _PM_LOAD(NAME, _PM_INTARR, DESTPTR);
}

