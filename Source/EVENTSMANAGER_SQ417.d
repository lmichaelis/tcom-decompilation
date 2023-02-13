func void EVENTSMANAGER_SQ417() {
    var int SQ417_EVENTS_LOGENTRY_03;
    var int SQ417_EVENTS_LOGENTRY_01;
    var int SQ417_LEGRIFBOTTLES_LOGENTRY;
    var int SQ417_PATROLDISTANCE;
    if ((LOG_GETSTATUS(MIS_SQ417)) == (LOG_RUNNING)) {
        if ((SQ417_ARETHEPATROL) == (2)) {
            if ((((SQ417_PATROLTIME) != (6)) && ((SQ417_PATROLTIME) != (7))) && ((SQ417_PATROLTIME) != (10))) {
                if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_WALL_08")) >= (2200)) {
                    SQ417_ARETHEPATROL = 3;
                    SQ417_FAILEDQUEST();
                };
            };
        };
        if ((SQ417_PATROLTIME) >= (1)) {
            if ((SQ417_STOPSCALETIME) == (FALSE)) {
                if (WLD_ISTIME(3, 0, 3, 10)) {
                    PRINTD("Zatrzymaj skalowanie czasu");
                    SQ417_STOPSCALETIME = TRUE;
                    CHANGETIMESPEED(100);
                    SETHOLDTIME(TRUE);
                };
            };
        };
        if ((SQ417_PATROLTIME) == (1)) {
            if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_WALL_12")) <= (SQ417_PATROLDISTANCE)) {
                SQ417_PATROLTIME = 2;
                AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ417_PATROL_15_01");
            };
        } else if ((SQ417_PATROLTIME) == (2)) {
            if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_WALL_06")) <= (SQ417_PATROLDISTANCE)) {
                SQ417_PATROLTIME = 3;
                AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ417_PATROL_15_02");
            };
        } else if ((SQ417_PATROLTIME) == (3)) {
            if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_WALL_12")) <= (SQ417_PATROLDISTANCE)) {
                MOB_CHANGEFOCUSNAME("SQ417_LAMP_04", "MOBNAME_SQ417_LAMP");
                SQ417_PATROLTIME = 4;
                MOB_CHANGEFOCUSNAME("SQ417_LAMP_03", "MOBNAME_SQ417_LAMP");
                B_LOGENTRY(TOPIC_SQ417, LOG_SQ417_PATROL_LATE);
            };
        } else if ((SQ417_PATROLTIME) == (5)) {
            if (((NPC_GETDISTTOWP(HERO, "WOLFSDEN_WALL_12")) <= (SQ417_PATROLDISTANCE)) && ((NPC_ISINSTATE(DJG_10012_ARETHE, 61599)) == (FALSE))) {
                SQ417_PATROLTIME = 6;
                WLD_SENDTRIGGER("SQ417_SOUND_FIRSTATTEMPT");
                B_LOGENTRY(TOPIC_SQ417, LOG_SQ417_PATROL_SOUND);
                B_STARTOTHERROUTINE(DJG_10012_ARETHE, "SQ417_WAKEUP");
                NPC_REFRESH(DJG_10012_ARETHE);
                TELEPORTNPCTOWP(58271, DJG_10012_ARETHE.WP);
                FF_APPLYONCEEXTGT(63607, 0, -(1));
            };
        } else if ((SQ417_PATROLTIME) == (6)) {
            if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_PATH_21")) <= (500)) {
                if ((SQ417_LEGRIFBOTTLES_LOGENTRY) == (FALSE)) {
                    SQ417_LEGRIFBOTTLES_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_SQ417, LOG_SQ417_LEGRIFBOTTLES);
                };
            };
        } else if ((SQ417_PATROLTIME) == (7)) {
            if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_WALL_06")) <= (SQ417_PATROLDISTANCE)) {
                SQ417_PATROLTIME = 8;
                AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ417_PATROL_15_03");
            };
        } else if ((SQ417_PATROLTIME) == (8)) {
            if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_WALL_12")) <= (SQ417_PATROLDISTANCE)) {
                SQ417_PATROLTIME = 9;
                AI_OUTPUT(HERO, HERO, "DIA_MARVIN_SQ417_PATROL_15_04");
            };
        } else if ((SQ417_PATROLTIME) == (9)) {
            if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_WALL_06")) <= (SQ417_PATROLDISTANCE)) {
                SQ417_PATROLTIME = 10;
                FADESCREENTOBLACKF(1, 63617, 1000);
            };
        };
        if ((SQ417_ARETHEPLAN) == (2)) {
            if ((SQ417_ARETHEPLAN_EVENTS) == (0)) {
                if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_HOUSE01_04")) <= (400)) {
                    SQ417_ARETHEPLAN_EVENTS = 1;
                    FADESCREENTOBLACKF(1, 63618, 1000);
                };
            } else if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_SQ417_EVENT_01")) <= (400)) {
                if ((SQ417_EVENTS_LOGENTRY_01) == (FALSE)) {
                    SQ417_EVENTS_LOGENTRY_01 = TRUE;
                    B_LOGENTRY(TOPIC_SQ417, LOG_SQ417_EVENTS_TRACE_01);
                };
            };
            if ((NPC_GETDISTTOWP(HERO, "WOLFSDEN_PATH_77")) <= (400)) {
                if ((SQ417_EVENTS_LOGENTRY_03) == (FALSE)) {
                    SQ417_EVENTS_LOGENTRY_03 = TRUE;
                    B_LOGENTRY(TOPIC_SQ417, LOG_SQ417_EVENTS_TRACE_03);
                };
            };
            if ((SQ417_FIGHTWITHWOLFSON) == (1)) {
                if (NPC_ISINSTATE(DJG_13635_WOLFSON, 61603)) {
                    SQ417_FIGHTWITHWOLFSON = 2;
                    NPC_SETATTITUDE(DJG_13635_WOLFSON, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(DJG_13635_WOLFSON, ATT_NEUTRAL);
                    DJG_13635_WOLFSON.AIVAR[1] = CRIME_NONE;
                    MDL_STARTFACEANI(DJG_13635_WOLFSON, S_NEUTRAL, 1065353216, -1082130432);
                    DJG_13635_WOLFSON.AIVAR[45] = AF_NONE;
                    DJG_13635_WOLFSON.AIVAR[64] = TRUE;
                    PRINTD("Clear Attitude");
                    B_LOGENTRY(TOPIC_SQ417, LOG_SQ417_EVENTS_FIGHTWITHWOLFSON);
                };
            };
            if ((SQ417_FIGHTWITHBAES) == (1)) {
                if (NPC_ISINSTATE(DJG_10015_BAES, 61603)) {
                    SQ417_FIGHTWITHBAES = 2;
                    NPC_SETATTITUDE(DJG_10015_BAES, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(DJG_10015_BAES, ATT_NEUTRAL);
                    DJG_10015_BAES.AIVAR[1] = CRIME_NONE;
                    MDL_STARTFACEANI(DJG_10015_BAES, S_NEUTRAL, 1065353216, -1082130432);
                    DJG_10015_BAES.AIVAR[45] = AF_NONE;
                    DJG_10015_BAES.AIVAR[64] = TRUE;
                    PRINTD("Clear Attitude");
                    B_LOGENTRY(TOPIC_SQ417, LOG_SQ417_BAES_DECISION_V2);
                    if ((LOG_GETSTATUS(MIS_SQ403)) == (LOG_RUNNING)) {
                        B_LOGENTRY(TOPIC_SQ403, LOG_SQ403_FAILED);
                        LOG_SETSTATUS(_@(MIS_SQ403), TOPIC_SQ403, LOG_FAILED);
                    };
                };
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ417)) == (LOG_SUCCESS)) {
        if ((SQ417_FINISHCHECK) == (1)) {
            if ((SQ417_FINISHCHECK_DAY) <= ((WLD_GETDAY()) - (1))) {
                SQ417_FINISHCHECK = 2;
                SQ417_REMOVENPC_PART2();
                return;
            };
        };
    };
    if ((LOG_GETSTATUS(MIS_SQ417)) == (LOG_FAILED)) {
        if ((SQ417_ARETHEMAD) == (1)) {
            if ((NPC_GETDISTTONPC(HERO, DJG_10012_ARETHE)) <= (1000)) {
                if ((NPC_ISINSTATE(HERO, 61603)) || (NPC_ISINSTATE(DJG_10012_ARETHE, 61603))) {
                    SQ417_ARETHEMAD = 2;
                    NPC_SETATTITUDE(DJG_10012_ARETHE, ATT_NEUTRAL);
                    NPC_SETTEMPATTITUDE(DJG_10012_ARETHE, ATT_NEUTRAL);
                    DJG_10012_ARETHE.AIVAR[1] = CRIME_NONE;
                    MDL_STARTFACEANI(DJG_10012_ARETHE, S_NEUTRAL, 1065353216, -1082130432);
                    PRINTD("Clear Attitude");
                    return;
                };
            };
        };
    };
}

