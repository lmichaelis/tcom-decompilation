var int SINAPPROX = 0;
var int COSAPPROX = 0;
func void SINCOSAPPROX(var int ANGLE) {
    if (!(SINPTR)) {
        SINPTR = _@(SINAPPROX);
        COSPTR = _@(COSAPPROX);
    };
    if (CALL_BEGIN(CALL)) {
        CALL_PTRPARAM(_@(COSPTR));
        CALL_PTRPARAM(_@(SINPTR));
        CALL_FLOATPARAM(_@(ANGLE));
        CALL__CDECL(ZSINCOSAPPROX);
        CALL = CALL_END();
    };
}

const int SINCOSAPPROX.SINPTR = 0;
const int SINCOSAPPROX.COSPTR = 0;
const int SINCOSAPPROX.CALL = 0;
func void ZRND_D3D_DRAWPOLYSIMPLE(var int ZCTEXTUREPTR, var int ZTRNDSIMPLEVERTEXPTR, var int NUM) {
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(NUM));
        CALL_PTRPARAM(_@(ZTRNDSIMPLEVERTEXPTR));
        CALL_PTRPARAM(_@(ZCTEXTUREPTR));
        CALL__THISCALL(ZRENDERER_ADR, ZRND_D3D__DRAWPOLYSIMPLE);
        CALL = CALL_END();
    };
}

const int ZRND_D3D_DRAWPOLYSIMPLE.CALL = 0;
func void ZRND_D3D_DRAWLINE(var int X0, var int Y0, var int X1, var int Y1, var int COLOR) {
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(COLOR));
        CALL_FLOATPARAM(_@(Y1));
        CALL_FLOATPARAM(_@(X1));
        CALL_FLOATPARAM(_@(Y0));
        CALL_FLOATPARAM(_@(X0));
        CALL__THISCALL(ZRENDERER_ADR, ZRND_D3D__DRAWLINE);
        CALL = CALL_END();
    };
}

const int ZRND_D3D_DRAWLINE.CALL = 0;
func int ZRND_D3D_GETTOTALTEXTUREMEM() {
    return MEM_READINT((ZRENDERER_ADR) + (ZRND_D3D_TEXMEMORY_OFFSET));
}

func void ZRND_D3D_SETALPHABLENDFUNC(var int ZTRND_ALPHABLENDFUNC) {
    if (!(PTR)) {
        PTR = _@(ZTRND_ALPHABLENDFUNC);
    };
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(PTR));
        CALL__THISCALL(ZRENDERER_ADR, ZRND_D3D__SETALPHABLENDFUNC);
        CALL = CALL_END();
    };
}

const int ZRND_D3D_SETALPHABLENDFUNC.PTR = 0;
const int ZRND_D3D_SETALPHABLENDFUNC.CALL = 0;
const int ZRND_ALPHA_FUNC_MAT_DEFAULT = 0;
const int ZRND_ALPHA_FUNC_NONE = 1;
const int ZRND_ALPHA_FUNC_BLEND = 2;
const int ZRND_ALPHA_FUNC_ADD = 3;
const int ZRND_ALPHA_FUNC_SUB = 4;
const int ZRND_ALPHA_FUNC_MUL = 5;
const int ZRND_ALPHA_FUNC_MUL2 = 6;
const int ZRND_ALPHA_FUNC_TEST = 7;
const int ZRND_ALPHA_FUNC_BLEND_TEST = 8;
func void ZRND_XD3D_SETRENDERSTATE(var int STATE, var int MODE) {
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(MODE));
        CALL_INTPARAM(_@(STATE));
        CALL__THISCALL(ZRENDERER_ADR, ZCRND_D3D__XD3D_SETRENDERSTATE);
        CALL = CALL_END();
    };
}

const int ZRND_XD3D_SETRENDERSTATE.CALL = 0;
const int D3DRS_ZENABLE = 7;
class ZTRNDSIMPLEVERTEX {
	var int POS[2];
	var int Z;
	var int UV[2];
	var int COLOR;
};




const int SIZEOF_ZTRNDSIMPLEVERTEX = 24;
class GCSPRITE {
	var int X;
	var int Y;
	var int WIDTH;
	var int HEIGHT;
	var int HIDDEN;
	var int PRIO;
	var string TEXTURENAME;
	var int BUF;
	var int TEXTURE;
	var int SIN;
	var int COS;
	var int STREAM;
};












