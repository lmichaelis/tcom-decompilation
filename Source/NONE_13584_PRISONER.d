instance NONE_13584_PRISONER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_PRISONER;
    GUILD = GIL_NONE;
    ID = 13584;
    VOICE = 55;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_13584_PRISONER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_13584_PRISONER, MALE, HUMHEADNOTHING, 0, BODYTEX_N_HOMELESS02, 35393);
    MDL_APPLYOVERLAYMDS(NONE_13584_PRISONER, HUMANSLEADERMDS);
    B_GIVENPCTALENTS(NONE_13584_PRISONER);
    B_SETFIGHTSKILLS(NONE_13584_PRISONER, 45);
    DAILY_ROUTINE = RTN_TOT_13584;
}

func void RTN_START_13584() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 17, 0, "HARBOUR_QM201_PRISON");
    TA_STAYSTRAIGHT_NOIQ(17, 0, 6, 0, "HARBOUR_QM201_PRISON");
}

func void RTN_TOT_13584() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, TOT);
    TA_STAYSTRAIGHT(22, 0, 8, 0, TOT);
}

