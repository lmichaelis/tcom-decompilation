instance KDW_301_CUSTO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_CUSTO;
    GUILD = GIL_KDW;
    ID = 301;
    LEVEL = 12;
    VOICE = 24;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETATTRIBUTESTOLEVEL(KDW_301_CUSTO, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(KDW_301_CUSTO, MALE, HUMHEADPSIONIC, FACE_N_CUSTO, 1, 0x8484);
    MDL_APPLYOVERLAYMDS(KDW_301_CUSTO, HUMANSMAGEMDS);
    B_CREATEAMBIENTINV(KDW_301_CUSTO);
    B_GIVENPCTALENTS(KDW_301_CUSTO);
    B_SETFIGHTSKILLS(KDW_301_CUSTO, 60);
    DAILY_ROUTINE = RTN_START_301;
}

func void RTN_START_301() {
    TA_SIT_THRONE(7, 0, 0, 0, "PART8_CHURCH_THRONE_03");
    TA_SLEEP(0, 0, 7, 0, "PART8_MONASTERY_BED_03");
}

func void RTN_Q502_CUTSCENE_301() {
    TA_STAYSTRAIGHT(8, 0, 9, 0, "PART8_CHURCH_STAND_06");
    TA_STAYSTRAIGHT(9, 0, 8, 0, "PART8_CHURCH_STAND_06");
}

func void RTN_PRIORDEAD_301() {
    TA_PRAY_NOIQ(8, 0, 22, 0, "PART8_CHURCH_PRAY_09");
    TA_PRAY_NOIQ(22, 0, 8, 0, "PART8_CHURCH_PRAY_09");
}

