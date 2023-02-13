instance LCEVENT(ZCARRAY);
func void LCEVENT_ARCHIVER(var ZCARRAY THIS) {
    var int I;
    I = 0;
    WHILE((I) < (THIS.NUMINARRAY));
    PM_SAVEFUNCID(CONCATSTRINGS("handler", INTTOSTRING(I)), MEM_READINTARRAY(THIS.ARRAY, I));
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

func int EVENTPTR_EMPTY(var int PTR) {
    return (MEM_ARRAYSIZE(PTR)) <= (0);
}

func int EVENTPTR_HASI(var int PTR, var int ID) {
    return (MEM_ARRAYINDEXOF(PTR, ID)) >= (0);
}

func void EVENTPTR_ADDI(var int PTR, var int ID) {
    MEM_ARRAYINSERT(PTR, ID);
}

func void EVENTPTR_ADDONCEI(var int PTR, var int ID) {
    if (!(EVENTPTR_HASI(PTR, ID))) {
        EVENTPTR_ADDI(PTR, ID);
    };
}

func void EVENTPTR_REMOVEI(var int PTR, var int ID) {
    MEM_ARRAYREMOVEVALUEONCE(PTR, ID);
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

