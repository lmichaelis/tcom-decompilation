var int _FF_SYMBOL;
func void _FF_CREATE(var func FUNCTION, var int DELAY, var int CYCLES, var int HASDATA, var int DATA, var int GAMETIME) {
    var FFITEM ITM;
    var int HNDL;
    HNDL = NEW(10853);
    ITM = GET(HNDL);
    ITM.FNCID = MEM_GETFUNCPTR(10860);
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

func void FF_APPLY(var func FUNCTION) {
    FF_APPLYEXT(10891, 0, -(1));
}

func void FF_APPLYONCEEXT(var func FUNCTION, var int DELAY, var int CYCLES) {
    if (FF_ACTIVE(10895)) {
        return;
    };
    FF_APPLYEXT(10895, DELAY, CYCLES);
}

func void FF_REMOVE(var func FUNCTION) {
    _FF_SYMBOL = MEM_GETFUNCPTR(10907);
    FOREACHHNDL(10853, 10908);
}

func void FF_REMOVEALL(var func FUNCTION) {
    _FF_SYMBOL = MEM_GETFUNCPTR(10911);
    FOREACHHNDL(10853, 10912);
}

func void _FF_HOOK() {
    if (!(HLP_ISVALIDNPC(HERO))) {
        return;
    };
    FOREACHHNDL(10853, 10915);
}

func int FRAMEFUNCTIONS(var int HNDL) {
    var int SPTR;
    var int TIMER;
    var int TGT;
    var int T;
    var FFITEM ITM;
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

func int _FF_REMOVELDATA(var int HNDL) {
    var FFITEM ITM;
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

func int _FF_ACTIVEDATA(var int HNDL) {
    var FFITEM ITM;
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

func void FF_APPLYDATA(var func FUNCTION, var int DATA) {
    FF_APPLYEXTDATA(10936, 0, -(1), DATA);
}

