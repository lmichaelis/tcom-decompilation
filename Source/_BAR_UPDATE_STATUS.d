const int _BAR_UPDATE_STATUS = 1;
class BAR {
	var int X;
	var int Y;
	var int BARTOP;
	var int BARLEFT;
	var int WIDTH;
	var int HEIGHT;
	var string BACKTEX;
	var string BARTEX;
	var int VALUE;
	var int VALUEMAX;
};
prototype GOTHICBAR(BAR) {
    X = (PRINT_SCREEN[0]) / (2);
    Y = (PRINT_SCREEN[1]) - (20);
    BARTOP = MEMINT_SWITCHG1G2(2, 3);
    BARLEFT = 7;
    WIDTH = 180;
    HEIGHT = 20;
    BACKTEX = "Bar_Back.tga";
    BARTEX = "Bar_Misc.tga";
    VALUE = 100;
    VALUEMAX = 100;
}

instance GOTHICBAR@(GOTHICBAR);
class _BAR {
	var int VALMAX;
	var int BARW;
	var int V0;
	var int V1;
	var int HIDDEN;
};
instance _BAR@(_BAR);
func void _BAR_ARCHIVER(var _BAR THIS) {
    PM_SAVEINT("valMax", THIS.VALMAX);
    PM_SAVEINT("barW", THIS.BARW);
    PM_SAVEINT("v0", THIS.V0);
    PM_SAVEINT("v1", THIS.V1);
    PM_SAVEINT("hidden", THIS.HIDDEN);
}

func void _BAR_DELETE(var _BAR B) {
    if (HLP_ISVALIDHANDLE(B.V0)) {
        DELETE(B.V0);
    };
    if (HLP_ISVALIDHANDLE(B.V1)) {
        DELETE(B.V1);
    };
}

func void BAR_SETPROMILLE(var int BAR, var int PRO) {
    var _BAR B;
    if (!(HLP_ISVALIDHANDLE(BAR))) {
        return;
    };
    B = GET(BAR);
    if ((PRO) > (1000)) {
        PRO = 1000;
    };
    VIEW_RESIZE(B.V1, ((PRO) * (B.BARW)) / (1000), -(1));
}

func void BAR_DELETE(var int BAR) {
    if (HLP_ISVALIDHANDLE(BAR)) {
        DELETE(BAR);
    };
}

func void BAR_SHOW(var int BAR) {
    var _BAR B;
    if (!(HLP_ISVALIDHANDLE(BAR))) {
        return;
    };
    B = GET(BAR);
    if ((_BAR_UPDATE_STATUS) || (!((_LEGO_FLAGS) & (LEGO_BARS)))) {
        VIEW_OPEN(B.V0);
        VIEW_OPEN(B.V1);
    };
    B.HIDDEN = FALSE;
}

func void _BAR_RESIZE_INTERNAL(var int BAR, var int WIDTH, var int HEIGHT) {
    var int BARY;
    var int SCALEY;
    var int BARX;
    var int VCENTERX;
    var int VCENTERY;
    var ZCVIEW V1;
    var int BARDIFFX;
    var _BAR B;
    var int BARDIFFY;
    var int CURVAL;
    var int BARWIDTH;
    var ZCVIEW V0;
    var int SCALEX;
    var int BARHEIGHT;
    if (!(HLP_ISVALIDHANDLE(BAR))) {
        return;
    };
    B = GET(BAR);
    V0 = VIEW_GET(B.V0);
    VCENTERX = (V0.VPOSX) + ((V0.VSIZEX) >> (1));
    VCENTERY = (V0.VPOSY) + ((V0.VSIZEY) >> (1));
    V1 = VIEW_GET(B.V1);
    BARDIFFX = (V0.VSIZEX) - (B.BARW);
    BARDIFFY = (V0.VSIZEY) - (V1.VSIZEY);
    SCALEX = FRACF(WIDTH, V0.VSIZEX);
    SCALEY = FRACF(HEIGHT, V0.VSIZEY);
    BARDIFFX = ROUNDF(MULF(MKF(BARDIFFX), SCALEX));
    BARDIFFY = ROUNDF(MULF(MKF(BARDIFFY), SCALEY));
    if ((WIDTH) > (0)) {
        CURVAL = FRACF(B.BARW, V1.VSIZEX);
        B.BARW = (WIDTH) - (BARDIFFX);
        BARWIDTH = ROUNDF(DIVF(MKF(B.BARW), CURVAL));
        BARX = ((V0.VPOSX) + (ROUNDF(FRACF(BARDIFFX, 2)))) - (V1.VPOSX);
    };
    BARWIDTH = WIDTH;
    BARX = 0;
    if ((WIDTH) == (0)) {
        B.BARW = 0;
    };
    if ((HEIGHT) > (0)) {
        BARHEIGHT = (HEIGHT) - (BARDIFFY);
        BARY = ((V0.VPOSY) + (ROUNDF(FRACF(BARDIFFY, 2)))) - (V1.VPOSY);
    };
    BARHEIGHT = HEIGHT;
    BARY = 0;
    VIEW_RESIZE(B.V0, WIDTH, HEIGHT);
    VIEW_RESIZE(B.V1, BARWIDTH, BARHEIGHT);
    VIEW_MOVE(B.V1, BARX, BARY);
    _BAR_MOVETO_INTERNAL(BAR, VCENTERX, VCENTERY);
}

