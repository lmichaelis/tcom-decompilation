instance NONE_1393_INEXTREMO_UNICORN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_INEXTREMO_UNICORN;
    NPCTYPE = NPCTYPE_MAIN;
    GUILD = GIL_NONE;
    LEVEL = 4;
    VOICE = 20;
    ID = 1393;
    FLAGS = 2;
    B_SETATTRIBUTESTOLEVEL(NONE_1393_INEXTREMO_UNICORN, 30);
    CREATEINVITEM(NONE_1393_INEXTREMO_UNICORN, 33676);
    MDL_SETVISUAL(NONE_1393_INEXTREMO_UNICORN, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_1393_INEXTREMO_UNICORN, "IE_UNICORN_ARMOR", BODYTEX_N_INEXTREMO_LAUTE, DEFAULT, "HUM_HEAD_INEXTREMO_UNICORN", DEFAULT, DEFAULT, -(1));
    MDL_APPLYOVERLAYMDS(NONE_1393_INEXTREMO_UNICORN, HUMANSRELAXEDMDS);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    NPC_SETTALENTSKILL(NONE_1393_INEXTREMO_UNICORN, NPC_TALENT_1H, 1);
    DAILY_ROUTINE = RTN_START_1393;
}

func void RTN_START_1393() {
    TA_STAND_EATING(21, 0, 17, 59, "HARBOUR_PATH_314");
    TA_CONCERT(17, 59, 21, 0, "KQ404_CONCERT_UNICORN");
}

func void RTN_KQ404_TORTURE_1393() {
    TA_STAND_EATING(21, 0, 17, 59, "HARBOUR_PATH_314");
    TA_STAND_EATING(17, 59, 21, 0, "HARBOUR_PATH_314");
}

func void RTN_TOT_1393() {
    TA_SIT_BENCH(21, 0, 17, 59, TOT);
    TA_SIT_BENCH(17, 59, 21, 0, TOT);
}

