func void EVENTSMANAGER_Q515() {
    if ((LOG_GETSTATUS(MIS_Q515)) != (LOG_RUNNING)) {
        return;
    };
    if ((((SQ204_DETLOWWILLTEACH) == (FALSE)) && ((NPC_ISINSTATE(KDW_203_RIORDIAN, 0xf09f)) == (FALSE))) && ((HERO.AIVAR[4]) == (FALSE))) {
        if ((NPC_GETDISTTOWP(HERO, RESERVED_CONST_STRING_22)) <= (650)) {
            SQ204_DETLOWWILLTEACH = TRUE;
            AI_LOOKATNPC(HERO, KDW_203_RIORDIAN);
            AI_TURNTONPC(HERO, KDW_203_RIORDIAN);
            AI_SETWALKMODE(HERO, NPC_WALK);
            AI_WAITTILLEND(HERO, KDW_203_RIORDIAN);
            AI_TURNTONPC(HERO, KDW_203_RIORDIAN);
            AI_GOTONPC(HERO, KDW_203_RIORDIAN);
        };
    };
    if ((Q515_KILLMARVIN) == (1)) {
        if (!(NPC_ISINSTATE(NONE_15_ULRYK, 0xf09f))) {
            Q515_KILLMARVIN = 2;
            FF_APPLYONCEEXT(0x16fe0, 70, 2);
        };
    };
    if ((Q515_ESCAPEMARVIN) == (1)) {
        if (!(NPC_ISINSTATE(DJG_10041_WOLFSON_Q515, 0xf09f))) {
            Q515_ESCAPEMARVIN = 2;
            FF_APPLYONCEEXT(0x16fe2, 70, 2);
        };
    };
}

func void Q515_KILLMARVIN_APPLY() {
    Q515_KILLMARVIN_APPLY_COUNT = (Q515_KILLMARVIN_APPLY_COUNT) + (1);
    if ((Q515_KILLMARVIN_APPLY_COUNT) == (2)) {
        CUTSCENE_START(0x16a32);
    };
}

var int Q515_KILLMARVIN_APPLY.Q515_KILLMARVIN_APPLY_COUNT = 0;
func void Q515_ESCAPEMARVIN_APPLY() {
    Q515_ESCAPEMARVIN_APPLY_COUNT = (Q515_ESCAPEMARVIN_APPLY_COUNT) + (1);
    if ((Q515_ESCAPEMARVIN_APPLY_COUNT) == (2)) {
        CUTSCENE_START(0x16a2a);
    };
}

var int Q515_ESCAPEMARVIN_APPLY.Q515_ESCAPEMARVIN_APPLY_COUNT = 0;
