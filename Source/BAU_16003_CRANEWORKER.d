instance BAU_16003_CRANEWORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_DJG;
    ID = 16003;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_16003_CRANEWORKER, 5);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_16003_CRANEWORKER, MALE, HUMHEADFATBALD, FACE_P_CRANEWORKER02, BODYTEX_P, 35571);
    MDL_APPLYOVERLAYMDS(BAU_16003_CRANEWORKER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_16003_CRANEWORKER);
    B_GIVENPCTALENTS(BAU_16003_CRANEWORKER);
    B_SETFIGHTSKILLS(BAU_16003_CRANEWORKER, 15);
    DAILY_ROUTINE = RTN_START_16003;
    AIVAR[70] = NPC_AMB_FARMER_WOLFSDEN;
}

func void RTN_START_16003() {
    TA_PLUNDER(7, 10, 11, 40, "PART16_PATH_181");
    TA_DIG(11, 40, 15, 25, "PART16_PATH_185");
    TA_LOOKOUT(15, 25, 19, 0, "PART16_PATH_189");
    TA_PLUNDER(19, 0, 22, 30, "PART16_PATH_181");
    TA_FIREPLACE(22, 30, 7, 10, "PART16_CAMPFIRE_02");
}

