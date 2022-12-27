class _HT_OBJ {
	var int KEY;
	var int VAL;
};


const int HT_SIZE = 71;
func int _HT_CREATEPTR(var int SIZE) {
    PTR = MEM_ARRAYCREATE();
    ARR = _^(PTR);
    ARR.ARRAY = MEM_ALLOC((SIZE) * (4));
    ARR.NUMALLOC = (SIZE) * (4);
    ARR.NUMINARRAY = 0;
    return +(PTR);
}

var int _HT_CREATEPTR.PTR = 0;
instance _HT_CREATEPTR.ARR(ZCARRAY)
func int _HT_CREATE() {
    return +(_HT_CREATEPTR(HT_SIZE));
}

func int HASH(var int VAL) {
    HASH = MEM_GETBUFFERCRC32(_@(VAL), 4);
    return (HASH) & (0x7fffffff);
}

var int HASH.HASH = 0;
func void _HT_INSERT(var int PTR, var int VAL, var int KEY) {
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
        MEM_CALL(0x261f);
    };
}

instance _HT_INSERT.ARR(ZCARRAY)
var int _HT_INSERT.H = 0;
var int _HT_INSERT.BUCKET = 0;
instance _HT_INSERT.BUCK(ZCARRAY)
var int _HT_INSERT.I = 0;
var int _HT_INSERT.AM = 0;
func void _HT_RESIZE(var int PTR, var int SIZE) {
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

instance _HT_RESIZE.ARR(ZCARRAY)
instance _HT_RESIZE.BUCK(ZCARRAY)
var int _HT_RESIZE.HTBL = 0;
instance _HT_RESIZE.HARR(ZCARRAY)
var int _HT_RESIZE.I = 0;
var int _HT_RESIZE.J = 0;
var int _HT_RESIZE.BUCKET = 0;
func int _HT_GET(var int PTR, var int KEY) {
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

instance _HT_GET.ARR(ZCARRAY)
var int _HT_GET.H = 0;
var int _HT_GET.BUCKET = 0;
instance _HT_GET.BUCK(ZCARRAY)
var int _HT_GET.I = 0;
func int _HT_HAS(var int PTR, var int KEY) {
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

instance _HT_HAS.ARR(ZCARRAY)
var int _HT_HAS.H = 0;
var int _HT_HAS.BUCKET = 0;
instance _HT_HAS.BUCK(ZCARRAY)
var int _HT_HAS.I = 0;
func void _HT_REMOVE(var int PTR, var int KEY) {
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

instance _HT_REMOVE.ARR(ZCARRAY)
var int _HT_REMOVE.H = 0;
var int _HT_REMOVE.BUCKET = 0;
instance _HT_REMOVE.BUCK(ZCARRAY)
var int _HT_REMOVE.I = 0;
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
    ARR = _^(PTR);
    return ARR.NUMINARRAY;
}

instance _HT_GETNUMBER.ARR(ZCARRAY)
func void _HT_FOREACH(var int PTR, var func FNC) {
    ARR = _^(PTR);
    I = 0;
    J = 0;
    REPEAT(I, (ARR.NUMALLOC) / (4));
    BUCKET = MEM_READINTARRAY(ARR.ARRAY, I);
    if (BUCKET) {
        BUCK = _^(BUCKET);
        REPEAT(J, (BUCK.NUMINARRAY) / (2));
        MEM_READINTARRAY(BUCK.ARRAY, ((J) * (2)) + (1));
        MEM_CALL(0x264e);
        MEM_READINTARRAY(BUCK.ARRAY, (J) * (2));
        END;
    };
    END;
}

instance _HT_FOREACH.ARR(ZCARRAY)
instance _HT_FOREACH.BUCK(ZCARRAY)
var int _HT_FOREACH.I = 0;
var int _HT_FOREACH.J = 0;
var int _HT_FOREACH.BUCKET = 0;
func void _HT_DESTROY(var int PTR) {
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

instance _HT_DESTROY.ARR(ZCARRAY)
instance _HT_DESTROY.BUCK(ZCARRAY)
var int _HT_DESTROY.I = 0;
var int _HT_DESTROY.J = 0;
var int _HT_DESTROY.BUCKET = 0;
