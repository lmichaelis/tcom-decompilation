instance NOV_212_NOVIZE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOVIZE;
    GUILD = GIL_NOV;
    ID = 212;
    VOICE = 64;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(NOV_212_NOVIZE, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_212_NOVIZE, MALE, HUMHEADBALD, FACE_N_NOVIZE_07, 1, 0x8b0a);
    MDL_APPLYOVERLAYMDS(NOV_212_NOVIZE, HUMANSMAGEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NOV_212_NOVIZE);
    B_GIVENPCTALENTS(NOV_212_NOVIZE);
    B_SETFIGHTSKILLS(NOV_212_NOVIZE, 40);
    DAILY_ROUTINE = RTN_START_212;
    AIVAR[70] = NPC_AMB_NOVIZE;
}

func void RTN_START_212() {
    TA_WATCHFIGHT_DUMB(8, 0, 9, 0, "PART8_MONASTERY_Q501_WATCH_05");
    TA_WATCHFIGHT_DUMB(9, 0, 8, 0, "PART8_MONASTERY_Q501_WATCH_05");
}

func void RTN_Q501_AFTERCONTEST_212() {
    TA_LAUGH(8, 0, 9, 0, "PART8_MONASTERY_Q501_WATCH_05");
    TA_LAUGH(9, 0, 8, 0, "PART8_MONASTERY_Q501_WATCH_05");
}

func void RTN_NORMALDAY_212() {
    TA_STAND_SWEEPING(6, 0, 10, 0, "PART8_MONASTERY_BROOM_01");
    TA_STAND_SWEEPING(10, 0, 13, 0, "PART8_MONASTERY_BROOM_02");
    TA_STAND_SWEEPING(13, 0, 15, 0, "PART8_MONASTERY_BROOM_03");
    TA_STAND_SWEEPING(15, 0, 18, 0, "PART8_MONASTERY_BROOM_04");
    TA_STAND_SWEEPING(18, 0, 20, 0, "PART8_MONASTERY_BROOM_04");
    TA_STAND_SWEEPING(20, 0, 22, 30, "PART8_MONASTERY_BROOM_02");
    TA_SLEEP(22, 30, 6, 0, "PART8_MONASTERY_NOVIZEROOM1_BED_03");
}

func void RTN_NORMALDAY_V2_212() {
    TA_STAND_SWEEPING(6, 0, 10, 0, "PART8_MONASTERY_BROOM_01");
    TA_STAND_SWEEPING(10, 0, 13, 0, "PART8_MONASTERY_BROOM_02");
    TA_STAND_SWEEPING(13, 0, 15, 0, "PART8_MONASTERY_BROOM_03");
    TA_STAND_SWEEPING(15, 0, 17, 45, "PART8_MONASTERY_BROOM_04");
    TA_PRAY_INNOS_FP(17, 45, 19, 53, "PART8_CHURCH_PRAY_04");
    TA_STAND_SWEEPING(19, 53, 22, 0, "PART8_MONASTERY_BROOM_02");
    TA_SLEEP(22, 0, 6, 0, "PART8_MONASTERY_NOVIZEROOM1_BED_03");
}

func void RTN_PRIORDEAD_212() {
    TA_PRAY_NOIQ(8, 0, 22, 0, "PART8_CHURCH_PRAY_03");
    TA_PRAY_NOIQ(22, 0, 8, 0, "PART8_CHURCH_PRAY_03");
}

