instance ZCVIEW@(ZCVIEW);
func void _VIEWPTR_CREATEINTOPTR(var int PTR, var int X1, var int Y1, var int X2, var int Y2) {
    var ZCVIEW VW;
    CALL_INTPARAM(2);
    CALL_INTPARAM(Y2);
    CALL_INTPARAM(X2);
    CALL_INTPARAM(Y1);
    CALL_INTPARAM(X1);
    CALL__THISCALL(PTR, ZCVIEW__ZCVIEW);
    VW = MEM_PTRTOINST(PTR);
    VW.FXOPEN = 0;
    VW.FXCLOSE = 0;
}

func int VIEW_CREATEPXL(var int X1, var int Y1, var int X2, var int Y2) {
    return VIEW_CREATE(PRINT_TOVIRTUAL(X1, PS_X), PRINT_TOVIRTUAL(Y1, PS_Y), PRINT_TOVIRTUAL(X2, PS_X), PRINT_TOVIRTUAL(Y2, PS_Y));
}

func instance VIEW_GET(var int HNDL) {
    return GET(HNDL);
}

func void VIEWPTR_RENDER(var int PTR) {
    CALL__THISCALL(PTR, ZCVIEW__RENDER);
}

func void VIEWPTR_SETTEXTURE(var int PTR, var string TEX) {
    TEX = STR_UPPER(TEX);
    CALL_ZSTRINGPTRPARAM(TEX);
    CALL__THISCALL(PTR, ZCVIEW__INSERTBACK);
}

func string VIEW_GETTEXTURE(var int HNDL) {
    return VIEWPTR_GETTEXTURE(GETPTR(HNDL));
}

func void VIEW_SETALPHA(var int HNDL, var int VAL) {
    VIEWPTR_SETALPHA(GETPTR(HNDL), VAL);
}

func void VIEWPTR_SETCOLOR(var int PTR, var int ZCOLOR) {
    var ZCVIEW V;
    V = _^(PTR);
    V.COLOR = ZCOLOR;
    VIEWPTR_SETALPHA(PTR, ((ZCOLOR) >> (ZCOLOR_SHIFT_ALPHA)) & (ZCOLOR_CHANNEL));
}

func int VIEW_GETCOLOR(var int HNDL) {
    return VIEWPTR_GETCOLOR(GETPTR(HNDL));
}

func void VIEW_OPEN(var int HNDL) {
    VIEWPTR_OPEN(GETPTR(HNDL));
}

func void VIEW_CLOSE(var int HNDL) {
    CALL__THISCALL(GETPTR(HNDL), ZCVIEW__CLOSE);
}

func void VIEWPTR_DELETE(var int PTR) {
    var ZCVIEW V;
    V = _^(PTR);
    ZCVIEW_DELETE(V);
    MEM_FREE(PTR);
}

func void VIEWPTR_RESIZE(var int PTR, var int X, var int Y) {
    var ZCVIEW V;
    V = _^(PTR);
    if ((Y) < (0)) {
        CALL_INTPARAM(V.VSIZEY);
    };
    CALL_INTPARAM(Y);
    if ((X) < (0)) {
        CALL_INTPARAM(V.VSIZEX);
    };
    CALL_INTPARAM(X);
    CALL__THISCALL(PTR, ZCVIEW__SETSIZE);
    V.PSIZEX = PRINT_TOPIXEL(V.VSIZEX, PS_X);
    V.PSIZEY = PRINT_TOPIXEL(V.VSIZEY, PS_Y);
}

func void VIEWPTR_MOVE(var int PTR, var int X, var int Y) {
    var ZCVIEW V;
    V = _^(PTR);
    CALL_INTPARAM(Y);
    CALL_INTPARAM(X);
    CALL__THISCALL(PTR, ZCVIEW__MOVE);
    V.PPOSX = PRINT_TOPIXEL(V.VPOSX, PS_X);
    V.PPOSY = PRINT_TOPIXEL(V.VPOSY, PS_Y);
}

func void VIEWPTR_MOVETO(var int PTR, var int X, var int Y) {
    var ZCVIEW V;
    V = _^(PTR);
    if ((X) == (-(1))) {
        X = V.VPOSX;
    };
    if ((Y) == (-(1))) {
        Y = V.VPOSY;
    };
    VIEWPTR_MOVE(PTR, -(V.VPOSX), -(V.VPOSY));
    VIEWPTR_MOVE(PTR, X, Y);
}

func void VIEW_DELETETEXTSUB(var int LISTPTR) {
    var ZCLIST L;
    L = MEM_PTRTOINST(LISTPTR);
    MEM_FREE(L.DATA);
}

func void VIEW_DELETETEXT(var int HNDL) {
    VIEWPTR_DELETETEXT(GETPTR(HNDL));
}

func void VIEW_ADDTEXT(var int HNDL, var int X, var int Y, var string TEXT, var string FONT) {
    VIEWPTR_ADDTEXT(GETPTR(HNDL), X, Y, TEXT, FONT, -(1));
}

func void VIEWLIST_GLUETOAXIS(var int LIST, var int PARENT, var int AXIS, var int MT, var int MR, var int MB, var int ML) {
    var ZCLIST L;
    var int I;
    var int ITEMSIZE;
    var int ITEMS;
    var ZCVIEW V;
    if (!(PARENT)) {
        V = _^(MEM_READINT(SCREEN));
    };
    V = _^(PARENT);
    I = 0;
    ITEMS = LIST_LENGTH(LIST);
    if ((AXIS) == (PS_X)) {
        L = _^(LIST);
        ITEMSIZE = (V.VSIZEX) / (ITEMS);
        REPEAT(I, ITEMS);
        VIEWPTR_SETMARGIN(L.DATA, PARENT, ALIGN_LEFT, MT, ((ITEMSIZE) - (ML)) - (MR), MB, ((I) * (ITEMSIZE)) + (ML));
        if (L.NEXT) {
            L = _^(L.NEXT);
        };
    };
    L = _^(LIST);
    ITEMSIZE = (V.VSIZEY) / (ITEMS);
    REPEAT(I, ITEMS);
    VIEWPTR_SETMARGIN(L.DATA, PARENT, ALIGN_TOP, ((I) * (ITEMSIZE)) + (MT), ML, ((ITEMSIZE) - (MT)) - (MB), MR);
    if (L.NEXT) {
        L = _^(L.NEXT);
    };
    END;
}

