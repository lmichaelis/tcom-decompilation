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

func int ASIN(var int SINE) {
    return +(SUBF(PHI, ACOS(SINE)));
}

func int TAN(var int X) {
    return +(DIVF(SIN(X), COS(X)));
}

