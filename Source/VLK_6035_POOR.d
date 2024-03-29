instance VLK_6035_POOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BEGGAR;
    GUILD = GIL_VLK;
    ID = 6035;
    VOICE = 67;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6035_POOR, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6035_POOR, MALE, HUMHEADFATBALD, FACE_N_BEGGAR3, 1, 0);
    MDL_APPLYOVERLAYMDS(VLK_6035_POOR, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6035_POOR);
    B_GIVENPCTALENTS(VLK_6035_POOR);
    B_SETFIGHTSKILLS(VLK_6035_POOR, 40);
    DAILY_ROUTINE = RTN_START_6035;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6035() {
    TA_SIT_CAMPFIRE(5, 0, 21, 0, "SLUMS_PATH_38");
    TA_SIT_CAMPFIRE(21, 0, 5, 0, "SLUMS_PATH_38");
}

