func void EVENTSMANAGER_FMQ003() {
    if (((LOG_GETSTATUS(MIS_FMQ003)) != (LOG_RUNNING)) || (((LOG_GETSTATUS(MIS_FMQ003)) == (LOG_RUNNING)) && ((NPC_KNOWSINFO(HERO, 0x103b7)) == (FALSE)))) {
        return;
    };
    if ((FMQ003_CHECKTIME) == (1)) {
        if (WLD_ISTIME(4, 0, 4, 10)) {
            PRINTD("Zatrzymaj czas");
            FMQ003_CHECKTIME = 2;
            SETHOLDTIME(TRUE);
            CHANGETIMESPEED(100);
        };
    };
    if ((FMQ003_PATROLCHURCHCHOSEN) == (TRUE)) {
        if ((((FMQ003_CHANGEWEGARRTN) == (1)) && ((NPC_GETDISTTOWP(MIL_4016_WEGAR, "PARTM8_PATH_20")) <= (300))) && ((NPC_ISINSTATE(MIL_4016_WEGAR, 0xf09f)) == (FALSE))) {
            if ((FMQ003_THIEFTALK) == (0)) {
                FMQ003_CHANGEWEGARRTN = 2;
            };
            if ((FMQ003_CHANGEWEGARRTN) == (2)) {
                B_STARTOTHERROUTINE(MIL_4016_WEGAR, "ChurchWait");
                NPC_REFRESH(MIL_4016_WEGAR);
            };
        };
    };
    if ((FMQ003_THIEFTALK) == (2)) {
        if ((FMQ003_WEGARHELPFIGHT) == (FALSE)) {
            if (HLP_ISVALIDNPC(VLK_6235_THIEF)) {
                if ((NPC_ISINSTATE(VLK_6235_THIEF, 0xf0af)) || (NPC_ISINSTATE(VLK_6235_THIEF, 0xf097))) {
                    FMQ003_WEGARHELPFIGHT = TRUE;
                    B_TURNTONPC(MIL_4016_WEGAR, VLK_6235_THIEF);
                    B_ATTACK(MIL_4016_WEGAR, VLK_6235_THIEF, AR_NONE, 1);
                    PRINTD("Wegar pomaga!");
                };
            };
        };
    };
    if ((FMQ003_THIEFNOTEREAD) == (TRUE)) {
        if ((FMQ003_THIEFCANTALKAGAIN) == (FALSE)) {
            FMQ003_THIEFCANTALKAGAIN = TRUE;
            VLK_6235_THIEF.AIVAR[96] = 5;
            NPC_SETATTITUDE(VLK_6235_THIEF, ATT_NEUTRAL);
            NPC_SETTEMPATTITUDE(VLK_6235_THIEF, ATT_NEUTRAL);
        };
    };
    if ((HLP_ISVALIDNPC(MIL_4047_PRISONGUARD)) && (HLP_ISVALIDNPC(VLK_6235_THIEF))) {
        if ((FMQ003_CHANGEPRISONGUARDRTN) == (0)) {
            if (((((NPC_GETDISTTOWP(MIL_4047_PRISONGUARD, "PARTM1_CONNECTION_PARTM3")) <= (750)) && ((NPC_GETDISTTOWP(VLK_6235_THIEF, "PARTM1_PATH_99")) <= (750))) && ((NPC_ISINSTATE(MIL_4047_PRISONGUARD, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(VLK_6235_THIEF, 0xf09f)) == (FALSE))) {
                FMQ003_CHANGEPRISONGUARDRTN = 1;
                B_STARTOTHERROUTINE(VLK_6235_THIEF, "GoToPrison");
                NPC_REFRESH(VLK_6235_THIEF);
                B_STARTOTHERROUTINE(MIL_4047_PRISONGUARD, "GoToPrison");
                NPC_REFRESH(MIL_4047_PRISONGUARD);
                PRINTD("Odprowadzanie wiêŸnia");
            };
        };
        if ((FMQ003_CHANGEPRISONGUARDRTN) == (1)) {
            if (((NPC_GETDISTTOWP(MIL_4047_PRISONGUARD, "PARTM3_PRISON_06")) <= (500)) && ((NPC_GETDISTTOWP(VLK_6235_THIEF, "PARTM3_PRISON_11")) <= (500))) {
                FMQ003_CHANGEPRISONGUARDRTN = 2;
                FMQ003_REMOVETHIEF();
            };
        };
    };
    if ((FMQ003_PATROLSLUMSCHOSEN) == (TRUE)) {
        if ((((FMQ003_CHANGEWEGARRTN) == (1)) && ((NPC_GETDISTTOWP(MIL_4016_WEGAR, SLUMS_PATH_30)) < (300))) && ((NPC_ISINSTATE(MIL_4016_WEGAR, 0xf09f)) == (FALSE))) {
            if ((GIANTRATATTACKED) == (FALSE)) {
                FMQ003_CHANGEWEGARRTN = 2;
                GIANTRATATTACKED = TRUE;
            };
            if ((FMQ003_CHANGEWEGARRTN) == (2)) {
                WLD_INSERTNPC(0xc527, "SLUMS_PATH_42");
                B_STARTOTHERROUTINE(MIL_4016_WEGAR, "SlumsWait");
                NPC_REFRESH(MIL_4016_WEGAR);
            };
        };
    };
    if ((NPC_KNOWSINFO(HERO, 0x124d1)) == (FALSE)) {
        if (SPAWNTHUGSISAVAILABLE("SLUMS_PATH_97")) {
            SPAWNTHUGS("SLUMS_GANG_POSITION1", "Position1");
            PRINTD("Zbiry zmieni³y RTN! 1");
        } else if (SPAWNTHUGSISAVAILABLE("SLUMS_PATH_37")) {
            SPAWNTHUGS("SLUMS_GANG_POSITION2", "Position2");
            PRINTD("Zbiry zmieni³y RTN! 2");
        } else if (SPAWNTHUGSISAVAILABLE("SLUMS_PATH_86")) {
            SPAWNTHUGS("SLUMS_GANG_POSITION3", "Position3");
            PRINTD("Zbiry zmieni³y RTN! 3");
        } else if (SPAWNTHUGSISAVAILABLE("SLUMS_PATH_50")) {
            SPAWNTHUGS("SLUMS_GANG_POSITION4", "Position4");
            PRINTD("Zbiry zmieni³y RTN! 4");
        };
    };
    if ((FMQ003_PATROLWATERMAGESCHOSEN) == (TRUE)) {
        if ((((FMQ003_CHANGEWEGARRTN) == (1)) && ((NPC_GETDISTTOWP(MIL_4016_WEGAR, "HARBOUR_PATH_73")) <= (300))) && ((NPC_ISINSTATE(MIL_4016_WEGAR, 0xf09f)) == (FALSE))) {
            if ((FMQ003_FANATICTALK) == (0)) {
                FMQ003_CHANGEWEGARRTN = 2;
            };
            if ((FMQ003_CHANGEWEGARRTN) == (2)) {
                B_STARTOTHERROUTINE(MIL_4016_WEGAR, "WaterMagesWait");
                NPC_REFRESH(MIL_4016_WEGAR);
            };
        };
    };
    if ((FMQ003_PATROLFIREMAGESCHOSEN) == (TRUE)) {
        if ((((FMQ003_CHANGEWEGARRTN) == (1)) && ((NPC_GETDISTTOWP(MIL_4016_WEGAR, "PARTM1_PATH_66")) <= (300))) && ((NPC_ISINSTATE(MIL_4016_WEGAR, 0xf09f)) == (FALSE))) {
            if ((FMQ003_NOVICETALK) == (0)) {
                FMQ003_CHANGEWEGARRTN = 2;
            };
            if ((FMQ003_CHANGEWEGARRTN) == (2)) {
                B_STARTOTHERROUTINE(MIL_4016_WEGAR, "FireMagesWait");
                NPC_REFRESH(MIL_4016_WEGAR);
            };
        };
    };
    if ((FMQ003_PATROLCRAFTCHOSEN) == (TRUE)) {
        if ((((FMQ003_CHANGEWEGARRTN) == (1)) && ((NPC_GETDISTTOWP(MIL_4016_WEGAR, "PARTM3_PATH_152")) <= (300))) && ((NPC_ISINSTATE(MIL_4016_WEGAR, 0xf09f)) == (FALSE))) {
            if ((FMQ003_HOMELESSTALK) == (0)) {
                FMQ003_CHANGEWEGARRTN = 2;
            };
            if ((FMQ003_CHANGEWEGARRTN) == (2)) {
                B_STARTOTHERROUTINE(MIL_4016_WEGAR, "CraftWait");
                NPC_REFRESH(MIL_4016_WEGAR);
            };
        };
    };
    if (HLP_ISVALIDNPC(NONE_6240_HOMELESS)) {
        if (((((FMQ003_PATROLCRAFTCHOSEN) == (TRUE)) && ((FMQ003_HOMELESSRTN) == (0))) && ((NPC_GETDISTTOWP(NONE_6240_HOMELESS, "HARBOUR_TAVERN_01")) < (0x4b0))) && ((NPC_ISINSTATE(NONE_6240_HOMELESS, 0xf09f)) == (FALSE))) {
            FMQ003_HOMELESSRTN = 1;
            B_STARTOTHERROUTINE(NONE_6240_HOMELESS, "Tavern");
            NPC_REFRESH(NONE_6240_HOMELESS);
            PRINTD("Bezdomny zmieni³ RTN");
        };
    };
    if ((FMQ003_PATROLVILLACHOSEN) == (TRUE)) {
        if ((((FMQ003_CHANGEWEGARRTN) == (1)) && ((NPC_GETDISTTOWP(MIL_4016_WEGAR, "PARTM4_PATH_43")) <= (400))) && ((NPC_ISINSTATE(MIL_4016_WEGAR, 0xf09f)) == (FALSE))) {
            if ((FMQ003_ANGRYVLKTALK) == (0)) {
                B_STARTOTHERROUTINE(MIL_4016_WEGAR, "VillaWait");
                NPC_REFRESH(MIL_4016_WEGAR);
                FMQ003_CHANGEWEGARRTN = 2;
            };
        } else if ((FMQ003_CHANGEWEGARRTN) == (2)) {
            if ((FMQ003_CUTSCENEVOLKER) == (0)) {
                if ((((NPC_ISINSTATE(MIL_4016_WEGAR, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(VLK_6241_ANGRYCITIZEN01, 0xf09f)) == (FALSE))) && ((NPC_ISINSTATE(VLK_6242_ARS_FMQ003, 0xf09f)) == (FALSE))) {
                    if (((NPC_GETDISTTONPC(HERO, VLK_6241_ANGRYCITIZEN01)) <= (700)) || ((NPC_GETDISTTONPC(HERO, VLK_6242_ARS_FMQ003)) <= (700))) {
                        FMQ003_CUTSCENEVOLKER = 1;
                        FMQ003_CUTSCENEVOLKER_PREPARE();
                        HERO.AIVAR[4] = TRUE;
                    };
                };
            };
        };
    };
    if ((FMQ003_PATROLGUILDCHOSEN) == (TRUE)) {
        if ((((FMQ003_CHANGEWEGARRTN) == (1)) && ((NPC_GETDISTTOWP(MIL_4016_WEGAR, "PARTM1_GUILDHOUSE02_40")) <= (300))) && ((NPC_ISINSTATE(MIL_4016_WEGAR, 0xf09f)) == (FALSE))) {
            if ((FMQ003_CITIZENTALK) == (0)) {
                FMQ003_CHANGEWEGARRTN = 2;
            };
            if ((FMQ003_CHANGEWEGARRTN) == (2)) {
                B_STARTOTHERROUTINE(MIL_4016_WEGAR, "GuildWait");
                NPC_REFRESH(MIL_4016_WEGAR);
            };
        };
    };
}

