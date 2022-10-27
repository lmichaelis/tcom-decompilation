instance NOV_218_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 218;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NOV_218_NOVIZE, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_218_NOVIZE, MALE, HUMHEADFIGHTER, FACE_N_PATRON_45, 1, 0x8b0a);
    MDL_APPLYOVERLAYMDS(NOV_218_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_218_NOVIZE);
    B_GIVENPCTALENTS(NOV_218_NOVIZE);
    B_SETFIGHTSKILLS(NOV_218_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_218;
    AIVAR[70] = NPC_AMB_NOVIZE;
}

func void RTN_START_218() {
    TA_SMALLTALK(6, 0, 21, 0, "PART8_MONASTERY_SMALLTALK_08");
    TA_SLEEP(21, 0, 6, 0, "PART8_MONASTERY_NOVIZEROOM3_BED_01");
}

func void RTN_PRIORDEAD_218() {
    TA_PRAY_NOIQ(8, 0, 22, 0, "PART8_CHURCH_PRAY_05");
    TA_PRAY_NOIQ(22, 0, 8, 0, "PART8_CHURCH_PRAY_05");
}

