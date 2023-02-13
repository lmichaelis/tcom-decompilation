func void HT_ARRAY_DELETE(var HT_ARRAY HT) {
    _HT_DESTROY(_@(12245));
}

func int HT_CREATE() {
    return +(HT_CREATESIZED(HT_SIZE));
}

func void HT_INSERT(var int HNDL, var int VAL, var int KEY) {
    _HT_INSERT(GETPTR(HNDL), VAL, KEY);
}

func void HT_REMOVE(var int HNDL, var int KEY) {
    _HT_REMOVE(GETPTR(HNDL), KEY);
}

func int HT_GETNUMBER(var int HNDL) {
    return _HT_GETNUMBER(GETPTR(HNDL));
}

func void HT_DESTROY(var int HNDL) {
    DELETE(HNDL);
}

