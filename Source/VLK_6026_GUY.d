instance VLK_6026_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BEGGAR;
    GUILD = GIL_VLK;
    ID = 6026;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6026_GUY, 20);
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6026_GUY, MALE, HUMHEADFATBALD, FACE_B_BEGGAR, 3, 35542);
    MDL_APPLYOVERLAYMDS(VLK_6026_GUY, HUMANSMILITIAMDS);
    B_CREATEAMBIENTINV(VLK_6026_GUY);
    B_GIVENPCTALENTS(VLK_6026_GUY);
    B_SETFIGHTSKILLS(VLK_6026_GUY, 40);
    DAILY_ROUTINE = RTN_START_6026;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6026() {
    TA_SMOKE_JOINT(8, 0, 19, 30, "SLUMS_PATH_104");
    TA_WATCHFIGHT_DUMB(19, 30, 5, 0, "SLUMS_FIGHTCLUB_26");
    TA_SMOKE_JOINT(5, 0, 8, 0, "SLUMS_PATH_104");
}

func void RTN_AFTERSQ230_6026() {
    TA_SMOKE_JOINT(8, 0, 19, 30, "SLUMS_FIGHTCLUB_26");
    TA_SMOKE_JOINT(19, 30, 8, 0, "SLUMS_FIGHTCLUB_26");
}

func void RTN_FIGHTCLUB_6026() {
    TA_WATCHFIGHT_DUMB(8, 0, 19, 30, "SLUMS_FIGHTCLUB_26");
    TA_WATCHFIGHT_DUMB(19, 30, 2, 0, "SLUMS_FIGHTCLUB_26");
    TA_WATCHFIGHT_DUMB(2, 0, 8, 0, "SLUMS_FIGHTCLUB_26");
}
