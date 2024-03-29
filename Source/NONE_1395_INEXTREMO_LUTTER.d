instance NONE_1395_INEXTREMO_LUTTER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_INEXTREMO_LUTTER;
    NPCTYPE = NPCTYPE_MAIN;
    GUILD = GIL_NONE;
    LEVEL = 4;
    VOICE = 1;
    ID = 1395;
    FLAGS = 2;
    B_SETATTRIBUTESTOLEVEL(NONE_1395_INEXTREMO_LUTTER, 30);
    CREATEINVITEM(NONE_1395_INEXTREMO_LUTTER, 33668);
    MDL_SETVISUAL(NONE_1395_INEXTREMO_LUTTER, HUMANSMDS);
    MDL_SETVISUALBODY(NONE_1395_INEXTREMO_LUTTER, "IE_LUTTER_ARMOR", BODYTEX_N_INEXTREMO_DRUMSCHEID, DEFAULT, "HUM_HEAD_INEXTREMO_LUTTER", DEFAULT, DEFAULT, -(1));
    MDL_APPLYOVERLAYMDS(NONE_1395_INEXTREMO_LUTTER, HUMANSTIREDMDS);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    NPC_SETTALENTSKILL(NONE_1395_INEXTREMO_LUTTER, NPC_TALENT_1H, 1);
    DAILY_ROUTINE = RTN_START_1395;
}

func void RTN_START_1395() {
    TA_STAND_DRINKING(21, 0, 17, 59, "HARBOUR_PATH_204");
    TA_CONCERT(17, 59, 21, 0, "KQ404_CONCERT_LUTTER");
}

func void RTN_KQ404_TORTURE_1395() {
    TA_STAND_DRINKING(21, 0, 17, 59, "HARBOUR_PATH_204");
    TA_STAND_DRINKING(17, 59, 21, 0, "HARBOUR_PATH_204");
}

func void RTN_TOT_1395() {
    TA_SIT_BENCH(21, 0, 17, 59, TOT);
    TA_SIT_BENCH(17, 59, 21, 0, TOT);
}

