instance VLK_6060_MYSTERIOUSMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MYSTERIOUSMAN;
    GUILD = GIL_NONE;
    ID = 6060;
    VOICE = 57;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6060_MYSTERIOUSMAN, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6060_MYSTERIOUSMAN, MALE, HUMHEADFIGHTER, FACE_N_MYSTERIOUSMAN, 1, 35422);
    MDL_APPLYOVERLAYMDS(VLK_6060_MYSTERIOUSMAN, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6060_MYSTERIOUSMAN);
    B_GIVENPCTALENTS(VLK_6060_MYSTERIOUSMAN);
    B_SETFIGHTSKILLS(VLK_6060_MYSTERIOUSMAN, 40);
    DAILY_ROUTINE = RTN_PRESTART_6060;
}

func void RTN_PRESTART_6060() {
    TA_STAND_GUARDING(8, 0, 22, 0, TOT);
    TA_STAND_GUARDING(22, 0, 8, 0, TOT);
}

func void RTN_POSITION1_6060() {
    TA_STAND_GUARDING(8, 0, 22, 0, "SLUMS_GANG_POSITION1_03");
    TA_STAND_GUARDING(22, 0, 8, 0, "SLUMS_GANG_POSITION1_03");
}

func void RTN_POSITION2_6060() {
    TA_STAND_GUARDING(8, 0, 22, 0, "SLUMS_GANG_POSITION2_03");
    TA_STAND_GUARDING(22, 0, 8, 0, "SLUMS_GANG_POSITION2_03");
}

func void RTN_POSITION3_6060() {
    TA_STAND_GUARDING(8, 0, 22, 0, "SLUMS_GANG_POSITION3_03");
    TA_STAND_GUARDING(22, 0, 8, 0, "SLUMS_GANG_POSITION3_03");
}

func void RTN_POSITION4_6060() {
    TA_STAND_GUARDING(8, 0, 22, 0, "SLUMS_GANG_POSITION4_03");
    TA_STAND_GUARDING(22, 0, 8, 0, "SLUMS_GANG_POSITION4_03");
}

func void RTN_TOT_6060() {
    TA_STAND_GUARDING(8, 0, 22, 0, TOT);
    TA_STAND_GUARDING(22, 0, 8, 0, TOT);
}

