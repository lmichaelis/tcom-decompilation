var int CHROMEPROFILERENABLED;
const int SCOPE_START = 0;
const int SCOPE_END = 1;
func void PC_SCOPE(var int PHASE, var string NAME) {
    var int _KMLIB_CHROMETRACEEVENT_PTR;
    if (!(CHROMEPROFILERENABLED)) {
        return;
    };
    if (!(_KMLIB_CHROMETRACEEVENT_PTR)) {
        _KMLIB_CHROMETRACEEVENT_PTR = KMLIB_GETPROCADDRESS("ChromeTraceEvent");
    };
    CALL_CSTRINGPTRPARAM(NAME);
    CALL_INTPARAM(PHASE);
    CALL__CDECL(_KMLIB_CHROMETRACEEVENT_PTR);
}

