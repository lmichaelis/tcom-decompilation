func void EVT_SQ125_SAWSOUND() {
    var int SQ125_STOPSAWSOUND;
    if ((SQ125_STOPSAWSOUND) == (FALSE)) {
        SQ125_STOPSAWSOUND = TRUE;
        WLD_SENDUNTRIGGER("SQ125_SAWSOUND");
        WLD_SENDTRIGGER("SQ125_MOVER_SAWSOUND");
        B_STARTOTHERROUTINE(BAU_6342_KYLE, "SQ125_WORK");
        NPC_REFRESH(BAU_6342_KYLE);
    };
}

func void EVT_SQ125_ALCHEMY() {
    if ((SQ125_ALCHEMYBOOM) == (FALSE)) {
        SQ125_ALCHEMYBOOM = TRUE;
        SQ125_REFRESHKYLEFACE = TRUE;
        NPC_CHANGEFACE(BAU_6342_KYLE, FACE_N_KYLE_ALCHEMY);
        B_STARTOTHERROUTINE(BAU_6342_KYLE, "SQ125_STOPALCHEMY");
        NPC_REFRESH(BAU_6342_KYLE);
        B_LOGENTRY(TOPIC_SQ125, LOG_SQ125_ALCHEMYEXPLOSION);
        WLD_SENDTRIGGER("SQ125_MOVER_ALCHEMYSCRIPT");
        AI_PLAYANI(HERO, "T_FALLDOWN_LONG");
        AI_PLAYANI(HERO, "T_FALLDOWN_STANDUP");
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
        SND_PLAY("Ravens_Earthquake4");
        SND_PLAY("EXPLOSION01");
    };
}

func void EVT_SQ125_FISHING() {
    if ((LOG_GETSTATUS(MIS_SQ125)) == (LOG_RUNNING)) {
        HERO.AIVAR[4] = TRUE;
        WLD_SENDTRIGGER("SQ125_MOVER_FISHING");
        MOB_CHANGEFOCUSNAME("SQ125_FISHING_POOL_01", "MOBNAME_NOTHING");
        FADESCREENTOBLACKF(1, 92031, 1000);
    };
}

func void SQ125_FISHING_FADESCREEN() {
    SQ125_FINISHFISHING = TRUE;
    AI_WAIT(HERO, 1065353216);
    AI_USEMOB(HERO, NPC_GETDETECTEDMOB(HERO), -(1));
    B_PASSTIME(1);
    HERO.AIVAR[4] = FALSE;
    BAU_6342_KYLE.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(1);
}

func void EVT_SQ125_TREE() {
    if (((SQ125_CLIMBINGTREE) == (1)) && ((LOG_GETSTATUS(MIS_SQ125)) == (LOG_RUNNING))) {
        SQ125_CLIMBINGTREE = 2;
        AI_OUTPUT(HERO, HERO, "DIA_Marvin_SQ125_TopTree_15_01");
        B_LOGENTRY(TOPIC_SQ125, LOG_SQ125_TOPTREE);
    };
}

func void EVT_SQ125_LADDER_01() {
    SQ125_WHAT_LADDER = 1;
    SQ125_HELPINGKYLE_LADDER();
}

func void EVT_SQ125_LADDER_02() {
    SQ125_WHAT_LADDER = 2;
    SQ125_HELPINGKYLE_LADDER();
}

func void EVT_SQ125_LADDER_03() {
    SQ125_WHAT_LADDER = 3;
    SQ125_HELPINGKYLE_LADDER();
}

func void EVT_SQ125_STRAWS_01() {
    SQ125_WHAT_STRAW = 1;
    SQ125_HELPINGKYLE_STRAW();
}

func void EVT_SQ125_STRAWS_02() {
    SQ125_WHAT_STRAW = 2;
    SQ125_HELPINGKYLE_STRAW();
}

func void EVT_SQ125_STRAWS_03() {
    SQ125_WHAT_STRAW = 3;
    SQ125_HELPINGKYLE_STRAW();
}

func void EVT_SQ125_STRAWS_04() {
    SQ125_WHAT_STRAW = 4;
    SQ125_HELPINGKYLE_STRAW();
}
