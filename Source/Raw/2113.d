instance BDT_13563_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_BDT;
    ID = 0x34fb;
    VOICE = 49;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_13563_SMUGGLER, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    CREATEINVITEMS(BDT_13563_SMUGGLER, 0x9022, 1);
    B_SETNPCVISUAL(BDT_13563_SMUGGLER, MALE, HUMHEADBALD, FACE_L_SMUGGLER06, 2, 0x8a59);
    MDL_APPLYOVERLAYMDS(BDT_13563_SMUGGLER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13563_SMUGGLER);
    B_GIVENPCTALENTS(BDT_13563_SMUGGLER);
    B_SETFIGHTSKILLS(BDT_13563_SMUGGLER, 45);
    DAILY_ROUTINE = RTN_START_13563;
}

func void RTN_START_13563() {
    TA_STAYSTRAIGHT(6, 0, 20, 0, "PART1_CAVE_IN_43");
    TA_STAYSTRAIGHT(20, 0, 6, 0, "PART1_CAVE_IN_43");
}

func void RTN_QA401_CUTSCENE_13563() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 20, 0, "PART1_CAVE_IN_43");
    TA_STAYSTRAIGHT_NOIQ(20, 0, 6, 0, "PART1_CAVE_IN_43");
}

