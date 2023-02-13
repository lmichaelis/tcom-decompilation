func int LOG_GETSTATUS(var int MISSION) {
    return MISSION;
}

const int OCLOGMANAGER_PTR = 11191608;
func void LOG_MOVETOTOP(var string TOPICNAME) {
    var ZCLIST PREVLIST;
    var ZCLIST NEWLIST;
    var int NEWLISTPTR;
    var ZCLIST LIST;
    LIST = _^(OCLOGMANAGER_PTR);
    NEWLISTPTR = LIST_CREATE(0);
    NEWLIST = _^(NEWLISTPTR);
    PREVLIST = _^(OCLOGMANAGER_PTR);
    WHILE(LIST.NEXT);
    LIST = _^(LIST.NEXT);
    if (LIST.DATA) {
        if (HLP_STRCMP(MEM_READSTRING(LIST.DATA), TOPICNAME)) {
            NEWLIST.DATA = LIST.DATA;
            PREVLIST.NEXT = LIST.NEXT;
        };
    };
    PREVLIST = _^(_@(21574));
    if ((NEWLIST.DATA) == (0)) {
        if ((GAME_RUNTIMECONFIG) != (TARGET_SHIPPING)) {
            MEMINT_FORCEERRORBOX = TRUE;
            MEM_SENDTOSPY(ZERR_TYPE_FAULT, CS3("B_LogEntry: Error! Probably topic '", TOPICNAME, "' does not exist. Probably B_LogEntry has been called before Log_CreateTopic."));
            MEMINT_FORCEERRORBOX = FALSE;
        };
    };
    END;
    LIST = _^(OCLOGMANAGER_PTR);
    NEWLIST.NEXT = LIST.NEXT;
    LIST.NEXT = NEWLISTPTR;
}

