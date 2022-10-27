class FFITEM {
	var int FNCID;
	var int NEXT;
	var int DELAY;
	var int CYCLES;
	var int DATA;
	var int HASDATA;
	var int GAMETIME;
};







instance FFITEM@(FFITEM)
func void FFITEM_ARCHIVER(var FFITEM THIS) {
    PM_SAVEFUNCPTR("loop", THIS.FNCID);
    if (THIS.NEXT) {
        PM_SAVEINT("next", THIS.NEXT);
    };
    if (THIS.DELAY) {
        PM_SAVEINT("delay", THIS.DELAY);
    };
    if ((THIS.CYCLES) != (-(1))) {
        PM_SAVEINT("cycles", THIS.CYCLES);
    };
    if (THIS.HASDATA) {
        PM_SAVEINT("data", THIS.DATA);
    };
    if (THIS.GAMETIME) {
        PM_SAVEINT("gametime", THIS.GAMETIME);
    };
}

func void FFITEM_UNARCHIVER(var FFITEM THIS) {
    THIS.FNCID = PM_LOADFUNCPTR("loop");
    if (PM_EXISTS("next")) {
        THIS.NEXT = PM_LOAD("next");
    };
    if (PM_EXISTS("delay")) {
        THIS.DELAY = PM_LOAD("delay");
    };
    if (PM_EXISTS("cycles")) {
        THIS.CYCLES = PM_LOAD("cycles");
    };
    THIS.CYCLES = -(1);
    if (PM_EXISTS("data")) {
        THIS.DATA = PM_LOAD("data");
        THIS.HASDATA = 1;
    };
    if (PM_EXISTS("gametime")) {
        THIS.GAMETIME = PM_LOAD("gametime");
    };
    if (((THIS.FNCID) == (MEM_GETFUNCPTR(0x2891))) && (!(THIS.HASDATA))) {
        THIS.FNCID = MEM_GETFUNCPTR(0x2890);
    };
}

var int _FF_SYMBOL = 0;
func void _FF_CREATE(var func FUNCTION, var int DELAY, var int CYCLES, var int HASDATA, var int DATA, var int GAMETIME) {
    HNDL = NEW(0x2a65);
    ITM = GET(HNDL);
    ITM.FNCID = MEM_GETFUNCPTR(0x2a6c);
    ITM.CYCLES = CYCLES;
    ITM.DELAY = DELAY;
    ITM.DATA = DATA;
    ITM.HASDATA = HASDATA;
    ITM.GAMETIME = GAMETIME;
    if (GAMETIME) {
        ITM.NEXT = (TIMERGT()) + (ITM.DELAY);
    };
    ITM.NEXT = (TIMER()) + (ITM.DELAY);
}

var int _FF_CREATE.HNDL = 0;
instance _FF_CREATE.ITM(FFITEM)
func void FF_APPLYEXTDATA(var func FUNCTION, var int DELAY, var int CYCLES, var int DATA) {
    _FF_CREATE(0x2a75, DELAY, CYCLES, TRUE, DATA, FALSE);
}

func void FF_APPLYEXT(var func FUNCTION, var int DELAY, var int CYCLES) {
    _FF_CREATE(0x2a7a, DELAY, CYCLES, FALSE, 0, FALSE);
}

func void FF_APPLYEXTDATAGT(var func FUNCTION, var int DELAY, var int CYCLES, var int DATA) {
    _FF_CREATE(0x2a7e, DELAY, CYCLES, TRUE, DATA, TRUE);
}

func void FF_APPLYEXTGT(var func FUNCTION, var int DELAY, var int CYCLES) {
    _FF_CREATE(0x2a83, DELAY, CYCLES, FALSE, 0, TRUE);
}

func int FF_ACTIVE(var func FUNCTION) {
    _FF_SYMBOL = MEM_GETFUNCPTR(0x2a87);
    FOREACHHNDL(0x2a65, 0x2a88);
    return !(_FF_SYMBOL);
}

func int _FF_ACTIVE(var int HNDL) {
    if ((MEM_READINT(GETPTR(HNDL))) != (_FF_SYMBOL)) {
        return CONTINUE;
    };
    _FF_SYMBOL = 0;
    return BREAK;
}

func void FF_APPLY(var func FUNCTION) {
    FF_APPLYEXT(0x2a8b, 0, -(1));
}

func void FF_APPLYGT(var func FUNCTION) {
    FF_APPLYEXTGT(0x2a8d, 0, -(1));
}

func void FF_APPLYONCEEXT(var func FUNCTION, var int DELAY, var int CYCLES) {
    if (FF_ACTIVE(0x2a8f)) {
        return;
    };
    FF_APPLYEXT(0x2a8f, DELAY, CYCLES);
}

func void FF_APPLYONCEEXTGT(var func FUNCTION, var int DELAY, var int CYCLES) {
    if (FF_ACTIVE(0x2a93)) {
        return;
    };
    FF_APPLYEXTGT(0x2a93, DELAY, CYCLES);
}

