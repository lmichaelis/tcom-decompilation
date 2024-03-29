instance VLK_13776_TRAVELLINGTRADER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_TRAVELLINGTRADER;
    GUILD = GIL_VLK;
    ID = 113776;
    VOICE = 46;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_13776_TRAVELLINGTRADER, 35);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13776_TRAVELLINGTRADER, MALE, HUMHEADTHIEF, FACE_N_TRADER12, 1, 35410);
    MDL_APPLYOVERLAYMDS(VLK_13776_TRAVELLINGTRADER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_13776_TRAVELLINGTRADER);
    B_SETFIGHTSKILLS(VLK_13776_TRAVELLINGTRADER, 60);
    DAILY_ROUTINE = RTN_START_113776;
}

func void RTN_START_113776() {
    TA_CHECKLIST(14, 40, 19, 0, RNG_NS53_WAYPOINT);
    TA_CHECKLIST(19, 0, 14, 40, RNG_NS53_WAYPOINT);
}

func void RTN_TOT_113776() {
    TA_CHECKLIST(14, 40, 19, 0, TOT2);
    TA_CHECKLIST(19, 0, 14, 40, TOT2);
}