const string GCSPRITE_STRUCT = "auto|7 zCArray* void|4";
instance GCSPRITE@(GCSPRITE)
func void _SPRITE_CALCZ(var GCSPRITE S) {
    OFF = S.STREAM;
    I = 0;
    REPEAT(I, 4);
    MEM_WRITEINT((OFF) + (8), FLOATEINS);
    OFF += SIZEOF_ZTRNDSIMPLEVERTEX;
    END;
}

var int _SPRITE_CALCZ.OFF = 0;
var int _SPRITE_CALCZ.I = 0;
func void _SPRITE_CALCROTMAT(var GCSPRITE S, var int X, var int Y, var int RESPTR) {
    MEM_WRITEINT(RESPTR, SUBF(MULF(X, S.COS), MULF(Y, S.SIN)));
    MEM_WRITEINT((RESPTR) + (4), ADDF(MULF(X, S.SIN), MULF(Y, S.COS)));
}

func void _SPRITE_CALCROTFORVERT(var GCSPRITE S, var int V, var int X, var int Y) {
    RESPTR = (S.STREAM) + ((V) * (SIZEOF_ZTRNDSIMPLEVERTEX));
    MEM_WRITEINT(RESPTR, ADDF(S.X, SUBF(MULF(X, S.COS), MULF(Y, S.SIN))));
    MEM_WRITEINT((RESPTR) + (4), ADDF(S.Y, ADDF(MULF(X, S.SIN), MULF(Y, S.COS))));
}

var int _SPRITE_CALCROTFORVERT.RESPTR = 0;
func void _SPRITE_CALCPOS(var GCSPRITE S) {
    WH = MULF(S.WIDTH, FLOATHALB);
    HH = MULF(S.HEIGHT, FLOATHALB);
    NWH = NEGF(WH);
    NHH = NEGF(HH);
    S.STREAM = MEM_READINT(S.BUF);
    _SPRITE_CALCROTFORVERT(S, 0, NWH, NHH);
    _SPRITE_CALCROTFORVERT(S, 1, WH, NHH);
    _SPRITE_CALCROTFORVERT(S, 2, WH, HH);
    _SPRITE_CALCROTFORVERT(S, 3, NWH, HH);
}

var int _SPRITE_CALCPOS.WH = 0;
var int _SPRITE_CALCPOS.HH = 0;
var int _SPRITE_CALCPOS.NWH = 0;
var int _SPRITE_CALCPOS.NHH = 0;
func void _SPRITE_NEWBUF(var GCSPRITE S) {
    S.BUF = MEM_ARRAYCREATE();
    ARR = _^(S.BUF);
    ARR.NUMINARRAY = SIZEOF_ZTRNDSIMPLEVERTEX;
    ARR.NUMALLOC = SIZEOF_ZTRNDSIMPLEVERTEX;
    ARR.ARRAY = MEM_ALLOC((4) * (SIZEOF_ZTRNDSIMPLEVERTEX));
}

instance _SPRITE_NEWBUF.ARR(ZCARRAY)
func void SPRITE_SETVERTUV(var int H, var int VERT, var int X, var int Y) {
    if (((VERT) < (0)) || ((VERT) > (3))) {
        return;
    };
    S = GET(H);
    OFF = (MEM_READINT(S.BUF)) + ((VERT) * (SIZEOF_ZTRNDSIMPLEVERTEX));
    MEM_WRITEINT((OFF) + (12), X);
    MEM_WRITEINT((OFF) + (16), Y);
}

instance SPRITE_SETVERTUV.S(GCSPRITE)
var int SPRITE_SETVERTUV.OFF = 0;
func void SPRITE_SETUV(var int H, var int X0, var int Y0, var int X1, var int Y1) {
    S = GET(H);
    OFF = MEM_READINT(S.BUF);
    MEM_WRITEINT((OFF) + (12), X0);
    MEM_WRITEINT((OFF) + (16), Y0);
    OFF += SIZEOF_ZTRNDSIMPLEVERTEX;
    MEM_WRITEINT((OFF) + (12), X1);
    MEM_WRITEINT((OFF) + (16), Y0);
    OFF += SIZEOF_ZTRNDSIMPLEVERTEX;
    MEM_WRITEINT((OFF) + (12), X1);
    MEM_WRITEINT((OFF) + (16), Y1);
    OFF += SIZEOF_ZTRNDSIMPLEVERTEX;
    MEM_WRITEINT((OFF) + (12), X0);
    MEM_WRITEINT((OFF) + (16), Y1);
}

