func void EVENTSMANAGER_QA401_ARCHOLOS() {
    var int QA401_MEATBUG_LOGENTRY_05;
    var int QA401_MEATBUG_LOGENTRY_03;
    var int QA401_BRIDGECRATES_LOGENTRY;
    if ((LOG_GETSTATUS(MIS_QA401)) != (LOG_RUNNING)) {
        return;
    };
    if ((QA401_WORKERRESULT) == (2)) {
        if (((NPC_ISINSTATE(NONE_13541_WORKER, 61603)) && (NPC_ISINSTATE(NONE_13542_WORKER, 61603))) && (NPC_ISINSTATE(NONE_13543_WORKER, 61603))) {
            if ((QA401_WAKEUPWORKERS) == (FALSE)) {
                QA401_WAKEUPWORKERS = TRUE;
                NONE_13541_WORKER.AIVAR[96] = 1;
                NONE_13542_WORKER.AIVAR[96] = 2;
                NONE_13543_WORKER.AIVAR[96] = 3;
                NPC_SETATTITUDE(NONE_13541_WORKER, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(NONE_13541_WORKER, ATT_NEUTRAL);
                NONE_13541_WORKER.AIVAR[1] = CRIME_NONE;
                NONE_13541_WORKER.AIVAR[0] = FIGHT_NONE;
                NPC_SETATTITUDE(NONE_13542_WORKER, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(NONE_13542_WORKER, ATT_NEUTRAL);
                NONE_13542_WORKER.AIVAR[1] = CRIME_NONE;
                NONE_13542_WORKER.AIVAR[0] = FIGHT_NONE;
                NPC_SETATTITUDE(NONE_13543_WORKER, ATT_NEUTRAL);
                NPC_SETTEMPATTITUDE(NONE_13543_WORKER, ATT_NEUTRAL);
                NONE_13543_WORKER.AIVAR[1] = CRIME_NONE;
                NONE_13543_WORKER.AIVAR[0] = FIGHT_NONE;
            };
        };
    };
    if ((QA401_BRIDGECRATES_LOGENTRY) == (FALSE)) {
        if ((NPC_GETDISTTOWP(HERO, "HARBOUR_PATH_296")) <= (750)) {
            QA401_BRIDGECRATES_LOGENTRY = TRUE;
            B_LOGENTRY(TOPIC_QA401, LOG_QA401_BRIDGE_SAW);
        };
    };
    if ((QA401_FIGHTWITHARMAR) == (1)) {
        if (((NPC_ISDEAD(VLK_6107_ARMAR)) && (NPC_ISDEAD(NONE_13546_BODYGUARD))) && (NPC_ISDEAD(NONE_13547_BODYGUARD))) {
            QA401_FIGHTWITHARMAR = 2;
            QA401_ARMARRESULT = 2;
            B_LOGENTRY(TOPIC_QA401, LOG_QA401_ARMAR_FIGHT);
            QA401_COUNTTASKS();
        };
    };
    if ((QA401_PREPAREARAXOSONBEACH) == (FALSE)) {
        if ((QA401_COUNTTASK) >= (4)) {
            if (((NPC_GETDISTTONPC(HERO, SLD_1000_ADELARD)) >= (5000)) && ((NPC_GETDISTTONPC(HERO, SLD_13548_ARAXOS)) >= (5000))) {
                QA401_PREPAREARAXOSONBEACH = TRUE;
                QA401_PREPAREARAXOSBEACH();
                QA401_OTMARWHATDO();
            };
        };
    };
    if ((NPC_KNOWSINFO(HERO, 71462)) && ((HERO.GUILD) == (GIL_MEATBUG))) {
        if ((NPC_GETDISTTOWP(HERO, "PART1_CAVE_IN_40")) <= (500)) {
            if ((QA401_MEATBUG_UP) == (FALSE)) {
                QA401_MEATBUG_UP = TRUE;
                B_LOGENTRY(TOPIC_QA401, LOG_QA401_MEATBUG_V2);
            };
        };
        if ((NPC_GETDISTTOWP(HERO, "PART1_CAVE_IN_36")) <= (500)) {
            if ((QA401_MEATBUG_LOGENTRY_03) == (FALSE)) {
                QA401_MEATBUG_LOGENTRY_03 = TRUE;
                B_LOGENTRY(TOPIC_QA401, LOG_QA401_MEATBUG_V3);
            };
        };
        if ((NPC_GETDISTTOWP(HERO, "PART1_CAVE_IN_25")) <= (500)) {
            if ((QA401_MEATBUG_LOGENTRY_05) == (FALSE)) {
                QA401_MEATBUG_LOGENTRY_05 = TRUE;
                B_LOGENTRY(TOPIC_QA401, LOG_QA401_MEATBUG_V5);
            };
        };
        if ((QA401_MEATBUG_LOGENTRY_05) == (TRUE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART1_CAVE_OUT_03")) <= (500)) {
                if ((QA401_MEATBUG_FINISH) == (FALSE)) {
                    QA401_MEATBUG_FINISH = TRUE;
                    B_LOGENTRY(TOPIC_QA401, LOG_QA401_MEATBUG_V6);
                };
            };
        };
    };
    if ((QA401_DOOR_CUTSCENEENABLE) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PART1_QA401_CUTSCENE_HERO")) <= (500)) {
            QA401_DOOR_CUTSCENEENABLE = 2;
            HERO.AIVAR[4] = TRUE;
            FF_APPLYONCEEXT(62904, 75, 4);
        };
    };
    if ((QA401_DOOR_CUTSCENEENABLE) == (3)) {
        if ((QA401_SMUGGLERSDEAD_ROUND01) == (FALSE)) {
            if ((QM401_SMUGGLERSAREDEAD_ROUND01()) == (TRUE)) {
                QA401_SMUGGLERSDEAD_ROUND01 = TRUE;
                QM401_SMUGGLERSAREDEAD_ROUND01_CHANGERTN();
                B_LOGENTRY(TOPIC_QA401, LOG_QA401_FIGHT_FIRSTROOM);
            };
        };
    };
    if ((QA401_SMUGGLERSDEAD_ROUND01) == (TRUE)) {
        if ((QA401_GOAWAY_BLOCKER) == (0)) {
            if ((((NPC_GETDISTTOWP(HERO, "PART1_CAVE_IN_CARAMON")) >= (5000)) && ((QA401_LEVER_CHANGESMUGGLERS) == (FALSE))) || (((NPC_GETDISTTOWP(HERO, "PART1_CAVE_IN_CARAMON")) >= (8000)) && ((QA401_LEVER_CHANGESMUGGLERS) == (TRUE)))) {
                QA401_GOAWAY_BLOCKER = 1;
                AI_OUTPUT(HERO, HERO, "DIA_Marvin_QA401_TooFar_15_01");
            };
        } else if ((QA401_GOAWAY_BLOCKER) == (1)) {
            if ((((NPC_GETDISTTOWP(HERO, "PART1_CAVE_IN_CARAMON")) >= (5500)) && ((QA401_LEVER_CHANGESMUGGLERS) == (FALSE))) || (((NPC_GETDISTTOWP(HERO, "PART1_CAVE_IN_CARAMON")) >= (8500)) && ((QA401_LEVER_CHANGESMUGGLERS) == (TRUE)))) {
                QA401_GOAWAY_BLOCKER = 2;
                FADESCREENTOBLACKF(1, 62911, 1000);
            };
        };
    };
    if ((QA401_LEVER_CHANGESMUGGLERS) == (1)) {
        if ((NPC_GETDISTTOWP(HERO, "PART1_CAVE_IN_30")) <= (1000)) {
            QA401_LEVER_CHANGESMUGGLERS = 2;
            AI_OUTPUT(HERO, HERO, "DIA_Marvin_QA401_Empty_15_01");
        };
    };
    if ((QA401_FINAL_CUTSCENEENABLE) == (1)) {
        if ((NPC_GETDISTTONPC(HERO, SLD_1000_ADELARD)) <= (1500)) {
            QA401_FINAL_CUTSCENEENABLE = 2;
            HERO.AIVAR[4] = TRUE;
            FF_APPLYONCEEXT(62923, 75, 4);
        };
    };
    if ((QA401_FINAL_CUTSCENEENABLE) == (2)) {
        if ((NPC_ISDEAD(BDT_13571_SMUGGLER)) || (((NPC_ISDEAD(BDT_13571_SMUGGLER)) == (FALSE)) && ((NPC_GETDISTTOWP(BDT_13571_SMUGGLER, RESERVED_CONST_STRING_23)) <= (550)))) {
            if ((NPC_ISDEAD(BDT_13571_SMUGGLER)) == (FALSE)) {
                B_KILLNPC(55574);
            };
            QA401_FINAL_CUTSCENEENABLE = 3;
            QA401_FINALCUTSCENE_PART2();
        };
    };
}

