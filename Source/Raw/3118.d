instance MIL_10115_GUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_NONE;
    ID = 0xc39c;
    VOICE = 12;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(MIL_10115_GUARD_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(MIL_10115_GUARD_Q602, MALE, HUMHEADFIGHTER, FACE_P_MILITIA37, 0, 0x8aa0);
    MDL_APPLYOVERLAYMDS(MIL_10115_GUARD_Q602, HUMANSWOUNDEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_10115_GUARD_Q602);
    B_GIVENPCTALENTS(MIL_10115_GUARD_Q602);
    B_SETFIGHTSKILLS(MIL_10115_GUARD_Q602, 20);
    MDL_APPLYOVERLAYMDS(MIL_10115_GUARD_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(MIL_10115_GUARD_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(MIL_10115_GUARD_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(MIL_10115_GUARD_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50076;
}

func void RTN_START_50076() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PARTE5_VOLKERGUARD_02");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PARTE5_VOLKERGUARD_02");
}

func void RTN_Q602_REST_50076() {
    TA_PLUNDER_Q602(8, 0, 23, 0, "PARTE5_RAMSEY_01");
    TA_PLUNDER_Q602(23, 0, 8, 0, "PARTE5_RAMSEY_01");
}

func void RTN_TOT_50076() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}

