class _HT_OBJ {
	var int KEY;
	var int VAL;
};
const int HT_SIZE = 71;
func int _HT_CREATEPTR(var int SIZE) {
    var ZCARRAY ARR;
    var int PTR;
    PTR = MEM_ARRAYCREATE();
    ARR = _^(PTR);
    ARR.ARRAY = MEM_ALLOC((SIZE) * (4));
    ARR.NUMALLOC = (SIZE) * (4);
    ARR.NUMINARRAY = 0;
    return +(PTR);
}

func int _HT_CREATE() {
    return +(_HT_CREATEPTR(HT_SIZE));
}

func int HASH(var int VAL) {
    var int HASH;
    HASH = MEM_GETBUFFERCRC32(_@(VAL), 4);
    return (HASH) & (2147483647);
}

func void _HT_INSERT(var int PTR, var int VAL, var int KEY) {
    var int AM;
    var int I;
    var ZCARRAY BUCK;
    var int BUCKET;
    var int H;
    var ZCARRAY ARR;
    ARR = _^(PTR);
    H = (HASH(KEY)) % ((ARR.NUMALLOC) / (4));
    BUCKET = MEM_READINTARRAY(ARR.ARRAY, H);
    if (!(BUCKET)) {
        MEM_WRITEINTARRAY(ARR.ARRAY, H, MEM_ARRAYCREATE());
        BUCKET = MEM_READINTARRAY(ARR.ARRAY, H);
    };
    BUCK = _^(BUCKET);
    REPEAT(I, (BUCK.NUMINARRAY) / (2));
    if ((MEM_ARRAYREAD(BUCKET, (I) * (2))) == (KEY)) {
        MEM_ERROR("HT: A key has been assigned with two values!");
    };
    END;
    MEM_ARRAYINSERT(BUCKET, KEY);
    MEM_ARRAYINSERT(BUCKET, VAL);
    ARR.NUMINARRAY += 1;
    if ((ARR.NUMINARRAY) == (ARR.NUMALLOC)) {
        AM = (ARR.NUMINARRAY) * (2);
        AM;
        MEM_CALL(9759);
    };
}

func void _HT_RESIZE(var int PTR, var int SIZE) {
    var ZCARRAY BUCK;
    var int J;
    var int I;
    var ZCARRAY HARR;
    var int BUCKET;
    var int HTBL;
    var ZCARRAY ARR;
    ARR = _^(PTR);
    HTBL = _HT_CREATEPTR(SIZE);
    HARR = _^(HTBL);
    I = 0;
    J = 0;
    REPEAT(I, (ARR.NUMALLOC) / (4));
    BUCKET = MEM_READINTARRAY(ARR.ARRAY, I);
    if (BUCKET) {
        BUCK = _^(BUCKET);
        REPEAT(J, (BUCK.NUMINARRAY) / (2));
        _HT_INSERT(HTBL, MEM_READINTARRAY(BUCK.ARRAY, ((2) * (J)) + (1)), MEM_READINTARRAY(BUCK.ARRAY, (2) * (J)));
        END;
        MEM_FREE(BUCKET);
    };
    END;
    MEM_FREE(ARR.ARRAY);
    ARR.ARRAY = HARR.ARRAY;
    ARR.NUMALLOC = (SIZE) * (4);
    ARR.NUMINARRAY = HARR.NUMINARRAY;
}

func int _HT_GET(var int PTR, var int KEY) {
    var int I;
    var ZCARRAY BUCK;
    var int BUCKET;
    var int H;
    var ZCARRAY ARR;
    ARR = _^(PTR);
    H = (HASH(KEY)) % ((ARR.NUMALLOC) / (4));
    BUCKET = MEM_READINTARRAY(ARR.ARRAY, H);
    if (!(BUCKET)) {
        return FALSE;
    };
    BUCK = _^(BUCKET);
    REPEAT(I, (BUCK.NUMINARRAY) / (2));
    if ((MEM_ARRAYREAD(BUCKET, (I) * (2))) == (KEY)) {
        return MEM_ARRAYREAD(BUCKET, ((I) * (2)) + (1));
    };
    END;
    return FALSE;
}

