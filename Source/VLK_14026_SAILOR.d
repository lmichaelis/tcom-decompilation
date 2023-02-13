instance VLK_14026_SAILOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SAILOR;
    GUILD = GIL_VLK;
    ID = 14026;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14026_SAILOR, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14026_SAILOR, MALE, HUMHEADBALD, FACE_N_SAILOR04, 1, 35394);
    MDL_APPLYOVERLAYMDS(VLK_14026_SAILOR, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14026_SAILOR);
    B_GIVENPCTALENTS(VLK_14026_SAILOR);
    B_SETFIGHTSKILLS(VLK_14026_SAILOR, 40);
    DAILY_ROUTINE = RTN_START_14026;
    AIVAR[70] = NPC_AMB_CITY_SAILOR;
}

func void RTN_START_14026() {
    TA_SIT_SLAVSQUAT(7, 0, 22, 0, "PARTM6_SHIP03_01");
    TA_SIT_SLAVSQUAT(22, 0, 7, 0, "PARTM6_SHIP03_01");
}

