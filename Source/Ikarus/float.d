const int FLOAT_SIGN_MASK = -2147483648;
const int FLOATNULL = 0;
const int FLOATEINS = 1065353216;
const int FLOATONE = 1065353216;
const int FLOATHALB = 1056964608;
const int FLOATHALF = 1056964608;
const int PI = 1078530011;
const int E = 1076754516;
const int FLTINT_TRUNC_CODE[9] = {-2082109099, 2111375596, 1166763774, 1712108798, -637778551, 1842939973, -128066564, -1946260007, -1010173883};
const int FLTINT_MUL_CODE[3] = {-639268523, 1306004549, 12830984};
const int FLTINT_DIV_CODE[3] = {-639268523, 2111310917, 12830984};
const int FLTINT_ADD_CODE[3] = {-639268523, 1171786821, 12830984};
const int FLTINT_MK_CODE[2] = {-605714091, -1010235323};
func int _FLT_BUILD_FUNC(var int CODEPTR, var int PARAM1PTR, var int PARAM2PTR, var int RETVALISFLOAT, var int RESULTPTR) {
    CALL_OPEN();
    if (PARAM2PTR) {
        CALL_INTPARAM(PARAM2PTR);
    };
    if (PARAM1PTR) {
        CALL_INTPARAM(PARAM1PTR);
    };
    if (RETVALISFLOAT) {
        CALL_RETVALISFLOAT();
    };
    CALL_PUTRETVALTO(RESULTPTR);
    CALL__CDECL(CODEPTR);
    return CALL_CLOSE();
}

func int MKF(var int X) {
    if (!(CODE)) {
        CODE = _FLT_BUILD_FUNC(_@(FLTINT_MK_CODE[0]), _@(X), 0, 1, _@(RESULT));
    };
    ASM_RUN(CODE);
    return +(RESULT);
}

const int MKF.CODE = 0;
var int MKF.RESULT = 0;
func int TRUNCF(var int X) {
    if (!(CODE)) {
        CODE = _FLT_BUILD_FUNC(_@(FLTINT_TRUNC_CODE[0]), _@(X), 0, 0, _@(RESULT));
    };
    ASM_RUN(CODE);
    return +(RESULT);
}

const int TRUNCF.CODE = 0;
var int TRUNCF.RESULT = 0;
func int ADDF(var int X, var int Y) {
    if (!(CODE)) {
        CODE = _FLT_BUILD_FUNC(_@(FLTINT_ADD_CODE[0]), _@(X), _@(Y), 1, _@(RESULT));
    };
    ASM_RUN(CODE);
    return +(RESULT);
}

const int ADDF.CODE = 0;
var int ADDF.RESULT = 0;
func int MULF(var int X, var int Y) {
    if (!(CODE)) {
        CODE = _FLT_BUILD_FUNC(_@(FLTINT_MUL_CODE[0]), _@(X), _@(Y), 1, _@(RESULT));
    };
    ASM_RUN(CODE);
    return +(RESULT);
}

const int MULF.CODE = 0;
var int MULF.RESULT = 0;
func int DIVF(var int X, var int Y) {
    if (!(CODE)) {
        CODE = _FLT_BUILD_FUNC(_@(FLTINT_DIV_CODE[0]), _@(X), _@(Y), 1, _@(RESULT));
    };
    ASM_RUN(CODE);
    return +(RESULT);
}

const int DIVF.CODE = 0;
var int DIVF.RESULT = 0;
func int SQRF(var int F) {
    return MULF(F, F);
}

func int SQRTF(var int F) {
    if (!(CODE)) {
        CODE = _FLT_BUILD_FUNC(MEMINT_SWITCHG1G2(SQRTF_G1, SQRTF_G2), _@(F), 0, 1, _@(RESULT));
    };
    ASM_RUN(CODE);
    return +(RESULT);
}

const int SQRTF.SQRTF_G1 = 7757593;
const int SQRTF.SQRTF_G2 = 8123917;
const int SQRTF.CODE = 0;
var int SQRTF.RESULT = 0;
func int NEGF(var int X) {
    if ((X) < (0)) {
        return (X) & (~(FLOAT_SIGN_MASK));
    };
    return (X) | (FLOAT_SIGN_MASK);
}

func int ABSF(var int X) {
    return (X) & (~(FLOAT_SIGN_MASK));
}

func int SUBF(var int X, var int Y) {
    return ADDF(X, NEGF(Y));
}

func int ROUNDF(var int X) {
    if ((X) < (0)) {
        return TRUNCF(SUBF(X, FLOATHALB));
    };
    return TRUNCF(ADDF(X, FLOATHALB));
}

func int INVF(var int X) {
    return DIVF(FLOATEINS, X);
}

func int FRACF(var int P, var int Q) {
    if (!(Q)) {
        MEM_ERROR("fracf: Denominator is 0.");
    };
    return DIVF(MKF(P), MKF(Q));
}

func int SQRTF_APPROX(var int F) {
    return SQRTF(F);
}

func int GF(var int X, var int Y) {
    ISNEGX = (X) & (FLOAT_SIGN_MASK);
    ISNEGY = (Y) & (FLOAT_SIGN_MASK);
    if ((ISNEGX) && (ISNEGY)) {
        if ((X) < (Y)) {
            return TRUE;
        };
    };
    if ((X) > (Y)) {
        return TRUE;
    };
    return FALSE;
}

var int GF.ISNEGX = 0;
var int GF.ISNEGY = 0;
func int GEF(var int X, var int Y) {
    if ((X) == (Y)) {
        return TRUE;
    };
    return GF(X, Y);
}

func int LEF(var int X, var int Y) {
    return !(GF(X, Y));
}

func int LF(var int X, var int Y) {
    return !(GEF(X, Y));
}

func float CASTFROMINTF(var int F) {
    return F;
}

func int CASTTOINTF(var float F) {
    return MEM_READINT(_@F(F));
}

func string TOSTRINGF(var int X) {
    F = 0;
    return FLOATTOSTRING(F);
}

var float TOSTRINGF.F = 0;
func void PRINTF(var int X) {
    PRINT(TOSTRINGF(X));
}

