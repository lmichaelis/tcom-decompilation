func void EVENTSMANAGER_SQ503() {
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
            } else if (((NPC_ISINSTATE(PIR_1308_SIMON, 0xf09f)) == (FALSE)) && ((NPC_ISINSTATE(HERO, 0xf09f)) == (FALSE))) {
                WLD_SENDUNTRIGGER("Q306_ARENACROWD");
                B_SQ503_FAILQUESTS();
                MUSIC_DISABLEOVERRIDE();
                B_SAY(HERO, HERO, "$MARVIN_Die");
                SQ503_STOPWATCHFIGHT();
                SQ503_CORTEZFIGHT = 3;
                DIACAM_DISABLE();
                WLD_SENDTRIGGER("SQ503_SIMON_01");
                TELEPORTNPCTOWP(0x71b, "P17_HAVEN_ARENA_SQ503_HERO");
                TELEPORTNPCTOWP(0xe514, "P17_HAVEN_ARENA_SQ503_CORTEZ");
                AI_REMOVEWEAPON(HERO);
                AI_TURNTONPC(HERO, PIR_1308_SIMON);
                AI_FUNCTION(HERO, 0xf98f);
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
            if (((SQ503_DISABLEMUSIC) == (FALSE)) && ((NPC_KNOWSINFO(HERO, 0x10804)) == (FALSE))) {
                if ((NPC_GETDISTTOWP(HERO, "P17_HAVEN_ARENA_SQ503_HERO")) >= (0x1b58)) {
                    MUSIC_DISABLEOVERRIDE();
                    SQ503_DISABLEMUSIC = TRUE;
                };
            };
        };
    };
}

var int EVENTSMANAGER_SQ503.SQ503_CORTEZSPECIALATTACK = 0;
var int EVENTSMANAGER_SQ503.SQ503_DISABLEMUSIC = 0;
