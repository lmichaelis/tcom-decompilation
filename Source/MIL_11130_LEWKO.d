instance MIL_11130_LEWKO(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LEWKO;
    GUILD = GIL_MIL;
    ID = 11130;
    VOICE = 46;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETATTRIBUTESTOLEVEL(MIL_11130_LEWKO, 30);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    EQUIPITEM(MIL_11130_LEWKO, 39505);
    B_SETNPCVISUAL(MIL_11130_LEWKO, MALE, HUMHEADWITHOUTPONY, FACE_N_LEWKO, 1, 35501);
    B_CREATEAMBIENTINV(MIL_11130_LEWKO);
    MDL_APPLYOVERLAYMDS(MIL_11130_LEWKO, HUMANSLEADERMDS);
    MDL_APPLYOVERLAYMDS(MIL_11130_LEWKO, HUMANS2HST2);
    B_GIVENPCTALENTS(MIL_11130_LEWKO);
    B_SETFIGHTSKILLS(MIL_11130_LEWKO, 30);
    DAILY_ROUTINE = RTN_START_11130;
    AIVAR[74] = NPC_MILITIAMINE_IAMMILITIA;
}

func void RTN_START_11130() {
    TA_TABLEBOOK(8, 0, 12, 0, "PART10_HOUSE2_05");
    TA_STAND_LEADER(12, 0, 16, 0, "PART10_HOUSE2_STAND_01");
    TA_STAND_ARMSCROSSED(16, 0, 18, 0, "PART10_HOUSE2_05");
    TA_STAND_DRINKING(18, 0, 20, 0, "PART10_HOUSE2_07");
    TA_TABLEBOOK(20, 0, 22, 0, "PART10_HOUSE2_05");
    TA_SLEEP(22, 0, 8, 0, "PART10_HOUSE2_BED");
}

func void RTN_SQ311_FIGHT_11130() {
    TA_TABLEBOOK(8, 0, 12, 0, "PART10_HOUSE2_05");
    TA_TABLEBOOK(12, 0, 8, 0, "PART10_HOUSE2_05");
}

func void RTN_SQ311_WAIT_11130() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, "PART10_HOUSE2_05");
    TA_STAYSTRAIGHT(12, 0, 8, 0, "PART10_HOUSE2_05");
}

func void RTN_TOT_11130() {
    TA_STAYSTRAIGHT(8, 0, 12, 0, TOT);
    TA_STAYSTRAIGHT(12, 0, 8, 0, TOT);
}

