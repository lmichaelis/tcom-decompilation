instance Q308_KUNOLEONCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(0x16999);
}

func void Q308_KUNOLEONCUTSCENE_WAIT() {
    AI_WAITTILLEND(VLK_6127_KUNO, VLK_6128_LEON);
    AI_WAITTILLEND(VLK_6127_KUNO, HERO);
    AI_WAITTILLEND(VLK_6128_LEON, VLK_6127_KUNO);
    AI_WAITTILLEND(VLK_6128_LEON, HERO);
    AI_WAITTILLEND(HERO, VLK_6127_KUNO);
    AI_WAITTILLEND(HERO, VLK_6128_LEON);
}

func void Q308_KUNOLEONCUTSCENE_START() {
    WLD_SENDTRIGGER("KM_Q308_KUNOCUTSCENE_01");
    TELEPORTNPCTOWP(0xcd1c, "PARTM4_ATTEMPT_KUNO");
    TELEPORTNPCTOWP(0xcd22, "PARTM4_ATTEMPT_LEON");
    TELEPORTNPCTOWP(0x71b, "PARTM4_ATTEMPT_CUTSCENE_HERO");
    NPC_CLEARAIQUEUE(VLK_6127_KUNO);
    NPC_CLEARAIQUEUE(VLK_6128_LEON);
    VLK_6127_KUNO.AIVAR[92] = TRUE;
    VLK_6128_LEON.AIVAR[92] = TRUE;
    B_TURNTONPC(VLK_6127_KUNO, HERO);
    B_TURNTONPC(VLK_6128_LEON, HERO);
    Q308_KUNOLEONCUTSCENE_WAIT();
    AI_PLAYANI(VLK_6127_KUNO, "T_WHISPER_START");
    AI_FUNCTION(VLK_6127_KUNO, 0x1699a);
    Q308_KUNOLEONCUTSCENE_WAIT();
    AI_OUTPUT(VLK_6127_KUNO, HERO, "DIA_KUNO_CUTSCENE_03_01");
    AI_PLAYANI(VLK_6128_LEON, T_STAND_2_LGUARD);
    Q308_KUNOLEONCUTSCENE_WAIT();
    AI_OUTPUT(VLK_6128_LEON, HERO, "DIA_LEON_CUTSCENE_03_02");
    Q308_KUNOLEONCUTSCENE_WAIT();
    AI_OUTPUT(VLK_6127_KUNO, HERO, "DIA_KUNO_CUTSCENE_03_03");
    Q308_KUNOLEONCUTSCENE_WAIT();
    AI_OUTPUT(VLK_6128_LEON, HERO, "DIA_LEON_CUTSCENE_03_04");
    Q308_KUNOLEONCUTSCENE_WAIT();
    AI_OUTPUT(VLK_6127_KUNO, HERO, "DIA_KUNO_CUTSCENE_03_05");
    Q308_KUNOLEONCUTSCENE_WAIT();
    AI_OUTPUT(VLK_6128_LEON, HERO, "DIA_LEON_CUTSCENE_03_06");
    Q308_KUNOLEONCUTSCENE_WAIT();
    AI_FUNCTION(VLK_6128_LEON, 0x1699c);
    AI_FUNCTION(VLK_6127_KUNO, 0x1699b);
}

func void Q308_KUNO_APPLYWHISPERMDS() {
    MDL_APPLYOVERLAYMDS(VLK_6127_KUNO, "HumanS_Whisper.MDS");
}

func void Q308_KUNO_REMOVEWHISPERMDS() {
    MDL_REMOVEOVERLAYMDS(VLK_6127_KUNO, "HumanS_Whisper.MDS");
    AI_PLAYANI(VLK_6127_KUNO, "T_WHISPER_REMOVE");
}

func void Q308_LEON_ENDCUTSCENE() {
    FF_APPLYONCEEXT(0x1699d, 75, 4);
}

func void Q308_LEON_ENDCUTSCENE_APPLY() {
    Q308_LEON_ENDCUTSCENE_COUNT = (Q308_LEON_ENDCUTSCENE_COUNT) + (1);
    if ((Q308_LEON_ENDCUTSCENE_COUNT) == (4)) {
        Q308_LEON_ENDCUTSCENE_COUNT = 0;
        Q308_LEONKUNOCUTSCENE = 2;
        WLD_SENDUNTRIGGER("KM_Q308_KUNOCUTSCENE_01");
        TELEPORTNPCTOWP(0x71b, PARTM4_PATH_40);
        VLK_6127_KUNO.AIVAR[92] = FALSE;
        VLK_6128_LEON.AIVAR[92] = FALSE;
        B_STARTOTHERROUTINE(VLK_6127_KUNO, "ATTEMPT2");
        NPC_REFRESH(VLK_6127_KUNO);
        B_STARTOTHERROUTINE(VLK_6128_LEON, "ATTEMPT2");
        NPC_REFRESH(VLK_6128_LEON);
        HERO.AIVAR[4] = FALSE;
    };
}

var int Q308_LEON_ENDCUTSCENE_APPLY.Q308_LEON_ENDCUTSCENE_COUNT = 0;