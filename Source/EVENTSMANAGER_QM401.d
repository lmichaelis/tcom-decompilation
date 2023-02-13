func void EVENTSMANAGER_QM401() {
    var int QM401_TOOEARLY_LOGENTRY;
    if ((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) {
        if ((QM401_RENEGADESCAVEATTACK_GO) == (TRUE)) {
            if ((NPC_GETDISTTOWP(HERO, "PART7_CAVE_49")) <= (2500)) {
                if ((QM401_RENEGADESCAVEATTACK_LOGENTRY) == (FALSE)) {
                    QM401_RENEGADESCAVEATTACK_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_QM401, LOG_QM401_CAVE_EMPTY);
                };
            };
        } else if ((QM401_TOOEARLY_LOGENTRY) == (FALSE)) {
            if ((QM401_RENEGADESCAVEATTACK) == (1)) {
                if ((NPC_GETDISTTOWP(HERO, "PART7_QM401_BEFORE_SPOT_06")) <= (500)) {
                    if (((((NPC_GETDISTTOWP(MIL_13514_MILITIA, "PART7_QM401_BEFORE_SPOT_05")) <= (1000)) == (FALSE)) && (((NPC_GETDISTTOWP(MIL_13513_MILITIA, "PART7_QM401_BEFORE_SPOT_04")) <= (1000)) == (FALSE))) && (WLD_ISTIME(4, 30, 19, 45))) {
                        QM401_TOOEARLY_LOGENTRY = TRUE;
                        B_LOGENTRY(TOPIC_QM401, LOG_QM401_CAVE_TOOEARLY);
                    };
                };
            } else if ((NPC_GETDISTTOWP(HERO, "PART7_QM401_BEFORE_SPOT_03")) <= (1500)) {
                if (((((NPC_GETDISTTOWP(MIL_13511_MILITIA, "PART7_QM401_BEFORE_SPOT_01")) <= (1000)) == (FALSE)) && (((NPC_GETDISTTOWP(MIL_13512_MILITIA, "PART7_QM401_BEFORE_SPOT_02")) <= (1000)) == (FALSE))) && (WLD_ISTIME(4, 30, 19, 45))) {
                    QM401_TOOEARLY_LOGENTRY = TRUE;
                    B_LOGENTRY(TOPIC_QM401, LOG_QM401_CAVE_TOOEARLY);
                };
            };
        };
        if ((QM401_BERTORUNAWAY) == (1)) {
            if (((NPC_GETDISTTOWP(MIL_6275_BERTO, MIL_6275_BERTO.WP)) <= (2500)) || ((NPC_GETDISTTONPC(MIL_6275_BERTO, HERO)) >= (2500))) {
                QM401_BERTORUNAWAY = 2;
                PRINTD("Usuniêto Berto");
                B_STARTOTHERROUTINE(MIL_6275_BERTO, TOT);
                NPC_REFRESH(MIL_6275_BERTO);
                TELEPORTNPCTOWP(56277, MIL_6275_BERTO.WP);
            };
        };
        if ((QM401_FIGHTWITHBRODDY) == (1)) {
            if (NPC_ISDEAD(MIL_6268_BRODDY)) {
                QM401_FIGHTWITHBRODDY = 2;
                B_LOGENTRY(TOPIC_QM401, LOG_QM401_BRODDYDEAD);
            };
        };
        if ((QM401_BEATUPBERTO) == (1)) {
            if (NPC_ISINSTATE(MIL_6275_BERTO, 61603)) {
                QM401_BEATUPBERTO = 2;
                B_LOGENTRY(TOPIC_QM401, LOG_QM401_BERTO_BEATUP);
                QM401_PREPAREVINEYARD();
            };
        };
        if ((QM401_SALLGUIDE) == (1)) {
            if (((NPC_ISINSTATE(MIL_4044_SALL, 61599)) == (FALSE)) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
                if ((NPC_ISDEAD(BEAR_QM401)) && ((NPC_GETDISTTOWP(MIL_4044_SALL, MIL_4044_SALL.WP)) <= (500))) {
                    PRINTD("Zmiana RTN");
                    QM401_SALLGUIDE = 2;
                    B_STARTOTHERROUTINE(MIL_4044_SALL, "QM401_VIENYARD_SEARCH");
                    QM401_SALL_RTNCHECK = 3;
                    NPC_REFRESH(MIL_4044_SALL);
                };
            };
        };
        if ((QM401_TAKEDUSTERBARREL) == (FALSE)) {
            if ((NPC_HASITEMS(HERO, 37320)) >= (1)) {
                QM401_TAKEDUSTERBARREL = TRUE;
                NPC_REMOVEINVITEMS(HERO, 37320, 1);
                CREATEINVITEM(HERO, 37319);
                WLD_SENDTRIGGER("QM401_DUSTER_CART");
            };
        };
        if ((NPC_KNOWSINFO(HERO, 67237)) && ((NPC_KNOWSINFO(HERO, 67243)) == (FALSE))) {
            if ((QM401_GOTALLDUSTERBARRELS) == (0)) {
                if ((NPC_HASITEMS(HERO, 37319)) == (4)) {
                    QM401_GOTALLDUSTERBARRELS = 1;
                    B_LOGENTRY(TOPIC_QM401, LOG_QM401_GOTALLBARRELS);
                };
            } else if ((QM401_GOTALLDUSTERBARRELS) == (1)) {
                if ((NPC_HASITEMS(HERO, 37319)) == (5)) {
                    QM401_GOTALLDUSTERBARRELS = 2;
                    B_LOGENTRY(TOPIC_QM401, LOG_QM401_GOTALLBARRELS_V2);
                };
            };
        };
        if ((QM401_FIGHTWITHRENEGADESCHECK) == (1)) {
            if ((QM401_RENEGADESAREDEAD()) == (TRUE)) {
                QM401_FIGHTWITHRENEGADESCHECK = 2;
                B_LOGENTRY(TOPIC_QM401, LOG_QM401_RENEGADESDEAD);
                QM401_TIREDMILITIA();
                MUSIC_DISABLEOVERRIDE();
            };
        };
    };
}

