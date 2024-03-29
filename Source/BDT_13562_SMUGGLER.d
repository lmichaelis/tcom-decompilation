instance BDT_13562_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_BDT;
    ID = 13562;
    VOICE = 35;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_13562_SMUGGLER, 38);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13562_SMUGGLER, MALE, HUMHEADFATBALD, FACE_N_SMUGGLER05, 1, 35398);
    MDL_APPLYOVERLAYMDS(BDT_13562_SMUGGLER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13562_SMUGGLER);
    B_GIVENPCTALENTS(BDT_13562_SMUGGLER);
    B_SETFIGHTSKILLS(BDT_13562_SMUGGLER, 45);
    DAILY_ROUTINE = RTN_START_13562;
}

func void RTN_START_13562() {
    TA_SIT_SLAVSQUAT(6, 0, 20, 0, "PART1_CAVE_IN_42");
    TA_SIT_SLAVSQUAT(20, 0, 6, 0, "PART1_CAVE_IN_42");
}

func void RTN_QA401_CUTSCENE_13562() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 20, 0, "PART1_CAVE_IN_42");
    TA_STAYSTRAIGHT_NOIQ(20, 0, 6, 0, "PART1_CAVE_IN_42");
}

