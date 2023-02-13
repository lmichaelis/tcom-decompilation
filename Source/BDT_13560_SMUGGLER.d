instance BDT_13560_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_BDT;
    ID = 13560;
    VOICE = 13;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_13560_SMUGGLER, 38);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13560_SMUGGLER, MALE, HUMHEADBALD, FACE_P_SMUGGLER03, 0, 35403);
    MDL_APPLYOVERLAYMDS(BDT_13560_SMUGGLER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13560_SMUGGLER);
    B_GIVENPCTALENTS(BDT_13560_SMUGGLER);
    B_SETFIGHTSKILLS(BDT_13560_SMUGGLER, 45);
    DAILY_ROUTINE = RTN_START_13560;
}

func void RTN_START_13560() {
    TA_SMALLTALK(6, 0, 20, 0, "PART1_CAVE_IN_31");
    TA_SMALLTALK(20, 0, 6, 0, "PART1_CAVE_IN_31");
}

func void RTN_QA401_CUTSCENE_13560() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 20, 0, "PART1_CAVE_IN_31");
    TA_STAYSTRAIGHT_NOIQ(20, 0, 6, 0, "PART1_CAVE_IN_31");
}
