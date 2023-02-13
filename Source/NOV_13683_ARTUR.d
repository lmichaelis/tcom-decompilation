instance NOV_13683_ARTUR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ARTUR;
    GUILD = GIL_NOV;
    ID = 13683;
    VOICE = 10;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NOV_13683_ARTUR, 25);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(NOV_13683_ARTUR, MALE, HUMHEADFATBALD, FACE_N_ARTHUR, 1, NO_ARMOR);
    MDL_APPLYOVERLAYMDS(NOV_13683_ARTUR, HUMANSTIREDMDS);
    B_CREATEAMBIENTINV(NOV_13683_ARTUR);
    B_GIVENPCTALENTS(NOV_13683_ARTUR);
    B_SETFIGHTSKILLS(NOV_13683_ARTUR, 40);
    DAILY_ROUTINE = RTN_START_13683;
}

func void RTN_START_13683() {
    TA_SQ506_NOVICE(22, 0, 23, 0, "PART8_SQ506_SEARCH_04");
    TA_SQ506_NOVICE(23, 0, 22, 0, "PART8_SQ506_SEARCH_04");
}

func void RTN_MONASTERY_13683() {
    TA_GRAPEPLUNDER(8, 0, 12, 0, "PART8_PLANTS_09");
    TA_STAND_DRINKING(12, 0, 14, 0, "PART8_MONASTERY_SQ506_OTHEKAR");
    TA_GRAPEPLUNDER(14, 0, 18, 0, "PART8_PLANTS_09");
    TA_STAND_SWEEPING(18, 0, 22, 0, "PART8_MONASTERY_SQ506_OTHEKAR");
    TA_PRAY_INNOS(22, 0, 8, 0, "PART8_MONASTERY_PRAY_01");
}

func void RTN_TOT_13683() {
    TA_BREATH(22, 0, 23, 0, TOT);
    TA_BREATH(23, 0, 22, 0, TOT);
}