const int BAR_ANCHOR_W = 16;
const int BAR_ANCHOR_NE = 10;
const int BAR_ANCHOR_NW = 18;
const int BAR_ANCHOR_SE = 12;
const int BAR_ANCHOR_SW = 20;
func int BAR_GETANCHORXY(var int X, var int Y) {
    var int ANCHOR;
    ANCHOR = 0;
    if ((X) < (((PS_VMAX) + (1)) / (3))) {
        ANCHOR = (ANCHOR) | (BAR_ANCHOR_W);
    };
    if ((X) >= ((((PS_VMAX) + (1)) / (3)) * (2))) {
        ANCHOR = (ANCHOR) | (BAR_ANCHOR_E);
    };
    if ((Y) < (((PS_VMAX) + (1)) / (3))) {
        ANCHOR = (ANCHOR) | (BAR_ANCHOR_N);
    };
    if ((Y) >= ((((PS_VMAX) + (1)) / (3)) * (2))) {
        ANCHOR = (ANCHOR) | (BAR_ANCHOR_S);
    };
    return +(ANCHOR);
}

func void BAR_SCALEEXT(var int BAR, var int SCALEF, var int X0, var int Y0, var int X1, var int Y1) {
    var int PIXELSFROMMIDDLE;
    var _BAR B;
    var int X;
    var int H;
    var ZCVIEW V;
    var int Y;
    var int W2;
    var int W;
    var int PIXELSFROMLEFT;
    var int PIXELSFROMCENTER;
    var int PIXELSFROMTOP;
    var int ANCHOR;
    var int H2;
    var int PIXELSFROMRIGHT;
    var int PIXELSFROMBOTTOM;
    if (!(HLP_ISVALIDHANDLE(BAR))) {
        return;
    };
    B = GET(BAR);
    V = VIEW_GET(B.V0);
    X = PRINT_TOPIXEL(V.VPOSX, X0);
    Y = PRINT_TOPIXEL(V.VPOSY, Y0);
    W = PRINT_TOPIXEL(V.VSIZEX, X0);
    H = PRINT_TOPIXEL(V.VSIZEY, Y0);
    ANCHOR = BAR_GETANCHOR(BAR);
    if ((ANCHOR) & (BAR_ANCHOR_W)) {
        PIXELSFROMLEFT = X;
        X = PRINT_TOVIRTUAL(ROUNDF(MULF(MKF(PIXELSFROMLEFT), SCALEF)), X1);
    };
    if ((ANCHOR) & (BAR_ANCHOR_E)) {
        PIXELSFROMRIGHT = (X0) - ((X) + (W));
        X = (PS_VMAX) - (PRINT_TOVIRTUAL(ROUNDF(MULF(MKF((PIXELSFROMRIGHT) + (W)), SCALEF)), X1));
    };
    W2 = ROUNDF(FRACF(W, 2));
    PIXELSFROMCENTER = ((X0) / (2)) - ((X) + (W2));
    X = ((PS_VMAX) / (2)) - (PRINT_TOVIRTUAL(ROUNDF(MULF(MKF((PIXELSFROMCENTER) + (W2)), SCALEF)), X1));
    if ((ANCHOR) & (BAR_ANCHOR_N)) {
        PIXELSFROMTOP = Y;
        Y = PRINT_TOVIRTUAL(ROUNDF(MULF(MKF(PIXELSFROMTOP), SCALEF)), Y1);
    };
    if ((ANCHOR) & (BAR_ANCHOR_S)) {
        PIXELSFROMBOTTOM = (Y0) - ((Y) + (H));
        Y = (PS_VMAX) - (PRINT_TOVIRTUAL(ROUNDF(MULF(MKF((PIXELSFROMBOTTOM) + (H)), SCALEF)), Y1));
    };
    H2 = ROUNDF(FRACF(H, 2));
    PIXELSFROMMIDDLE = ((Y0) / (2)) - ((Y) + (H2));
    Y = ((PS_VMAX) / (2)) - (PRINT_TOVIRTUAL(ROUNDF(MULF(MKF((PIXELSFROMMIDDLE) + (H2)), SCALEF)), Y1));
    W = PRINT_TOVIRTUAL(ROUNDF(MULF(MKF(W), SCALEF)), X1);
    H = PRINT_TOVIRTUAL(ROUNDF(MULF(MKF(H), SCALEF)), Y1);
    X += (W) >> (1);
    Y += (H) >> (1);
    _BAR_RESIZE_INTERNAL(BAR, W, H);
    _BAR_MOVETO_INTERNAL(BAR, X, Y);
}

