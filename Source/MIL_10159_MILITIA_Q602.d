instance MIL_10159_MILITIA_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_NONE;
    ID = 50083;
    VOICE = 0;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[52] = TRUE;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOCHAPTER(MIL_10159_MILITIA_Q602, 7);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(MIL_10159_MILITIA_Q602, MALE, HUMHEADPONY, FACE_B_MILITIA44, 3, 35488);
    MDL_APPLYOVERLAYMDS(MIL_10159_MILITIA_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_10159_MILITIA_Q602);
    MDL_APPLYOVERLAYMDS(MIL_10159_MILITIA_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(MIL_10159_MILITIA_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(MIL_10159_MILITIA_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(MIL_10159_MILITIA_Q602, HUMANSCBOWT1);
    B_GIVENPCTALENTS(MIL_10159_MILITIA_Q602);
    B_SETFIGHTSKILLS(MIL_10159_MILITIA_Q602, 0);
    DAILY_ROUTINE = RTN_START_50083;
}

func void RTN_START_50083() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 23, 0, "PARTE5_WAR_08");
    TA_STAYSTRAIGHT_NOIQ(23, 0, 8, 0, "PARTE5_WAR_08");
}

func void RTN_FIGHT_50083() {
    TA_STAYSTRAIGHT_BIGFIGHT(8, 0, 23, 0, "PARTE5_WAR_08");
    TA_STAYSTRAIGHT_BIGFIGHT(23, 0, 8, 0, "PARTE5_WAR_08");
}

func void RTN_AFTERFIGHT_50083() {
    TA_BREATH_NOIQ(8, 0, 23, 0, "PARTE5_WAR_08");
    TA_BREATH_NOIQ(23, 0, 8, 0, "PARTE5_WAR_08");
}

