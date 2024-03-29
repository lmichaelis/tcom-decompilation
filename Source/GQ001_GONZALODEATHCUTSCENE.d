instance GQ001_GONZALODEATHCUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(92314);
}

func void GQ001_GONZALODEATHCUTSCENE_WAIT() {
    AI_WAITTILLEND(HERO, BAU_6287_GONZALO);
    AI_WAITTILLEND(HERO, BDT_6288_MYRMIDON);
    AI_WAITTILLEND(HERO, BDT_6290_BANDIT);
    AI_WAITTILLEND(HERO, BDT_6289_VILLAN);
    AI_WAITTILLEND(BAU_6287_GONZALO, HERO);
    AI_WAITTILLEND(BAU_6287_GONZALO, BDT_6288_MYRMIDON);
    AI_WAITTILLEND(BAU_6287_GONZALO, BDT_6290_BANDIT);
    AI_WAITTILLEND(BAU_6287_GONZALO, BDT_6289_VILLAN);
    AI_WAITTILLEND(BDT_6288_MYRMIDON, HERO);
    AI_WAITTILLEND(BDT_6288_MYRMIDON, BAU_6287_GONZALO);
    AI_WAITTILLEND(BDT_6288_MYRMIDON, BDT_6290_BANDIT);
    AI_WAITTILLEND(BDT_6288_MYRMIDON, BDT_6289_VILLAN);
    AI_WAITTILLEND(BDT_6290_BANDIT, HERO);
    AI_WAITTILLEND(BDT_6290_BANDIT, BAU_6287_GONZALO);
    AI_WAITTILLEND(BDT_6290_BANDIT, BDT_6288_MYRMIDON);
    AI_WAITTILLEND(BDT_6290_BANDIT, BDT_6289_VILLAN);
    AI_WAITTILLEND(BDT_6289_VILLAN, HERO);
    AI_WAITTILLEND(BDT_6289_VILLAN, BAU_6287_GONZALO);
    AI_WAITTILLEND(BDT_6289_VILLAN, BDT_6288_MYRMIDON);
    AI_WAITTILLEND(BDT_6289_VILLAN, BDT_6290_BANDIT);
}

