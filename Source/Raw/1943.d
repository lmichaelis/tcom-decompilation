instance VLK_6042_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x179a;
    VOICE = 49;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6042_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    MDL_SETVISUAL(VLK_6042_GUY, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_6042_GUY, HUMBODYNAKED0, 0, 0, HUMHEADFATBALD, FACE_P_BEGGAR11, 2, 0x8af3);
    MDL_APPLYOVERLAYMDS(VLK_6042_GUY, HUMANSTIREDMDS);
    B_CREATEAMBIENTINV(VLK_6042_GUY);
    B_GIVENPCTALENTS(VLK_6042_GUY);
    B_SETFIGHTSKILLS(VLK_6042_GUY, 40);
    DAILY_ROUTINE = RTN_START_6042;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6042() {
    TA_OBSERVE(8, 0, 19, 30, "SLUMS_STAND_04");
    TA_WATCHFIGHT_DUMB(19, 30, 5, 0, "SLUMS_FIGHTCLUB_20");
    TA_OBSERVE(5, 0, 8, 0, "SLUMS_STAND_04");
}

func void RTN_FIGHTCLUB_6042() {
    TA_WATCHFIGHT_DUMB(8, 0, 19, 30, "SLUMS_FIGHTCLUB_20");
    TA_WATCHFIGHT_DUMB(19, 30, 2, 0, "SLUMS_FIGHTCLUB_20");
    TA_WATCHFIGHT_DUMB(2, 0, 8, 0, "SLUMS_FIGHTCLUB_20");
}

func void RTN_AFTERSQ230_6042() {
    TA_STAND_WP(19, 30, 19, 40, "SLUMS_FIGHTCLUB_20");
    TA_STAND_WP(19, 40, 19, 30, "SLUMS_FIGHTCLUB_20");
}
