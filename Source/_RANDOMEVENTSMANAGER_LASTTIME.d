const int _RANDOMEVENTSMANAGER_LASTTIME = -1;
func void _RANDOMEVENTSMANAGER() {
    if (((HERO.GUILD) > (GIL_SEPERATOR_HUM)) && ((CURRENTLEVEL) == (ARCHOLOS_ZEN))) {
        return;
    };
    if ((KAPITEL) == (6)) {
        return;
    };
    if ((GAME_RUNTIMECONFIG) != (TARGET_DEBUG)) {
        if ((LOG_GETSTATUS(MIS_Q103)) != (LOG_SUCCESS)) {
            return;
        };
    };
    PC_SCOPE(SCOPE_START, "RandomEventsManager");
    EVENTSMANAGER_TRAPS();
    PC_SCOPE(SCOPE_END, "RandomEventsManager");
}

func void RANDOMEVENTSMANAGER() {
    var int STARTTIME;
    if ((GAME_RUNTIMECONFIG) == (TARGET_SHIPPING)) {
        _RANDOMEVENTSMANAGER();
    };
    STARTTIME = MEM_GETSYSTEMTIME();
    _RANDOMEVENTSMANAGER();
    _RANDOMEVENTSMANAGER_LASTTIME = (MEM_GETSYSTEMTIME()) - (STARTTIME);
}

func void INIT_RANDOMEVENTSMANAGER() {
    FF_APPLYONCEEXTGT(94673, 1000, -(1));
}

