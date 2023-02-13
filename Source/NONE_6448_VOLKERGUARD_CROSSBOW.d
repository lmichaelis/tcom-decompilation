instance NONE_6448_VOLKERGUARD_CROSSBOW(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BODYGUARD;
    GUILD = GIL_NONE;
    ID = 6448;
    VOICE = 45;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6448_VOLKERGUARD_CROSSBOW, 40);
    ATTRIBUTE[5] = 99999;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[52] = TRUE;
    AIVAR[4] = TRUE;
    B_SETNPCVISUAL(NONE_6448_VOLKERGUARD_CROSSBOW, MALE, HUMHEADBALD, FACE_B_VOLKERGUARD_CBOW01, 3, 35479);
    MDL_APPLYOVERLAYMDS(NONE_6448_VOLKERGUARD_CROSSBOW, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6448_VOLKERGUARD_CROSSBOW);
    EQUIPITEM(NONE_6448_VOLKERGUARD_CROSSBOW, 39710);
    CREATEINVITEMS(NONE_6448_VOLKERGUARD_CROSSBOW, 34384, 30);
    B_GIVENPCTALENTS(NONE_6448_VOLKERGUARD_CROSSBOW);
    B_SETFIGHTSKILLS(NONE_6448_VOLKERGUARD_CROSSBOW, 100);
    DAILY_ROUTINE = RTN_START_6448;
}

func void RTN_START_6448() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 18, 0, "PART9_WATERDEATH_CROSSBOWMAN_01");
    TA_STAYSTRAIGHT_NOIQ(18, 0, 8, 0, "PART9_WATERDEATH_CROSSBOWMAN_01");
}

func void RTN_AIM_6448() {
    TA_AIMCROSSBOW_NOIQ(8, 0, 18, 0, "PART9_WATERDEATH_CROSSBOWMAN_01");
    TA_AIMCROSSBOW_NOIQ(18, 0, 8, 0, "PART9_WATERDEATH_CROSSBOWMAN_01");
}

func void RTN_CUTSCENE_6448() {
    TA_AIMCROSSBOW_NOIQ(8, 0, 18, 0, "PART9_WATERFALL_CUTSCENE_CBOW_04");
    TA_AIMCROSSBOW_NOIQ(18, 0, 8, 0, "PART9_WATERFALL_CUTSCENE_CBOW_04");
}

func void RTN_TOT_6448() {
    TA_AIMCROSSBOW_NOIQ(8, 0, 18, 0, TOT);
    TA_AIMCROSSBOW_NOIQ(18, 0, 8, 0, TOT);
}
