class A8HEAD {
	var int VALUE;
	var int FNC;
	var int DFNC;
	var int FLT;
	var int DATA;
	var int DIF;
	var int DDIF;
	var int QUEUE;
};








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

func void A8HEAD_UNARCHIVER(var A8HEAD THIS) {
    THIS.VALUE = PM_LOAD("value");
    if (PM_EXISTS("loop")) {
        THIS.FNC = PM_LOADFUNCPTR("loop");
    };
    if (PM_EXISTS("del")) {
        THIS.DFNC = PM_LOADFUNCPTR("del");
    };
    if (PM_EXISTS("float")) {
        THIS.FLT = PM_LOADFLOAT("float");
    };
    if (PM_EXISTS("data")) {
        THIS.DATA = PM_LOADINT("data");
    };
    if (PM_EXISTS("dif")) {
        THIS.DIF = PM_LOADINT("dif");
    };
    if (PM_EXISTS("ddif")) {
        THIS.DDIF = PM_LOADINT("ddif");
    };
    THIS.QUEUE = PM_LOAD("queue");
    if ((THIS.DFNC) == (MEM_GETFUNCPTR(0x2891))) {
        THIS.DFNC = MEM_GETFUNCPTR(0x2890);
    };
    if (((THIS.FNC) == (MEM_GETFUNCPTR(0x2891))) && (THIS.DATA)) {
        THIS.FNC = MEM_GETFUNCPTR(0x2893);
    };
}

func void A8HEAD_EMPTY(var A8HEAD H) {
    if (!(H.QUEUE)) {
        return;
    };
    LIST_FORF(H.QUEUE, 0x2a0e);
    LIST_DESTROY(H.QUEUE);
    H.QUEUE = 0;
}

func void A8HEAD_EMPTYSUB(var int NODE) {
    if (HLP_ISVALIDHANDLE(MEM_READINT(NODE))) {
        DELETE(MEM_READINT(NODE));
    };
}

func void A8HEAD_DELETE(var A8HEAD THIS) {
    A8HEAD_EMPTY(THIS);
    if (THIS.DFNC) {
        MEM_CALLBYPTR(THIS.DFNC);
    };
}

instance A8HEAD@(A8HEAD)
class A8COMMAND {
	var int TARGET;
	var int TIMESPAN;
	var int STARTVAL;
	var int STARTTIME;
	var int VELO;
	var int STARTV;
	var int INTERPOL;
};







instance A8COMMAND@(A8COMMAND)
func int ANIM8_NEW(var int VALUE, var int ISFLOAT) {
    HNDL = NEW(0x2a12);
    H = GET(HNDL);
    if (!(ISFLOAT)) {
        H.VALUE = MKF(VALUE);
    };
    H.VALUE = VALUE;
    H.FLT = !(!(ISFLOAT));
    return HNDL;
}

var int ANIM8_NEW.HNDL = 0;
instance ANIM8_NEW.H(A8HEAD)
func int ANIM8_NEWEXT(var int VALUE, var func HANDLER, var int DATA, var int ISFLOAT) {
    HNDL = ANIM8_NEW(VALUE, ISFLOAT);
    H = GET(HNDL);
    H.FNC = MEM_GETFUNCPTR(0x2a23);
    H.DATA = DATA;
    return HNDL;
}

var int ANIM8_NEWEXT.HNDL = 0;
instance ANIM8_NEWEXT.H(A8HEAD)
func void ANIM8_DELETE(var int HNDL) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        MEM_WARN("A8_Delete: Invalid handle");
        return;
    };
    DELETE(HNDL);
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

func void _ANIM8_EXT(var int HNDL, var int TARGETVAL, var int TIMESPAN, var int INTERPOL, var int USEQUEUE) {
    H = GET(HNDL);
    if (!(USEQUEUE)) {
        A8HEAD_EMPTY(H);
    };
    if (!(H.QUEUE)) {
        H.QUEUE = LIST_CREATE(0);
    };
    CMD = NEW(0x2a1b);
    C = GET(CMD);
    C.TARGET = TARGETVAL;
    if (!(H.FLT)) {
        C.TARGET = MKF(C.TARGET);
    };
    C.STARTVAL = H.VALUE;
    C.STARTTIME = TIMERGT();
    C.TIMESPAN = MKF(TIMESPAN);
    C.INTERPOL = INTERPOL;
    _ANIM8_SETVELO(H, C);
    LIST_ADD(H.QUEUE, CMD);
}

instance _ANIM8_EXT.H(A8HEAD)
var int _ANIM8_EXT.CMD = 0;
instance _ANIM8_EXT.C(A8COMMAND)
func void _ANIM8_FFLOOP() {
    FOREACHHNDL(0x2a12, 0x2a37);
}

func int _ANIM8_LOOP(var int HNDL) {
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
        } else if (!(HLP_ISVALIDHANDLE(HNDL))) {
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

instance _ANIM8_LOOP.H(A8HEAD)
var int _ANIM8_LOOP.LDATA = 0;
instance _ANIM8_LOOP.C(A8COMMAND)
var int _ANIM8_LOOP.T = 0;
func int ANIM8_GET(var int HNDL) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return 0;
    };
    H = GET(HNDL);
    if (H.FLT) {
        return H.VALUE;
    };
    return ROUNDF(H.VALUE);
}

instance ANIM8_GET.H(A8HEAD)
func void ANIM8_SET(var int HNDL, var int V) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    H = GET(HNDL);
    H.VALUE = V;
}

instance ANIM8_SET.H(A8HEAD)
func void ANIM8_REMOVEIFEMPTY(var int HNDL, var int ON) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    H = GET(HNDL);
    H.DIF = !(!(ON));
}

instance ANIM8_REMOVEIFEMPTY.H(A8HEAD)
func void ANIM8_REMOVEDATAIFEMPTY(var int HNDL, var int ON) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    H = GET(HNDL);
    H.DDIF = !(!(ON));
}

instance ANIM8_REMOVEDATAIFEMPTY.H(A8HEAD)
func void ANIM8_CALLONREMOVE(var int HNDL, var func DFNC) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return;
    };
    H = GET(HNDL);
    H.DFNC = MEM_GETFUNCPTR(0x2a4e);
}

instance ANIM8_CALLONREMOVE.H(A8HEAD)
func int ANIM8_EMPTY(var int HNDL) {
    if (!(HLP_ISVALIDHANDLE(HNDL))) {
        return 1;
    };
    H = GET(HNDL);
    if (!(H.QUEUE)) {
        return 1;
    };
    return !(LIST_HASLENGTH(H.QUEUE, 2));
}

instance ANIM8_EMPTY.H(A8HEAD)
func void ANIM8(var int HNDL, var int TARGET, var int SPAN, var int INTERPOL) {
    _ANIM8_EXT(HNDL, TARGET, (SPAN) + (!(SPAN)), INTERPOL, 0);
}

func void ANIM8Q(var int HNDL, var int TARGET, var int SPAN, var int INTERPOL) {
    _ANIM8_EXT(HNDL, TARGET, (SPAN) + (!(SPAN)), INTERPOL, 1);
}

