var int PRINT_LIST = 0;
func int SYSGETTIME() {
    CALL__CDECL(SYSGETTIMEPTR);
    return CALL_RETVALASINT();
}

func int RGBA(var int R, var int G, var int B, var int A) {
    if (!(A)) {
        if (!(B)) {
            if (!(G)) {
                if (!(R)) {
                    return 1;
                };
            };
        };
    };
    return (((((R) & (ZCOLOR_CHANNEL)) << (ZCOLOR_SHIFT_RED)) | (((G) & (ZCOLOR_CHANNEL)) << (ZCOLOR_SHIFT_GREEN))) | (((B) & (ZCOLOR_CHANNEL)) << (ZCOLOR_SHIFT_BLUE))) | (((A) & (ZCOLOR_CHANNEL)) << (ZCOLOR_SHIFT_ALPHA));
}

func int CHANGEALPHA(var int ZCOL, var int A) {
    return ((ZCOL) & (~((ZCOLOR_CHANNEL) << (ZCOLOR_SHIFT_ALPHA)))) | (((A) & (ZCOLOR_CHANNEL)) << (ZCOLOR_SHIFT_ALPHA));
}

func int GETALPHA(var int ZCOL) {
    return ((ZCOL) & ((ZCOLOR_CHANNEL) << (ZCOLOR_SHIFT_ALPHA))) >> (ZCOLOR_SHIFT_ALPHA);
}

func int PRINT_CREATETEXT(var string TEXT, var string FONT) {
    HNDL = NEW(0x29b1);
    TXT = GET(HNDL);
    TXT.TIMED = 0;
    TXT.FONT = PRINT_GETFONTPTR(FONT);
    TXT.COLOR = -(1);
    TXT.TEXT = TEXT;
    return HNDL;
}

var int PRINT_CREATETEXT.HNDL = 0;
instance PRINT_CREATETEXT.TXT(ZCVIEWTEXT)
func int PRINT_CREATETEXTPTR(var string TEXT, var string FONT) {
    PTR = CREATE(0x29b1);
    TXT = _^(PTR);
    TXT.TIMED = 0;
    TXT.FONT = PRINT_GETFONTPTR(FONT);
    TXT.TEXT = TEXT;
    TXT.COLOR = -(1);
    return PTR;
}

var int PRINT_CREATETEXTPTR.PTR = 0;
instance PRINT_CREATETEXTPTR.TXT(ZCVIEWTEXT)
func int PRINT_CREATETEXTPTRCOLORED(var string TEXT, var string FONT, var int COLOR) {
    PTR = CREATE(0x29b1);
    TXT = _^(PTR);
    TXT.TIMED = 0;
    TXT.FONT = PRINT_GETFONTPTR(FONT);
    TXT.TEXT = TEXT;
    TXT.COLOR = COLOR;
    if ((!(COLOR)) == (-(1))) {
        TXT.COLORED = 1;
    };
    return PTR;
}

var int PRINT_CREATETEXTPTRCOLORED.PTR = 0;
instance PRINT_CREATETEXTPTRCOLORED.TXT(ZCVIEWTEXT)
func instance PRINT_GETTEXT(var int HNDL) {
    return GET(HNDL);
}

func int PRINT_GETTEXTPTR(var int HNDL) {
    return GETPTR(HNDL);
}

func void PRINT_DELETETEXT(var int HNDL) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    TXT = PRINT_GETTEXT(HNDL);
    ZCVIEWTEXT_DELETE(TXT);
    DELETE(HNDL);
}

instance PRINT_DELETETEXT.TXT(ZCVIEWTEXT)
func void PRINTPTR_SETALPHA(var int PTR, var int A) {
    if (!(PTR)) {
        return;
    };
    TXT = MEM_PTRTOINST(PTR);
    TXT.COLORED = 1;
    TXT.COLOR = CHANGEALPHA(TXT.COLOR, A);
}

instance PRINTPTR_SETALPHA.TXT(ZCVIEWTEXT)
func void PRINT_SETALPHA(var int HNDL, var int A) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    PRINTPTR_SETALPHA(GETPTR(HNDL), A);
}

var int PRINT_RATIO = 0;
func void _PRINT_RATIO() {
    PRINT_RATIO = MKF(PRINT_SCREEN[0]);
    PRINT_RATIO = DIVF(PRINT_RATIO, MKF(PRINT_SCREEN[1]));
}

