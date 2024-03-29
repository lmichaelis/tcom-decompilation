instance PIR_1312_LARRY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LARRY;
    GUILD = GIL_PIR;
    ID = 1312;
    VOICE = 59;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_1312_LARRY, 32);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    EQUIPITEM(PIR_1312_LARRY, 39544);
    MDL_SETVISUAL(PIR_1312_LARRY, HUMANSMDS);
    MDL_SETVISUALBODY(PIR_1312_LARRY, RESERVED_CONST_STRING_75, BODYTEX_N, 0, HUMHEADFATBALD, FACE_N_LARRY, TEETHTEX_NORMAL, 35542);
    MDL_APPLYOVERLAYMDS(PIR_1312_LARRY, HUMANSTIREDMDS);
    B_CREATEAMBIENTINV(PIR_1312_LARRY);
    B_GIVENPCTALENTS(PIR_1312_LARRY);
    B_SETFIGHTSKILLS(PIR_1312_LARRY, 60);
    DAILY_ROUTINE = RTN_START_1312;
}

func void RTN_START_1312() {
    TA_SMOKE_JOINT(6, 0, 14, 0, "P17_HAVEN_BAR_OUT_04");
    TA_SMALLTALK(14, 0, 17, 0, "P17_HAVEN_BAR_IN_17");
    TA_SIT_CHAIR(17, 0, 1, 0, "PART17_BAR_CHAIR_02");
    TA_SLEEP(1, 0, 6, 0, "P17_HAVEN_HUT1_03");
}

func void RTN_AFTERCANON_1312() {
    TA_SMOKE_JOINT(6, 0, 14, 0, "P17_HAVEN_BAR_OUT_04");
    TA_SMALLTALK(14, 0, 17, 0, "P17_HAVEN_BAR_IN_17");
    TA_SIT_CHAIR(17, 0, 6, 0, "PART17_BAR_CHAIR_02");
}

func void RTN_ARENAFIGHTWAIT_1312() {
    TA_STAYSTRAIGHT_NOIQ(1, 0, 6, 0, "P17_HAVEN_ARENA_LARRY");
    TA_STAYSTRAIGHT_NOIQ(6, 0, 1, 0, "P17_HAVEN_ARENA_LARRY");
}

func void RTN_ARENAFIGHTPLAYER_1312() {
    TA_RUNTOWP(1, 0, 6, 0, "P17_HAVEN_ARENA_OPPONENT_02");
    TA_RUNTOWP(6, 0, 1, 0, "P17_HAVEN_ARENA_OPPONENT_02");
}

const string PIR_1312_LARRY_DUELWP = "P17_HAVEN_OUT_03";
func void RTN_GUIDETODUEL_1312() {
    TA_GUIDE_PLAYER(0, 0, 12, 0, PIR_1312_LARRY_DUELWP);
    TA_GUIDE_PLAYER(12, 0, 0, 0, PIR_1312_LARRY_DUELWP);
}

func void RTN_TAVERN_1312() {
    TA_SIT_CHAIR_DRINK(1, 0, 6, 0, "PART17_BAR_CHAIR_03");
    TA_SIT_CHAIR_DRINK(6, 0, 1, 0, "PART17_BAR_CHAIR_03");
}

func void RTN_SQ503_FINALFIGHT_1312() {
    TA_STAYSTRAIGHT(7, 0, 10, 0, "P17_HAVEN_SQ503_FIGHT_02");
    TA_STAYSTRAIGHT(10, 0, 7, 0, "P17_HAVEN_SQ503_FIGHT_02");
}

func void RTN_TOT_1312() {
    TA_STAYSTRAIGHT(1, 0, 6, 0, TOT);
    TA_STAYSTRAIGHT(6, 0, 1, 0, TOT);
}

