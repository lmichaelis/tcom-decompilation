func void _LIST_ERR(var string FNC, var string MSG) {
    S = SB_NEW();
    SB("List_");
    SB(FNC);
    SB(": ");
    SB(MSG);
    MEM_ERROR(SB_TOSTRING());
    SB_DESTROY();
}

var int _LIST_ERR.S = 0;
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
    if (!(LIST)) {
        _LIST_ERRPTR("End");
        return 0;
    };
    L = _^(LIST);
    WHILE(L.NEXT);
    L = _^(L.NEXT);
    END;
    return _@(0x28ba);
}

instance LIST_END.L(ZCLIST)
func int LIST_ENDS(var int LIST) {
    if (!(LIST)) {
        _LIST_ERRPTR("EndS");
        return 0;
    };
    L = _^(LIST);
    WHILE(L.NEXT);
    L = _^(L.NEXT);
    END;
    return _@(0x28bd);
}

instance LIST_ENDS.L(ZCLISTSORT)
func int LIST_LENGTH(var int LIST) {
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

instance LIST_LENGTH.L(ZCLIST)
var int LIST_LENGTH.I = 0;
func int LIST_LENGTHS(var int LIST) {
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

instance LIST_LENGTHS.L(ZCLISTSORT)
var int LIST_LENGTHS.I = 0;
func int LIST_HASLENGTH(var int LIST, var int LEN) {
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

instance LIST_HASLENGTH.L(ZCLIST)
var int LIST_HASLENGTH.I = 0;
func int LIST_HASLENGTHS(var int LIST, var int LEN) {
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

instance LIST_HASLENGTHS.L(ZCLISTSORT)
var int LIST_HASLENGTHS.I = 0;
func int LIST_NODE(var int LIST, var int NR) {
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

instance LIST_NODE.L(ZCLIST)
var int LIST_NODE.I = 0;
func int LIST_NODES(var int LIST, var int NR) {
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
    return _@(0x28d8);
}

instance LIST_NODES.L(ZCLISTSORT)
var int LIST_NODES.I = 0;
func void LIST_ADD(var int LIST, var int DATA) {
    if (!(LIST)) {
        _LIST_ERRPTR("Add");
        return;
    };
    L = _^(LIST_END(LIST));
    L.NEXT = CREATE(0x29a7);
    L = _^(L.NEXT);
    L.DATA = DATA;
}

instance LIST_ADD.L(ZCLIST)
func void LIST_ADDS(var int LIST, var int DATA) {
    if (!(LIST)) {
        _LIST_ERRPTR("AddS");
        return;
    };
    L = _^(LIST_ENDS(LIST));
    L.NEXT = CREATE(0x29a9);
    L = _^(L.NEXT);
    L.DATA = DATA;
}

instance LIST_ADDS.L(ZCLISTSORT)
func void LIST_ADDFRONT(var int LIST, var int DATA) {
    if (!(LIST)) {
        _LIST_ERRPTR("AddFront");
        return;
    };
    L = _^(LIST);
    NEXT = L.NEXT;
    L.NEXT = CREATE(0x29a7);
    LN = _^(L.NEXT);
    LN.NEXT = NEXT;
    LN.DATA = L.DATA;
    L.DATA = DATA;
}

instance LIST_ADDFRONT.L(ZCLIST)
var int LIST_ADDFRONT.NEXT = 0;
instance LIST_ADDFRONT.LN(ZCLIST)
func void LIST_ADDFRONTS(var int LIST, var int DATA) {
    if (!(LIST)) {
        _LIST_ERRPTR("AddFrontS");
        return;
    };
    L = _^(LIST);
    NEXT = L.NEXT;
    L.NEXT = CREATE(0x29a7);
    LN = _^(L.NEXT);
    LN.NEXT = NEXT;
    LN.DATA = L.DATA;
    L.DATA = DATA;
}

instance LIST_ADDFRONTS.L(ZCLISTSORT)
var int LIST_ADDFRONTS.NEXT = 0;
instance LIST_ADDFRONTS.LN(ZCLISTSORT)
func void LIST_DELETE(var int LIST, var int NR) {
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
    MEM_FREE(_@(0x28f4));
}

instance LIST_DELETE.L(ZCLIST)
var int LIST_DELETE.P = 0;
instance LIST_DELETE.PREV(ZCLIST)
instance LIST_DELETE.DEL(ZCLIST)
func void LIST_DELETES(var int LIST, var int NR) {
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
    MEM_FREE(_@(0x28fb));
}

instance LIST_DELETES.L(ZCLISTSORT)
var int LIST_DELETES.P = 0;
instance LIST_DELETES.PREV(ZCLISTSORT)
instance LIST_DELETES.DEL(ZCLISTSORT)
func void LIST_DESTROY(var int LIST) {
    if (!(LIST)) {
        _LIST_ERRPTR("Destroy");
        return;
    };
    L = _^(LIST);
    WHILE(L.NEXT);
    N = L.NEXT;
    MEM_FREE(_@(0x28fe));
    L = _^(N);
    END;
}

instance LIST_DESTROY.L(ZCLIST)
var int LIST_DESTROY.N = 0;
func void LIST_DESTROYS(var int LIST) {
    if (!(LIST)) {
        _LIST_ERRPTR("DestroyS");
        return;
    };
    L = _^(LIST);
    WHILE(L.NEXT);
    N = L.NEXT;
    MEM_FREE(_@(0x2902));
    L = _^(N);
    END;
}

instance LIST_DESTROYS.L(ZCLISTSORT)
var int LIST_DESTROYS.N = 0;
func void LIST_FORF(var int LIST, var func FNC) {
    if (!(LIST)) {
        _LIST_ERRPTR("ForF");
        return;
    };
    WHILE(LIST);
    L = _^(LIST);
    LIST;
    MEM_CALL(0x2906);
    LIST = L.NEXT;
    END;
}

instance LIST_FORF.L(ZCLIST)
func void LIST_FORI(var int LIST, var int FUNCID) {
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

instance LIST_FORI.L(ZCLIST)
func void LIST_FOR(var int LIST, var string FNC) {
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

var int LIST_FOR.F = 0;
instance LIST_FOR.L(ZCLIST)
func void LIST_FORFS(var int LIST, var func FNC) {
    if (!(LIST)) {
        _LIST_ERRPTR("ForFS");
        return;
    };
    WHILE(LIST);
    L = _^(LIST);
    LIST;
    MEM_CALL(0x2913);
    LIST = L.NEXT;
    END;
}

instance LIST_FORFS.L(ZCLISTSORT)
func void LIST_FORIS(var int LIST, var int FUNCID) {
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

instance LIST_FORIS.L(ZCLISTSORT)
func void LIST_FORS(var int LIST, var string FNC) {
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

var int LIST_FORS.F = 0;
instance LIST_FORS.L(ZCLISTSORT)
func int LIST_TOARRAY(var int LIST) {
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

var int LIST_TOARRAY.N = 0;
var int LIST_TOARRAY.A = 0;
instance LIST_TOARRAY.L(ZCLIST)
func int LIST_TOARRAYS(var int LIST) {
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

var int LIST_TOARRAYS.N = 0;
var int LIST_TOARRAYS.A = 0;
instance LIST_TOARRAYS.L(ZCLISTSORT)
func int LIST_GET(var int LIST, var int NR) {
    if (!(LIST)) {
        _LIST_ERRPTR("Get");
        return 0;
    };
    L = _^(LIST_NODE(LIST, NR));
    return L.DATA;
}

instance LIST_GET.L(ZCLIST)
func int LIST_GETS(var int LIST, var int NR) {
    if (!(LIST)) {
        _LIST_ERRPTR("GetS");
        return 0;
    };
    L = _^(LIST_NODES(LIST, NR));
    return L.DATA;
}

instance LIST_GETS.L(ZCLISTSORT)
func int LIST_SET(var int NODE, var int DATA) {
    if (!(NODE)) {
        _LIST_ERRPTR("Set");
        return 0;
    };
    L = _^(NODE);
    L.DATA = DATA;
    return 0 /* !broken stack! */;
}

instance LIST_SET.L(ZCLIST)
func int LIST_SETS(var int NODE, var int DATA) {
    if (!(NODE)) {
        _LIST_ERRPTR("SetS");
        return 0;
    };
    L = _^(NODE);
    L.DATA = DATA;
    return 0 /* !broken stack! */;
}

instance LIST_SETS.L(ZCLISTSORT)
func int LIST_CONTAINS(var int LIST, var int DATA) {
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

instance LIST_CONTAINS.L(ZCLIST)
var int LIST_CONTAINS.I = 0;
func int LIST_CONTAINSS(var int LIST, var int DATA) {
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

instance LIST_CONTAINSS.L(ZCLISTSORT)
var int LIST_CONTAINSS.I = 0;
func void LIST_ADDOFFSET(var int LIST, var int OFFSET, var int DATA) {
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
    N = CREATE(0x29a7);
    NEXT = _^(N);
    NEXT.DATA = DATA;
    NEXT.NEXT = PREV.NEXT;
    PREV.NEXT = N;
}

var int LIST_ADDOFFSET.P = 0;
instance LIST_ADDOFFSET.PREV(ZCLIST)
var int LIST_ADDOFFSET.N = 0;
instance LIST_ADDOFFSET.NEXT(ZCLIST)
func void LIST_ADDOFFSETS(var int LIST, var int OFFSET, var int DATA) {
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
    N = CREATE(0x29a9);
    NEXT = _^(N);
    NEXT.DATA = DATA;
    NEXT.NEXT = PREV.NEXT;
    PREV.NEXT = N;
}

var int LIST_ADDOFFSETS.P = 0;
instance LIST_ADDOFFSETS.PREV(ZCLISTSORT)
var int LIST_ADDOFFSETS.N = 0;
instance LIST_ADDOFFSETS.NEXT(ZCLISTSORT)
func void LIST_MOVEDOWN(var int LIST, var int OFFSET) {
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

var int LIST_MOVEDOWN.L0 = 0;
var int LIST_MOVEDOWN.L1 = 0;
var int LIST_MOVEDOWN.L2 = 0;
instance LIST_MOVEDOWN.ZL0(ZCLIST)
instance LIST_MOVEDOWN.ZL1(ZCLIST)
instance LIST_MOVEDOWN.ZL2(ZCLIST)
func void LIST_MOVEDOWNS(var int LIST, var int OFFSET) {
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

var int LIST_MOVEDOWNS.L0 = 0;
var int LIST_MOVEDOWNS.L1 = 0;
var int LIST_MOVEDOWNS.L2 = 0;
instance LIST_MOVEDOWNS.ZL0(ZCLISTSORT)
instance LIST_MOVEDOWNS.ZL1(ZCLISTSORT)
instance LIST_MOVEDOWNS.ZL2(ZCLISTSORT)
func void LIST_MOVEUP(var int LIST, var int OFFSET) {
    LIST_MOVEDOWN(LIST, (OFFSET) + (1));
}

func void LIST_MOVEUPS(var int LIST, var int OFFSET) {
    LIST_MOVEDOWNS(LIST, (OFFSET) + (1));
}

func int LIST_CREATE(var int DATA) {
    PTR = CREATE(0x29a7);
    L = _^(PTR);
    L.DATA = DATA;
    L.NEXT = 0;
    return PTR;
}

var int LIST_CREATE.PTR = 0;
instance LIST_CREATE.L(ZCLIST)
func int LIST_CREATES(var int DATA) {
    PTR = CREATE(0x29a9);
    L = _^(PTR);
    L.DATA = DATA;
    L.NEXT = 0;
    return PTR;
}

var int LIST_CREATES.PTR = 0;
instance LIST_CREATES.L(ZCLISTSORT)
func void LIST_CONCAT(var int LIST0, var int LIST1) {
    if ((!(LIST0)) || (!(LIST1))) {
        _LIST_ERRPTR("Concat");
        return;
    };
    L = _^(LIST_END(LIST0));
    L.NEXT = LIST1;
}

instance LIST_CONCAT.L(ZCLIST)
func void LIST_CONCATS(var int LIST0, var int LIST1) {
    if ((!(LIST0)) || (!(LIST1))) {
        _LIST_ERRPTR("ConcatS");
        return;
    };
    L = _^(LIST_ENDS(LIST0));
    L.NEXT = LIST1;
}

instance LIST_CONCATS.L(ZCLISTSORT)
func int LIST_COMPARE(var int DATA1, var int DATA2, var func COMPARE) {
    DATA2;
    MEM_CALL(0x297d);
    return DATA1;
}

func int LIST_CMPASCENDING(var int DATA1, var int DATA2) {
    return (DATA1) > (DATA2);
}

func int LIST_CMPDESCENDING(var int DATA1, var int DATA2) {
    return (DATA1) < (DATA2);
}

func int LIST_CMPASCENDINGUNSIGNED(var int DATA1, var int DATA2) {
    GT = (DATA1) & (~(DATA2));
    LT = (~(DATA1)) & (DATA2);
    LT = (LT) | ((LT) >> (1));
    LT = (LT) | ((LT) >> (2));
    LT = (LT) | ((LT) >> (4));
    LT = (LT) | ((LT) >> (8));
    LT = (LT) | ((LT) >> (16));
    return !(!((GT) & (~(LT))));
}

var int LIST_CMPASCENDINGUNSIGNED.GT = 0;
var int LIST_CMPASCENDINGUNSIGNED.LT = 0;
func int LIST_CMPDESCENDINGUNSIGNED(var int DATA1, var int DATA2) {
    return LIST_CMPASCENDINGUNSIGNED(DATA2, DATA1);
}

func void LIST_INSERTSORTED(var int LIST, var int DATA, var func COMPARE) {
    if (!(LIST)) {
        _LIST_ERRPTR("InsertSorted");
        return;
    };
    LP = _^(LIST);
    LPTR = CREATE(0x29a7);
    LNEW = _^(LPTR);
    if (LIST_COMPARE(LP.DATA, DATA, 0x298f)) {
        LNEW.NEXT = LP.NEXT;
        LP.NEXT = LPTR;
        LNEW.DATA = LP.DATA;
        LP.DATA = DATA;
        return;
    };
    WHILE(LP.NEXT);
    LN = _^(LP.NEXT);
    if (LIST_COMPARE(LN.DATA, DATA, 0x298f)) {
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

instance LIST_INSERTSORTED.LP(ZCLIST)
instance LIST_INSERTSORTED.LN(ZCLIST)
var int LIST_INSERTSORTED.LPTR = 0;
instance LIST_INSERTSORTED.LNEW(ZCLIST)
func void LIST_INSERTSORTEDS(var int LIST, var int DATA, var func COMPARE) {
    if (!(LIST)) {
        _LIST_ERRPTR("InsertSortedS");
        return;
    };
    LP = _^(LIST);
    LPTR = CREATE(0x29a9);
    LNEW = _^(LPTR);
    if (LIST_COMPARE(LP.DATA, DATA, 0x2997)) {
        LNEW.NEXT = LP.NEXT;
        LP.NEXT = LPTR;
        LNEW.DATA = LP.DATA;
        LP.DATA = DATA;
        return;
    };
    WHILE(LP.NEXT);
    LN = _^(LP.NEXT);
    if (LIST_COMPARE(LN.DATA, DATA, 0x2997)) {
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

instance LIST_INSERTSORTEDS.LP(ZCLISTSORT)
instance LIST_INSERTSORTEDS.LN(ZCLISTSORT)
var int LIST_INSERTSORTEDS.LPTR = 0;
instance LIST_INSERTSORTEDS.LNEW(ZCLISTSORT)