var int PRINT_SCREEN[2] = {0, 0};
func void PRINT_GETSCREENSIZE() {
    if (!(_@(0x1685))) {
        MEM_INITGLOBALINST();
    };
    SCREEN = _^(MEM_GAME._ZCSESSION_VIEWPORT);
    PRINT_SCREEN[0] = SCREEN.PSIZEX;
    PRINT_SCREEN[1] = SCREEN.PSIZEY;
    _PRINT_RATIO();
}

instance PRINT_GETSCREENSIZE.SCREEN(ZCVIEW)
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

func int PRINT_TOPIXELF(var int VRT, var int DIM) {
    PRINT_GETSCREENSIZE();
    if ((DIM) == (PS_X)) {
        VRT *= PRINT_SCREEN[0];
    };
    if ((DIM) == (PS_Y)) {
        VRT *= PRINT_SCREEN[1];
    };
    VRT *= DIM;
    return FRACF(VRT, PS_VMAX);
}

func int PRINT_TOVIRTUAL(var int PXL, var int DIM) {
    return ROUNDF(PRINT_TOVIRTUALF(PXL, DIM));
}

func int PRINT_TOPIXEL(var int VRT, var int DIM) {
    return ROUNDF(PRINT_TOPIXELF(VRT, DIM));
}

func int PRINT_TORATIO(var int SIZE, var int DIM) {
    if ((DIM) == (PS_Y)) {
        return ROUNDF(MULF(MKF(SIZE), PRINT_RATIO));
    };
    if ((DIM) == (PS_X)) {
        return ROUNDF(DIVF(MKF(SIZE), PRINT_RATIO));
    };
    return -(1);
}

func int PRINT_TORADIAN(var int ANGLE) {
    return MULF(ANGLE, TORADIAN);
}

const int PRINT_TORADIAN.TORADIAN = 1016003125;
func int PRINT_TODEGREE(var int ANGLE) {
    return MULF(ANGLE, TODEGREE);
}

const int PRINT_TODEGREE.TODEGREE = 1113927393;
instance ZCVIEWTEXTPRINT(ZCVIEWTEXT) {
    _VTBL = ZCVIEWTEXT_VTBL;
    INPRINTWIN = 0;
    TIMER = 0;
    TIMED = 0;
    COLORED = 0;
    COLOR = 0;
}

func void ZCVIEWTEXTPRINT_UNARCHIVER(var ZCVIEWTEXT THIS) {
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
        LIST_ADD(V.TEXTLINES_NEXT, MEM_INSTTOPTR(0x2b82));
    };
    V.TEXTLINES_NEXT = LIST_CREATE(MEM_INSTTOPTR(0x2b82));
}

instance ZCVIEWTEXTPRINT_UNARCHIVER.V(ZCVIEW)
func int PRINT_EXT(var int X, var int Y, var string TEXT, var string FONT, var int COLOR, var int TIME) {
    if ((!(_@(0x1685))) || (!(_@(0x138f)))) {
        MEM_INITLABELS();
        MEM_INITGLOBALINST();
    };
    if ((TIME) == (-(1))) {
        H = NEW(0x2b80);
        TXT = GET(H);
    };
    H = -(1);
    TXT = _^(CREATE(0x2b80));
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
        LIST_ADD(V.TEXTLINES_NEXT, MEM_INSTTOPTR(0x2b8c));
    };
    V.TEXTLINES_NEXT = LIST_CREATE(MEM_INSTTOPTR(0x2b8c));
    return H;
}

var int PRINT_EXT.H = 0;
instance PRINT_EXT.TXT(ZCVIEWTEXT)
instance PRINT_EXT.V(ZCVIEW)
func int PRINT_EXTPTR(var int X, var int Y, var string TEXT, var string FONT, var int COLOR, var int TIME) {
    if ((!(_@(0x1685))) || (!(_@(0x138f)))) {
        MEM_INITLABELS();
        MEM_INITGLOBALINST();
    };
    PTR = CREATE(0x2b80);
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
        LIST_ADD(V.TEXTLINES_NEXT, MEM_INSTTOPTR(0x2b96));
    };
    V.TEXTLINES_NEXT = LIST_CREATE(MEM_INSTTOPTR(0x2b96));
    return PTR;
}

var int PRINT_EXTPTR.PTR = 0;
instance PRINT_EXTPTR.TXT(ZCVIEWTEXT)
instance PRINT_EXTPTR.V(ZCVIEW)
func int PRINT_EXTPXL(var int X, var int Y, var string TEXT, var string FONT, var int COLOR, var int TIME) {
    return PRINT_EXT(PRINT_TOVIRTUAL(X, PS_X), PRINT_TOVIRTUAL(Y, PS_Y), TEXT, FONT, COLOR, TIME);
}