func int _HT_HAS(var int PTR, var int KEY) {
    var int I;
    var ZCARRAY BUCK;
    var int BUCKET;
    var int H;
    var ZCARRAY ARR;
    ARR = _^(PTR);
    H = (HASH(KEY)) % ((ARR.NUMALLOC) / (4));
    BUCKET = MEM_READINTARRAY(ARR.ARRAY, H);
    if (!(BUCKET)) {
        return FALSE;
    };
    BUCK = _^(BUCKET);
    REPEAT(I, (BUCK.NUMINARRAY) / (2));
    if ((MEM_ARRAYREAD(BUCKET, (I) * (2))) == (KEY)) {
        return TRUE;
    };
    END;
    return FALSE;
}

func void _HT_REMOVE(var int PTR, var int KEY) {
    var int I;
    var ZCARRAY BUCK;
    var int BUCKET;
    var int H;
    var ZCARRAY ARR;
    ARR = _^(PTR);
    H = (HASH(KEY)) % ((ARR.NUMALLOC) / (4));
    BUCKET = MEM_READINTARRAY(ARR.ARRAY, H);
    if (!(BUCKET)) {
        MEM_ERROR("HT: Key not found");
        return;
    };
    BUCK = _^(BUCKET);
    REPEAT(I, (BUCK.NUMINARRAY) / (2));
    if ((MEM_ARRAYREAD(BUCKET, (I) * (2))) == (KEY)) {
        MEM_ARRAYREMOVEINDEX(BUCKET, ((I) * (2)) + (1));
        MEM_ARRAYREMOVEINDEX(BUCKET, (I) * (2));
        ARR.NUMINARRAY -= 1;
        return;
    };
    END;
    MEM_ERROR("HT: Key not found");
}

func void _HT_CHANGE(var int PTR, var int VAL, var int KEY) {
    _HT_REMOVE(PTR, KEY);
    _HT_INSERT(PTR, VAL, KEY);
}

func void _HT_INSERTORCHANGE(var int PTR, var int VAL, var int KEY) {
    if (_HT_HAS(PTR, KEY)) {
        _HT_CHANGE(PTR, VAL, KEY);
    };
    _HT_INSERT(PTR, VAL, KEY);
}

func int _HT_GETNUMBER(var int PTR) {
    var ZCARRAY ARR;
    ARR = _^(PTR);
    return ARR.NUMINARRAY;
}

func void _HT_FOREACH(var int PTR, var func FNC) {
    var ZCARRAY BUCK;
    var int BUCKET;
    var int J;
    var int I;
    var ZCARRAY ARR;
    ARR = _^(PTR);
    I = 0;
    J = 0;
    REPEAT(I, (ARR.NUMALLOC) / (4));
    BUCKET = MEM_READINTARRAY(ARR.ARRAY, I);
    if (BUCKET) {
        BUCK = _^(BUCKET);
        REPEAT(J, (BUCK.NUMINARRAY) / (2));
        MEM_READINTARRAY(BUCK.ARRAY, ((J) * (2)) + (1));
        MEM_CALL(9806);
        MEM_READINTARRAY(BUCK.ARRAY, (J) * (2));
        END;
    };
    END;
}

func void _HT_DESTROY(var int PTR) {
    var int BUCKET;
    var int J;
    var int I;
    var ZCARRAY ARR;
    ARR = _^(PTR);
    I = 0;
    J = 0;
    REPEAT(I, (ARR.NUMALLOC) / (4));
    BUCKET = MEM_READINTARRAY(ARR.ARRAY, I);
    if (BUCKET) {
        MEM_ARRAYFREE(BUCKET);
    };
    END;
    MEM_FREE(ARR.ARRAY);
    MEM_FREE(PTR);
}

