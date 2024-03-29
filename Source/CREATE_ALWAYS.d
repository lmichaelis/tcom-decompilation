const int CREATE_ALWAYS = 2;
const int OPEN_EXISTING = 3;
const int GENERIC_ALL = 1073741824;
const int GENERIC_READ = -2147483648;
const int FILE_SHARE_READ = 1;
const int FILE_SHARE_WRITE = 2;
const int FILE_SHARE_DELETE = 4;
const int FILE_ATTRIBUTE_NORMAL = 128;
func int WIN_GETLASTERROR() {
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL__STDCALL(GETLASTERROR);
        CALL = CALL_END();
    };
    return CALL_RETVALASINT();
}

func int WIN_CREATEFILE(var string LPFILENAME, var int DWDESIREDACCESS, var int DWSHAREMODE, var int LPSECURITYATTRIBUTES, var int DWCREATIONDISPOSITION, var int DWFLAGSANDATTRIBUTES, var int HTEMPLATEFILE) {
    var int CALL;
    var ZSTRING ZSTR;
    ZSTR = MEM_PTRTOINST(_@S(LPFILENAME));
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(HTEMPLATEFILE));
        CALL_INTPARAM(_@(DWFLAGSANDATTRIBUTES));
        CALL_INTPARAM(_@(DWCREATIONDISPOSITION));
        CALL_INTPARAM(_@(LPSECURITYATTRIBUTES));
        CALL_INTPARAM(_@(DWSHAREMODE));
        CALL_INTPARAM(_@(DWDESIREDACCESS));
        CALL_PTRPARAM(_@(ZSTR.PTR));
        CALL__STDCALL(CREATEFILEA);
        CALL = CALL_END();
    };
    return CALL_RETVALASPTR();
}

func void WIN_WRITEFILE(var int HFILE, var int LPBUFFER, var int NNUMBEROFBYTESTOWRITE, var int LPNUMBEROFBYTESWRITTEN, var int LPOVERLAPPED) {
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(LPOVERLAPPED));
        CALL_INTPARAM(_@(LPNUMBEROFBYTESWRITTEN));
        CALL_INTPARAM(_@(NNUMBEROFBYTESTOWRITE));
        CALL_INTPARAM(_@(LPBUFFER));
        CALL_INTPARAM(_@(HFILE));
        CALL__STDCALL(WRITEFILE);
        CALL = CALL_END();
    };
}

func void WIN_READFILE(var int HFILE, var int LPBUFFER, var int NNUMBEROFBYTESTOREAD, var int LPNUMBEROFBYTESREAD, var int LPOVERLAPPED) {
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(LPOVERLAPPED));
        CALL_INTPARAM(_@(LPNUMBEROFBYTESREAD));
        CALL_INTPARAM(_@(NNUMBEROFBYTESTOREAD));
        CALL_INTPARAM(_@(LPBUFFER));
        CALL_INTPARAM(_@(HFILE));
        CALL__STDCALL(READFILE);
        CALL = CALL_END();
    };
}

func void WIN_CLOSEHANDLE(var int HOBJECT) {
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(HOBJECT));
        CALL__STDCALL(CLOSEHANDLE);
        CALL = CALL_END();
    };
}

func int WIN_GETFILESIZE(var int HFILE, var int LPFILESIZEHIGH) {
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(LPFILESIZEHIGH));
        CALL_INTPARAM(_@(HFILE));
        CALL__STDCALL(GETFILESIZE);
        CALL = CALL_END();
    };
    return CALL_RETVALASINT();
}

const int _BIN_BUFFERLENGTH = 32768;
var int _BIN_OPEN;
var int _BIN_MODE;
var int _BIN_CRSR;
var string _BIN_PREFIX;
const int _BIN_CCNT = 0;
const int _BIN_CLEN = 0;
func void _BIN_ERR(var string MSG) {
    var int R;
    R = MEM_MESSAGEBOX(MSG, _BIN_PREFIX, (MB_OK) | (MB_ICONERROR));
}

func int _BIN_NRUNNING() {
    if (_BIN_OPEN) {
        _BIN_ERR("Der aktuelle Stream muss zuerst geschlossen werden bevor ein weiterer ge�ffnet werden kann.");
        return 0;
    };
    return 1;
}

func int _BIN_RUNNING() {
    if (!(_BIN_OPEN)) {
        _BIN_ERR("Es ist kein Stream aktiv.");
        return 0;
    };
    return 1;
}

func int _BIN_NMODE(var int M) {
    if ((_BIN_MODE) != (M)) {
        _BIN_ERR("Falscher Modus.");
        return 0;
    };
    return 1;
}

func void _BIN_STREAMLEN(var int NLEN) {
    var int POS;
    var int LEN;
    NLEN += _BIN_CRSR;
    if ((NLEN) >= (_BIN_CLEN)) {
        LEN = _BIN_CLEN;
        POS = MEM_STACKPOS.POSITION;
        if ((NLEN) >= (LEN)) {
            LEN = (LEN) << (1);
            POS = MEM_STACKPOS.POSITION;
        };
        _BIN_CCNT = MEM_REALLOC(_BIN_CCNT, _BIN_CLEN, LEN);
        _BIN_CLEN = LEN;
    };
}

