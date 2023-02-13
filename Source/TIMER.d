func int TIMER() {
    if (!(MEM_GAME.TIMESTEP)) {
        if (_TIMER_PIM) {
            _TIMER_PAUSED = 2;
            return _TIMER;
        };
    };
    if (_TIMER_PAUSED) {
        if ((_TIMER_PAUSED) == (2)) {
            _TIMER_PAUSED = 0;
            _TIMER_INIT();
        } else {
            return _TIMER;
        };
    };
    _TIMER = (MEM_GETSYSTEMTIME()) - (_TIMER_DIFF);
    return _TIMER;
}

func int TIMERGT() {
    if (!(MEM_GAME.TIMESTEP)) {
        _TIMERGT_PAUSED = 2;
        return _TIMERGT;
    };
    if (_TIMERGT_PAUSED) {
        if ((_TIMERGT_PAUSED) == (2)) {
            _TIMERGT_PAUSED = 0;
            _TIMERGT_INIT();
        } else {
            return _TIMERGT;
        };
    };
    _TIMERGT = (MEM_GETSYSTEMTIME()) - (_TIMERGT_DIFF);
    return _TIMERGT;
}

func int TIMERF() {
    return MKF(TIMER());
}

func void TIMER_SETPAUSE(var int ON) {
    if (ON) {
        _TIMER_PAUSED = 1;
        return;
    };
    _TIMER_PAUSED = 0;
    _TIMER_INIT();
}

func int TIMER_ISPAUSED() {
    return (_TIMER_PAUSED) > (0);
}

