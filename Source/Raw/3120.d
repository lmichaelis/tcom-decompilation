instance MIL_10117_GUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_MILIZ;
    GUILD = GIL_NONE;
    ID = 0xc39e;
    VOICE = 12;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(MIL_10117_GUARD_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_NOJUMP;
    B_SETNPCVISUAL(MIL_10117_GUARD_Q602, MALE, HUMHEADFATBALD, FACE_B_MILITIA39, 3, 0x8aa0);
    MDL_APPLYOVERLAYMDS(MIL_10117_GUARD_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_10117_GUARD_Q602);
    B_GIVENPCTALENTS(MIL_10117_GUARD_Q602);
    B_SETFIGHTSKILLS(MIL_10117_GUARD_Q602, 50);
    MDL_APPLYOVERLAYMDS(MIL_10117_GUARD_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(MIL_10117_GUARD_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(MIL_10117_GUARD_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(MIL_10117_GUARD_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50078;
}

func void RTN_START_50078() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, "PARTE5_VOLKERGUARD_04");
    TA_STAYSTRAIGHT(23, 0, 8, 0, "PARTE5_VOLKERGUARD_04");
}

func void RTN_Q602_REST_50078() {
    TA_BREATH(8, 0, 23, 0, "PARTM5_PATH_69");
    TA_BREATH(23, 0, 8, 0, "PARTM5_PATH_69");
}

func void RTN_TOT_50078() {
    TA_STAYSTRAIGHT(8, 0, 23, 0, TOT);
    TA_STAYSTRAIGHT(23, 0, 8, 0, TOT);
}
