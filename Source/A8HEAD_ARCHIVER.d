func void A8HEAD_ARCHIVER(var A8HEAD THIS) {
    PM_SAVEINT("value", THIS.VALUE);
    if (THIS.FNC) {
        PM_SAVEFUNCPTR("loop", THIS.FNC);
    };
    if (THIS.DFNC) {
        PM_SAVEFUNCPTR("del", THIS.DFNC);
    };
    if (THIS.FLT) {
        PM_SAVEFLOAT("float", THIS.FLT);
    };
    if (THIS.DATA) {
        PM_SAVEINT("data", THIS.DATA);
    };
    if (THIS.DIF) {
        PM_SAVEINT("dif", THIS.DIF);
    };
    if (THIS.DDIF) {
        PM_SAVEINT("ddif", THIS.DDIF);
    };
    PM_SAVECLASSPTR("queue", THIS.QUEUE, "zCList");
}

func void A8HEAD_EMPTY(var A8HEAD H) {
    if (!(H.QUEUE)) {
        return;
    };
    LIST_FORF(H.QUEUE, 10766);
    LIST_DESTROY(H.QUEUE);
    H.QUEUE = 0;
}

func void A8HEAD_DELETE(var A8HEAD THIS) {
    A8HEAD_EMPTY(THIS);
    if (THIS.DFNC) {
        MEM_CALLBYPTR(THIS.DFNC);
    };
}

class A8COMMAND {
	var int TARGET;
	var int TIMESPAN;
	var int STARTVAL;
	var int STARTTIME;
	var int VELO;
	var int STARTV;
	var int INTERPOL;
};
instance A8COMMAND@(A8COMMAND);
func int ANIM8_NEW(var int VALUE, var int ISFLOAT) {
    var A8HEAD H;
    var int HNDL;
    HNDL = NEW(10770);
    H = GET(HNDL);
    if (!(ISFLOAT)) {
        H.VALUE = MKF(VALUE);
    };
    H.VALUE = VALUE;
    H.FLT = !(!(ISFLOAT));
    return HNDL;
}

func void _ANIM8_SETVELO(var A8HEAD H, var A8COMMAND C) {
    if ((C.INTERPOL) == (A8_WAIT)) {
        return;
    };
    if ((C.INTERPOL) == (A8_CONSTANT)) {
        C.VELO = DIVF(SUBF(C.TARGET, H.VALUE), C.TIMESPAN);
    };
    C.VELO = DIVF(MULF(MKF(2), SUBF(C.TARGET, H.VALUE)), MULF(C.TIMESPAN, C.TIMESPAN));
    if ((C.INTERPOL) == (A8_SLOWEND)) {
        C.STARTV = MULF(C.VELO, C.TIMESPAN);
        C.VELO = NEGF(C.VELO);
    };
}

func int _ANIM8_LOOP(var int HNDL) {
    var A8COMMAND C;
    var int LDATA;
    var int T;
    var A8HEAD H;
    H = GET(HNDL);
    if (!(H.QUEUE)) {
        return RCONTINUE;
    };
    if (!(LIST_HASLENGTH(H.QUEUE, 2))) {
        return RCONTINUE;
    };
    LDATA = LIST_GET(H.QUEUE, 2);
    if (!(LDATA)) {
        LIST_DELETE(H.QUEUE, 2);
        return RCONTINUE;
    };
    C = GET(LDATA);
    T = MKF((TIMERGT()) - (C.STARTTIME));
    if ((C.INTERPOL) && ((C.INTERPOL) < (A8_WAIT))) {
        if ((C.INTERPOL) == (A8_CONSTANT)) {
            H.VALUE = MULF(C.VELO, T);
        } else if ((C.INTERPOL) == (A8_SLOWEND)) {
            H.VALUE = ADDF(MULF(MULF(C.VELO, FLOATHALB), MULF(T, T)), MULF(C.STARTV, T));
        } else if ((C.INTERPOL) == (A8_SLOWSTART)) {
            H.VALUE = MULF(MULF(C.VELO, FLOATHALB), MULF(T, T));
        };
        H.VALUE = ADDF(C.STARTVAL, H.VALUE);
    };
    if (GEF(T, C.TIMESPAN)) {
        if ((C.INTERPOL) != (A8_WAIT)) {
            H.VALUE = C.TARGET;
        };
    };
    if (H.FNC) {
        if (H.DATA) {
            H.DATA;
        };
        if (H.FLT) {
        } else {
            MEM_CALLBYPTR(H.FNC);
        };
        if (!(HLP_ISVALIDHANDLE(HNDL))) {
            return RCONTINUE;
        };
    };
    if (GEF(T, C.TIMESPAN)) {
        DELETE(LDATA);
        LIST_DELETE(H.QUEUE, 2);
        if (LIST_HASLENGTH(H.QUEUE, 2)) {
            LDATA = LIST_GET(H.QUEUE, 2);
            if (!(LDATA)) {
                LIST_DELETE(H.QUEUE, 2);
                return RCONTINUE;
            };
            C = GET(LDATA);
            C.STARTVAL = H.VALUE;
            C.STARTTIME = TIMERGT();
            _ANIM8_SETVELO(H, C);
        } else if (H.DIF) {
            if (H.DDIF) {
                if (H.DATA) {
                    DELETE(H.DATA);
                };
            };
            DELETE(HNDL);
        };
    };
    return RCONTINUE;
}

func void ANIM8_SET(var int HNDL, var int V) {
    var A8HEAD H;
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    H = GET(HNDL);
    H.VALUE = V;
}

func void ANIM8_CALLONREMOVE(var int HNDL, var func DFNC) {
    var A8HEAD H;
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    H = GET(HNDL);
    H.DFNC = MEM_GETFUNCPTR(10830);
}

func void ANIM8Q(var int HNDL, var int TARGET, var int SPAN, var int INTERPOL) {
    _ANIM8_EXT(HNDL, TARGET, (SPAN) + (!(SPAN)), INTERPOL, 1);
}

