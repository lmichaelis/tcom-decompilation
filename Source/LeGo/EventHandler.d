instance LCEVENT(ZCARRAY)
func void LCEVENT_ARCHIVER(var ZCARRAY THIS) {
    I = 0;
    WHILE((I) < (THIS.NUMINARRAY));
    PM_SAVEFUNCID(CONCATSTRINGS("handler", INTTOSTRING(I)), MEM_READINTARRAY(THIS.ARRAY, I));
    I += 1;
    END;
}

var int LCEVENT_ARCHIVER.I = 0;
func void LCEVENT_UNARCHIVER(var ZCARRAY ARR) {
    I = 0;
    THIS = MEM_INSTTOPTR(0x29c5);
    WHILE(TRUE);
    C = CONCATSTRINGS("handler", INTTOSTRING(I));
    if (!(PM_EXISTS(C))) {
        return;
    };
    MEM_ARRAYINSERT(THIS, PM_LOADFUNCID(C));
    I += 1;
    END;
}

var int LCEVENT_UNARCHIVER.I = 0;
var int LCEVENT_UNARCHIVER.THIS = 0;
var string LCEVENT_UNARCHIVER.C = "";
func int EVENTPTR_CREATE() {
    return CREATE(0x29c0);
}

func int EVENT_CREATE() {
    return NEW(0x29c0);
}

func void EVENTPTR_DELETE(var int PTR) {
    FREE(PTR, 0x29c0);
}

func void EVENT_DELETE(var int H) {
    DELETE(H);
}

func int EVENTPTR_EMPTY(var int PTR) {
    return (MEM_ARRAYSIZE(PTR)) <= (0);
}

func int EVENT_EMPTY(var int H) {
    return EVENTPTR_EMPTY(GETPTR(H));
}

func int EVENTPTR_HASI(var int PTR, var int ID) {
    return (MEM_ARRAYINDEXOF(PTR, ID)) >= (0);
}

func int EVENTPTR_HAS(var int PTR, var func HANDLER) {
    return EVENTPTR_HASI(PTR, MEM_GETFUNCID(0x29d8));
}

func int EVENT_HAS(var int H, var func HANDLER) {
    return EVENTPTR_HASI(GETPTR(H), MEM_GETFUNCID(0x29db));
}

func void EVENTPTR_ADDI(var int PTR, var int ID) {
    MEM_ARRAYINSERT(PTR, ID);
}

func void EVENTPTR_ADD(var int PTR, var func HANDLER) {
    EVENTPTR_ADDI(PTR, MEM_GETFUNCID(0x29e1));
}

func void EVENT_ADD(var int H, var func HANDLER) {
    EVENTPTR_ADDI(GETPTR(H), MEM_GETFUNCID(0x29e4));
}

func void EVENTPTR_ADDONCEI(var int PTR, var int ID) {
    if (!(EVENTPTR_HASI(PTR, ID))) {
        EVENTPTR_ADDI(PTR, ID);
    };
}

func void EVENTPTR_ADDONCE(var int H, var func HANDLER) {
    EVENTPTR_ADDONCEI(GETPTR(H), MEM_GETFUNCID(0x29ea));
}

func void EVENT_ADDONCE(var int H, var func HANDLER) {
    EVENTPTR_ADDONCEI(GETPTR(H), MEM_GETFUNCID(0x29ed));
}

func void EVENTPTR_REMOVEI(var int PTR, var int ID) {
    MEM_ARRAYREMOVEVALUEONCE(PTR, ID);
}

func void EVENTPTR_REMOVE(var int H, var func HANDLER) {
    EVENTPTR_REMOVEI(GETPTR(H), MEM_GETFUNCID(0x29f3));
}

func void EVENT_REMOVE(var int H, var func HANDLER) {
    EVENTPTR_REMOVEI(GETPTR(H), MEM_GETFUNCID(0x29f6));
}

func void EVENTPTR_EXECUTE(var int PTR, var int D) {
    A = _^(PTR);
    I = 0;
    WHILE((I) < (A.NUMINARRAY));
    D;
    MEM_CALLBYID(MEM_READINTARRAY(A.ARRAY, I));
    I += 1;
    END;
}

instance EVENTPTR_EXECUTE.A(ZCARRAY)
var int EVENTPTR_EXECUTE.I = 0;
func void EVENT_EXECUTE(var int H, var int D) {
    EVENTPTR_EXECUTE(GETPTR(H), D);
}

