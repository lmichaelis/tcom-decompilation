instance VLK_11119_DRUNKENSAILOR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_DRUNKENSAILOR;
    GUILD = GIL_VLK;
    ID = 0x2b6f;
    VOICE = 55;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_11119_DRUNKENSAILOR, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_11119_DRUNKENSAILOR, MALE, HUMHEADTHIEF, FACE_N_DRUNKENSAILOR02, 1, 0x8a42);
    MDL_APPLYOVERLAYMDS(VLK_11119_DRUNKENSAILOR, HUMANSDRUNKENMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_11119_DRUNKENSAILOR);
    B_GIVENPCTALENTS(VLK_11119_DRUNKENSAILOR);
    B_SETFIGHTSKILLS(VLK_11119_DRUNKENSAILOR, 40);
    DAILY_ROUTINE = RTN_START_11119;
}

func void RTN_START_11119() {
    TA_STAND_WP(5, 0, 22, 0, TOT2);
    TA_STAND_DRINKING(22, 0, 5, 0, "HARBOUR_DRUNKEN_SAILOR_01");
}

func void RTN_DRUNKEN_11119() {
    TA_STAYSTRAIGHT(5, 0, 22, 0, TOT2);
    TA_STAYSTRAIGHT(22, 0, 5, 0, "HARBOUR_DRUNKEN_SAILOR_01");
}

func void RTN_TOT_11119() {
    TA_STAND_DRINKING(5, 0, 22, 0, TOT2);
    TA_STAND_DRINKING(22, 0, 5, 0, TOT2);
}

