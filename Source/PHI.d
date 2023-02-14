const int PHI = 1070141312;
func int ATAN2F(var int X, var int Y) {
    var int RET;
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_FLOATPARAM(_@(X));
        CALL_FLOATPARAM(_@(Y));
        CALL_RETVALISFLOAT();
        CALL_PUTRETVALTO(_@(RET));
        CALL__CDECL(_ATAN2F);
        CALL = CALL_END();
    };
    return +(RET);
}

func int DISTANCE2DF(var int X1, var int X2, var int Y1, var int Y2) {
    var int DY;
    var int DX;
    DX = SUBF(X1, X2);
    DY = SUBF(Y1, Y2);
    return +(SQRTF(ADDF(MULF(DX, DX), MULF(DY, DY))));
}

func int DISTANCE2D(var int X1, var int X2, var int Y1, var int Y2) {
    return +(ROUNDF(DISTANCE2DF(MKF(X1), MKF(X2), MKF(Y1), MKF(Y2))));
}

func int SIN(var int ANGLE) {
    var int RET;
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_FLOATPARAM(_@(ANGLE));
        CALL_RETVALISFLOAT();
        CALL_PUTRETVALTO(_@(RET));
        CALL__CDECL(_SINF);
        CALL = CALL_END();
    };
    return +(RET);
}

func int ACOS(var int COSINE) {
    var int RET;
    var int CALL;
    if (CALL_BEGIN(CALL)) {
        CALL_FLOATPARAM(_@(COSINE));
        CALL_RETVALISFLOAT();
        CALL_PUTRETVALTO(_@(RET));
        CALL__CDECL(_ACOSF);
        CALL = CALL_END();
    };
    return +(RET);
}

func int ASIN(var int SINE) {
    return +(SUBF(PHI, ACOS(SINE)));
}

func int COS(var int ANGLE) {
    return +(SIN(SUBF(PHI, ANGLE)));
}

func int TAN(var int X) {
    return +(DIVF(SIN(X), COS(X)));
}

