func void Q404_MARVINASK_NEEDHELP() {
    AI_OUTPUT(OTHER, SELF, "DIA_Dalmon_GuardMine_15_01");
}

func void Q404_GIVEREWARD_WEAPON() {
    var int MAXWEAPONSKILL;
    MAXWEAPONSKILL = MAXOF4(HERO.HITCHANCE[1], HERO.HITCHANCE[2], HERO.HITCHANCE[3], HERO.HITCHANCE[4]);
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[1])) {
        if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
            CREATEINVITEMS(NONE_15_ULRYK, 34080, 1);
        } else {
            CREATEINVITEMS(NONE_15_ULRYK, 39546, 1);
            B_GIVEINVITEMS(NONE_15_ULRYK, HERO, 39546, 1);
        };
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[2])) {
        if ((HERO.ATTRIBUTE[4]) >= (HERO.ATTRIBUTE[5])) {
            CREATEINVITEMS(NONE_15_ULRYK, 34088, 1);
        } else {
            CREATEINVITEMS(NONE_15_ULRYK, 39647, 1);
            B_GIVEINVITEMS(NONE_15_ULRYK, HERO, 39647, 1);
        };
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[3])) {
        CREATEINVITEMS(NONE_15_ULRYK, 34401, 1);
    };
    if ((MAXWEAPONSKILL) == (HERO.HITCHANCE[4])) {
        CREATEINVITEMS(NONE_15_ULRYK, 34418, 1);
        B_GIVEINVITEMS(NONE_15_ULRYK, HERO, 34418, 1);
    };
}

func void Q404_GIVEREWARD_POTION() {
    if (((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_FIGHTER)) || ((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_FIGHTER))) {
        CREATEINVITEMS(SELF, 34371, 1);
    };
    if (((MARVIN_MILITIASPECIALIZATION) == (MILITIA_SPECIALIZATION_CROSSBOWMAN)) || ((MARVIN_ARAXOSSPECIALIZATION) == (ARAXOS_SPECIALIZATION_ARCHER))) {
        CREATEINVITEMS(SELF, 34373, 1);
        B_GIVEINVITEMS(SELF, OTHER, 34373, 1);
    };
}

func void Q404_GAURRING(var C_ITEM ITEM) {
    if (((Q404_GAURRING_TAKEITEM) == (FALSE)) && (NPC_KNOWSINFO(HERO, 82477))) {
        if ((HLP_GETINSTANCEID(ITEM)) == (38009)) {
            Q404_GAURRING_TAKEITEM = TRUE;
            MOB_CHANGEFOCUSNAME("Q404_GAURCORPSE", "MOBNAME_NOTHING");
            WLD_SENDTRIGGER("Q404_GAURRING_PLUNDER");
            B_LOGENTRY(TOPIC_Q404, LOG_Q404_GAURRING);
        };
    };
}

func void Q404_BOSSFIGHT_STARTEVENT_APPLY() {
    var int Q404_BOSSFIGHT_STARTEVENT_COUNT;
    Q404_BOSSFIGHT_STARTEVENT_COUNT = (Q404_BOSSFIGHT_STARTEVENT_COUNT) + (1);
    if ((Q404_BOSSFIGHT_STARTEVENT_COUNT) == (1)) {
        WLD_PLAYEFFECT("FX_MINECRAWLER_EXPLODE", MINECRAWLERQUEEN, MINECRAWLERQUEEN, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_MINECRAWLER_EXPLODE", HERO, HERO, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    };
    if ((Q404_BOSSFIGHT_STARTEVENT_COUNT) == (1)) {
        SND_PLAY("CRAWLER_POISON_EXPLODE");
    };
    if ((Q404_BOSSFIGHT_STARTEVENT_COUNT) == (3)) {
        AI_PLAYANI(HERO, "T_BOSSFALLDOWN");
        PRINTD("3");
        if ((NPC_ISDEAD(DJG_10021_WOLFSON)) == (FALSE)) {
            AI_PLAYANI(DJG_10021_WOLFSON, "T_BOSSFALLDOWN");
        };
        if ((NPC_ISDEAD(DJG_10022_WOLFSON)) == (FALSE)) {
            AI_PLAYANI(DJG_10022_WOLFSON, "T_BOSSFALLDOWN");
        };
        if ((NPC_ISDEAD(DJG_10023_WOLFSON)) == (FALSE)) {
            AI_PLAYANI(DJG_10023_WOLFSON, "T_BOSSFALLDOWN");
        };
        if ((NPC_ISDEAD(DJG_10020_JON)) == (FALSE)) {
            AI_PLAYANI(DJG_10020_JON, "T_BOSSFALLDOWN");
        };
    };
    if ((Q404_BOSSFIGHT_STARTEVENT_COUNT) == (5)) {
    };
    if ((Q404_BOSSFIGHT_STARTEVENT_COUNT) == (7)) {
        PRINTD("7");
        Q404_BOSSFIGHT_STARTEVENT_COUNT = 0;
    };
}