instance SPRITE_SETUV.S(GCSPRITE)
var int SPRITE_SETUV.OFF = 0;
func void SPRITE_SETVERTCOLOR(var int H, var int VERT, var int COL) {
    if (((VERT) < (0)) || ((VERT) > (3))) {
        return;
    };
    S = GET(H);
    MEM_WRITEINT(((MEM_READINT(S.BUF)) + ((VERT) * (SIZEOF_ZTRNDSIMPLEVERTEX))) + (20), COL);
}

instance SPRITE_SETVERTCOLOR.S(GCSPRITE)
func void SPRITE_SETCOLOR(var int H, var int COL) {
    S = GET(H);
    OFF = MEM_READINT(S.BUF);
    I = 0;
    REPEAT(I, 4);
    MEM_WRITEINT((OFF) + (20), COL);
    OFF += SIZEOF_ZTRNDSIMPLEVERTEX;
    END;
}

instance SPRITE_SETCOLOR.S(GCSPRITE)
var int SPRITE_SETCOLOR.OFF = 0;
var int SPRITE_SETCOLOR.I = 0;
func void SPRITE_SETPRIO(var int H, var int PRIO) {
    S = GET(H);
    if ((S.PRIO) == (PRIO)) {
        return;
    };
    S.PRIO = PRIO;
    FOREACHHNDLSORT(0x2f35, 0x2f6c);
}

instance SPRITE_SETPRIO.S(GCSPRITE)
func int _SPRITE_PRIOCOMPARER(var int L, var int R) {
    SL = GET(L);
    SR = GET(R);
    return (SL.PRIO) - (SR.PRIO);
}

instance _SPRITE_PRIOCOMPARER.SL(GCSPRITE)
instance _SPRITE_PRIOCOMPARER.SR(GCSPRITE)
func void SPRITE_SETPOSPXLF(var int H, var int XF, var int YF) {
    S = GET(H);
    S.X = XF;
    S.Y = YF;
    _SPRITE_CALCPOS(S);
}

instance SPRITE_SETPOSPXLF.S(GCSPRITE)
func void SPRITE_SETPOSPXL(var int H, var int X, var int Y) {
    SPRITE_SETPOSPXLF(H, MKF(X), MKF(Y));
}

func void SPRITE_SETPOS(var int H, var int X, var int Y) {
    SPRITE_SETPOSPXLF(H, PRINT_TOPIXEL(X, PS_X), PRINT_TOPIXEL(Y, PS_Y));
}

func void SPRITE_SETROTATIONSC(var int H, var int SIN, var int COS) {
    S = GET(H);
    S.SIN = SIN;
    S.COS = COS;
    _SPRITE_CALCPOS(S);
}

instance SPRITE_SETROTATIONSC.S(GCSPRITE)
func void SPRITE_SETROTATIONR(var int H, var int R) {
    S = GET(H);
    SINCOSAPPROX(R);
    S.SIN = SINAPPROX;
    S.COS = COSAPPROX;
    _SPRITE_CALCPOS(S);
}

instance SPRITE_SETROTATIONR.S(GCSPRITE)
func void SPRITE_SETROTATION(var int H, var int R) {
    SPRITE_SETROTATIONR(H, PRINT_TORADIAN(MKF(R)));
}

func void SPRITE_ROTATER(var int H, var int R) {
    S = GET(H);
    SINCOSAPPROX(R);
    _SPRITE_CALCROTMAT(S, COSAPPROX, SINAPPROX, _@(RES[0]));
    S.COS = RES[0];
    S.SIN = RES[1];
    _SPRITE_CALCPOS(S);
}

instance SPRITE_ROTATER.S(GCSPRITE)
var int SPRITE_ROTATER.RES[2] = {0, 0};
func void SPRITE_ROTATE(var int H, var int R) {
    SPRITE_ROTATER(H, PRINT_TORADIAN(MKF(R)));
}

func void SPRITE_SETWIDTHPXL(var int H, var int W) {
    S = GET(H);
    S.WIDTH = MKF(W);
    _SPRITE_CALCPOS(S);
}

