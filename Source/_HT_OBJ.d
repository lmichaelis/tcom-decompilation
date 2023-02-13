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

func int HASH(var int VAL) {
    var int HASH;
    HASH = MEM_GETBUFFERCRC32(_@(VAL), 4);
    return (HASH) & (2147483647);
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

func int _HT_GETNUMBER(var int PTR) {
    var ZCARRAY ARR;
    ARR = _^(PTR);
    return ARR.NUMINARRAY;
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

