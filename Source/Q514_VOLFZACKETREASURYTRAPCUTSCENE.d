instance Q514_VOLFZACKETREASURYTRAPCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92710);
}

func void Q514_VOLFZACKETREASURYTRAPCUTSCENE_START() {
    WLD_SENDTRIGGER("VZ_TREASURY_CAMERA_04");
    FF_APPLYONCEEXT(92711, 1000, 7);
    AI_WAIT(HERO, 1066192077);
    AI_TURNTONPC(HERO, NONE_202_KESSEL_VZ);
    AI_SETWALKMODE(NONE_202_KESSEL_VZ, NPC_RUN);
    AI_GOTOWP(NONE_202_KESSEL_VZ, "VOLFZACK_TREASURY_08");
    AI_TURNTONPC(NONE_202_KESSEL_VZ, HERO);
    AI_PLAYANI(NONE_202_KESSEL_VZ, T_SEARCH);
    AI_FUNCTION(NONE_202_KESSEL_VZ, 92713);
}

func void Q514_VOLFZACKETREASURYTRAPCUTSCENE_TIMER() {
    var int Q514_VOLFZACKETREASURYTRAPCUTSCENE_TIMER_COUNT;
    Q514_VOLFZACKETREASURYTRAPCUTSCENE_TIMER_COUNT = (Q514_VOLFZACKETREASURYTRAPCUTSCENE_TIMER_COUNT) + (1);
    if ((Q514_VOLFZACKETREASURYTRAPCUTSCENE_TIMER_COUNT) == (1)) {
        AI_PLAYANI(NONE_11037_MARKUS_VZ, R_SCRATCHRSHOULDER);
        B_STARTOTHERROUTINE(NONE_11037_MARKUS_VZ, "TREASURY");
        NPC_REFRESH(NONE_11037_MARKUS_VZ);
    };
    if ((Q514_VOLFZACKETREASURYTRAPCUTSCENE_TIMER_COUNT) == (2)) {
        AI_PLAYANI(MIL_63710_DUSTER_VZ, T_SEARCH);
        B_STARTOTHERROUTINE(MIL_63710_DUSTER_VZ, "TREASURY");
        NPC_REFRESH(MIL_63710_DUSTER_VZ);
    };
    if ((Q514_VOLFZACKETREASURYTRAPCUTSCENE_TIMER_COUNT) == (3)) {
        B_STARTOTHERROUTINE(NONE_11037_MARKUS_VZ, "TREASURY");
        NPC_REFRESH(NONE_11037_MARKUS_VZ);
        TELEPORTNPCTOWP(59206, NONE_11037_MARKUS_VZ.WP);
        WLD_SENDTRIGGER("VZ_TREASURY_CAMERA_05");
        WLD_SENDUNTRIGGER("VZ_TREASURY_CAMERA_04");
    };
    if ((Q514_VOLFZACKETREASURYTRAPCUTSCENE_TIMER_COUNT) == (7)) {
        WLD_SENDTRIGGER("VZ_TREASURY_CAMERA_06");
        WLD_SENDUNTRIGGER("VZ_TREASURY_CAMERA_05");
    };
}

func void Q514_VOLFZACKETREASURYTRAPCUTSCENE_END() {
    Q514_CHECKGAS = 1;
    AI_LOGENTRY(TOPIC_Q514, LOG_Q514_TREASURY_EVENT);
    WLD_SENDUNTRIGGER("VZ_TREASURY_CAMERA_06");
    B_STARTOTHERROUTINE(NONE_202_KESSEL_VZ, "TREASURYFLEE");
    NPC_REFRESH(NONE_202_KESSEL_VZ);
    B_STARTOTHERROUTINE(MIL_63710_DUSTER_VZ, "TREASURYFLEE");
    NPC_REFRESH(MIL_63710_DUSTER_VZ);
    AI_PLAYANI(NONE_11037_MARKUS_VZ, T_PLUNDER);
    HERO.AIVAR[4] = FALSE;
}