func void GQ001_GONZALODEATHCUTSCENE_START() {
    MUSIC_OVERRIDETRACK(21950);
    if (TORCH_HEROHOLDINGTORCH()) {
        TORCH_UNEQUIP();
    };
    B_TURNTONPC(HERO, BAU_6287_GONZALO);
    BAU_6287_GONZALO.FLAGS = 0;
    BAU_6287_GONZALO.AIVAR[52] = TRUE;
    BAU_6287_GONZALO.AIVAR[95] = TRUE;
    BAU_6287_GONZALO.AIVAR[94] = TRUE;
    BDT_6289_VILLAN.AIVAR[95] = TRUE;
    BDT_6289_VILLAN.AIVAR[94] = TRUE;
    BDT_6290_BANDIT.AIVAR[95] = TRUE;
    BDT_6290_BANDIT.AIVAR[94] = TRUE;
    BDT_6288_MYRMIDON.AIVAR[95] = TRUE;
    BDT_6288_MYRMIDON.AIVAR[94] = TRUE;
    NPC_CLEARAIQUEUE(BAU_6287_GONZALO);
    NPC_CLEARAIQUEUE(BDT_6289_VILLAN);
    NPC_CLEARAIQUEUE(BDT_6290_BANDIT);
    NPC_CLEARAIQUEUE(BDT_6288_MYRMIDON);
    BAU_6287_GONZALO.AIVAR[92] = TRUE;
    BDT_6289_VILLAN.AIVAR[92] = TRUE;
    BDT_6290_BANDIT.AIVAR[92] = TRUE;
    BDT_6288_MYRMIDON.AIVAR[92] = TRUE;
    B_TURNTONPC(BDT_6288_MYRMIDON, BAU_6287_GONZALO);
    B_TURNTONPC(BDT_6289_VILLAN, BAU_6287_GONZALO);
    B_TURNTONPC(BDT_6290_BANDIT, BAU_6287_GONZALO);
    B_TURNTONPC(BAU_6287_GONZALO, BDT_6288_MYRMIDON);
    AI_STARTFACEANI(BAU_6287_GONZALO, S_FRIGHTENED, 1, -(1));
    AI_FUNCTION_S(BAU_6287_GONZALO, 777, "KM_GONZALOCUTSCENE_01");
    AI_WAIT(BAU_6287_GONZALO, 1086324736);
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_FUNCTION_S(BAU_6287_GONZALO, 777, "KM_GONZALOCUTSCENE_02");
    AI_OUTPUT(BAU_6287_GONZALO, HERO, "DIA_Gonzalo_Cutscene_03_01");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BDT_6288_MYRMIDON, HERO, "DIA_Gonzalo_Cutscene_03_02");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BAU_6287_GONZALO, HERO, "DIA_Gonzalo_Cutscene_03_03");
    AI_OUTPUT(BAU_6287_GONZALO, HERO, "DIA_Gonzalo_Cutscene_03_04");
    AI_OUTPUT(BAU_6287_GONZALO, HERO, "DIA_Gonzalo_Cutscene_03_05");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    CREATEINVITEM(BDT_6288_MYRMIDON, 36012);
    AI_USEITEMTOSTATE(BDT_6288_MYRMIDON, 36012, 1);
    AI_WAIT(BDT_6288_MYRMIDON, 1065353216);
    AI_FUNCTION_S(BDT_6288_MYRMIDON, 777, "KM_GONZALOCUTSCENE_03");
    AI_WAIT(BDT_6288_MYRMIDON, 1067030938);
    AI_USEITEMTOSTATE(BDT_6288_MYRMIDON, 36012, -(1));
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BAU_6287_GONZALO, HERO, "DIA_Gonzalo_Cutscene_03_06");
    AI_OUTPUT(BAU_6287_GONZALO, HERO, "DIA_Gonzalo_Cutscene_03_07");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_PLAYANI(BDT_6288_MYRMIDON, T_YES);
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    CREATEINVITEMS(BDT_6289_VILLAN, 34384, 2);
    AI_WAIT(BDT_6289_VILLAN, 1036831949);
    AI_WAIT(BDT_6290_BANDIT, 1056964608);
    AI_READYRANGEDWEAPON(BDT_6289_VILLAN);
    AI_READYRANGEDWEAPON(BDT_6290_BANDIT);
    AI_AIMAT(BDT_6289_VILLAN, BAU_6287_GONZALO);
    AI_AIMAT(BDT_6290_BANDIT, BAU_6287_GONZALO);
    AI_FUNCTION_S(BDT_6289_VILLAN, 777, "KM_GONZALOCUTSCENE_05");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BAU_6287_GONZALO, HERO, "DIA_Gonzalo_Cutscene_03_08");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BDT_6288_MYRMIDON, HERO, "DIA_Gonzalo_Cutscene_03_09");
    AI_OUTPUT(BDT_6288_MYRMIDON, HERO, "DIA_Gonzalo_Cutscene_03_10");
    AI_OUTPUT(BDT_6288_MYRMIDON, HERO, "DIA_Gonzalo_Cutscene_03_11");
    CREATEINVITEMS(BDT_6290_BANDIT, 34384, 10);
    AI_FUNCTION_S(BDT_6288_MYRMIDON, 777, "KM_GONZALOCUTSCENE_06");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_STARTFACEANI(BAU_6287_GONZALO, T_HURT, 1, -(1));
    B_TURNTONPC(BAU_6287_GONZALO, HERO);
    AI_OUTPUT(BAU_6287_GONZALO, HERO, "DIA_Gonzalo_Cutscene_03_12");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    B_TURNTONPC(BAU_6287_GONZALO, BDT_6289_VILLAN);
    AI_SHOOTAT(BDT_6289_VILLAN, BAU_6287_GONZALO);
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_WAIT(BDT_6288_MYRMIDON, 1069547520);
    AI_FUNCTION_S(BDT_6288_MYRMIDON, 777, "KM_GONZALOCUTSCENE_08");
    AI_OUTPUT(BDT_6288_MYRMIDON, HERO, "DIA_Gonzalo_Cutscene_03_13");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_REMOVEWEAPON(BDT_6290_BANDIT);
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BDT_6290_BANDIT, HERO, "DIA_Gonzalo_Cutscene_03_14");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_REMOVEWEAPON(BDT_6289_VILLAN);
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    B_TURNTONPC(BDT_6288_MYRMIDON, BDT_6290_BANDIT);
    AI_OUTPUT(BDT_6288_MYRMIDON, HERO, "DIA_Gonzalo_Cutscene_03_15");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    B_TURNTONPC(BDT_6290_BANDIT, BDT_6288_MYRMIDON);
    AI_OUTPUT(BDT_6290_BANDIT, HERO, "DIA_Gonzalo_Cutscene_03_16");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    B_TURNTONPC(BDT_6289_VILLAN, BDT_6290_BANDIT);
    AI_OUTPUT(BDT_6289_VILLAN, HERO, "DIA_Gonzalo_Cutscene_03_17");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    B_TURNTONPC(BDT_6290_BANDIT, BDT_6289_VILLAN);
    AI_OUTPUT(BDT_6290_BANDIT, HERO, "DIA_Gonzalo_Cutscene_03_18");
    B_TURNTONPC(BDT_6290_BANDIT, BDT_6288_MYRMIDON);
    AI_OUTPUT(BDT_6290_BANDIT, HERO, "DIA_Gonzalo_Cutscene_03_19");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_FUNCTION_S(BDT_6288_MYRMIDON, 777, "KM_GONZALOCUTSCENE_09");
    AI_OUTPUT(BDT_6288_MYRMIDON, HERO, "DIA_Gonzalo_Cutscene_03_20");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BDT_6290_BANDIT, HERO, "DIA_Gonzalo_Cutscene_03_21");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BDT_6289_VILLAN, HERO, "DIA_Gonzalo_Cutscene_03_22");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BDT_6290_BANDIT, HERO, "DIA_Gonzalo_Cutscene_03_23");
    GQ001_GONZALODEATHCUTSCENE_WAIT();
    AI_OUTPUT(BDT_6288_MYRMIDON, HERO, "DIA_Gonzalo_Cutscene_03_24");
    AI_OUTPUT(BDT_6288_MYRMIDON, HERO, "DIA_Gonzalo_Cutscene_03_25");
    AI_FUNCTION(BDT_6288_MYRMIDON, 92315);
}

