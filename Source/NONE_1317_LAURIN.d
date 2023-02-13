instance NONE_1317_LAURIN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LAURIN;
    GUILD = GIL_NONE;
    ID = 1317;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_1317_LAURIN, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_1317_LAURIN, MALE, HUMHEADPSIONIC, FACE_P_LAURIN, 0, 35422);
    MDL_APPLYOVERLAYMDS(NONE_1317_LAURIN, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_1317_LAURIN);
    B_GIVENPCTALENTS(NONE_1317_LAURIN);
    B_SETFIGHTSKILLS(NONE_1317_LAURIN, 60);
    DAILY_ROUTINE = RTN_START_1317;
}

func void RTN_START_1317() {
    TA_STAND_GUARDING(5, 0, 9, 0, "PART17_SWAMP_STAND_01");
    TA_STAND_GUARDING(9, 0, 5, 0, "PART17_SWAMP_STAND_01");
}

func void RTN_Q305_1317() {
    TA_STAND_GUARDING(5, 0, 9, 0, "PART17_MOB_12");
    TA_STAND_GUARDING(9, 0, 5, 0, "PART17_MOB_12");
}

