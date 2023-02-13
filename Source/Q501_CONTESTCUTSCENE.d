instance Q501_CONTESTCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92650);
}

func void Q501_CONTESTCUTSCENE_START() {
    WLD_SENDTRIGGER("Q501_STARTCONTEST");
    TELEPORTNPCTOWP(1819, "PART8_MONASTERY_GARDEN_02");
    TELEPORTNPCTOWP(56747, NOV_204_NOVIZE.WP);
    NPC_CLEARAIQUEUE(NOV_204_NOVIZE);
    NOV_204_NOVIZE.AIVAR[92] = TRUE;
    AI_TURNTONPC(HERO, NOV_204_NOVIZE);
    AI_OUTPUT(NOV_204_NOVIZE, HERO, "DIA_Novize_Q501_Contest_03_01");
    AI_OUTPUT(NOV_204_NOVIZE, HERO, "DIA_Novize_Q501_Contest_03_02");
    AI_FUNCTION(NOV_204_NOVIZE, 92651);
}

func void Q501_CONTESTCUTSCENE_END() {
    FF_APPLYONCEEXT(63389, 75, 4);
}
