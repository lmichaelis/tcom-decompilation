instance NOV_219_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 219;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NOV_219_NOVIZE, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_219_NOVIZE, MALE, HUMHEADWITHOUTPONY, FACE_N_PATRON_46, 1, 0x8b0a);
    MDL_APPLYOVERLAYMDS(NOV_219_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_219_NOVIZE);
    B_GIVENPCTALENTS(NOV_219_NOVIZE);
    B_SETFIGHTSKILLS(NOV_219_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_219;
    AIVAR[70] = NPC_AMB_NOVIZE;
}

func void RTN_START_219() {
    TA_SMALLTALK(6, 0, 21, 0, "PART8_MONASTERY_SMALLTALK_07");
    TA_SLEEP(21, 0, 6, 0, "PART8_MONASTERY_NOVIZEROOM3_BED_02");
}

func void RTN_PRIORDEAD_219() {
    TA_PRAY_NOIQ(8, 0, 22, 0, "PART8_CHURCH_PRAY_06");
    TA_PRAY_NOIQ(22, 0, 8, 0, "PART8_CHURCH_PRAY_06");
}

