func void EVENTSMANAGER_SQ503() {
    var int SQ503_DISABLEMUSIC;
    var int SQ503_CORTEZSPECIALATTACK;
    if ((LOG_GETSTATUS(MIS_SQ503)) == (LOG_RUNNING)) {
        if ((SQ503_CORTEZFIGHT) == (1)) {
            if ((NPC_ISDEAD(PIR_1303_CORTEZ)) == (FALSE)) {
                if ((SQ503_CORTEZSPECIALATTACK) == (0)) {
                    if ((PIR_1303_CORTEZ.ATTRIBUTE[0]) <= ((PIR_1303_CORTEZ.ATTRIBUTE[1]) / (2))) {
                        PRINTD("Special attack");
                        SQ503_CORTEZSPECIALATTACK = 1;
                        SQ503_CORTEZ_RUNTOHERO();
                    };
                } else if ((SQ503_CORTEZSPECIALATTACK) == (1)) {
                    if ((NPC_GETDISTTONPC(HERO, PIR_1303_CORTEZ)) <= (300)) {
                        SQ503_CORTEZSPECIALATTACK = 2;
                        PRINTD("Atakuje");
                        SQ503_CORTEZ_ATTACK();
                    };
                };
            } else if (((NPC_ISINSTATE(PIR_1308_SIMON, 61599)) == (FALSE)) && ((NPC_ISINSTATE(HERO, 61599)) == (FALSE))) {
                WLD_SENDUNTRIGGER("Q306_ARENACROWD");
                B_SQ503_FAILQUESTS();
                MUSIC_DISABLEOVERRIDE();
                B_SAY(HERO, HERO, "$MARVIN_Die");
                SQ503_STOPWATCHFIGHT();
                SQ503_CORTEZFIGHT = 3;
                DIACAM_DISABLE();
                WLD_SENDTRIGGER("SQ503_SIMON_01");
                TELEPORTNPCTOWP(1819, "P17_HAVEN_ARENA_SQ503_HERO");
                TELEPORTNPCTOWP(58644, "P17_HAVEN_ARENA_SQ503_CORTEZ");
                AI_REMOVEWEAPON(HERO);
                AI_TURNTONPC(HERO, PIR_1308_SIMON);
                AI_FUNCTION(HERO, 63887);
            };
        };
        if ((SQ503_FIGHTINARENA) == (1)) {
            if ((SQ503_FIGHTINARENADONE()) == (TRUE)) {
                SQ503_FIGHTINARENA = 2;
                WLD_SENDTRIGGER("P17_HAVEN_ARENA_PLAYER");
                SQ503_FINALHAVENFIGHT_BEYONDARENA();
                SQ503_PREPAREMILITIAAXAROS();
            };
        };
        if ((SQ503_FIGHTINARENA) >= (1)) {
            if (((SQ503_DISABLEMUSIC) == (FALSE)) && ((NPC_KNOWSINFO(HERO, 67588)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(HERO, "P17_HAVEN_ARENA_SQ503_HERO")) >= (7000)) {
                    MUSIC_DISABLEOVERRIDE();
                    SQ503_DISABLEMUSIC = TRUE;
                };
            };
        };
    };
}

