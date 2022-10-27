instance BAU_11146_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DIGGER;
    GUILD = GIL_NONE;
    ID = 0x2b8a;
    VOICE = 6;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_11146_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(BAU_11146_WORKER, HUMANSMDS);
    MDL_SETVISUALBODY(BAU_11146_WORKER, HUMBODYNAKED0, 20, 0, HUMHEADBALD, FACE_P_WORKER20, 3, 0x8b05);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_11146_WORKER);
    MDL_APPLYOVERLAYMDS(BAU_11146_WORKER, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(BAU_11146_WORKER);
    B_SETFIGHTSKILLS(BAU_11146_WORKER, 25);
    DAILY_ROUTINE = RTN_START_11146;
    AIVAR[74] = NPC_MILITIAMINE_IAMMINER;
    AIVAR[70] = NPC_AMB_MINE_MINER_MILITIA;
}

func void RTN_START_11146() {
    TA_PICK_ORE(6, 0, 14, 0, "PART10_MINE_WORK_02");
    TA_SMALLTALK(14, 0, 18, 0, "PART10_MINE_SMALLTALK_05");
    TA_PICK_ORE(18, 0, 22, 0, "PART10_MINE_WORK_02");
    TA_FIREPLACE(22, 0, 6, 0, "PART10_MINE_44");
}

func void RTN_SQ311_MALENDEAD_11146() {
    TA_SEARCH_ONLY(6, 0, 11, 0, "PART10_SQ311_MALENDEAD_02");
    TA_SEARCH_ONLY(11, 0, 6, 0, "PART10_SQ311_MALENDEAD_02");
}

func void RTN_SQ311_AFTERFIGHT_11146() {
    TA_FIREPLACE(6, 0, 22, 0, "PART10_MINE_44");
    TA_FIREPLACE(22, 0, 6, 0, "PART10_MINE_44");
}

