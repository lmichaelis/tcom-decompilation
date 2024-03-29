instance VLK_6300_GROEN_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_GROEN;
    GUILD = GIL_VLK;
    ID = 50179;
    VOICE = 17;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_6300_GROEN_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6300_GROEN_Q602, MALE, HUMHEADPONY, FACE_N_GROEN, 1, 35550);
    MDL_APPLYOVERLAYMDS(VLK_6300_GROEN_Q602, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6300_GROEN_Q602);
    B_GIVENPCTALENTS(VLK_6300_GROEN_Q602);
    B_SETFIGHTSKILLS(VLK_6300_GROEN_Q602, 45);
    MDL_APPLYOVERLAYMDS(VLK_6300_GROEN_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(VLK_6300_GROEN_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(VLK_6300_GROEN_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(VLK_6300_GROEN_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50179;
}

func void RTN_START_50179() {
    TA_PRAY_NOIQ(8, 0, 18, 0, "PARTE8_PRAY_02");
    TA_PRAY_NOIQ(18, 0, 8, 0, "PARTE8_PRAY_02");
}

func void RTN_Q602_STANDUP_50179() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 18, 0, "PARTE8_PRAY_02");
    TA_STAYSTRAIGHT_NOIQ(18, 0, 8, 0, "PARTE8_PRAY_02");
}

func void RTN_Q602_FOLLOW_50179() {
    TA_RUNTOWP_Q602(8, 0, 18, 0, "PARTE1_CITIZENRUN_01");
    TA_RUNTOWP_Q602(18, 0, 8, 0, "PARTE1_CITIZENRUN_01");
}

func void RTN_Q602_WAIT_E1_50179() {
    TA_SEARCH_SCARED_Q602(8, 0, 10, 0, "PARTE1_CITIZENRUN_01");
    TA_SEARCH_SCARED_Q602(10, 0, 8, 0, "PARTE1_CITIZENRUN_01");
}

func void RTN_Q602_WAIT_50179() {
    TA_SEARCH_SCARED_Q602(8, 0, 18, 0, "PARTE1_CITIZEN_06");
    TA_SEARCH_SCARED_Q602(18, 0, 8, 0, "PARTE1_CITIZEN_06");
}

func void RTN_Q602_BARRACK_WAIT_50179() {
    TA_SEARCH_SCARED_Q602(8, 0, 18, 0, RNG_NS12_FAKEJORN01_WAYPOINT);
    TA_SEARCH_SCARED_Q602(18, 0, 8, 0, RNG_NS12_FAKEJORN01_WAYPOINT);
}

func void RTN_Q602_BARRACK_50179() {
    TA_SIT_TIRED_Q602(8, 0, 18, 0, "PARTM3_BARRACK_HOUSE1_01");
    TA_SIT_TIRED_Q602(18, 0, 8, 0, "PARTM3_BARRACK_HOUSE1_01");
}

