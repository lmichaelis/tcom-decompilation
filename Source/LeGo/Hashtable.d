class HT_ARRAY {
	var int ARRAY;
	var int NUMALLOC;
	var int NUMINARRAY;
};



instance HT@(HT_ARRAY) {
}

func void HT_ARRAY_ARCHIVER(var HT_ARRAY THIS) {
    PM_SAVEINT("length", THIS.NUMALLOC);
    PM_SAVEINT("elements", THIS.NUMINARRAY);
    CTR = 0;
    K = 0;
    REPEAT(K, (THIS.NUMALLOC) / (4));
    PTR = MEM_READINT((THIS.ARRAY) + ((K) * (4)));
    if (!(PTR)) {
        CONTINUE;
    };
    PM_SAVECLASSPTR(INTTOSTRING(CTR), PTR, "zCArray");
    PM_SAVEINT(CONCATSTRINGS("pos", INTTOSTRING(CTR)), K);
    CTR += 1;
    END;
    PM_SAVEINT("subArrays", CTR);
}

var int HT_ARRAY_ARCHIVER.CTR = 0;
var int HT_ARRAY_ARCHIVER.K = 0;
var int HT_ARRAY_ARCHIVER.PTR = 0;
func void HT_ARRAY_UNARCHIVER(var HT_ARRAY THIS) {
    THIS.NUMALLOC = PM_LOAD("length");
    THIS.NUMINARRAY = PM_LOAD("elements");
    THIS.ARRAY = MEM_ALLOC(THIS.NUMALLOC);
    K = 0;
    REPEAT(K, PM_LOAD("subArrays"));
    POS = PM_LOAD(CONCATSTRINGS("pos", INTTOSTRING(K)));
    MEM_WRITEINT((THIS.ARRAY) + ((POS) * (4)), PM_LOAD(INTTOSTRING(K)));
    END;
}

var int HT_ARRAY_UNARCHIVER.K = 0;
var int HT_ARRAY_UNARCHIVER.POS = 0;
func void HT_ARRAY_DELETE(var HT_ARRAY HT) {
    _HT_DESTROY(_@(0x2fd5));
}

func int HT_CREATESIZED(var int SIZE) {
    return WRAP(0x2fca, _HT_CREATEPTR(SIZE));
}

func int HT_CREATE() {
    return +(HT_CREATESIZED(HT_SIZE));
}

func void HT_INSERT(var int HNDL, var int VAL, var int KEY) {
    _HT_INSERT(GETPTR(HNDL), VAL, KEY);
}

func void HT_RESIZE(var int HNDL, var int SIZE) {
    _HT_RESIZE(GETPTR(HNDL), SIZE);
}

func int HT_GET(var int HNDL, var int KEY) {
    return _HT_GET(GETPTR(HNDL), KEY);
}

func int HT_HAS(var int HNDL, var int KEY) {
    return _HT_HAS(GETPTR(HNDL), KEY);
}

func void HT_REMOVE(var int HNDL, var int KEY) {
    _HT_REMOVE(GETPTR(HNDL), KEY);
}

func void HT_CHANGE(var int HNDL, var int VAL, var int KEY) {
    _HT_CHANGE(GETPTR(HNDL), VAL, KEY);
}

func void HT_INSERTORCHANGE(var int HNDL, var int VAL, var int KEY) {
    _HT_INSERTORCHANGE(GETPTR(HNDL), VAL, KEY);
}

func int HT_GETNUMBER(var int HNDL) {
    return _HT_GETNUMBER(GETPTR(HNDL));
}

func void HT_FOREACH(var int HNDL, var func FNC) {
    _HT_FOREACH(GETPTR(HNDL), 0x2ff5);
}

func void HT_DESTROY(var int HNDL) {
    DELETE(HNDL);
}