func string PRINT_LONGESTLINEEXT(var string TEXT, var string FONT, var string SEPARATOR) {
    CNT = STR_SPLITCOUNT(TEXT, SEPARATOR);
    I = 0;
    MAX = 0;
    TMP = 0;
    POS = MEM_STACKPOS.POSITION;
    if ((I) >= (CNT)) {
        return STR_SPLIT(TEXT, SEPARATOR, (I) - (1));
    };
    TMP = PRINT_GETSTRINGWIDTH(STR_SPLIT(TEXT, SEPARATOR, I), FONT);
    if ((TMP) > (MAX)) {
        MAX = TMP;
    };
    I += 1;
    MEM_STACKPOS.POSITION = POS;
    return 0 /* !broken stack! */;
}

var int PRINT_LONGESTLINEEXT.CNT = 0;
var int PRINT_LONGESTLINEEXT.I = 0;
var int PRINT_LONGESTLINEEXT.MAX = 0;
var int PRINT_LONGESTLINEEXT.TMP = 0;
var int PRINT_LONGESTLINEEXT.POS = 0;
func string PRINT_LONGESTLINE(var string TEXT, var string FONT) {
    return PRINT_LONGESTLINEEXT(TEXT, FONT, PRINT_LINESEPERATOR);
}

func int PRINT_LONGESTLINELENGTHEXT(var string TEXT, var string FONT, var string SEPARATOR) {
    return PRINT_GETSTRINGWIDTH(PRINT_LONGESTLINEEXT(TEXT, FONT, SEPARATOR), FONT);
}

func int PRINT_LONGESTLINELENGTH(var string TEXT, var string FONT) {
    return PRINT_LONGESTLINELENGTHEXT(TEXT, FONT, PRINT_LINESEPERATOR);
}

func int PRINT_TEXTFIELDCOLORED(var int X, var int Y, var string TEXT, var string FONT, var int HEIGHT, var int COLOR) {
    CNT = STR_SPLITCOUNT(TEXT, PRINT_LINESEPERATOR);
    I = 1;
    PTR = PRINT_CREATETEXTPTRCOLORED(STR_SPLIT(TEXT, PRINT_LINESEPERATOR, 0), FONT, COLOR);
    TXT = _^(PTR);
    TXT.POSX = X;
    TXT.POSY = Y;
    LIST = LIST_CREATE(PTR);
    POS = MEM_STACKPOS.POSITION;
    if ((I) >= (CNT)) {
        return LIST;
    };
    PTR = PRINT_CREATETEXTPTRCOLORED(STR_SPLIT(TEXT, PRINT_LINESEPERATOR, I), FONT, COLOR);
    TXT = _^(PTR);
    TXT.POSX = X;
    TXT.POSY = (Y) + ((HEIGHT) * (I));
    LIST_ADD(LIST, PTR);
    I += 1;
    MEM_STACKPOS.POSITION = POS;
    return 0 /* !broken stack! */;
}

var int PRINT_TEXTFIELDCOLORED.CNT = 0;
var int PRINT_TEXTFIELDCOLORED.I = 0;
var int PRINT_TEXTFIELDCOLORED.PTR = 0;
instance PRINT_TEXTFIELDCOLORED.TXT(ZCVIEWTEXT)
var int PRINT_TEXTFIELDCOLORED.LIST = 0;
var int PRINT_TEXTFIELDCOLORED.POS = 0;
func int PRINT_TEXTFIELD(var int X, var int Y, var string TEXT, var string FONT, var int HEIGHT) {
    return PRINT_TEXTFIELDCOLORED(X, Y, TEXT, FONT, HEIGHT, -(1));
}

func int PRINT_TEXTFIELDPXL(var int X, var int Y, var string TEXT, var string FONT) {
    return PRINT_TEXTFIELD(PRINT_TOVIRTUAL(X, PS_X), PRINT_TOVIRTUAL(Y, PS_Y), TEXT, FONT, PRINT_TOVIRTUAL(PRINT_GETFONTHEIGHT(FONT), PS_Y));
}

class GCPRINTS {
	var int A8_ALPHA;
	var int A8_MOVEMENT;
	var int TV_TEXT;
	var int VR_POS;
	var int VR_OFFS;
};