instance SPRITE_SETWIDTHPXL.S(GCSPRITE)
func void SPRITE_SETWIDTH(var int H, var int W) {
    SPRITE_SETWIDTHPXL(H, PRINT_TOVIRTUAL(W, PS_X));
}

func void SPRITE_SETHEIGHTPXL(var int H, var int HG) {
    S = GET(H);
    S.HEIGHT = MKF(HG);
    _SPRITE_CALCPOS(S);
}

instance SPRITE_SETHEIGHTPXL.S(GCSPRITE)
func void SPRITE_SETHEIGHT(var int H, var int HG) {
    SPRITE_SETHEIGHTPXL(H, PRINT_TOVIRTUAL(HG, PS_Y));
}

func void SPRITE_SETDIMPXL(var int H, var int W, var int HG) {
    S = GET(H);
    S.WIDTH = MKF(W);
    S.HEIGHT = MKF(HG);
    _SPRITE_CALCPOS(S);
}

instance SPRITE_SETDIMPXL.S(GCSPRITE)
func void SPRITE_SETDIM(var int H, var int W, var int HG) {
    SPRITE_SETDIMPXL(H, PRINT_TOPIXEL(W, PS_X), PRINT_TOPIXEL(HG, PS_Y));
}

func void SPRITE_SCALE(var int H, var int X, var int Y) {
    S = GET(H);
    S.WIDTH = MULF(S.WIDTH, X);
    S.HEIGHT = MULF(S.HEIGHT, Y);
    _SPRITE_CALCPOS(S);
}

instance SPRITE_SCALE.S(GCSPRITE)
func void SPRITE_SETVISIBLE(var int H, var int VISIBLE) {
    S = GET(H);
    S.HIDDEN = !(VISIBLE);
}

instance SPRITE_SETVISIBLE.S(GCSPRITE)
func int SPRITE_CREATEPXL(var int X, var int Y, var int WIDTH, var int HEIGHT, var int COLOR, var string TEX) {
    H = NEW(0x2f35);
    S = GET(H);
    S.BUF = MEM_ARRAYCREATE();
    S.X = MKF(X);
    S.Y = MKF(Y);
    S.WIDTH = MKF(WIDTH);
    S.HEIGHT = MKF(HEIGHT);
    S.TEXTURENAME = TEX;
    _SPRITE_NEWBUF(S);
    SPRITE_SETCOLOR(H, COLOR);
    SPRITE_SETUV(H, FLOATNULL, FLOATNULL, FLOATEINS, FLOATEINS);
    SPRITE_SETROTATIONSC(H, FLOATNULL, FLOATEINS);
    _SPRITE_CALCPOS(S);
    _SPRITE_CALCZ(S);
    return H;
}

var int SPRITE_CREATEPXL.H = 0;
instance SPRITE_CREATEPXL.S(GCSPRITE)
func int SPRITE_CREATE(var int X, var int Y, var int WIDTH, var int HEIGHT, var int COLOR, var string TEX) {
    return SPRITE_CREATEPXL(PRINT_TOPIXEL(X, PS_X), PRINT_TOPIXEL(Y, PS_Y), PRINT_TOPIXEL(WIDTH, PS_X), PRINT_TOPIXEL(HEIGHT, PS_Y), COLOR, TEX);
}

func void SPRITE_RENDER(var int H) {
    S = GET(H);
    if (S.HIDDEN) {
        return;
    };
    if (!(S.TEXTURE)) {
        S.TEXTURE = ZCTEXTURE_LOAD(S.TEXTURENAME);
    };
    ZRND_D3D_DRAWPOLYSIMPLE(S.TEXTURE, MEM_READINT(S.BUF), 4);
}

instance SPRITE_RENDER.S(GCSPRITE)
func void _SPRITE_DORENDER() {
    if (!(HLP_ISVALIDNPC(HERO))) {
        return;
    };
    ZRND_XD3D_SETRENDERSTATE(D3DRS_ZENABLE, FALSE);
    ZRND_D3D_SETALPHABLENDFUNC(ZRND_ALPHA_FUNC_BLEND);
    FOREACHHNDL(0x2f35, 0x2fc2);
    ZRND_XD3D_SETRENDERSTATE(D3DRS_ZENABLE, TRUE);
}

