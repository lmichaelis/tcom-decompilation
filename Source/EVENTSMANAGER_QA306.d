func void EVENTSMANAGER_QA306() {
    var int QA306_GOTIGORKEY_LOGENTRY;
    var int QA306_GOTSLEEPSPELL_LOGENTRY;
    if ((LOG_GETSTATUS(MIS_QA306)) != (LOG_RUNNING)) {
        return;
    };
    if (((QA306_GOTOARAXOSMINE) == (1)) && ((SQ119_INSIDEMINE) == (0))) {
        if ((QA306_GOTOARAXOSMINE_DAY) <= ((WLD_GETDAY()) - (2))) {
            if ((NPC_GETDISTTOWP(HERO, "PART7_MINE_31")) >= (5000)) {
                QA306_GOTOARAXOSMINE = 2;
                QA306_PREPARENPC();
                QA306_RELOADGOLDMOBS();
                B_LOGENTRY(TOPIC_QA306, LOG_QA306_READYTOGO);
            };
        };
    };
    if ((QA306_GOTOARAXOSMINE) == (2)) {
        if ((NPC_KNOWSINFO(HERO, 79397)) == (FALSE)) {
            if ((QA306_FOUNDROEL) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART7_MINE_73")) <= (600)) {
                    QA306_FOUNDROEL = TRUE;
                    QA306_FINISHEDEVENTS = (QA306_FINISHEDEVENTS) + (1);
                    B_LOGENTRY(TOPIC_QA306, LOG_QA306_FOUNDROEL);
                };
            };
            if ((QA306_PAYDNAARS) == (1)) {
                if (((QA306_PAYDNAARS_DAY) != (WLD_GETDAY())) || ((QA306_PAYDNAARS_HOURS) <= ((WLD_GETHOUR()) - (2)))) {
                    if ((NPC_GETDISTTONPC(HERO, SLD_13715_NAARS)) >= (700)) {
                        QA306_PAYDNAARS = 2;
                        QA306_REMOVENAARS();
                    };
                };
            } else if ((QA306_PAYDNAARS) == (2)) {
                if ((NPC_GETDISTTOWP(HERO, "PART7_MINE_LEAN_02")) <= (800)) {
                    QA306_FINISHEDEVENTS = (QA306_FINISHEDEVENTS) + (1);
                    QA306_PAYDNAARS = 3;
                    B_LOGENTRY(TOPIC_QA306, LOG_QA306_NAARSMISSING);
                };
            };
            if ((QA306_NEARTOWER_LOGENTRY) == (1)) {
                if ((NPC_GETDISTTOWP(HERO, "PART7_MINE_TOWER")) <= (700)) {
                    QA306_NEARTOWER_LOGENTRY = 2;
                    B_LOGENTRY(TOPIC_QA306, LOG_QA306_TOWER);
                };
            } else if (((QA306_NEARTOWER_LOGENTRY) == (2)) && ((QA306_GOTSLEEPSPELL_LOGENTRY) == (FALSE))) {
                if ((NPC_HASITEMS(HERO, 34695)) >= (1)) {
                    QA306_GOTSLEEPSPELL_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_QA306, LOG_QA306_GOTSLEEPSPELL);
                };
            };
            if ((QA306_GOTIGORKEY_LOGENTRY) == (FALSE)) {
                if ((NPC_HASITEMS(HERO, 36904)) >= (1)) {
                    QA306_GOTIGORKEY_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_QA306, LOG_QA306_GOTIGORKEY);
                };
            };
        };
        if ((QA306_SEARCHHEINSERJOINTS) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "PART7_MINE_102")) <= (800)) {
                QA306_SEARCHHEINSERJOINTS = 2;
                MOB_CHANGEFOCUSNAME("QA306_FIREPLACE", "MOBNAME_QA306_SEARCHFIREPLACE");
                B_LOGENTRY(TOPIC_QA306, LOG_QA306_HEINSER_WORKERSROOM);
            };
        };
        if ((QA306_BLOODWYNCUTSCENESTATUS) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "PART7_MINE_39")) <= (1200)) {
                QA306_BLOODWYNCUTSCENESTATUS = 2;
                QA306_BLOODWYNCUTSCENE_PREPARE();
            };
        } else if ((QA306_BLOODWYNCUTSCENESTATUS) == (3)) {
            if ((QA306_SPAWNMINER) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PART7_MINE_LEAN_02")) <= (1200)) {
                    QA306_SPAWNMINER = TRUE;
                    B_STARTOTHERROUTINE(NONE_13725_WORKER, "QA306_FOLLOW");
                    NPC_REFRESH(NONE_13725_WORKER);
                    TELEPORTNPCTOWP(56373, NONE_13725_WORKER.WP);
                };
            };
            if ((QA306_FIGHTWITHLOAFSTATUS) == (1)) {
                if ((QA306_WORKERSAREDEAD()) == (TRUE)) {
                    QA306_FIGHTWITHLOAFSTATUS = 2;
                    B_LOGENTRY(TOPIC_QA306, LOG_QA306_WORKERSAREDEAD);
                };
            };
            if ((QA306_FIGHTWITHMURKSTATUS) == (1)) {
                if (NPC_ISINSTATE(NONE_13703_MURK, 61603)) {
                    QA306_FIGHTWITHMURKSTATUS = 2;
                    NPC_SETATTITUDE(NONE_13703_MURK, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(NONE_13703_MURK, ATT_NEUTRAL);
                    NONE_13703_MURK.AIVAR[1] = CRIME_NONE;
                    NONE_13703_MURK.AIVAR[0] = FIGHT_NONE;
                };
            };
            if ((QA306_FIGHTWITHARAXOSGUARDSTATUS) == (1)) {
                if (NPC_ISINSTATE(SLD_13700_ARAXOS_GUARDMINE, 61603)) {
                    QA306_FIGHTWITHARAXOSGUARDSTATUS = 2;
                    NPC_SETATTITUDE(SLD_13700_ARAXOS_GUARDMINE, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(SLD_13700_ARAXOS_GUARDMINE, ATT_NEUTRAL);
                    SLD_13700_ARAXOS_GUARDMINE.AIVAR[1] = CRIME_NONE;
                    SLD_13700_ARAXOS_GUARDMINE.AIVAR[0] = FIGHT_NONE;
                    AI_FUNCTION(SLD_13700_ARAXOS_GUARDMINE, 63259);
                };
            };
        };
    };
}

