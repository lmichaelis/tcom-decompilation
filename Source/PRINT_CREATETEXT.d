func int PRINT_CREATETEXT(var string TEXT, var string FONT) {
    var ZCVIEWTEXT TXT;
    var int HNDL;
    HNDL = NEW(10673);
    TXT = GET(HNDL);
    TXT.TIMED = 0;
    TXT.FONT = PRINT_GETFONTPTR(FONT);
    TXT.COLOR = -(1);
    TXT.TEXT = TEXT;
    return HNDL;
}

func instance PRINT_GETTEXT(var int HNDL) {
    return GET(HNDL);
}

func void PRINT_DELETETEXT(var int HNDL) {
    var ZCVIEWTEXT TXT;
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    TXT = PRINT_GETTEXT(HNDL);
    ZCVIEWTEXT_DELETE(TXT);
    DELETE(HNDL);
}

func void PRINT_SETALPHA(var int HNDL, var int A) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    PRINTPTR_SETALPHA(GETPTR(HNDL), A);
}

var int PRINT_SCREEN[2];
func void PRINT_GETSCREENSIZE() {
    var ZCVIEW SCREEN;
    if (!(_@(5765))) {
        MEM_INITGLOBALINST();
    };
    SCREEN = _^(MEM_GAME._ZCSESSION_VIEWPORT);
    PRINT_SCREEN[0] = SCREEN.PSIZEX;
    PRINT_SCREEN[1] = SCREEN.PSIZEY;
    _PRINT_RATIO();
}

func int PRINT_TOVIRTUALF(var int PXL, var int DIM) {
    PRINT_GETSCREENSIZE();
    PXL *= PS_VMAX;
    if ((DIM) == (PS_X)) {
        return FRACF(PXL, PRINT_SCREEN[0]);
    };
    if ((DIM) == (PS_Y)) {
        return FRACF(PXL, PRINT_SCREEN[1]);
    };
    return FRACF(PXL, DIM);
}

func int PRINT_TOPIXEL(var int VRT, var int DIM) {
    return ROUNDF(PRINT_TOPIXELF(VRT, DIM));
}

func int PRINT_TODEGREE(var int ANGLE) {
    var int TODEGREE;
    return MULF(ANGLE, TODEGREE);
}

func void ZCVIEWTEXTPRINT_UNARCHIVER(var ZCVIEWTEXT THIS) {
    var ZCVIEW V;
    THIS._VTBL = PM_LOADINT("vtbl");
    THIS.POSX = PM_LOADINT("posx");
    THIS.POSY = PM_LOADINT("posy");
    THIS.TEXT = PM_LOADSTRING("text");
    THIS.FONT = PRINT_GETFONTPTR(PM_LOADSTRING("fontname"));
    THIS.TIMER = PM_LOADINT("timer");
    THIS.INPRINTWIN = PM_LOADINT("inPrintWin");
    THIS.COLOR = PM_LOADINT("color");
    THIS.TIMED = PM_LOADINT("timed");
    THIS.COLORED = PM_LOADINT("colored");
    V = _^(MEM_GAME.ARRAY_VIEW[0]);
    if (V.TEXTLINES_NEXT) {
        LIST_ADD(V.TEXTLINES_NEXT, MEM_INSTTOPTR(11138));
    };
    V.TEXTLINES_NEXT = LIST_CREATE(MEM_INSTTOPTR(11138));
}

func int PRINT_EXTPTR(var int X, var int Y, var string TEXT, var string FONT, var int COLOR, var int TIME) {
    var ZCVIEW V;
    var ZCVIEWTEXT TXT;
    var int PTR;
    if ((!(_@(5765))) || (!(_@(5007)))) {
        MEM_INITLABELS();
        MEM_INITGLOBALINST();
    };
    PTR = CREATE(11136);
    TXT = _^(PTR);
    if (!(COLOR)) {
        COLOR = 1;
    };
    TXT.TIMED = (TIME) != (-(1));
    if ((TIME) != (-(1))) {
        TXT.TIMER = MKF(TIME);
    };
    TXT.FONT = PRINT_GETFONTPTR(FONT);
    TXT.COLOR = COLOR;
    TXT.TEXT = TEXT;
    TXT.COLORED = 1;
    TXT.POSX = X;
    if ((X) == (-(1))) {
        TXT.POSX = ((PS_VMAX) - (PRINT_TOVIRTUAL(PRINT_GETSTRINGWIDTH(TEXT, FONT), PS_X))) / (2);
    };
    TXT.POSY = Y;
    if ((Y) == (-(1))) {
        TXT.POSY = ((PS_VMAX) - (PRINT_TOVIRTUAL(PRINT_GETFONTHEIGHT(FONT), PS_Y))) / (2);
    };
    V = _^(MEM_GAME.ARRAY_VIEW[0]);
    if (V.TEXTLINES_NEXT) {
        LIST_ADD(V.TEXTLINES_NEXT, MEM_INSTTOPTR(11158));
    };
    V.TEXTLINES_NEXT = LIST_CREATE(MEM_INSTTOPTR(11158));
    return PTR;
}

func int PRINT_TEXTFIELD(var int X, var int Y, var string TEXT, var string FONT, var int HEIGHT) {
    return PRINT_TEXTFIELDCOLORED(X, Y, TEXT, FONT, HEIGHT, -(1));
}

func void GCPRINTS_DELETE(var GCPRINTS THIS) {
    ANIM8_DELETE(THIS.A8_MOVEMENT);
    PRINT_DELETETEXT(THIS.TV_TEXT);
}

func void GCPRINTS_POSITION(var int H, var int VALUE) {
    var ZCVIEWTEXT T;
    var GCPRINTS P;
    P = GET(H);
    T = GET(P.TV_TEXT);
    T.POSY = VALUE;
}

func void PRINTS(var string TXT) {
    PRINTS_EXT(TXT, RGBA(255, 255, 255, 0));
}

func void PRINT_FIXPS() {
    var int ADDR_COLORED;
    var int OFFSET;
    var int ADDR;
    var int ADDR_COLOR;
    var int I;
    REPEAT(I, 4);
    ADDR = MEM_READSTATARR(ADDR_COLOR[0], I);
    MEMORYPROTECTIONOVERRIDE(ADDR, 8);
    MEM_WRITEINT(ADDR, 2376903);
    MEM_WRITEBYTE((ADDR) + (3), MEM_READSTATARR(OFFSET[0], I));
    MEM_WRITEINT((ADDR) + (4), -(1));
    ADDR = MEM_READSTATARR(ADDR_COLORED[0], I);
    MEMORYPROTECTIONOVERRIDE(ADDR, 4);
    MEM_WRITEINT(ADDR, 23761040);
    END;
}

