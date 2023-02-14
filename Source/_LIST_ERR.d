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

func void _LIST_ERRPTR(var string FNC) {
    _LIST_ERR(FNC, "No valid pointer");
}

func void _LIST_ERRLEN(var string FNC) {
    _LIST_ERR(FNC, "Nr is greater than the list");
}

func void _LIST_ERRNUM(var string FNC, var int N) {
    _LIST_ERR(FNC, CONCATSTRINGS("Nr must be at least ", INTTOSTRING(N)));
}

func int LIST_END(var int LIST) {
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("End");
        return 0;
    };
    L = _^(LIST);
    WHILE(L.NEXT);
    L = _^(L.NEXT);
    END;
    return _@(10426);
}

func int LIST_ENDS(var int LIST) {
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("EndS");
        return 0;
    };
    L = _^(LIST);
    WHILE(L.NEXT);
    L = _^(L.NEXT);
    END;
    return _@(10429);
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

func int LIST_LENGTHS(var int LIST) {
    var int I;
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("LengthS");
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

func int LIST_HASLENGTHS(var int LIST, var int LEN) {
    var int I;
    var ZCLISTSORT L;
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

func int LIST_NODE(var int LIST, var int NR) {
    var int I;
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("Node");
        return 0;
    };
    L = _^(LIST);
    I = 1;
    WHILE((I) < (NR));
    if (!(L.NEXT)) {
        _LIST_ERRLEN("Node");
        return 0;
    };
    LIST = L.NEXT;
    L = _^(LIST);
    I += 1;
    END;
    return LIST;
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

func void LIST_ADD(var int LIST, var int DATA) {
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("Add");
        return;
    };
    L = _^(LIST_END(LIST));
    L.NEXT = CREATE(10663);
    L = _^(L.NEXT);
    L.DATA = DATA;
}

func void LIST_ADDS(var int LIST, var int DATA) {
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("AddS");
        return;
    };
    L = _^(LIST_ENDS(LIST));
    L.NEXT = CREATE(10665);
    L = _^(L.NEXT);
    L.DATA = DATA;
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

func void LIST_ADDFRONTS(var int LIST, var int DATA) {
    var ZCLISTSORT LN;
    var int NEXT;
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("AddFrontS");
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

func void LIST_DELETE(var int LIST, var int NR) {
    var ZCLIST DEL;
    var ZCLIST PREV;
    var int P;
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("Delete");
        return;
    };
    if ((NR) == (1)) {
        L = _^(LIST);
        L.DATA = 0;
        return;
    };
    if ((NR) < (1)) {
        _LIST_ERRNUM("Delete", 1);
        return;
    };
    P = LIST_NODE(LIST, (NR) - (1));
    if (!(P)) {
        return;
    };
    PREV = _^(P);
    if (!(PREV.NEXT)) {
        _LIST_ERRLEN("Delete");
        return;
    };
    DEL = _^(PREV.NEXT);
    PREV.NEXT = DEL.NEXT;
    MEM_FREE(_@(10484));
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

func void LIST_DESTROY(var int LIST) {
    var int N;
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("Destroy");
        return;
    };
    L = _^(LIST);
    WHILE(L.NEXT);
    N = L.NEXT;
    MEM_FREE(_@(10494));
    L = _^(N);
    END;
}

func void LIST_DESTROYS(var int LIST) {
    var int N;
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("DestroyS");
        return;
    };
    L = _^(LIST);
    WHILE(L.NEXT);
    N = L.NEXT;
    MEM_FREE(_@(10498));
    L = _^(N);
    END;
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

func void LIST_FORI(var int LIST, var int FUNCID) {
    var ZCLIST L;
    if (!(LIST)) {
        _LIST_ERRPTR("ForI");
        return;
    };
    WHILE(LIST);
    L = _^(LIST);
    LIST;
    MEM_CALLBYID(FUNCID);
    LIST = L.NEXT;
    END;
}

func void LIST_FOR(var int LIST, var string FNC) {
    var ZCLIST L;
    var int F;
    if (!(LIST)) {
        _LIST_ERRPTR("For");
        return;
    };
    F = MEM_FINDPARSERSYMBOL(STR_UPPER(FNC));
    WHILE(LIST);
    L = _^(LIST);
    LIST;
    MEM_CALLBYID(F);
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

func void LIST_FORIS(var int LIST, var int FUNCID) {
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("ForIS");
        return;
    };
    WHILE(LIST);
    L = _^(LIST);
    LIST;
    MEM_CALLBYID(FUNCID);
    LIST = L.NEXT;
    END;
}

func void LIST_FORS(var int LIST, var string FNC) {
    var ZCLISTSORT L;
    var int F;
    if (!(LIST)) {
        _LIST_ERRPTR("ForS");
        return;
    };
    F = MEM_FINDPARSERSYMBOL(STR_UPPER(FNC));
    WHILE(LIST);
    L = _^(LIST);
    LIST;
    MEM_CALLBYID(F);
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

func int LIST_TOARRAYS(var int LIST) {
    var ZCLISTSORT L;
    var int A;
    var int N;
    if (!(LIST)) {
        _LIST_ERRPTR("ToArrayS");
        return 0;
    };
    N = LIST_LENGTHS(LIST);
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

func int LIST_GETS(var int LIST, var int NR) {
    var ZCLISTSORT L;
    if (!(LIST)) {
        _LIST_ERRPTR("GetS");
        return 0;
    };
    L = _^(LIST_NODES(LIST, NR));
    return L.DATA;
}

func int LIST_SET(var int NODE, var int DATA) {
    var ZCLIST L;
    if (!(NODE)) {
        _LIST_ERRPTR("Set");
        return 0;
    };
    L = _^(NODE);
    L.DATA = DATA;
    return 0 /* !broken stack! */;
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

func int LIST_CONTAINS(var int LIST, var int DATA) {
    var ZCLIST L;
    var int I;
    if (!(LIST)) {
        _LIST_ERRPTR("Contains");
        return 0;
    };
    I = 1;
    WHILE(LIST);
    L = _^(LIST);
    if ((L.DATA) == (DATA)) {
        return I;
    };
    I += 1;
    LIST = L.NEXT;
    END;
    return 0;
}

func int LIST_CONTAINSS(var int LIST, var int DATA) {
    var ZCLISTSORT L;
    var int I;
    if (!(LIST)) {
        _LIST_ERRPTR("ContainsS");
        return 0;
    };
    I = 1;
    WHILE(LIST);
    L = _^(LIST);
    if ((L.DATA) == (DATA)) {
        return I;
    };
    I += 1;
    LIST = L.NEXT;
    END;
    return 0;
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

func void LIST_ADDOFFSETS(var int LIST, var int OFFSET, var int DATA) {
    var ZCLISTSORT NEXT;
    var int N;
    var ZCLISTSORT PREV;
    var int P;
    if (!(LIST)) {
        _LIST_ERRPTR("AddOffsetS");
        return;
    };
    if ((OFFSET) <= (1)) {
        LIST_ADDFRONTS(LIST, DATA);
        return;
    };
    P = LIST_NODES(LIST, (OFFSET) - (1));
    if (!(P)) {
        return;
    };
    PREV = _^(P);
    if (!(PREV.NEXT)) {
        _LIST_ERRLEN("AddOffsetS");
        return;
    };
    N = CREATE(10665);
    NEXT = _^(N);
    NEXT.DATA = DATA;
    NEXT.NEXT = PREV.NEXT;
    PREV.NEXT = N;
}

func void LIST_MOVEDOWN(var int LIST, var int OFFSET) {
    var ZCLIST ZL2;
    var int L2;
    var int L1;
    var ZCLIST ZL0;
    var ZCLIST ZL1;
    var int L0;
    if (!(LIST)) {
        _LIST_ERRPTR("MoveDown");
        return;
    };
    if ((OFFSET) <= (2)) {
        _LIST_ERRNUM("MoveDown", 3);
        return;
    };
    L0 = LIST_NODE(LIST, (OFFSET) - (2));
    if (!(L0)) {
        return;
    };
    ZL0 = _^(L0);
    if (!(ZL0.NEXT)) {
        _LIST_ERRLEN("MoveDown");
        return;
    };
    L1 = ZL0.NEXT;
    ZL1 = _^(L1);
    if (!(ZL1.NEXT)) {
        _LIST_ERRLEN("MoveDown");
        return;
    };
    L2 = ZL1.NEXT;
    ZL2 = _^(L2);
    ZL0.NEXT = L2;
    ZL1.NEXT = ZL2.NEXT;
    ZL2.NEXT = L1;
}

func void LIST_MOVEDOWNS(var int LIST, var int OFFSET) {
    var ZCLISTSORT ZL2;
    var int L2;
    var int L1;
    var ZCLISTSORT ZL0;
    var ZCLISTSORT ZL1;
    var int L0;
    if (!(LIST)) {
        _LIST_ERRPTR("MoveDownS");
        return;
    };
    if ((OFFSET) <= (2)) {
        _LIST_ERRNUM("MoveDownS", 3);
        return;
    };
    L0 = LIST_NODES(LIST, (OFFSET) - (2));
    if (!(L0)) {
        return;
    };
    ZL0 = _^(L0);
    if (!(ZL0.NEXT)) {
        _LIST_ERRLEN("MoveDownS");
        return;
    };
    L1 = ZL0.NEXT;
    ZL1 = _^(L1);
    if (!(ZL1.NEXT)) {
        _LIST_ERRLEN("MoveDownS");
        return;
    };
    L2 = ZL1.NEXT;
    ZL2 = _^(L2);
    ZL0.NEXT = L2;
    ZL1.NEXT = ZL2.NEXT;
    ZL2.NEXT = L1;
}

func void LIST_MOVEUP(var int LIST, var int OFFSET) {
    LIST_MOVEDOWN(LIST, (OFFSET) + (1));
}

func void LIST_MOVEUPS(var int LIST, var int OFFSET) {
    LIST_MOVEDOWNS(LIST, (OFFSET) + (1));
}

func int LIST_CREATE(var int DATA) {
    var ZCLIST L;
    var int PTR;
    PTR = CREATE(10663);
    L = _^(PTR);
    L.DATA = DATA;
    L.NEXT = 0;
    return PTR;
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

func void LIST_CONCAT(var int LIST0, var int LIST1) {
    var ZCLIST L;
    if ((!(LIST0)) || (!(LIST1))) {
        _LIST_ERRPTR("Concat");
        return;
    };
    L = _^(LIST_END(LIST0));
    L.NEXT = LIST1;
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

func int LIST_COMPARE(var int DATA1, var int DATA2, var func COMPARE) {
    DATA2;
    MEM_CALL(10621);
    return DATA1;
}

func int LIST_CMPASCENDING(var int DATA1, var int DATA2) {
    return (DATA1) > (DATA2);
}

func int LIST_CMPDESCENDING(var int DATA1, var int DATA2) {
    return (DATA1) < (DATA2);
}

func int LIST_CMPASCENDINGUNSIGNED(var int DATA1, var int DATA2) {
    var int LT;
    var int GT;
    GT = (DATA1) & (~(DATA2));
    LT = (~(DATA1)) & (DATA2);
    LT = (LT) | ((LT) >> (1));
    LT = (LT) | ((LT) >> (2));
    LT = (LT) | ((LT) >> (4));
    LT = (LT) | ((LT) >> (8));
    LT = (LT) | ((LT) >> (16));
    return !(!((GT) & (~(LT))));
}

func int LIST_CMPDESCENDINGUNSIGNED(var int DATA1, var int DATA2) {
    return LIST_CMPASCENDINGUNSIGNED(DATA2, DATA1);
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

func void LIST_INSERTSORTEDS(var int LIST, var int DATA, var func COMPARE) {
    var ZCLISTSORT LN;
    var int LPTR;
    var ZCLISTSORT LNEW;
    var ZCLISTSORT LP;
    if (!(LIST)) {
        _LIST_ERRPTR("InsertSortedS");
        return;
    };
    LP = _^(LIST);
    LPTR = CREATE(10665);
    LNEW = _^(LPTR);
    if (LIST_COMPARE(LP.DATA, DATA, 10647)) {
        LNEW.NEXT = LP.NEXT;
        LP.NEXT = LPTR;
        LNEW.DATA = LP.DATA;
        LP.DATA = DATA;
        return;
    };
    WHILE(LP.NEXT);
    LN = _^(LP.NEXT);
    if (LIST_COMPARE(LN.DATA, DATA, 10647)) {
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

