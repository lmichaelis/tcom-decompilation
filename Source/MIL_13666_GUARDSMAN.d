instance MIL_13666_GUARDSMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GUARDSMAN;
    GUILD = GIL_MIL;
    ID = 13666;
    VOICE = 30;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13666_GUARDSMAN, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13666_GUARDSMAN, MALE, HUMHEADWITHOUTPONY, FACE_N_GUARDSMAN_11, 1, 35614);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13666_GUARDSMAN);
    MDL_APPLYOVERLAYMDS(MIL_13666_GUARDSMAN, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(MIL_13666_GUARDSMAN, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(MIL_13666_GUARDSMAN, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(MIL_13666_GUARDSMAN, HUMANSCBOWT2);
    B_GIVENPCTALENTS(MIL_13666_GUARDSMAN);
    B_SETFIGHTSKILLS(MIL_13666_GUARDSMAN, 0);
    DAILY_ROUTINE = RTN_START_13666;
    AIVAR[74] = NPC_KQ407_ARMY;
}

func void RTN_START_13666() {
    TA_STAND_ARMSCROSSED(1, 0, 6, 0, "PART4_KQ407_EURIC_STAND_03");
    TA_STAND_ARMSCROSSED(6, 0, 1, 0, "PART4_KQ407_EURIC_STAND_03");
}

func void RTN_KQ407_ORCFIGHT_13666() {
    TA_GUIDE_PLAYER(1, 0, 6, 0, "PART6_PATH_98");
    TA_GUIDE_PLAYER(6, 0, 1, 0, "PART6_PATH_98");
}

func void RTN_TOT_13666() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, TOT);
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, TOT);
}