func void GQ001_ENDGONZALOCUTSCENE() {
    B_STARTOTHERROUTINE(BDT_6288_MYRMIDON, START);
    NPC_REFRESH(BDT_6288_MYRMIDON);
    B_STARTOTHERROUTINE(BDT_6289_VILLAN, START);
    NPC_REFRESH(BDT_6289_VILLAN);
    B_STARTOTHERROUTINE(BDT_6290_BANDIT, START);
    NPC_REFRESH(BDT_6290_BANDIT);
    FADESCREENTOBLACKF(2, 92316, 1000);
}

func void GQ001_ENDGONZALOCUTSCENE_FADE() {
    MUSIC_DISABLEOVERRIDE();
    WLD_SETTIME(5, 0);
    PRINTD("Bandyci poszli do przystani");
    BDT_6289_VILLAN.AIVAR[92] = FALSE;
    BDT_6290_BANDIT.AIVAR[92] = FALSE;
    BDT_6288_MYRMIDON.AIVAR[92] = FALSE;
    B_STARTOTHERROUTINE(BDT_6288_MYRMIDON, "HAVEN");
    NPC_REFRESH(BDT_6288_MYRMIDON);
    TELEPORTNPCTOWP(58036, BDT_6288_MYRMIDON.WP);
    B_STARTOTHERROUTINE(BDT_6289_VILLAN, "HAVEN");
    NPC_REFRESH(BDT_6289_VILLAN);
    TELEPORTNPCTOWP(57947, BDT_6289_VILLAN.WP);
    B_STARTOTHERROUTINE(BDT_6290_BANDIT, "HAVEN");
    NPC_REFRESH(BDT_6290_BANDIT);
    TELEPORTNPCTOWP(57956, BDT_6290_BANDIT.WP);
    MDL_REMOVEOVERLAYMDS(HERO, HUMANSMARVINSNEAKMDS);
    WLD_SENDUNTRIGGER("KM_GONZALOCUTSCENE_09");
    B_LOGENTRY(TOPIC_Q207, LOG_Q207_GONZALODEATH);
    TELEPORTNPCTOWP(1819, "PART15_PATH_219");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
    WLD_INSERTNPC(50667, "FP_WITHOUTTRACE_MOLERAT_01");
    B_KILLNPC(50667);
    WLD_INSERTNPC(50668, "FP_WITHOUTTRACE_MOLERAT_02");
    B_KILLNPC(50668);
    WLD_INSERTNPC(50669, "FP_WITHOUTTRACE_MOLERAT_03");
    B_KILLNPC(50669);
    WLD_INSERTNPC(51042, "FP_WITHOUTTRACE_WARAN");
    B_KILLNPC(51042);
    WLD_INSERTNPC(50265, "FP_WITHOUTTRACE_WARAN");
    WLD_INSERTNPC(50153, "FP_WITHOUTTRACE_ALIGATOR");
    B_KILLNPC(50153);
    WLD_INSERTNPC(51004, "FP_WITHOUTTRACE_SWAMPSHARK");
    B_KILLNPC(51004);
    WLD_INSERTNPC(50265, "FP_WITHOUTTRACE_SWAMPSHARK");
    WLD_INSERTNPC(50265, "FP_WITHOUTTRACE_SWAMPSHARK");
    WLD_INSERTITEM(37194, "FP_WITHOUTTRACE_DEADMAN");
}

