instance MIL_10116_GUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_NONE;
    ID = 50077;
    VOICE = 12;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(MIL_10116_GUARD_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(MIL_10116_GUARD_Q602, MALE, HUMHEADFIGHTER, FACE_P_MILITIA38, 0, 35488);
    MDL_APPLYOVERLAYMDS(MIL_10116_GUARD_Q602, HUMANSHURTMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_10116_GUARD_Q602);
    B_GIVENPCTALENTS(MIL_10116_GUARD_Q602);
    B_SETFIGHTSKILLS(MIL_10116_GUARD_Q602, 20);
    MDL_APPLYOVERLAYMDS(MIL_10116_GUARD_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(MIL_10116_GUARD_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(MIL_10116_GUARD_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(MIL_10116_GUARD_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50077;
}

func void RTN_START_50077() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PARTE5_VOLKERGUARD_03");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PARTE5_VOLKERGUARD_03");
}

func void RTN_Q602_REST_50077() {
    TA_SIT_CAMPFIRE_Q602(8, 0, 23, 0, "PARTE5_VOLKERGUARD_01");
    TA_SIT_CAMPFIRE_Q602(23, 0, 8, 0, "PARTE5_VOLKERGUARD_01");
}

func void RTN_TOT_50077() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}

