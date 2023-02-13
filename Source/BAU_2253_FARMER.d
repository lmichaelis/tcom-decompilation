instance BAU_2253_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 2253;
    VOICE = 6;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_2253_FARMER, 14);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_2253_FARMER, MALE, HUMHEADFATBALD, FACE_P_FARMER27, 0, 35571);
    MDL_APPLYOVERLAYMDS(BAU_2253_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2253_FARMER);
    B_GIVENPCTALENTS(BAU_2253_FARMER);
    B_SETFIGHTSKILLS(BAU_2253_FARMER, 30);
    DAILY_ROUTINE = RTN_START_2253;
    AIVAR[70] = NPC_AMB_BERMAR;
}

func void RTN_START_2253() {
    TA_SCYTHE(6, 0, 9, 0, "PART6_PATH_182");
    TA_SCYTHE(9, 0, 6, 0, "PART6_PATH_182");
}

