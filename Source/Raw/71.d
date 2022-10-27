instance ZCVIEW@(ZCVIEW)
func void _VIEWPTR_CREATEINTOPTR(var int PTR, var int X1, var int Y1, var int X2, var int Y2) {
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

instance _VIEWPTR_CREATEINTOPTR.VW(ZCVIEW)
func int VIEWPTR_CREATE(var int X1, var int Y1, var int X2, var int Y2) {
    PTR = CREATE(0x2bf4);
    _VIEWPTR_CREATEINTOPTR(PTR, X1, Y1, X2, Y2);
    return PTR;
}

var int VIEWPTR_CREATE.PTR = 0;
func int VIEW_CREATE(var int X1, var int Y1, var int X2, var int Y2) {
    HNDL = NEW(0x2bf4);
    V = GET(HNDL);
    _VIEWPTR_CREATEINTOPTR(GETPTR(HNDL), X1, Y1, X2, Y2);
    return HNDL;
}

var int VIEW_CREATE.HNDL = 0;
instance VIEW_CREATE.V(ZCVIEW)
func int VIEWPTR_NEW() {
    return VIEWPTR_CREATE(0, 0, 0, 0);
}

func int VIEW_NEW() {
    return VIEW_CREATE(0, 0, 0, 0);
}

func int VIEWPTR_CREATEPXL(var int X1, var int Y1, var int X2, var int Y2) {
    return VIEWPTR_CREATE(PRINT_TOVIRTUAL(X1, PS_X), PRINT_TOVIRTUAL(Y1, PS_Y), PRINT_TOVIRTUAL(X2, PS_X), PRINT_TOVIRTUAL(Y2, PS_Y));
}

func int VIEW_CREATEPXL(var int X1, var int Y1, var int X2, var int Y2) {
    return VIEW_CREATE(PRINT_TOVIRTUAL(X1, PS_X), PRINT_TOVIRTUAL(Y1, PS_Y), PRINT_TOVIRTUAL(X2, PS_X), PRINT_TOVIRTUAL(Y2, PS_Y));
}

func int VIEWPTR_CREATECENTER(var int X, var int Y, var int W, var int H) {
    return VIEWPTR_CREATE((X) - ((W) >> (1)), (Y) - ((H) >> (1)), (X) + (((W) + (1)) >> (1)), (Y) + (((H) + (1)) >> (1)));
}

func int VIEW_CREATECENTER(var int X, var int Y, var int W, var int H) {
    return VIEW_CREATE((X) - ((W) >> (1)), (Y) - ((H) >> (1)), (X) + (((W) + (1)) >> (1)), (Y) + (((H) + (1)) >> (1)));
}

func int VIEWPTR_CREATECENTERPXL(var int X, var int Y, var int W, var int H) {
    return VIEWPTR_CREATECENTER(PRINT_TOVIRTUAL(X, PS_X), PRINT_TOVIRTUAL(Y, PS_Y), PRINT_TOVIRTUAL(W, PS_X), PRINT_TOVIRTUAL(H, PS_Y));
}

func int VIEW_CREATECENTERPXL(var int X, var int Y, var int W, var int H) {
    return VIEW_CREATECENTER(PRINT_TOVIRTUAL(X, PS_X), PRINT_TOVIRTUAL(Y, PS_Y), PRINT_TOVIRTUAL(W, PS_X), PRINT_TOVIRTUAL(H, PS_Y));
}

func instance VIEW_GET(var int HNDL) {
    return GET(HNDL);
}

func int VIEW_GETPTR(var int HNDL) {
    return GETPTR(HNDL);
}

func void VIEWPTR_RENDER(var int PTR) {
    CALL__THISCALL(PTR, ZCVIEW__RENDER);
}

func void VIEW_RENDER(var int HNDL) {
    VIEWPTR_RENDER(GETPTR(HNDL));
}

func void VIEWPTR_SETTEXTURE(var int PTR, var string TEX) {
    TEX = STR_UPPER(TEX);
    CALL_ZSTRINGPTRPARAM(TEX);
    CALL__THISCALL(PTR, ZCVIEW__INSERTBACK);
}

func void VIEW_SETTEXTURE(var int HNDL, var string TEX) {
    VIEWPTR_SETTEXTURE(GETPTR(HNDL), TEX);
}

func string VIEWPTR_GETTEXTURE(var int PTR) {
    V = _^(PTR);
    OBJ = MEM_PTRTOINST(V.BACKTEX);
    return OBJ.OBJECTNAME;
}

instance VIEWPTR_GETTEXTURE.V(ZCVIEW)
instance VIEWPTR_GETTEXTURE.OBJ(ZCOBJECT)
func string VIEW_GETTEXTURE(var int HNDL) {
    return VIEWPTR_GETTEXTURE(GETPTR(HNDL));
}

func void VIEWPTR_SETALPHA(var int PTR, var int VAL) {
    V = _^(PTR);
    V.ALPHA = VAL;
    if (((V.ALPHA) != (255)) && ((V.ALPHAFUNC) == (1))) {
        V.ALPHAFUNC = 2;
    };
}

instance VIEWPTR_SETALPHA.V(ZCVIEW)
func void VIEW_SETALPHA(var int HNDL, var int VAL) {
    VIEWPTR_SETALPHA(GETPTR(HNDL), VAL);
}

func void VIEWPTR_SETALPHAALL(var int PTR, var int VAL) {
    V = _^(PTR);
    V.ALPHA = VAL;
    if (((V.ALPHA) != (255)) && ((V.ALPHAFUNC) == (1))) {
        V.ALPHAFUNC = 2;
    };
    if (V.TEXTLINES_NEXT) {
        LIST = V.TEXTLINES_NEXT;
        WHILE(LIST);
        L = _^(LIST);
        PRINTPTR_SETALPHA(L.DATA, VAL);
        LIST = L.NEXT;
        END;
    };
}

instance VIEWPTR_SETALPHAALL.V(ZCVIEW)
var int VIEWPTR_SETALPHAALL.LIST = 0;
instance VIEWPTR_SETALPHAALL.L(ZCLIST)
func void VIEW_SETALPHAALL(var int HNDL, var int VAL) {
    VIEWPTR_SETALPHAALL(GETPTR(HNDL), VAL);
}

func void VIEWPTR_SETCOLOR(var int PTR, var int ZCOLOR) {
    V = _^(PTR);
    V.COLOR = ZCOLOR;
    VIEWPTR_SETALPHA(PTR, ((ZCOLOR) >> (ZCOLOR_SHIFT_ALPHA)) & (ZCOLOR_CHANNEL));
}

instance VIEWPTR_SETCOLOR.V(ZCVIEW)
func void VIEW_SETCOLOR(var int HNDL, var int ZCOLOR) {
    VIEWPTR_SETCOLOR(GETPTR(HNDL), ZCOLOR);
}

func int VIEWPTR_GETCOLOR(var int PTR) {
    V = _^(PTR);
    return V.COLOR;
}

instance VIEWPTR_GETCOLOR.V(ZCVIEW)
func int VIEW_GETCOLOR(var int HNDL) {
    return VIEWPTR_GETCOLOR(GETPTR(HNDL));
}

func void VIEWPTR_OPEN(var int PTR) {
    V = _^(PTR);
    TEXTLINESBAK = V.TEXTLINES_NEXT;
    V.TEXTLINES_NEXT = 0;
    CALL__THISCALL(PTR, ZCVIEW__OPEN);
    if (!(V.FXOPEN)) {
        V.TIMEOPEN = FLOATNULL;
        V.CONTINUEOPEN = FALSE;
        V.ISOPEN = TRUE;
        V.ISCLOSED = FALSE;
    };
    V.TEXTLINES_NEXT = TEXTLINESBAK;
}

instance VIEWPTR_OPEN.V(ZCVIEW)
var int VIEWPTR_OPEN.TEXTLINESBAK = 0;
func void VIEW_OPEN(var int HNDL) {
    VIEWPTR_OPEN(GETPTR(HNDL));
}

func void VIEWPTR_CLOSE(var int PTR) {
    CALL__THISCALL(PTR, ZCVIEW__CLOSE);
}

func void VIEW_CLOSE(var int HNDL) {
    CALL__THISCALL(GETPTR(HNDL), ZCVIEW__CLOSE);
}

func void ZCVIEW_DELETE(var ZCVIEW THIS) {
    if (THIS.TEXTLINES_NEXT) {
        THIS.TEXTLINES_NEXT = 0;
    };
    CALL__THISCALL(MEM_INSTTOPTR(0x2c64), ZCVIEW__@ZCVIEW);
}

func void VIEWPTR_DELETE(var int PTR) {
    V = _^(PTR);
    ZCVIEW_DELETE(V);
    MEM_FREE(PTR);
}

instance VIEWPTR_DELETE.V(ZCVIEW)
func void VIEW_DELETE(var int HNDL) {
    V = GET(HNDL);
    ZCVIEW_DELETE(V);
    RELEASE(HNDL);
}

instance VIEW_DELETE.V(ZCVIEW)
func void VIEWPTR_RESIZE(var int PTR, var int X, var int Y) {
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

instance VIEWPTR_RESIZE.V(ZCVIEW)
func void VIEW_RESIZE(var int HNDL, var int X, var int Y) {
    VIEWPTR_RESIZE(GETPTR(HNDL), X, Y);
}

func void VIEWPTR_RESIZEPXL(var int PTR, var int X, var int Y) {
    VIEWPTR_RESIZE(PTR, PRINT_TOVIRTUAL(X, PS_X), PRINT_TOVIRTUAL(Y, PS_Y));
}

func void VIEW_RESIZEPXL(var int HNDL, var int X, var int Y) {
    VIEWPTR_RESIZEPXL(GETPTR(HNDL), X, Y);
}

func void VIEWPTR_MOVE(var int PTR, var int X, var int Y) {
    V = _^(PTR);
    CALL_INTPARAM(Y);
    CALL_INTPARAM(X);
    CALL__THISCALL(PTR, ZCVIEW__MOVE);
    V.PPOSX = PRINT_TOPIXEL(V.VPOSX, PS_X);
    V.PPOSY = PRINT_TOPIXEL(V.VPOSY, PS_Y);
}

instance VIEWPTR_MOVE.V(ZCVIEW)
func void VIEW_MOVE(var int HNDL, var int X, var int Y) {
    VIEWPTR_MOVE(GETPTR(HNDL), X, Y);
}

func void VIEWPTR_MOVEPXL(var int PTR, var int X, var int Y) {
    VIEWPTR_MOVE(PTR, PRINT_TOVIRTUAL(X, PS_X), PRINT_TOVIRTUAL(Y, PS_Y));
}

func void VIEW_MOVEPXL(var int HNDL, var int X, var int Y) {
    VIEWPTR_MOVEPXL(GETPTR(HNDL), X, Y);
}

func void VIEWPTR_MOVETO(var int PTR, var int X, var int Y) {
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

instance VIEWPTR_MOVETO.V(ZCVIEW)
func void VIEW_MOVETO(var int HNDL, var int X, var int Y) {
    VIEWPTR_MOVETO(GETPTR(HNDL), X, Y);
}

func void VIEWPTR_MOVETOPXL(var int PTR, var int X, var int Y) {
    if ((X) != (-(1))) {
        X = PRINT_TOVIRTUAL(X, PS_X);
    };
    if ((Y) != (-(1))) {
        Y = PRINT_TOVIRTUAL(Y, PS_Y);
    };
    VIEWPTR_MOVETO(PTR, X, Y);
}

func void VIEW_MOVETOPXL(var int HNDL, var int X, var int Y) {
    VIEWPTR_MOVETOPXL(GETPTR(HNDL), X, Y);
}

func void VIEW_DELETETEXTSUB(var int LISTPTR) {
    L = MEM_PTRTOINST(LISTPTR);
    MEM_FREE(L.DATA);
}

instance VIEW_DELETETEXTSUB.L(ZCLIST)
func void VIEWPTR_DELETETEXT(var int PTR) {
    V = _^(PTR);
    if (V.TEXTLINES_NEXT) {
        LIST_FORF(V.TEXTLINES_NEXT, 0x2c9e);
        LIST_DESTROY(V.TEXTLINES_NEXT);
        V.TEXTLINES_NEXT = 0;
    };
}

instance VIEWPTR_DELETETEXT.V(ZCVIEW)
func void VIEW_DELETETEXT(var int HNDL) {
    VIEWPTR_DELETETEXT(GETPTR(HNDL));
}

func void VIEWPTR_ADDTEXT(var int PTR, var int X, var int Y, var string TEXT, var string FONT, var int COLOR) {
    V = _^(PTR);
    FIELD = PRINT_TEXTFIELDCOLORED(X, Y, TEXT, FONT, PRINT_TOVIRTUAL(PRINT_GETFONTHEIGHT(FONT), V.PSIZEY), COLOR);
    if (V.TEXTLINES_NEXT) {
        LIST_CONCAT(V.TEXTLINES_NEXT, FIELD);
    };
    V.TEXTLINES_NEXT = FIELD;
}

instance VIEWPTR_ADDTEXT.V(ZCVIEW)
var int VIEWPTR_ADDTEXT.FIELD = 0;
func void VIEW_ADDTEXT(var int HNDL, var int X, var int Y, var string TEXT, var string FONT) {
    VIEWPTR_ADDTEXT(GETPTR(HNDL), X, Y, TEXT, FONT, -(1));
}

func void VIEW_ADDTEXTCOLORED(var int HNDL, var int X, var int Y, var string TEXT, var string FONT, var int COLOR) {
    VIEWPTR_ADDTEXT(GETPTR(HNDL), X, Y, TEXT, FONT, COLOR);
}

func void VIEWPTR_ADDTEXTVIEW(var int PTR, var int VIEW) {
    V = _^(PTR);
    if (V.TEXTLINES_NEXT) {
        LIST_CONCAT(V.TEXTLINES_NEXT, VIEW);
    };
    V.TEXTLINES_NEXT = LIST_CREATE(VIEW);
}

instance VIEWPTR_ADDTEXTVIEW.V(ZCVIEW)
func void VIEW_ADDTEXTVIEW(var int HNDL, var int VIEW) {
    VIEWPTR_ADDTEXTVIEW(GETPTR(HNDL), VIEW);
}

func void VIEWPTR_SETMARGIN(var int PTR, var int PARENT, var int ALIGN, var int MT, var int MR, var int MB, var int ML) {
    if (!(PARENT)) {
        V = _^(MEM_READINT(SCREEN));
    };
    V = _^(PARENT);
    if ((ALIGN) == (ALIGN_LEFT)) {
        VIEWPTR_MOVETO(PTR, (V.VPOSX) + (ML), (V.VPOSY) + (MT));
        VIEWPTR_RESIZE(PTR, MR, ((V.VSIZEY) - (MT)) - (MB));
    };
    if ((ALIGN) == (ALIGN_RIGHT)) {
        VIEWPTR_MOVETO(PTR, (((V.VPOSX) + (V.VSIZEX)) - (MR)) - (ML), (V.VPOSY) + (MT));
        VIEWPTR_RESIZE(PTR, ML, ((V.VSIZEY) - (MT)) - (MB));
    };
    if ((ALIGN) == (ALIGN_TOP)) {
        VIEWPTR_MOVETO(PTR, (V.VPOSX) + (ML), (V.VPOSY) + (MT));
        VIEWPTR_RESIZE(PTR, ((V.VSIZEX) - (ML)) - (MR), MB);
    };
    if ((ALIGN) == (ALIGN_BOTTOM)) {
        VIEWPTR_MOVETO(PTR, (V.VPOSX) + (ML), (((V.VPOSY) + (V.VSIZEY)) - (MT)) - (MB));
        VIEWPTR_RESIZE(PTR, ((V.VSIZEX) - (ML)) - (MR), MT);
    };
    VIEWPTR_MOVETO(PTR, (V.VPOSX) + (ML), (V.VPOSY) + (MT));
    VIEWPTR_RESIZE(PTR, ((V.VSIZEX) - (ML)) - (MR), ((V.VSIZEY) - (MT)) - (MB));
}

instance VIEWPTR_SETMARGIN.V(ZCVIEW)
func void VIEWPTR_SETMARGINPXL(var int PTR, var int PARENT, var int ALIGN, var int MT, var int MR, var int MB, var int ML) {
    VIEWPTR_SETMARGIN(PTR, PARENT, ALIGN, PRINT_TOVIRTUAL(MT, PS_Y), PRINT_TOVIRTUAL(MR, PS_X), PRINT_TOVIRTUAL(MB, PS_Y), PRINT_TOVIRTUAL(ML, PS_X));
}

func void VIEWLIST_GLUETOAXIS(var int LIST, var int PARENT, var int AXIS, var int MT, var int MR, var int MB, var int ML) {
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

instance VIEWLIST_GLUETOAXIS.V(ZCVIEW)
var int VIEWLIST_GLUETOAXIS.I = 0;
var int VIEWLIST_GLUETOAXIS.ITEMSIZE = 0;
var int VIEWLIST_GLUETOAXIS.ITEMS = 0;
instance VIEWLIST_GLUETOAXIS.L(ZCLIST)
func void VIEWLIST_GLUETOAXISPXL(var int LIST, var int PARENT, var int AXIS, var int MT, var int MR, var int MB, var int ML) {
    VIEWLIST_GLUETOAXIS(LIST, PARENT, AXIS, PRINT_TOVIRTUAL(MT, PS_Y), PRINT_TOVIRTUAL(MR, PS_X), PRINT_TOVIRTUAL(MB, PS_Y), PRINT_TOVIRTUAL(ML, PS_X));
}

func void VIEWPTR_ALIGNTEXT(var int PTR, var int MARGIN) {
    V = _^(PTR);
    LP = V.TEXTLINES_NEXT;
    if ((MARGIN) == (0)) {
        WHILE(LP);
        L = _^(LP);
        VT = _^(L.DATA);
        WIDTH = ((PRINT_TOVIRTUAL(PRINT_GETSTRINGWIDTHPTR(VT.TEXT, VT.FONT), PS_X)) * (PS_VMAX)) / (V.VSIZEX);
        VT.POSX = ((PS_VMAX) / (2)) - ((WIDTH) / (2));
        LP = L.NEXT;
    };
    if ((MARGIN) > (0)) {
        WHILE(LP);
        L = _^(LP);
        VT = _^(L.DATA);
        VT.POSX = MARGIN;
        LP = L.NEXT;
    };
    WHILE(LP);
    L = _^(LP);
    VT = _^(L.DATA);
    WIDTH = ((PRINT_TOVIRTUAL(PRINT_GETSTRINGWIDTHPTR(VT.TEXT, VT.FONT), PS_X)) * (PS_VMAX)) / (V.VSIZEX);
    VT.POSX = ((PS_VMAX) - (WIDTH)) - (MARGIN);
    LP = L.NEXT;
    END;
}

instance VIEWPTR_ALIGNTEXT.V(ZCVIEW)
var int VIEWPTR_ALIGNTEXT.LP = 0;
instance VIEWPTR_ALIGNTEXT.L(ZCLIST)
instance VIEWPTR_ALIGNTEXT.VT(ZCVIEWTEXT)
var int VIEWPTR_ALIGNTEXT.WIDTH = 0;
func void VIEWPTR_TOP(var int PTR) {
    CALL__THISCALL(PTR, ZCVIEW_TOP);
}

func void VIEW_TOP(var int HNDL) {
    VIEWPTR_TOP(GETPTR(HNDL));
}

func void ZCVIEW_ARCHIVER(var ZCVIEW THIS) {
    PM_SAVEINT("_vtbl", THIS._VTBL);
    PM_SAVEINT("_zCInputCallBack_vtbl", THIS._ZCINPUTCALLBACK_VTBL);
    if (MEMINT_SWITCHG1G2(FALSE, TRUE)) {
        PM_SAVEINT("m_bFillZ", MEM_READINT((_@(0x2cf6)) + (8)));
    };
    PM_SAVEINT("next", THIS.NEXT);
    PM_SAVEINT("ViewID", THIS.VIEWID);
    PM_SAVEINT("flags", THIS.FLAGS);
    PM_SAVEINT("intflags", THIS.INTFLAGS);
    PM_SAVEINT("onDesk", THIS.ONDESK);
    PM_SAVEINT("alphaFunc", THIS.ALPHAFUNC);
    PM_SAVEINT("color", THIS.COLOR);
    PM_SAVEINT("alpha", THIS.ALPHA);
    PM_SAVEINT("childs_compare", THIS.CHILDS_COMPARE);
    PM_SAVEINT("childs_count", THIS.CHILDS_COUNT);
    PM_SAVEINT("childs_last", THIS.CHILDS_LAST);
    PM_SAVEINT("childs_wurzel", THIS.CHILDS_WURZEL);
    PM_SAVEINT("owner", THIS.OWNER);
    PM_SAVESTRING("backtex", ZCTEXTURE_GETNAME(THIS.BACKTEX));
    PM_SAVEINT("vposx", THIS.VPOSX);
    PM_SAVEINT("vposy", THIS.VPOSY);
    PM_SAVEINT("vsizex", THIS.VSIZEX);
    PM_SAVEINT("vsizey", THIS.VSIZEY);
    PM_SAVEINT("pposx", THIS.PPOSX);
    PM_SAVEINT("pposy", THIS.PPOSY);
    PM_SAVEINT("psizex", THIS.PSIZEX);
    PM_SAVEINT("psizey", THIS.PSIZEY);
    PM_SAVESTRING("font", PRINT_GETFONTNAME(THIS.FONT));
    PM_SAVEINT("fontColor", THIS.FONTCOLOR);
    PM_SAVEINT("px1", THIS.PX1);
    PM_SAVEINT("py1", THIS.PY1);
    PM_SAVEINT("px2", THIS.PX2);
    PM_SAVEINT("py2", THIS.PY2);
    PM_SAVEINT("winx", THIS.WINX);
    PM_SAVEINT("winy", THIS.WINY);
    PM_SAVECLASSPTR("textLines", THIS.TEXTLINES_NEXT, "zCList__zCViewText");
    PM_SAVEINT("scrollMaxTime", THIS.SCROLLMAXTIME);
    PM_SAVEINT("scrollTimer", THIS.SCROLLTIMER);
    PM_SAVEINT("fxOpen", THIS.FXOPEN);
    PM_SAVEINT("fxClose", THIS.FXCLOSE);
    PM_SAVEINT("timeDialog", THIS.TIMEDIALOG);
    PM_SAVEINT("timeOpen", THIS.TIMEOPEN);
    PM_SAVEINT("timeClose", THIS.TIMECLOSE);
    PM_SAVEINT("speedOpen", THIS.SPEEDOPEN);
    PM_SAVEINT("speedClose", THIS.SPEEDCLOSE);
    PM_SAVEINT("isOpen", THIS.ISOPEN);
    PM_SAVEINT("isClosed", THIS.ISCLOSED);
    PM_SAVEINT("continueOpen", THIS.CONTINUEOPEN);
    PM_SAVEINT("continueClose", THIS.CONTINUECLOSE);
    PM_SAVEINT("removeOnClose", THIS.REMOVEONCLOSE);
    PM_SAVEINT("resizeOnOpen", THIS.RESIZEONOPEN);
    PM_SAVEINT("maxTextLength", THIS.MAXTEXTLENGTH);
    PM_SAVESTRING("textMaxLength", THIS.TEXTMAXLENGTH);
    PM_SAVEINTARRAY("posCurrent_0", _@(THIS.POSCURRENT_0[0]), 2);
    PM_SAVEINTARRAY("posCurrent_1", _@(THIS.POSCURRENT_1[0]), 2);
    PM_SAVEINTARRAY("posOpenClose_0", _@(THIS.POSOPENCLOSE_0[0]), 2);
    PM_SAVEINTARRAY("posOpenClose_1", _@(THIS.POSOPENCLOSE_1[0]), 2);
}

func void ZCVIEW_UNARCHIVER(var ZCVIEW THIS) {
    VX1 = PM_LOAD("vposx");
    VY1 = PM_LOAD("vposy");
    VX2 = (VX1) + (PM_LOAD("vsizex"));
    VY2 = (VY1) + (PM_LOAD("vsizey"));
    _VIEWPTR_CREATEINTOPTR(_@(0x2cf8), VX1, VY1, VX2, VY2);
    THIS._VTBL = PM_LOADINT("_vtbl");
    THIS._ZCINPUTCALLBACK_VTBL = PM_LOADINT("_zCInputCallBack_vtbl");
    if (MEMINT_SWITCHG1G2(FALSE, TRUE)) {
        MEM_WRITEINT((_@(0x2cf8)) + (8), PM_LOADINT("m_bFillZ"));
    };
    THIS.VIEWID = PM_LOADINT("ViewID");
    THIS.FLAGS = PM_LOADINT("flags");
    THIS.INTFLAGS = PM_LOADINT("intflags");
    THIS.ALPHAFUNC = PM_LOADINT("alphaFunc");
    THIS.COLOR = PM_LOADINT("color");
    THIS.ALPHA = PM_LOADINT("alpha");
    VIEWPTR_SETTEXTURE(_@(0x2cf8), PM_LOADSTRING("backtex"));
    THIS.VPOSX = PM_LOADINT("vposx");
    THIS.VPOSY = PM_LOADINT("vposy");
    THIS.VSIZEX = PM_LOADINT("vsizex");
    THIS.VSIZEY = PM_LOADINT("vsizey");
    THIS.PPOSX = PM_LOADINT("pposx");
    THIS.PPOSY = PM_LOADINT("pposy");
    THIS.PSIZEX = PM_LOADINT("psizex");
    THIS.PSIZEY = PM_LOADINT("psizey");
    THIS.FONT = PRINT_GETFONTPTR(PM_LOADSTRING("font"));
    THIS.FONTCOLOR = PM_LOADINT("fontColor");
    THIS.PX1 = PM_LOADINT("px1");
    THIS.PY1 = PM_LOADINT("py1");
    THIS.PX2 = PM_LOADINT("px2");
    THIS.PY2 = PM_LOADINT("py2");
    THIS.WINX = PM_LOADINT("winx");
    THIS.WINY = PM_LOADINT("winy");
    THIS.SCROLLMAXTIME = PM_LOADINT("scrollMaxTime");
    THIS.SCROLLTIMER = PM_LOADINT("scrollTimer");
    THIS.FXOPEN = PM_LOADINT("fxOpen");
    THIS.FXCLOSE = PM_LOADINT("fxClose");
    THIS.TIMEDIALOG = PM_LOADINT("timeDialog");
    THIS.TIMEOPEN = PM_LOADINT("timeOpen");
    THIS.TIMECLOSE = PM_LOADINT("timeClose");
    THIS.SPEEDOPEN = PM_LOADINT("speedOpen");
    THIS.SPEEDCLOSE = PM_LOADINT("speedClose");
    THIS.ISOPEN = PM_LOADINT("isOpen");
    THIS.ISCLOSED = PM_LOADINT("isClosed");
    THIS.CONTINUEOPEN = PM_LOADINT("continueOpen");
    THIS.CONTINUECLOSE = PM_LOADINT("continueClose");
    THIS.REMOVEONCLOSE = PM_LOADINT("removeOnClose");
    THIS.RESIZEONOPEN = PM_LOADINT("resizeOnOpen");
    THIS.MAXTEXTLENGTH = PM_LOADINT("maxTextLength");
    THIS.TEXTMAXLENGTH = PM_LOADSTRING("textMaxLength");
    PM_LOADARRAYTOPTR("posCurrent_0", _@(THIS.POSCURRENT_0[0]));
    PM_LOADARRAYTOPTR("posCurrent_1", _@(THIS.POSCURRENT_1[0]));
    PM_LOADARRAYTOPTR("posOpenClose_0", _@(THIS.POSOPENCLOSE_0[0]));
    PM_LOADARRAYTOPTR("posOpenClose_1", _@(THIS.POSOPENCLOSE_1[0]));
    if (PM_LOAD("ondesk")) {
        VIEWPTR_OPEN(_@(0x2cf8));
    };
    THIS.TEXTLINES_NEXT = PM_LOADCLASSPTR("textLines");
}

var int ZCVIEW_UNARCHIVER.VX1 = 0;
var int ZCVIEW_UNARCHIVER.VY1 = 0;
var int ZCVIEW_UNARCHIVER.VX2 = 0;
var int ZCVIEW_UNARCHIVER.VY2 = 0;
