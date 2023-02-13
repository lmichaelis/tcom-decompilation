func void EVENTSMANAGER_QM201() {
    if ((LOG_GETSTATUS(MIS_QM201)) != (LOG_RUNNING)) {
        return;
    };
    if ((WLD_ISTIME(18, 0, 2, 30)) && ((NPC_KNOWSINFO(HERO, 74970)) == (FALSE))) {
        if (SPAWNTHUGSISAVAILABLE("SLUMS_PATH_97")) {
            SPAWNTHUGS("SLUMS_GANG_POSITION1", "Position1");
            PRINTD("Zbiry zmieni造 RTN! 1");
        } else if (SPAWNTHUGSISAVAILABLE("SLUMS_PATH_37")) {
            SPAWNTHUGS("SLUMS_GANG_POSITION2", "Position2");
            PRINTD("Zbiry zmieni造 RTN! 2");
        } else if (SPAWNTHUGSISAVAILABLE("SLUMS_PATH_86")) {
            SPAWNTHUGS("SLUMS_GANG_POSITION3", "Position3");
            PRINTD("Zbiry zmieni造 RTN! 3");
        } else if (SPAWNTHUGSISAVAILABLE("SLUMS_PATH_50")) {
            SPAWNTHUGS("SLUMS_GANG_POSITION4", "Position4");
            PRINTD("Zbiry zmieni造 RTN! 4");
        };
    };
    if (NPC_KNOWSINFO(HERO, 66564)) {
        if ((QM201_FIGHTWITHLEADER) == (0)) {
            if ((QM201_CHECKHERSHLIKHOUSE) == (FALSE)) {
                if ((NPC_GETDISTTOWP(HERO, "PARTM2_HERSHLIK_FIELD2_02")) <= (800)) {
                    QM201_CHECKHERSHLIKHOUSE = TRUE;
                    B_LOGENTRY(TOPIC_QM201, LOG_QM201_HERSHLIK_CHECK);
                    QM201_REMOVEMILITIA();
                };
            };
        } else if ((QM201_FIGHTWITHLEADER) == (1)) {
            if (NPC_ISDEAD(NONE_13588_THUG)) {
                QM201_FIGHTWITHLEADER = 2;
                B_LOGENTRY(TOPIC_QM201, LOG_QM201_LEADER_DEAD);
                QM201_REMOVEMILITIA();
            };
        };
    };
}