func int _BIN_EOF(var int LEN) {
    if (((_BIN_CRSR) + (LEN)) > (_BIN_CLEN)) {
        _BIN_ERR("Das Ende des Streams wurde bereits erreicht.");
        return 1;
    };
    return 0;
}

func int BW_NEWFILE(var string FILE) {
    var string ERR;
    _BIN_PREFIX = "BW_NewFile";
    if (!(_BIN_NRUNNING())) {
        return 0;
    };
    _BIN_OPEN = WIN_CREATEFILE(FILE, GENERIC_ALL, ((FILE_SHARE_READ) | (FILE_SHARE_WRITE)) | (FILE_SHARE_DELETE), 0, CREATE_ALWAYS, FILE_ATTRIBUTE_NORMAL, 0);
    if ((_BIN_OPEN) == (-(1))) {
        _BIN_OPEN = 0;
        ERR = CONCATSTRINGS(FILE, " - Datei konnte nicht erstellt werden. Fehlercode ");
        _BIN_ERR(CONCATSTRINGS(ERR, INTTOSTRING(WIN_GETLASTERROR())));
        return 0;
    };
    if (!(_BIN_CCNT)) {
        _BIN_CLEN = _BIN_BUFFERLENGTH;
        _BIN_CCNT = MEM_ALLOC(_BIN_CLEN);
    };
    _BIN_MODE = 0;
    _BIN_CRSR = 0;
    return 1;
}

func void BW(var int DATA, var int LENGTH) {
    _BIN_PREFIX = "BW";
    if ((!(_BIN_RUNNING())) || (!(_BIN_NMODE(0)))) {
        return;
    };
    if ((LENGTH) < (1)) {
        LENGTH = 1;
    };
    if ((LENGTH) > (4)) {
        LENGTH = 4;
    };
    _BIN_STREAMLEN(4);
    MEM_WRITEINT((_BIN_CCNT) + (_BIN_CRSR), DATA);
    _BIN_CRSR += LENGTH;
}

func void BW_INT(var int DATA) {
    BW(DATA, 4);
}

func void BW_BYTE(var int DATA) {
    BW(DATA, 1);
}

func void BW_CHAR(var string DATA) {
    BW(STR_GETCHARAT(DATA, 0), 1);
}

func void BW_TEXT(var string DATA) {
    var ZSTRING ZSTR;
    _BIN_PREFIX = "BW_Text";
    if ((!(_BIN_RUNNING())) || (!(_BIN_NMODE(0)))) {
        return;
    };
    ZSTR = MEM_PTRTOINST(_@S(DATA));
    if (!(ZSTR.LEN)) {
        return;
    };
    _BIN_STREAMLEN((ZSTR.LEN) + (4));
    MEM_COPYBYTES(ZSTR.PTR, (_BIN_CCNT) + (_BIN_CRSR), ZSTR.LEN);
    _BIN_CRSR += ZSTR.LEN;
}

func void BW_STRING(var string DATA) {
    _BIN_PREFIX = "BW_String";
    if ((!(_BIN_RUNNING())) || (!(_BIN_NMODE(0)))) {
        return;
    };
    BW(STR_LEN(DATA), 4);
    BW_TEXT(DATA);
}

func void BW_BYTES(var int DATAPTR, var int LENGTH) {
    _BIN_PREFIX = "BW_Struct";
    if ((((!(_BIN_RUNNING())) || (!(_BIN_NMODE(0)))) || (!(LENGTH))) || (!(DATAPTR))) {
        return;
    };
    _BIN_STREAMLEN(LENGTH);
    MEM_COPYBYTES(DATAPTR, (_BIN_CCNT) + (_BIN_CRSR), LENGTH);
    _BIN_CRSR += LENGTH;
}

func void BW_NEXTLINE() {
    BW(2573, 2);
}

func void BW_CLOSE() {
    var int PTR;
    _BIN_PREFIX = "BW_Close";
    if ((!(_BIN_RUNNING())) || (!(_BIN_NMODE(0)))) {
        return;
    };
    WIN_WRITEFILE(_BIN_OPEN, _BIN_CCNT, _BIN_CRSR, _@(PTR), 0);
    WIN_CLOSEHANDLE(_BIN_OPEN);
    _BIN_OPEN = 0;
}

