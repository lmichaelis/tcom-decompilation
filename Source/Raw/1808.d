instance MIL_13680_ANSKAR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ANSKAR;
    GUILD = GIL_NONE;
    ID = 0x3570;
    VOICE = 4;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    B_SETATTRIBUTESTOLEVEL(MIL_13680_ANSKAR, 45);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    B_SETNPCVISUAL(MIL_13680_ANSKAR, MALE, HUMHEADTHIEF, FACE_N_ANSKAR, 1, 0x8ad6);
    MDL_APPLYOVERLAYMDS(MIL_13680_ANSKAR, HUMANSLEADERMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_13680_ANSKAR);
    B_GIVENPCTALENTS(MIL_13680_ANSKAR);
    B_SETFIGHTSKILLS(MIL_13680_ANSKAR, 70);
    DAILY_ROUTINE = RTN_START_13680;
    AIVAR[75] = WALKMODE_WALK;
}

func void RTN_START_13680() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "HARBOUR_KQ406_ANSKAR");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "HARBOUR_KQ406_ANSKAR");
}

func void RTN_KQ406_FOLLOW_13680() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "HARBOUR_KQ406_ANSKAR");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "HARBOUR_KQ406_ANSKAR");
}

func void RTN_KQ406_GIVEUP_13680() {
    TA_SIT_DEPRESSION(8, 0, 22, 0, "HARBOUR_KQ406_ANSKAR");
    TA_SIT_DEPRESSION(22, 0, 8, 0, "HARBOUR_KQ406_ANSKAR");
}

func void RTN_KQ406_SMALLTALK_13680() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "PARTM5_CITYHALL_KQ407_SMALLTALK_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "PARTM5_CITYHALL_KQ407_SMALLTALK_01");
}

func void RTN_TOWNHALL_13680() {
    TA_SIT_THRONE(8, 0, 22, 0, "PARTM5_CITYHALL_THRONE_05");
    TA_SIT_THRONE(22, 0, 8, 0, "PARTM5_CITYHALL_THRONE_05");
}

func void RTN_TOT_13680() {
    TA_STAND_DRINKING(8, 0, 22, 0, TOT);
    TA_STAND_DRINKING(22, 0, 8, 0, TOT);
}
