func void EVENTSMANAGER_Q307() {
    if ((LOG_GETSTATUS(MIS_Q307)) != (LOG_RUNNING)) {
        return;
    };
    if ((Q307_HIERRONEARALCHEMY) == (FALSE)) {
        if (((NPC_KNOWSINFO(HERO, 83532)) && ((NPC_GETDISTTOWP(NOV_200_HIERRO, "PART17_HAVEN_HUT5_ALCHEMY_01")) <= (500))) && ((NPC_ISINSTATE(NOV_200_HIERRO, 61599)) == (FALSE))) {
            Q307_HIERRONEARALCHEMY = TRUE;
            B_STARTOTHERROUTINE(NOV_200_HIERRO, "Alchemy");
            NPC_REFRESH(NOV_200_HIERRO);
            PRINTD("Hierro zmieni³ RTN");
            NPC_SETREFUSETALK(NOV_200_HIERRO, 25);
        };
    };
    if (((Q307_WECRATEDPOTION) == (FALSE)) && ((Q307_POISONFROMHIERRO) == (FALSE))) {
        if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_NONE)) {
            if ((NPC_HASITEMS(HERO, 36950)) >= (1)) {
                CREATEINVITEMS(HERO, 36951, 1);
                Q307_WECRATEDPOTION = TRUE;
                ALCHEMY_Q307_BENPOTION = FALSE;
                B_LOGENTRY(TOPIC_Q307, LOG_Q307_CREATEDPOTION);
                B_STARTOTHERROUTINE(NOV_200_HIERRO, "TAVERN");
                NPC_REFRESH(NOV_200_HIERRO);
            };
        };
    };
    if ((Q307_WAITPOISONWAIT) == (FALSE)) {
        if (((Q307_POISONWAY) == (1)) || ((Q307_POISONWAY) == (2))) {
            if (((Q307_WAITPOISONBENCH_HOUR) <= ((WLD_GETHOUR()) - (1))) || ((Q307_WAITPOISONBENCH_DAY) != (WLD_GETDAY()))) {
                Q307_WAITPOISONWAIT = TRUE;
                B_LOGENTRY(TOPIC_Q307, LOG_Q307_READYTALKBEN);
                Q307_BENDRINK();
            };
        };
    };
    if ((Q307_BARRELLOGENTRY) == (FALSE)) {
        if ((((NPC_HASITEMS(HERO, 36950)) >= (1)) && ((NPC_GETDISTTOWP(HERO, "PART17_BAR_25")) <= (300))) && (NPC_KNOWSINFO(HERO, 84287))) {
            Q307_BARRELLOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_Q307, LOG_Q307_BARREL);
        };
    };
    if ((Q307_BENATTACKMARVIN) == (1)) {
        if ((HLP_ISVALIDNPC(NONE_7500_BEN)) && (NPC_ISDEAD(NONE_7500_BEN))) {
            Q307_BENATTACKMARVIN = 2;
            B_LOGENTRY(TOPIC_Q307, LOG_Q307_BENISDEAD);
            LOG_SETSTATUS(_@(MIS_Q307), TOPIC_Q307, LOG_SUCCESS);
        };
    };
}

