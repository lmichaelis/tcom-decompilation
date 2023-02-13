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

func int SQRF(var int F) {
    return MULF(F, F);
}

func int NEGF(var int X) {
    if ((X) < (0)) {
        return (X) & (~(FLOAT_SIGN_MASK));
    };
    return (X) | (FLOAT_SIGN_MASK);
}

func int SUBF(var int X, var int Y) {
    return ADDF(X, NEGF(Y));
}

func int FRACF(var int P, var int Q) {
    if (!(Q)) {
        MEM_ERROR("fracf: Denominator is 0.");
    };
    return DIVF(MKF(P), MKF(Q));
}

func int GEF(var int X, var int Y) {
    if ((X) == (Y)) {
        return TRUE;
    };
    return GF(X, Y);
}

func float CASTFROMINTF(var int F) {
    return F;
}

func string TOSTRINGF(var int X) {
    var float F;
    F = 0;
    return FLOATTOSTRING(F);
}

