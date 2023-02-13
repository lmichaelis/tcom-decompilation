func void _LIST_ERR(var string FNC, var string MSG) {
    var int S;
    S = SB_NEW();
    SB("List_");
    SB(FNC);
    SB(": ");
    SB(MSG);
    MEM_ERROR(SB_TOSTRING());
    SB_DESTROY();
}

func void _LIST_ERRNUM(var string FNC, var int N) {
    _LIST_ERR(FNC, CONCATSTRINGS("Nr must be at least ", INTTOSTRING(N)));
}

func int LIST_LENGTH(var int LIST) {
    var int I;
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("Length");
        return 0;
    };
    L = _^(LIST);
    I = 1;
    WHILE(L.NEXT);
    L = _^(L.NEXT);
    I += 1;
    END;
    return I;
}

func int LIST_HASLENGTH(var int LIST, var int LEN) {
    var int I;
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("Length");
        return 0;
    };
    if ((LEN) == (1)) {
        return 1;
    };
    L = _^(LIST);
    I = 1;
    WHILE(L.NEXT);
    L = _^(L.NEXT);
    I += 1;
    if ((I) == (LEN)) {
        return 1;
    };
    END;
    return 0;
}

func int LIST_NODES(var int LIST, var int NR) {
    var int I;
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("NodeS");
        return 0;
    };
    L = _^(LIST);
    I = 1;
    WHILE((I) < (NR));
    if (!(L.NEXT)) {
        _LIST_ERRLEN("NodeS");
        return 0;
    };
    L = _^(L.NEXT);
    I += 1;
    END;
    return _@(10456);
}

func void LIST_ADDFRONT(var int LIST, var int DATA) {
    var ZCLIST LN;
    var int NEXT;
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("AddFront");
        return;
    };
    L = _^(LIST);
    NEXT = L.NEXT;
    L.NEXT = CREATE(10663);
    LN = _^(L.NEXT);
    LN.NEXT = NEXT;
    LN.DATA = L.DATA;
    L.DATA = DATA;
}

func void LIST_DELETES(var int LIST, var int NR) {
    var ZCLISTSORT DEL;
    var ZCLISTSORT PREV;
    var int P;
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("DeleteS");
        return;
    };
    if ((NR) == (1)) {
        L = _^(LIST);
        L.DATA = 0;
        return;
    };
    if ((NR) < (1)) {
        _LIST_ERRNUM("DeleteS", 1);
        return;
    };
    P = LIST_NODES(LIST, (NR) - (1));
    if (!(P)) {
        return;
    };
    PREV = _^(P);
    if (!(PREV.NEXT)) {
        _LIST_ERRLEN("DeleteS");
        return;
    };
    DEL = _^(PREV.NEXT);
    PREV.NEXT = DEL.NEXT;
    MEM_FREE(_@(10491));
}

func void LIST_FORF(var int LIST, var func FNC) {
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("ForF");
        return;
    };
    WHILE(LIST);
    L = _^(LIST);
    LIST;
    MEM_CALL(10502);
    LIST = L.NEXT;
    END;
}

func void LIST_FORFS(var int LIST, var func FNC) {
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("ForFS");
        return;
    };
    WHILE(LIST);
    L = _^(LIST);
    LIST;
    MEM_CALL(10515);
    LIST = L.NEXT;
    END;
}

func int LIST_TOARRAY(var int LIST) {
    var ZCLIST L;
    var int A;
    var int N;
    if (!(LIST)) {
        _LIST_ERRPTR("ToArray");
        return 0;
    };
    N = LIST_LENGTH(LIST);
    A = MEM_ARRAYCREATE();
    if (!(N)) {
        return A;
    };
    WHILE(LIST);
    L = _^(LIST);
    MEM_ARRAYINSERT(A, L.DATA);
    LIST = L.NEXT;
    END;
    return A;
}

func int LIST_GET(var int LIST, var int NR) {
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("Get");
        return 0;
    };
    L = _^(LIST_NODE(LIST, NR));
    return L.DATA;
}

func int LIST_SETS(var int NODE, var int DATA) {
    var ZCLISTSORT L;
    if (!(NODE)) {
        _LIST_ERRPTR("SetS");
        return 0;
    };
    L = _^(NODE);
    L.DATA = DATA;
    return 0 /* !broken stack! */;
}

func void LIST_ADDOFFSET(var int LIST, var int OFFSET, var int DATA) {
    var ZCLIST NEXT;
    var int N;
    var ZCLIST PREV;
    var int P;
    if (!(LIST)) {
        _LIST_ERRPTR("AddOffset");
        return;
    };
    if ((OFFSET) <= (1)) {
        LIST_ADDFRONT(LIST, DATA);
        return;
    };
    P = LIST_NODE(LIST, (OFFSET) - (1));
    if (!(P)) {
        return;
    };
    PREV = _^(P);
    if (!(PREV.NEXT)) {
        _LIST_ERRLEN("AddOffset");
        return;
    };
    N = CREATE(10663);
    NEXT = _^(N);
    NEXT.DATA = DATA;
    NEXT.NEXT = PREV.NEXT;
    PREV.NEXT = N;
}

func void LIST_MOVEUP(var int LIST, var int OFFSET) {
    LIST_MOVEDOWN(LIST, (OFFSET) + (1));
}

func int LIST_CREATES(var int DATA) {
    var ZCLISTSORT L;
    var int PTR;
    PTR = CREATE(10665);
    L = _^(PTR);
    L.DATA = DATA;
    L.NEXT = 0;
    return PTR;
}

func void LIST_CONCATS(var int LIST0, var int LIST1) {
    var ZCLISTSORT L;
    if ((!(LIST0)) || (!(LIST1))) {
        _LIST_ERRPTR("ConcatS");
        return;
    };
    L = _^(LIST_ENDS(LIST0));
    L.NEXT = LIST1;
}

func int LIST_CMPDESCENDING(var int DATA1, var int DATA2) {
    return (DATA1) < (DATA2);
}

func void LIST_INSERTSORTED(var int LIST, var int DATA, var func COMPARE) {
    var ZCLIST LN;
    var int LPTR;
    var ZCLIST LNEW;
    var ZCLIST LP;
    if (!(LIST)) {
        _LIST_ERRPTR("InsertSorted");
        return;
    };
    LP = _^(LIST);
    LPTR = CREATE(10663);
    LNEW = _^(LPTR);
    if (LIST_COMPARE(LP.DATA, DATA, 10639)) {
        LNEW.NEXT = LP.NEXT;
        LP.NEXT = LPTR;
        LNEW.DATA = LP.DATA;
        LP.DATA = DATA;
        return;
    };
    WHILE(LP.NEXT);
    LN = _^(LP.NEXT);
    if (LIST_COMPARE(LN.DATA, DATA, 10639)) {
        LNEW.NEXT = LP.NEXT;
        LP.NEXT = LPTR;
        LNEW.DATA = DATA;
        return;
    };
    LP = _^(LP.NEXT);
    END;
    LP.NEXT = LPTR;
    LNEW.DATA = DATA;
}

