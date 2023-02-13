instance MIL_13665_GUARDSMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GUARDSMAN;
    GUILD = GIL_MIL;
    ID = 13665;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(MIL_13665_GUARDSMAN, 50);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_13665_GUARDSMAN, MALE, HUMHEADBALD, FACE_L_GUARDSMAN_10, 2, 35614);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13665_GUARDSMAN);
    MDL_APPLYOVERLAYMDS(MIL_13665_GUARDSMAN, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(MIL_13665_GUARDSMAN, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(MIL_13665_GUARDSMAN, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(MIL_13665_GUARDSMAN, HUMANSCBOWT2);
    B_GIVENPCTALENTS(MIL_13665_GUARDSMAN);
    B_SETFIGHTSKILLS(MIL_13665_GUARDSMAN, 0);
    DAILY_ROUTINE = RTN_START_13665;
    AIVAR[74] = NPC_KQ407_ARMY;
}

func void RTN_START_13665() {
    TA_WAITING(1, 0, 6, 0, "PART4_KQ407_EURIC_STAND_02");
    TA_WAITING(6, 0, 1, 0, "PART4_KQ407_EURIC_STAND_02");
}

func void RTN_KQ407_ORCFIGHT_13665() {
    TA_GUIDE_PLAYER(1, 0, 6, 0, "PART6_PATH_97");
    TA_GUIDE_PLAYER(6, 0, 1, 0, "PART6_PATH_97");
}

func void RTN_TOT_13665() {
    TA_SIT_SLAVSQUAT(1, 0, 6, 0, TOT);
    TA_SIT_SLAVSQUAT(6, 0, 1, 0, TOT);
}

