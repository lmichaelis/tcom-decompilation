instance SQ508_NOVIZESMALLTALK(CUTSCENE) {
    ONSTART = FUNCTION(0x16b62);
}

func void SQ508_NOVIZESMALLTALK_WAIT() {
    AI_WAITTILLEND(NOV_205_NOVIZE, HERO);
    AI_WAITTILLEND(NOV_205_NOVIZE, NOV_208_NOVIZE);
    AI_WAITTILLEND(NOV_208_NOVIZE, HERO);
    AI_WAITTILLEND(NOV_208_NOVIZE, NOV_205_NOVIZE);
    AI_WAITTILLEND(HERO, NOV_205_NOVIZE);
    AI_WAITTILLEND(HERO, NOV_208_NOVIZE);
}

func void SQ508_NOVIZESMALLTALK_START() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("SQ508_NOVIZESMALLTALK_01");
    TELEPORTNPCTOWP(0xdd13, NOV_205_NOVIZE.WP);
    TELEPORTNPCTOWP(0xdd19, NOV_208_NOVIZE.WP);
    TELEPORTNPCTOWP(0x71b, "PART8_MONASTERY_SQ508_NOVIZECUTSCENE_HERO");
    NPC_CLEARAIQUEUE(NOV_205_NOVIZE);
    NPC_CLEARAIQUEUE(NOV_208_NOVIZE);
    NOV_205_NOVIZE.AIVAR[92] = TRUE;
    NOV_208_NOVIZE.AIVAR[92] = TRUE;
    B_TURNTONPC(NOV_205_NOVIZE, NOV_208_NOVIZE);
    B_TURNTONPC(NOV_208_NOVIZE, NOV_205_NOVIZE);
    AI_TURNTONPC(HERO, NOV_205_NOVIZE);
    SQ508_NOVIZESMALLTALK_WAIT();
    AI_OUTPUT(NOV_208_NOVIZE, HERO, "DIA_Novize_01_SQ508_Cutscene_03_01");
    SQ508_NOVIZESMALLTALK_WAIT();
    AI_OUTPUT(NOV_205_NOVIZE, HERO, "DIA_Novize_02_SQ508_Cutscene_03_02");
    SQ508_NOVIZESMALLTALK_WAIT();
    AI_OUTPUT(NOV_208_NOVIZE, HERO, "DIA_Novize_01_SQ508_Cutscene_03_03");
    SQ508_NOVIZESMALLTALK_WAIT();
    AI_FUNCTION(NOV_205_NOVIZE, 0x16b63);
    AI_TURNTONPC(NOV_205_NOVIZE, HERO);
    AI_OUTPUT(NOV_205_NOVIZE, HERO, "DIA_Novize_02_SQ508_Cutscene_03_04");
    SQ508_NOVIZESMALLTALK_WAIT();
    AI_TURNTONPC(NOV_208_NOVIZE, HERO);
    SQ508_NOVIZESMALLTALK_WAIT();
    AI_FUNCTION(NOV_205_NOVIZE, 0xf75c);
}

func void SQ508_NOVIZESMALLTALK_START_CAMERA_01() {
    WLD_SENDTRIGGER("SQ508_NOVIZESMALLTALK_02");
    WLD_SENDUNTRIGGER("SQ508_NOVIZESMALLTALK_01");
}