instance GCPRINTS@(GCPRINTS)
var int GCPRINTS_ACT = 0;
var int GCPRINTS_COFF = 0;
func void GCPRINTS_DELETE(var GCPRINTS THIS) {
    ANIM8_DELETE(THIS.A8_MOVEMENT);
    PRINT_DELETETEXT(THIS.TV_TEXT);
}

func void GCPRINTS_ALPHA(var int H, var int VALUE) {
    P = GET(H);
    T = GET(P.TV_TEXT);
    T.COLOR = CHANGEALPHA(T.COLOR, VALUE);
    if ((GCPRINTS_COFF) > (P.VR_OFFS)) {
        P.VR_POS -= ((GCPRINTS_COFF) - (P.VR_OFFS)) * (PF_TEXTHEIGHT);
        ANIM8(P.A8_MOVEMENT, P.VR_POS, PF_MOVEYTIME, A8_SLOWEND);
        P.VR_OFFS = GCPRINTS_COFF;
    };
}

instance GCPRINTS_ALPHA.P(GCPRINTS)
instance GCPRINTS_ALPHA.T(ZCVIEWTEXT)
func void GCPRINTS_POSITION(var int H, var int VALUE) {
    P = GET(H);
    T = GET(P.TV_TEXT);
    T.POSY = VALUE;
}

instance GCPRINTS_POSITION.P(GCPRINTS)
instance GCPRINTS_POSITION.T(ZCVIEWTEXT)
func void PRINTS_EXT(var string TXT, var int COLOR) {
    H = NEW(0x2bd0);
    P = GET(H);
    V = ANIM8_NEWEXT(1, 0x2bd5, H, FALSE);
    ANIM8_REMOVEIFEMPTY(V, TRUE);
    ANIM8_REMOVEDATAIFEMPTY(V, TRUE);
    ANIM8(V, 255, PF_FADEINTIME, A8_CONSTANT);
    ANIM8Q(V, 0, PF_WAITTIME, A8_WAIT);
    ANIM8Q(V, 0, PF_FADEOUTTIME, A8_SLOWSTART);
    P.A8_ALPHA = V;
    V = ANIM8_NEWEXT(PF_PRINTY, 0x2bda, H, FALSE);
    ANIM8(V, (PF_PRINTY) - (PF_TEXTHEIGHT), PF_MOVEYTIME, A8_SLOWEND);
    P.A8_MOVEMENT = V;
    P.TV_TEXT = PRINT_EXT(PF_PRINTX, PF_PRINTY, TXT, PF_FONT, COLOR, -(1));
    P.VR_POS = (PF_PRINTY) - (PF_TEXTHEIGHT);
    GCPRINTS_COFF += 1;
    if (!(GCPRINTS_ACT)) {
        GCPRINTS_COFF = 0;
    };
    GCPRINTS_ACT += 1;
    P.VR_OFFS = GCPRINTS_COFF;
}

var int PRINTS_EXT.H = 0;
instance PRINTS_EXT.P(GCPRINTS)
var int PRINTS_EXT.V = 0;
func void AI_PRINTS_EXT(var C_NPC SLF, var string TXT, var int COLOR) {
    AI_FUNCTION_SI(SLF, 0x2bdf, TXT, COLOR);
}

func void PRINTS(var string TXT) {
    PRINTS_EXT(TXT, RGBA(255, 255, 255, 0));
}

func void AI_PRINTS(var C_NPC SLF, var string TXT) {
    AI_FUNCTION_S(SLF, 0x2be9, TXT);
}

func void PRINT_FIXPS() {
    REPEAT(I, 4);
    ADDR = MEM_READSTATARR(ADDR_COLOR[0], I);
    MEMORYPROTECTIONOVERRIDE(ADDR, 8);
    MEM_WRITEINT(ADDR, 0x2444c7);
    MEM_WRITEBYTE((ADDR) + (3), MEM_READSTATARR(OFFSET[0], I));
    MEM_WRITEINT((ADDR) + (4), -(1));
    ADDR = MEM_READSTATARR(ADDR_COLORED[0], I);
    MEMORYPROTECTIONOVERRIDE(ADDR, 4);
    MEM_WRITEINT(ADDR, 0x16a9090);
    END;
}

const int PRINT_FIXPS.ADDR_COLOR[4] = {8027512, 8027837, 8028042, 8028406};
const int PRINT_FIXPS.ADDR_COLORED[4] = {8027536, 8027857, 8028058, 8028422};
const int PRINT_FIXPS.OFFSET[4] = {28, 64, 32, 60};
var int PRINT_FIXPS.I = 0;
var int PRINT_FIXPS.ADDR = 0;
