instance Q101_CAPTAIN(CUTSCENE) {
    ONSTART = FUNCTION(0x168f9);
}

func void Q101_CAPTAIN_START() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("SHIP_CAPITAN_01");
    WLD_SENDTRIGGER("SHIP_TRAPDOOR");
    B_REMOVENPC(0xc600);
    B_REMOVENPC(0xc601);
    B_REMOVENPC(0xc602);
    B_REMOVENPC(0xc603);
    B_REMOVENPC(0xc604);
    B_REMOVENPC(0xc605);
    B_STARTOTHERROUTINE(NONE_8_ANA, "OBSERVE");
    NPC_REFRESH(NONE_8_ANA);
    B_STARTOTHERROUTINE(NONE_9_LEA, "OBSERVE");
    NPC_REFRESH(NONE_9_LEA);
    B_STARTOTHERROUTINE(NONE_3_EZEKIEL, "OBSERVE");
    NPC_REFRESH(NONE_3_EZEKIEL);
    B_STARTOTHERROUTINE(NONE_13_URS, "OBSERVE");
    NPC_REFRESH(NONE_13_URS);
    TELEPORTNPCTOWP(0xc8e5, NONE_13_URS.WP);
    B_STARTOTHERROUTINE(NONE_14_VRAZKA, "OBSERVE");
    NPC_REFRESH(NONE_14_VRAZKA);
    TELEPORTNPCTOWP(0xc8ea, NONE_14_VRAZKA.WP);
    FF_APPLYONCEEXT(0x168fa, 1000, 10);
    TELEPORTNPCTOWP(0xc91b, "SHIP_BEGINNING_14");
    TELEPORTNPCTOWP(0xc8ef, "SHIP_JORN_02");
    TELEPORTNPCTOWP(0x71b, "SHIP_MARVIN");
    AI_TURNTONPC(PIR_2_CAPTAIN, NONE_1_JORN);
    AI_TURNTONPC(HERO, PIR_2_CAPTAIN);
    AI_WAIT(PIR_2_CAPTAIN, 0x3fc00000);
    AI_SETWALKMODE(PIR_2_CAPTAIN, NPC_WALK);
    AI_GOTOWP(PIR_2_CAPTAIN, "SHIP_CAPTAIN_02");
}

func void Q101_CAPTAIN_APPLY() {
    Q101_CAPTAIN_COUNT = (Q101_CAPTAIN_COUNT) + (1);
    if ((Q101_CAPTAIN_COUNT) == (5)) {
        WLD_SENDTRIGGER("SHIP_CAPITAN_02");
        WLD_SENDUNTRIGGER("SHIP_CAPITAN_01");
    };
    if ((Q101_CAPTAIN_COUNT) == (7)) {
        HERO.AIVAR[4] = FALSE;
        AI_STARTSTATE(PIR_2_CAPTAIN, 0xf09f, 1, "");
        AI_STARTSTATE(HERO, 0xf09f, 1, "");
    };
    if ((Q101_CAPTAIN_COUNT) == (10)) {
        if ((NPC_ISINSTATE(PIR_2_CAPTAIN, 0xf09f)) == (FALSE)) {
            PRINTD("Second time");
            AI_STARTSTATE(PIR_2_CAPTAIN, 0xf09f, 1, "");
            AI_STARTSTATE(HERO, 0xf09f, 1, "");
        } else {
            PRINTD("Jestem ju? w rozmowie");
        };
    };
}

var int Q101_CAPTAIN_APPLY.Q101_CAPTAIN_COUNT = 0;
