instance LCEVENT(ZCARRAY);
func void LCEVENT_ARCHIVER(var ZCARRAY THIS) {
    var int I;
    I = 0;
    WHILE((I) < (THIS.NUMINARRAY));
    PM_SAVEFUNCID(CONCATSTRINGS("handler", INTTOSTRING(I)), MEM_READINTARRAY(THIS.ARRAY, I));
    I += 1;
    END;
}

func void LCEVENT_UNARCHIVER(var ZCARRAY ARR) {
    var int THIS;
    var string C;
    var int I;
    I = 0;
    THIS = MEM_INSTTOPTR(10693);
    WHILE(TRUE);
    C = CONCATSTRINGS("handler", INTTOSTRING(I));
    if (!(PM_EXISTS(C))) {
        return;
    };
    MEM_ARRAYINSERT(THIS, PM_LOADFUNCID(C));
    I += 1;
    END;
}

func int EVENTPTR_CREATE() {
    return CREATE(10688);
}

func int EVENT_CREATE() {
    return NEW(10688);
}

func void EVENTPTR_DELETE(var int PTR) {
    FREE(PTR, 10688);
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
    return EVENTPTR_HASI(PTR, MEM_GETFUNCID(10712));
}

func int EVENT_HAS(var int H, var func HANDLER) {
    return EVENTPTR_HASI(GETPTR(H), MEM_GETFUNCID(10715));
}

func void EVENTPTR_ADDI(var int PTR, var int ID) {
    MEM_ARRAYINSERT(PTR, ID);
}

func void EVENTPTR_ADD(var int PTR, var func HANDLER) {
    EVENTPTR_ADDI(PTR, MEM_GETFUNCID(10721));
}

func void EVENT_ADD(var int H, var func HANDLER) {
    EVENTPTR_ADDI(GETPTR(H), MEM_GETFUNCID(10724));
}

func void EVENTPTR_ADDONCEI(var int PTR, var int ID) {
    if (!(EVENTPTR_HASI(PTR, ID))) {
        EVENTPTR_ADDI(PTR, ID);
    };
}

func void EVENTPTR_ADDONCE(var int H, var func HANDLER) {
    EVENTPTR_ADDONCEI(GETPTR(H), MEM_GETFUNCID(10730));
}

func void EVENT_ADDONCE(var int H, var func HANDLER) {
    EVENTPTR_ADDONCEI(GETPTR(H), MEM_GETFUNCID(10733));
}

func void EVENTPTR_REMOVEI(var int PTR, var int ID) {
    MEM_ARRAYREMOVEVALUEONCE(PTR, ID);
}

func void EVENTPTR_REMOVE(var int H, var func HANDLER) {
    EVENTPTR_REMOVEI(GETPTR(H), MEM_GETFUNCID(10739));
}

func void EVENT_REMOVE(var int H, var func HANDLER) {
    EVENTPTR_REMOVEI(GETPTR(H), MEM_GETFUNCID(10742));
}

func void EVENTPTR_EXECUTE(var int PTR, var int D) {
    var int I;
    var ZCARRAY A;
    A = _^(PTR);
    I = 0;
    WHILE((I) < (A.NUMINARRAY));
    D;
    MEM_CALLBYID(MEM_READINTARRAY(A.ARRAY, I));
    I += 1;
    END;
}

func void EVENT_EXECUTE(var int H, var int D) {
    EVENTPTR_EXECUTE(GETPTR(H), D);
}

