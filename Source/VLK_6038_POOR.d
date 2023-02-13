instance VLK_6038_POOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BEGGAR;
    GUILD = GIL_VLK;
    ID = 6038;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6038_POOR, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6038_POOR, MALE, HUMHEADFATBALD, FACE_B_CITIZEN78, 3, 0);
    MDL_APPLYOVERLAYMDS(VLK_6038_POOR, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6038_POOR);
    B_GIVENPCTALENTS(VLK_6038_POOR);
    B_SETFIGHTSKILLS(VLK_6038_POOR, 40);
    DAILY_ROUTINE = RTN_START_6038;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6038() {
    TA_SIT_CAMPFIRE(8, 0, 22, 0, "SLUMS_PATH_89");
    TA_SIT_CAMPFIRE(22, 0, 8, 0, "SLUMS_PATH_89");
}

