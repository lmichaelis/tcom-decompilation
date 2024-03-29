instance BAU_6096_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAEUERIN;
    GUILD = GIL_BAU;
    ID = 6096;
    VOICE = 16;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_6096_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_6096_GIRL, FEMALE, HUMHEADBABEHAIR1, FACE_WL_CITIZEN63, 6, 35605);
    MDL_APPLYOVERLAYMDS(BAU_6096_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_6096_GIRL);
    B_GIVENPCTALENTS(BAU_6096_GIRL);
    B_SETFIGHTSKILLS(BAU_6096_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6096;
    AIVAR[70] = NPC_AMB_BERMAR;
}

func void RTN_START_6096() {
    TA_COOK_STOVE(7, 0, 15, 0, "PART6_BIGHOUSE_COOK");
    TA_SMALLTALK(15, 0, 19, 0, "PART6_SMALLTALK_03");
    TA_STAND_EATING(19, 0, 22, 0, "PART6_PATH_149");
    TA_SIT_CHAIR(22, 0, 7, 0, "PART6_CHAIR_01");
}

