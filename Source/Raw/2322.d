instance NONE_602_BEEKEEPER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BEEKEEPER;
    GUILD = GIL_BAU;
    ID = 602;
    VOICE = 66;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NONE_602_BEEKEEPER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NONE_602_BEEKEEPER, MALE, HUMHEADPONY, FACE_L_BEEKEEPER03, 2, 0x8af3);
    MDL_APPLYOVERLAYMDS(NONE_602_BEEKEEPER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_602_BEEKEEPER);
    B_GIVENPCTALENTS(NONE_602_BEEKEEPER);
    B_SETFIGHTSKILLS(NONE_602_BEEKEEPER, 30);
    DAILY_ROUTINE = RTN_START_602;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_602() {
    TA_SIT_CHAIR(8, 0, 12, 0, "PART7_BEEKEEPERS_04");
    TA_STAND_EATING(12, 0, 15, 0, "PART7_BEEKEEPERS_10");
    TA_STAND_DRINKING(15, 0, 17, 0, "PART7_BEEKEEPERS_10");
    TA_SMOKE_JOINT(17, 0, 19, 0, "PART7_BEEKEEPERS_10");
    TA_SLEEP(19, 0, 8, 0, "PART7_BEEKEEPERS_BED_03");
}
