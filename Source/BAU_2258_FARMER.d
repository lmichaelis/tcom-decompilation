instance BAU_2258_FARMER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAEUERIN;
    GUILD = GIL_VLK;
    ID = 2258;
    VOICE = 34;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_2258_FARMER, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_2258_FARMER, FEMALE, HUMHEADBABE3, FACE_WN_JILLIA, 5, 33912);
    MDL_APPLYOVERLAYMDS(BAU_2258_FARMER, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_2258_FARMER);
    B_GIVENPCTALENTS(BAU_2258_FARMER);
    B_SETFIGHTSKILLS(BAU_2258_FARMER, 30);
    DAILY_ROUTINE = RTN_START_2258;
    AIVAR[70] = NPC_AMB_FARMERSCITY;
}

func void RTN_START_2258() {
    TA_COOK_STOVE(7, 0, 9, 0, "PART2_FISHERMAN_HOUSE_STOVE");
    TA_PLUNDER(9, 0, 22, 0, "PART3_FARMFIELD2_SCYTHE_04");
    TA_SIT_CHAIR(22, 0, 7, 0, "PART2_FISHERMAN_HOUSE_CHAIR_01");
}

