instance Q602_FIRSTCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92748);
}

func void Q602_FIRSTCUTSCENE_WAIT() {
    AI_WAITTILLEND(VLK_61070_ARMAR_Q602, HERO);
    AI_WAITTILLEND(VLK_61070_ARMAR_Q602, VLK_61070_ARMAR_Q602);
    AI_WAITTILLEND(DJG_10047_WOLFSON_Q602, HERO);
    AI_WAITTILLEND(DJG_10047_WOLFSON_Q602, VLK_61070_ARMAR_Q602);
    AI_WAITTILLEND(HERO, DJG_10047_WOLFSON_Q602);
    AI_WAITTILLEND(HERO, VLK_61070_ARMAR_Q602);
}

func void Q602_FIRSTCUTSCENE_START() {
    WLD_SENDTRIGGER("KM_Q602_CUTSCENE_01_B");
    FF_APPLYONCEEXT(92752, 1000, 5);
    NPC_CLEARAIQUEUE(HERO);
    TELEPORTNPCTOWP(1819, "Q602_CUTSCENE_01_HERO");
    TELEPORTNPCTOWP(59499, "Q602_CUTSCENE_01_WOLFSSON");
    TELEPORTNPCTOWP(60116, "Q602_CUTSCENE_01_TRADER");
    NPC_CLEARAIQUEUE(DJG_10047_WOLFSON_Q602);
    NPC_CLEARAIQUEUE(VLK_61070_ARMAR_Q602);
    Q602_FIRSTCUTSCENE_WAIT();
    AI_TURNTONPC(HERO, DJG_10047_WOLFSON_Q602);
    AI_WAIT(DJG_10047_WOLFSON_Q602, 1036831949);
    AI_WAIT(VLK_61070_ARMAR_Q602, 1036831949);
    AI_PLAYANI(DJG_10047_WOLFSON_Q602, "T_DEAD_WOLFSSON");
    AI_PLAYANI(VLK_61070_ARMAR_Q602, "T_DEAD_TRADER");
    AI_REMOVEWEAPON(VLK_61070_ARMAR_Q602);
    AI_FUNCTION(VLK_61070_ARMAR_Q602, 92754);
    Q602_FIRSTCUTSCENE_WAIT();
    AI_FUNCTION(DJG_10047_WOLFSON_Q602, 92751);
    AI_FUNCTION(DJG_10047_WOLFSON_Q602, 92749);
    AI_SETWALKMODE(HERO, NPC_WALK);
    AI_GOTOWP(HERO, "PARTE2_PATH_08");
    AI_TURNTONPC(HERO, DJG_10047_WOLFSON_Q602);
    AI_WAIT(HERO, 1056964608);
    AI_FUNCTION(HERO, 92750);
}

func void Q602_FIRSTCUTSCENE_CHANGERTN_01() {
    B_STARTOTHERROUTINE(DJG_10047_WOLFSON_Q602, "Q602_OBSERVE");
    NPC_REFRESH(DJG_10047_WOLFSON_Q602);
}

func void Q602_FIRSTCUTSCENE_END() {
    WLD_SENDUNTRIGGER("KM_Q602_CUTSCENE_01");
    WLD_SENDUNTRIGGER("KM_Q602_CUTSCENE_02");
    WLD_SENDUNTRIGGER("KM_Q602_CUTSCENE_03");
    MDL_REMOVEOVERLAYMDS(DJG_10047_WOLFSON_Q602, "Humans_2HST2_NOANIMATION.MDS");
    Q602_FIRSTCUTSCENE_WOLFSSONATTACK();
    HERO.AIVAR[4] = FALSE;
}

func void Q602_FIRSTCUTSCENE_CHANGECAMERA() {
    WLD_SENDTRIGGER("KM_Q602_CUTSCENE_03");
    WLD_SENDUNTRIGGER("KM_Q602_CUTSCENE_02");
}

func void Q602_FIRSTCUTSCENE_TIMER() {
    var int Q602_FIRSTCUTSCENE_TIMER_COUNT;
    Q602_FIRSTCUTSCENE_TIMER_COUNT = (Q602_FIRSTCUTSCENE_TIMER_COUNT) + (1);
    if ((Q602_FIRSTCUTSCENE_TIMER_COUNT) == (2)) {
        WLD_SENDTRIGGER("KM_Q602_CUTSCENE_02");
        WLD_SENDUNTRIGGER("KM_Q602_CUTSCENE_01");
        TELEPORTNPCTOWP(1819, "PARTM2_PATH_13");
    };
}

func void Q602_FIRSTCUTSCENE_KILLYOURSELF() {
    B_KILLNPC(60116);
}

