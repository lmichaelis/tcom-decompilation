const int _TIMER_DIFF = 0;
var int _TIMER = 0;
var int _TIMER_PAUSED = 0;
var int _TIMER_PIM = 0;
const int _TIMERGT_DIFF = 0;
var int _TIMERGT = 0;
var int _TIMERGT_PAUSED = 0;
func void _TIMER_INIT() {
    _TIMER_DIFF = (MEM_GETSYSTEMTIME()) - (_TIMER);
}

func void _TIMERGT_INIT() {
    _TIMERGT_DIFF = (MEM_GETSYSTEMTIME()) - (_TIMERGT);
}

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

func void TIMER_SETPAUSEINMENU(var int ON) {
    _TIMER_PIM = ON;
}

func int TIMER_ISPAUSED() {
    return (_TIMER_PAUSED) > (0);
}

