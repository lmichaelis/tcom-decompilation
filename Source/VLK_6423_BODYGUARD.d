instance VLK_6423_BODYGUARD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_NONE;
    ID = 6423;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6423_BODYGUARD, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6423_BODYGUARD, MALE, HUMHEADBALD, FACE_B_CITIZEN87, 3, 35547);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6423_BODYGUARD);
    MDL_APPLYOVERLAYMDS(VLK_6423_BODYGUARD, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(VLK_6423_BODYGUARD);
    B_SETFIGHTSKILLS(VLK_6423_BODYGUARD, 40);
    DAILY_ROUTINE = RTN_START_6423;
}

func void RTN_START_6423() {
    TA_OBSERVE(8, 0, 9, 0, "HARBOUR_TAVERN_05");
    TA_OBSERVE(9, 0, 8, 0, "HARBOUR_TAVERN_05");
}

func void RTN_TOT_6423() {
    TA_STAYSTRAIGHT(8, 0, 18, 0, TOT);
    TA_STAYSTRAIGHT(18, 0, 8, 0, TOT);
}

