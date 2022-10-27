instance BAU_2271_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_BAU;
    ID = 0x8df;
    VOICE = 59;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_2271_FARMER, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_2271_FARMER, MALE, HUMHEADFATBALD, FACE_B_FARMER23, 3, 0x8af3);
    MDL_APPLYOVERLAYMDS(BAU_2271_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2271_FARMER);
    B_GIVENPCTALENTS(BAU_2271_FARMER);
    B_SETFIGHTSKILLS(BAU_2271_FARMER, 30);
    DAILY_ROUTINE = RTN_START_2271;
    AIVAR[74] = NPC_VINEYARD_IAMFROMGASPAR;
    AIVAR[70] = NPC_AMB_RITA;
}

func void RTN_START_2271() {
    TA_GRAPEPLUNDER(7, 0, 14, 0, "PART15_GRAPEFIELD_18");
    TA_GRAPEPLUNDER(14, 0, 16, 0, "PART15_GRAPEFIELD_44");
    TA_GRAPEPLUNDER(16, 0, 18, 0, "PART15_GRAPEFIELD_28");
    TA_STAND_EATING(18, 0, 19, 0, "PART15_CAMPFIRE_03");
    TA_PLAY_LUTE(19, 0, 20, 0, "PART15_CAMPFIRE_03");
    TA_SLEEP(20, 0, 7, 0, "PART15_HOUSE01_BED03");
}

