instance BAU_806_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_VLK;
    ID = 806;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_806_FARMER, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(BAU_806_FARMER, MALE, HUMHEADFATBALD, FACE_N_ARAWALD, BODYTEX_N, 35579);
    MDL_APPLYOVERLAYMDS(BAU_806_FARMER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_806_FARMER);
    B_GIVENPCTALENTS(BAU_806_FARMER);
    B_SETFIGHTSKILLS(BAU_806_FARMER, 30);
    DAILY_ROUTINE = RTN_START_806;
    AIVAR[70] = NPC_AMB_FARMERSCITY;
}

func void RTN_START_806() {
    TA_SCYTHE(10, 0, 22, 0, "PART3_FARMFIELD3_SCYTHE_03");
    TA_SMALLTALK(22, 0, 10, 0, "PART2_FISHERMAN_SMALLTALK_01");
}

