instance VLK_14034_SAILOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SAILOR;
    GUILD = GIL_VLK;
    ID = 0x36d2;
    VOICE = 37;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_14034_SAILOR, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_14034_SAILOR, MALE, HUMHEADBALD, FACE_N_SAILOR08, 1, 0x8a42);
    MDL_APPLYOVERLAYMDS(VLK_14034_SAILOR, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_14034_SAILOR);
    B_GIVENPCTALENTS(VLK_14034_SAILOR);
    B_SETFIGHTSKILLS(VLK_14034_SAILOR, 40);
    DAILY_ROUTINE = RTN_START_14034;
    AIVAR[70] = NPC_AMB_CITY_SAILOR;
}

func void RTN_START_14034() {
    TA_SPYGLASS(7, 0, 22, 0, "PARTM6_SHIP02_05");
    TA_SPYGLASS(22, 0, 7, 0, "PARTM6_SHIP02_05");
}