func void BAR_SETBACKTEXTURE(var int BAR, var string BACKTEX) {
    var _BAR B;
    if (!(HLP_ISVALIDHANDLE(BAR))) {
        return;
    };
    B = GET(BAR);
    VIEW_SETTEXTURE(B.V0, BACKTEX);
}

func void _BAR_UPDATESHOW(var int BAR) {
    var ZCVIEW V;
    var _BAR B;
    if (!(HLP_ISVALIDHANDLE(BAR))) {
        return;
    };
    B = GET(BAR);
    if ((B.HIDDEN) == (-(1))) {
        V = VIEW_GET(B.V0);
        B.HIDDEN = (V.ISCLOSED) || (V.CONTINUECLOSE);
    };
    if (B.HIDDEN) {
        return;
    };
    VIEW_OPEN(B.V0);
    VIEW_OPEN(B.V1);
}

func void _BAR_UPDATE() {
    var int STATUS;
    STATUS = _BAR_PLAYERSTATUS();
    if ((_BAR_UPDATE_STATUS) != (STATUS)) {
        _BAR_UPDATE_STATUS = STATUS;
        if (STATUS) {
            FOREACHHNDL(11743, 11874);
        } else {
            FOREACHHNDL(11743, 11878);
        };
    };
}

func int BAR_CREATE(var int INST) {
    var ZCVIEW V;
    var int AH;
    var int AW;
    var int BUHH;
    var _BAR B;
    var int BUWH;
    var int BH;
    var BAR BU;
    var int PTR;
    PRINT_GETSCREENSIZE();
    PTR = CREATE(INST);
    BU = MEM_PTRTOINST(PTR);
    BH = NEW(11743);
    B = GET(BH);
    B.VALMAX = BU.VALUEMAX;
    BUHH = (BU.HEIGHT) / (2);
    BUWH = (BU.WIDTH) / (2);
    if (((BUHH) * (2)) < (BU.HEIGHT)) {
        AH = 1;
    };
    AH = 0;
    if (((BUWH) * (2)) < (BU.WIDTH)) {
        AW = 1;
    };
    AW = 0;
    B.V0 = VIEW_CREATEPXL((BU.X) - (BUWH), (BU.Y) - (BUHH), ((BU.X) + (BUWH)) + (AW), ((BU.Y) + (BUHH)) + (AH));
    BUHH -= BU.BARTOP;
    BUWH -= BU.BARLEFT;
    B.BARW = PRINT_TOVIRTUAL(((BU.WIDTH) - ((BU.BARLEFT) * (2))) + (AW), PS_X);
    B.V1 = VIEW_CREATEPXL((BU.X) - (BUWH), (BU.Y) - (BUHH), ((BU.X) + (BUWH)) + (AW), ((BU.Y) + (BUHH)) + (AH));
    VIEW_SETTEXTURE(B.V0, BU.BACKTEX);
    VIEW_SETTEXTURE(B.V1, BU.BARTEX);
    V = VIEW_GET(B.V0);
    V.FXOPEN = 0;
    V.FXCLOSE = 0;
    V = VIEW_GET(B.V1);
    V.FXOPEN = 0;
    V.FXCLOSE = 0;
    BAR_SCALE(BH, BAR_GETINTERFACESCALING());
    VIEW_OPEN(B.V0);
    VIEW_OPEN(B.V1);
    BAR_SETVALUE(BH, BU.VALUE);
    FREE(PTR, INST);
    return BH;
}

var int _BAR_SCREEN_Y;
var int _BAR_SCALING;
func void _BAR_UPDATERESOLUTION() {
    PRINT_GETSCREENSIZE();
    if ((((_BAR_SCREEN_X) != (PRINT_SCREEN[0])) || ((_BAR_SCREEN_Y) != (PRINT_SCREEN[1]))) || ((_BAR_SCALING) != (BAR_GETINTERFACESCALING()))) {
        if (_BAR_SCREEN_X) {
            FOREACHHNDL(11743, 11898);
        };
        _BAR_SCREEN_X = PRINT_SCREEN[0];
        _BAR_SCREEN_Y = PRINT_SCREEN[1];
        _BAR_SCALING = BAR_GETINTERFACESCALING();
    };
}

func void _BAR_UPDATESIZE(var int BAR) {
    BAR_SCALEEXT(BAR, DIVF(FLOATONE, _BAR_SCALING), _BAR_SCREEN_X, _BAR_SCREEN_Y, PRINT_SCREEN[0], PRINT_SCREEN[1]);
    BAR_SCALE(BAR, BAR_GETINTERFACESCALING());
}

