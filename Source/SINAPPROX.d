var int SINAPPROX;
var int COSAPPROX;
func void SINCOSAPPROX(var int ANGLE) {
    var int CALL;
    var int COSPTR;
    var int SINPTR;
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

func void ZRND_D3D_DRAWLINE(var int X0, var int Y0, var int X1, var int Y1, var int COLOR) {
    var int CALL;
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

const int ZRND_ALPHA_FUNC_ADD = 3;
const int ZRND_ALPHA_FUNC_SUB = 4;
const int ZRND_ALPHA_FUNC_MUL = 5;
const int ZRND_ALPHA_FUNC_MUL2 = 6;
const int ZRND_ALPHA_FUNC_TEST = 7;
const int ZRND_ALPHA_FUNC_BLEND_TEST = 8;
func void ZRND_XD3D_SETRENDERSTATE(var int STATE, var int MODE) {
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_INTPARAM(_@(MODE));
        CALL_INTPARAM(_@(STATE));
        CALL__THISCALL(ZRENDERER_ADR, ZCRND_D3D__XD3D_SETRENDERSTATE);
        CALL = CALL_END();
    };
}

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
instance GCSPRITE@(GCSPRITE);
func void _SPRITE_CALCZ(var GCSPRITE S) {
    var int I;
    var int OFF;
    OFF = S.STREAM;
    I = 0;
    REPEAT(I, 4);
    MEM_WRITEINT((OFF) + (8), FLOATEINS);
    OFF += SIZEOF_ZTRNDSIMPLEVERTEX;
    END;
}

func void _SPRITE_CALCROTFORVERT(var GCSPRITE S, var int V, var int X, var int Y) {
    var int RESPTR;
    RESPTR = (S.STREAM) + ((V) * (SIZEOF_ZTRNDSIMPLEVERTEX));
    MEM_WRITEINT(RESPTR, ADDF(S.X, SUBF(MULF(X, S.COS), MULF(Y, S.SIN))));
    MEM_WRITEINT((RESPTR) + (4), ADDF(S.Y, ADDF(MULF(X, S.SIN), MULF(Y, S.COS))));
}

func void SPRITE_SETVERTCOLOR(var int H, var int VERT, var int COL) {
    var GCSPRITE S;
    if (((VERT) < (0)) || ((VERT) > (3))) {
        return;
    };
    S = GET(H);
    MEM_WRITEINT(((MEM_READINT(S.BUF)) + ((VERT) * (SIZEOF_ZTRNDSIMPLEVERTEX))) + (20), COL);
}

func void SPRITE_SETPOSPXLF(var int H, var int XF, var int YF) {
    var GCSPRITE S;
    S = GET(H);
    S.X = XF;
    S.Y = YF;
    _SPRITE_CALCPOS(S);
}

func void SPRITE_SETROTATIONR(var int H, var int R) {
    var GCSPRITE S;
    S = GET(H);
    SINCOSAPPROX(R);
    S.SIN = SINAPPROX;
    S.COS = COSAPPROX;
    _SPRITE_CALCPOS(S);
}

func void SPRITE_ROTATE(var int H, var int R) {
    SPRITE_ROTATER(H, PRINT_TORADIAN(MKF(R)));
}

func void SPRITE_SETHEIGHTPXL(var int H, var int HG) {
    var GCSPRITE S;
    S = GET(H);
    S.HEIGHT = MKF(HG);
    _SPRITE_CALCPOS(S);
}

func void SPRITE_SETDIM(var int H, var int W, var int HG) {
    SPRITE_SETDIMPXL(H, PRINT_TOPIXEL(W, PS_X), PRINT_TOPIXEL(HG, PS_Y));
}

func int SPRITE_CREATE(var int X, var int Y, var int WIDTH, var int HEIGHT, var int COLOR, var string TEX) {
    return SPRITE_CREATEPXL(PRINT_TOPIXEL(X, PS_X), PRINT_TOPIXEL(Y, PS_Y), PRINT_TOPIXEL(WIDTH, PS_X), PRINT_TOPIXEL(HEIGHT, PS_Y), COLOR, TEX);
}