func void FF_APPLYONCE(var func FUNCTION) {
    FF_APPLYONCEEXT(0x2a97, 0, -(1));
}

func void FF_APPLYONCEGT(var func FUNCTION) {
    FF_APPLYONCEEXTGT(0x2a99, 0, -(1));
}

func void FF_REMOVE(var func FUNCTION) {
    _FF_SYMBOL = MEM_GETFUNCPTR(0x2a9b);
    FOREACHHNDL(0x2a65, 0x2a9c);
}

func int _FF_REMOVEL(var int HNDL) {
    if ((MEM_READINT(GETPTR(HNDL))) != (_FF_SYMBOL)) {
        return CONTINUE;
    };
    DELETE(HNDL);
    return BREAK;
}

func void FF_REMOVEALL(var func FUNCTION) {
    _FF_SYMBOL = MEM_GETFUNCPTR(0x2a9f);
    FOREACHHNDL(0x2a65, 0x2aa0);
}

func int _FF_REMOVEALLL(var int HNDL) {
    if ((MEM_READINT(GETPTR(HNDL))) != (_FF_SYMBOL)) {
        return CONTINUE;
    };
    DELETE(HNDL);
    return CONTINUE;
}

func void _FF_HOOK() {
    if (!(HLP_ISVALIDNPC(HERO))) {
        return;
    };
    FOREACHHNDL(0x2a65, 0x2aa3);
}

func int FRAMEFUNCTIONS(var int HNDL) {
    ITM = GET(HNDL);
    T = TIMER();
    TGT = TIMERGT();
    if (ITM.GAMETIME) {
        TIMER = TGT;
    };
    TIMER = T;
    MEM_LABEL(0);
    if ((TIMER) >= (ITM.NEXT)) {
        SPTR = MEM_PARSER.DATASTACK_SPTR;
        if (ITM.HASDATA) {
            ITM.DATA;
        };
        MEM_CALLBYPTR(ITM.FNCID);
        MEM_PARSER.DATASTACK_SPTR = SPTR;
        if (!(HLP_ISVALIDHANDLE(HNDL))) {
            return RCONTINUE;
        };
        if ((ITM.CYCLES) != (-(1))) {
            ITM.CYCLES -= 1;
            if ((ITM.CYCLES) <= (0)) {
                DELETE(HNDL);
                return RCONTINUE;
            };
        };
        if (ITM.DELAY) {
            ITM.NEXT += ITM.DELAY;
            MEM_GOTO(0);
        } else {
            ITM.NEXT = (TIMER) + (1);
        };
    };
    return RCONTINUE;
}

instance FRAMEFUNCTIONS.ITM(FFITEM)
var int FRAMEFUNCTIONS.TIMER = 0;
var int FRAMEFUNCTIONS.T = 0;
var int FRAMEFUNCTIONS.TGT = 0;
var int FRAMEFUNCTIONS.SPTR = 0;
var int _FF_DATA = 0;
func int _FF_REMOVELDATA(var int HNDL) {
    if ((MEM_READINT(GETPTR(HNDL))) != (_FF_SYMBOL)) {
        return CONTINUE;
    };
    ITM = GET(HNDL);
    if ((ITM.DATA) != (_FF_DATA)) {
        return CONTINUE;
    };
    DELETE(HNDL);
    return BREAK;
}

instance _FF_REMOVELDATA.ITM(FFITEM)
func void FF_REMOVEDATA(var func FUNCTION, var int DATA) {
    _FF_DATA = DATA;
    _FF_SYMBOL = MEM_GETFUNCPTR(0x2aaf);
    FOREACHHNDL(0x2a65, 0x2aab);
}

func int _FF_ACTIVEDATA(var int HNDL) {
    if ((MEM_READINT(GETPTR(HNDL))) != (_FF_SYMBOL)) {
        return CONTINUE;
    };
    ITM = GET(HNDL);
    if ((ITM.DATA) != (_FF_DATA)) {
        return CONTINUE;
    };
    _FF_SYMBOL = 0;
    return BREAK;
}

instance _FF_ACTIVEDATA.ITM(FFITEM)
func int FF_ACTIVEDATA(var func FUNCTION, var int DATA) {
    _FF_DATA = DATA;
    _FF_SYMBOL = MEM_GETFUNCPTR(0x2ab5);
    FOREACHHNDL(0x2a65, 0x2ab1);
    return !(_FF_SYMBOL);
}

func void FF_APPLYDATA(var func FUNCTION, var int DATA) {
    FF_APPLYEXTDATA(0x2ab8, 0, -(1), DATA);
}

func void FF_APPLYONCEEXTDATA(var func FUNCTION, var int DELAY, var int CYCLES, var int DATA) {
    if (FF_ACTIVEDATA(0x2abb, DATA)) {
        return;
    };
    FF_APPLYEXTDATA(0x2abb, DELAY, CYCLES, DATA);
}

func void FF_APPLYONCEDATA(var func FUNCTION, var int DATA) {
    FF_APPLYONCEEXTDATA(0x2ac0, 0, -(1), DATA);
}