func int BR_OPENFILE(var string FILE) {
    var int PTR;
    var int LEN;
    var string ERR;
    _BIN_PREFIX = "BR_OpenFile";
    if (!(_BIN_NRUNNING())) {
        return 0;
    };
    _BIN_OPEN = WIN_CREATEFILE(FILE, GENERIC_READ, ((FILE_SHARE_READ) | (FILE_SHARE_WRITE)) | (FILE_SHARE_DELETE), 0, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, 0);
    if ((_BIN_OPEN) == (-(1))) {
        _BIN_OPEN = 0;
        ERR = CONCATSTRINGS(FILE, " - Datei konnte nicht ge�ffnet werden. Fehlercode ");
        _BIN_ERR(CONCATSTRINGS(ERR, INTTOSTRING(WIN_GETLASTERROR())));
        return 0;
    };
    LEN = WIN_GETFILESIZE(_BIN_OPEN, 0);
    if ((LEN) > (_BIN_CLEN)) {
        if (_BIN_CCNT) {
            MEM_FREE(_BIN_CCNT);
        };
        _BIN_CCNT = MEM_ALLOC(LEN);
        _BIN_CLEN = LEN;
    };
    PTR = MEM_ALLOC(4);
    WIN_READFILE(_BIN_OPEN, _BIN_CCNT, LEN, PTR, 0);
    MEM_FREE(PTR);
    WIN_CLOSEHANDLE(_BIN_OPEN);
    _BIN_MODE = 1;
    _BIN_CRSR = 0;
    return 1;
}

func int BR(var int LENGTH) {
    var int B;
    _BIN_PREFIX = "BR";
    if ((!(_BIN_RUNNING())) || (!(_BIN_NMODE(1)))) {
        return 0;
    };
    if ((LENGTH) < (1)) {
        LENGTH = 1;
    };
    if ((LENGTH) > (4)) {
        LENGTH = 4;
    };
    if (_BIN_EOF(LENGTH)) {
        return 0;
    };
    B = MEM_READINT((_BIN_CCNT) + (_BIN_CRSR));
    if ((LENGTH) < (4)) {
        B = (B) & (((256) << (((LENGTH) - (1)) << (3))) - (1));
    };
    _BIN_CRSR += LENGTH;
    return B;
}

func int BR_INT() {
    return BR(4);
}

func int BR_BYTE() {
    return BR(1);
}

func string BR_CHAR() {
    var ZSTRING ZSTR;
    var string STR;
    STR = "";
    ZSTR = MEM_PTRTOINST(_@S(STR));
    ZSTR.PTR = (MEM_ALLOC(3)) + (1);
    MEM_WRITEBYTE(ZSTR.PTR, BR(1));
    ZSTR.LEN = 1;
    ZSTR.RES = 1;
    return STR;
}

func string BR_TEXT(var int LEN) {
    var ZSTRING ZSTR;
    var string STR;
    _BIN_PREFIX = "BR_Text";
    if ((!(_BIN_RUNNING())) || (!(_BIN_NMODE(1)))) {
        return "";
    };
    STR = "";
    ZSTR = MEM_PTRTOINST(_@S(STR));
    ZSTR.PTR = (MEM_ALLOC((LEN) + (2))) + (1);
    MEM_COPYBYTES((_BIN_CCNT) + (_BIN_CRSR), ZSTR.PTR, LEN);
    _BIN_CRSR += LEN;
    ZSTR.LEN = LEN;
    ZSTR.RES = LEN;
    return STR;
}

func string BR_TEXTLINE() {
    var string STR;
    var int E;
    var int P;
    var int S;
    S = _BIN_CRSR;
    P = MEM_STACKPOS.POSITION;
    if ((BR(2)) != (2573)) {
        _BIN_CRSR -= 1;
        MEM_STACKPOS.POSITION = P;
    };
    E = _BIN_CRSR;
    _BIN_CRSR = S;
    STR = BR_TEXT(((E) - (S)) - (2));
    _BIN_CRSR = E;
    return STR;
}

func void BR_NEXTLINE() {
    var int P;
    P = MEM_STACKPOS.POSITION;
    if ((BR(2)) != (2573)) {
        _BIN_CRSR -= 1;
        MEM_STACKPOS.POSITION = P;
    };
}

func string BR_STRING() {
    return BR_TEXT(BR_INT());
}

func int BR_BYTES(var int LENGTH) {
    var int PTR;
    if ((LENGTH) <= (4)) {
        PTR = MEM_ALLOC(4);
        MEM_WRITEINT(PTR, BR(LENGTH));
        return PTR;
    };
    _BIN_PREFIX = "BR_Bytes";
    if ((!(_BIN_RUNNING())) || (!(_BIN_NMODE(1)))) {
        return 0;
    };
    if (((_BIN_CRSR) + (LENGTH)) > (_BIN_CLEN)) {
        _BIN_ERR("Die angegebene Struktur ist in dieser Datei nicht vollst�ndig enthalten.");
        return 0;
    };
    PTR = MEM_ALLOC(LENGTH);
    MEM_COPYBYTES((_BIN_CCNT) + (_BIN_CRSR), PTR, LENGTH);
    _BIN_CRSR += LENGTH;
    return PTR;
}

func void BR_CLOSE() {
    _BIN_PREFIX = "BR_Close";
    if ((!(_BIN_RUNNING())) || (!(_BIN_NMODE(1)))) {
        return;
    };
    _BIN_OPEN = 0;
}

