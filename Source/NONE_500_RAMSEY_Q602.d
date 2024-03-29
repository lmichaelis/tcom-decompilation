instance NONE_500_RAMSEY_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RAMSEY;
    GUILD = GIL_NONE;
    ID = 50108;
    VOICE = 70;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(NONE_500_RAMSEY_Q602, 50);
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    EQUIPITEM(NONE_500_RAMSEY_Q602, 39549);
    B_SETNPCVISUAL(NONE_500_RAMSEY_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_SIRRAMSEY, BODYTEX_N, 35403);
    MDL_APPLYOVERLAYMDS(NONE_500_RAMSEY_Q602, HUMANSMILITIAMDS);
    B_GIVENPCTALENTS(NONE_500_RAMSEY_Q602);
    B_SETFIGHTSKILLS(NONE_500_RAMSEY_Q602, 75);
    MDL_APPLYOVERLAYMDS(NONE_500_RAMSEY_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_500_RAMSEY_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_500_RAMSEY_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_500_RAMSEY_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50108;
}

func void RTN_START_50108() {
    TA_STAYSTRAIGHT(7, 0, 11, 0, "PARTM5_PATH_68");
    TA_STAYSTRAIGHT(11, 0, 7, 0, "PARTM5_PATH_68");
}

func void RTN_TOT_50108() {
    TA_STAYSTRAIGHT(7, 0, 11, 0, TOT);
    TA_STAYSTRAIGHT(11, 0, 7, 0, TOT);
}

func void RTN_Q602_FLEE_50108() {
    TA_FLEE_NOIQ(7, 0, 11, 0, "Q602_START");
    TA_FLEE_NOIQ(11, 0, 7, 0, "Q602_START");
}

