instance Q306_SECONDROUND(CUTSCENE) {
    ONSTART = FUNCTION(92522);
}

func void Q306_SECONDROUND_WAIT() {
    if ((Q305_JAVAD_WENTTONEWHOME) == (1)) {
        AI_WAITTILLEND(NONE_6331_JAVAD, HERO);
        AI_WAITTILLEND(HERO, NONE_6331_JAVAD);
    };
    AI_WAITTILLEND(PIR_1330_ALVAREZ, HERO);
    AI_WAITTILLEND(HERO, PIR_1330_ALVAREZ);
}

func void Q306_SECONDROUND_START() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("Q306_ARENACROWD");
    WLD_SENDTRIGGER("KM_ARENAFIGHT_3_01");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_PLAYER");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_OPPONENT");
    if ((Q305_JAVAD_WENTTONEWHOME) == (1)) {
        NPC_CLEARAIQUEUE(NONE_6331_JAVAD);
        TELEPORTNPCTOWP(58566, "P17_HAVEN_ARENA_OPPONENT_01");
        AI_SETWALKMODE(NONE_6331_JAVAD, NPC_WALK);
        AI_SETWALKMODE(HERO, NPC_WALK);
        AI_WAIT(HERO, 1072902963);
        AI_WAIT(NONE_6331_JAVAD, 1073741824);
        Q306_SECONDROUND_WAIT();
        AI_GOTOWP(HERO, "P17_HAVEN_ARENA_PLAYER_02");
        AI_GOTOWP(NONE_6331_JAVAD, "P17_HAVEN_ARENA_OPPONENT_02");
        AI_TURNTONPC(HERO, NONE_6331_JAVAD);
        AI_TURNTONPC(NONE_6331_JAVAD, HERO);
        AI_PLAYANI(HERO, "R_STRETCH_RANDOM_02");
        AI_PLAYANI(NONE_6331_JAVAD, "R_STRETCH_RANDOM_01");
        Q306_SECONDROUND_WAIT();
        AI_FUNCTION(NONE_6331_JAVAD, 92523);
    };
    NPC_CLEARAIQUEUE(PIR_1330_ALVAREZ);
    TELEPORTNPCTOWP(58828, "P17_HAVEN_ARENA_OPPONENT_01");
    AI_SETWALKMODE(PIR_1330_ALVAREZ, NPC_WALK);
    AI_SETWALKMODE(HERO, NPC_WALK);
    AI_WAIT(HERO, 1072902963);
    AI_WAIT(PIR_1330_ALVAREZ, 1073741824);
    Q306_SECONDROUND_WAIT();
    AI_GOTOWP(HERO, "P17_HAVEN_ARENA_PLAYER_02");
    AI_GOTOWP(PIR_1330_ALVAREZ, "P17_HAVEN_ARENA_OPPONENT_02");
    AI_TURNTONPC(HERO, PIR_1330_ALVAREZ);
    AI_TURNTONPC(PIR_1330_ALVAREZ, HERO);
    AI_PLAYANI(HERO, "R_STRETCH_RANDOM_02");
    AI_PLAYANI(PIR_1330_ALVAREZ, "R_STRETCH_RANDOM_01");
    Q306_SECONDROUND_WAIT();
    AI_FUNCTION(PIR_1330_ALVAREZ, 92523);
}

func void Q306_SECONDROUND_END() {
    PRINTD("Druga Runda start!");
    Q306_STATE = 9;
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_PLAYER");
    WLD_SENDTRIGGER("P17_HAVEN_ARENA_OPPONENT");
    if ((Q305_JAVAD_WENTTONEWHOME) == (1)) {
        B_STARTOTHERROUTINE(NONE_6331_JAVAD, "ArenaFightPlayer");
        NPC_REFRESH(NONE_6331_JAVAD);
    };
    B_STARTOTHERROUTINE(PIR_1330_ALVAREZ, "ArenaFightPlayer");
    NPC_REFRESH(PIR_1330_ALVAREZ);
    HERO.AIVAR[4] = FALSE;
}

