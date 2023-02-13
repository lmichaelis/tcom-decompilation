func void EVT_SQ313_OPENDOOR() {
    var int SQ313_OPENDOOR_CHECK;
    if ((SQ313_OPENDOOR_CHECK) == (0)) {
        SQ313_OPENDOOR_CHECK = 1;
        SQ313_CANOPENDOOR = FALSE;
        MOB_CHANGEFOCUSNAME("SQ313_OPENDOOR", "MOBNAME_NOTHING");
        AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ313_DOORLOCKED_15_01");
        AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
        AI_FUNCTION(HERO, 92089);
    };
}

func void SQ313_CANKICKDOOR_V1_PREPARE() {
    SQ313_CANKICKDOOR_V1 = TRUE;
    MOB_CHANGEFOCUSNAME("SQ313_KICKDOORV1", "MOBNAME_KICK");
    WLD_SENDTRIGGER("SQ313_MOVER_INTER_OPEN");
    WLD_SENDTRIGGER("SQ313_MOVER_INTER_KICKV1");
}

func void SQ313_TELEPORTTHUGS() {
    if (HLP_ISVALIDNPC(NONE_6255_THUG)) {
        NPC_CLEARAIQUEUE(NONE_6255_THUG);
        B_STARTOTHERROUTINE(NONE_6255_THUG, "SQ313_WAIT");
        AI_TELEPORT(NONE_6255_THUG, "HARBOUR_SQ313_THUG_01");
    };
    if (HLP_ISVALIDNPC(NONE_6256_THUG)) {
        NPC_CLEARAIQUEUE(NONE_6256_THUG);
        B_STARTOTHERROUTINE(NONE_6256_THUG, "SQ313_WAIT");
        AI_TELEPORT(NONE_6256_THUG, "HARBOUR_SQ313_THUG_01");
    };
    if (HLP_ISVALIDNPC(NONE_6257_THUG)) {
        NPC_CLEARAIQUEUE(NONE_6257_THUG);
        B_STARTOTHERROUTINE(NONE_6257_THUG, "SQ313_WAIT");
        AI_TELEPORT(NONE_6257_THUG, "HARBOUR_SQ313_THUG_01");
    };
    if (HLP_ISVALIDNPC(NONE_6258_THUG)) {
        NPC_CLEARAIQUEUE(NONE_6258_THUG);
        B_STARTOTHERROUTINE(NONE_6258_THUG, "SQ313_WAIT");
        AI_TELEPORT(NONE_6258_THUG, "HARBOUR_SQ313_THUG_01");
    };
    PRINTD("Zbiry wr�ci�y!");
}

func void SQ313_HUUGTRIEDESCAPE() {
    NONE_1004_HUUG.FLAGS = 2;
    B_LOGENTRY(TOPIC_SQ313, LOG_SQ313_HUUG_RUNAWAY);
    SQ313_HUUGESCAPE = 1;
    if (NPC_ISDEAD(PAL_101_SILVESTR)) {
        SQ313_HUUGEVENT = 1;
        NPC_CLEARAIQUEUE(NONE_1004_HUUG);
        B_STARTOTHERROUTINE(NONE_1004_HUUG, "SQ313_FLEE_01");
        SQ313_TELEPORTTHUGS();
    };
    SQ313_HUUGEVENT = 2;
    NPC_CLEARAIQUEUE(NONE_1004_HUUG);
    B_STARTOTHERROUTINE(NONE_1004_HUUG, "SQ313_FLEE_02");
}

func void EVT_SQ313_KICKDOOR() {
    if ((SQ313_SUPERSTRENGTH) == (TRUE)) {
        if ((SQ313_KICKDOOR_CHECK) == (0)) {
            SQ313_SUPERSTRENGTH = 0;
            SQ313_KICKDOOR_CHECK = 1;
            BUFF_REMOVE(BUFF_HAS(HERO, 32554));
            SQ313_CANKICKDOOR_V2 = 0;
            MOB_CHANGEFOCUSNAME("SQ313_KICKDOORV2", "MOBNAME_NOTHING");
            WLD_SENDTRIGGER("SQ313_MOVER_INTER_KICKV2");
            WLD_SENDTRIGGER("SQ313_BROKENDOOR_01");
            WLD_SENDTRIGGER("SQ313_BROKENDOOR_02");
            WLD_SENDTRIGGER("SQ313_BROKENDOOR_03");
            WLD_PLAYEFFECT("FX_DUST", HERO, HERO, 0, 0, 0, FALSE);
            SND_PLAY("ROCKS_KICK_01");
            SND_PLAY("PLACEHOLDER_SlamDoor01");
            SND_PLAY("DESTROY_WOOD");
            SQ313_HUUGTRIEDESCAPE();
        };
    };
    if ((SQ313_TRIEDTOOPENDOOR) == (FALSE)) {
        SQ313_TRIEDTOOPENDOOR = TRUE;
    };
    SND_PLAY("PLACEHOLDER_SlamDoor01");
    MOB_CHANGEFOCUSNAME("SQ313_KICKDOORV1", "MOBNAME_NOTHING");
    WLD_SENDTRIGGER("SQ313_MOVER_INTER_KICKV1");
    SQ313_CANKICKDOOR_V1 = FALSE;
}

