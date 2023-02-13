instance Q306_ENDSECONDROUND(CUTSCENE) {
    ONSTART = FUNCTION(92491);
}

func void Q306_ENDSECONDROUND_START() {
    Q306_LOSTWEAPONINTOURNAMENT = 0;
    WLD_SENDTRIGGER("KM_ARENAFIGHT_1_03");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_PLAYER");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_OPPONENT");
    NPC_CLEARAIQUEUE(PIR_1307_PROXIMO);
    TELEPORTNPCTOWP(58696, "P17_HAVEN_ARENA_SPEAKER_01");
    PIR_1307_PROXIMO.AIVAR[92] = TRUE;
    AI_TURNTONPC(PIR_1307_PROXIMO, PIR_1306_RODRIGO);
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_EndRound2_13_01");
    AI_OUTPUT(PIR_1307_PROXIMO, HERO, "DIA_Proximo_EndRound2_13_02");
    AI_FUNCTION(PIR_1307_PROXIMO, 92492);
}

func void Q306_ENDSECONDROUND_END() {
    FADESCREENTOBLACKF(1, 92493, 1000);
}

func void Q306_TELEPORTPLAYERTOLOCKER_ROUND2() {
    PRINTD("Koniec Rundy 2");
    WLD_SENDUNTRIGGER("Q306_ARENACROWD");
    WLD_SENDUNTRIGGER("KM_ARENAFIGHT_1_03");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_PLAYER");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_OPPONENT");
    Q306_STATE = 16;
    Q306_READYFORFIGHT = 0;
    Q306_SECONDROUNDFINISH = 1;
    NPC_REFRESH(PIR_1307_PROXIMO);
    PIR_1307_PROXIMO.AIVAR[92] = FALSE;
    AI_TELEPORT(HERO, "P17_HAVEN_ARENA_INSIDE_06");
    TELEPORTNPCTOWP(58671, PIR_13050_OTIS_ARENA.WP);
    AI_TELEPORTALWAYS(PIR_13050_OTIS_ARENA, PIR_13050_OTIS_ARENA.WP, TRUE);
    NPC_REFRESH(PIR_13050_OTIS_ARENA);
    B_STARTOTHERROUTINE(PIR_13050_OTIS_ARENA, "TOURNAMENTBET");
    B_STARTOTHERROUTINE(PIR_1329_SAUL, START);
    TELEPORTNPCTOWP(58818, PIR_1329_SAUL.WP);
    NPC_REFRESH(PIR_1329_SAUL);
    Q306_PREPAREFIGHTORC();
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}
