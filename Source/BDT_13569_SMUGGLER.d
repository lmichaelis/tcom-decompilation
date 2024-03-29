instance BDT_13569_SMUGGLER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_COYOTE;
    GUILD = GIL_BDT;
    ID = 13569;
    VOICE = 53;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_13569_SMUGGLER, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_13569_SMUGGLER, MALE, HUMHEADFATBALD, FACE_B_SMUGGLER12, 3, 35438);
    MDL_APPLYOVERLAYMDS(BDT_13569_SMUGGLER, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_13569_SMUGGLER);
    B_GIVENPCTALENTS(BDT_13569_SMUGGLER);
    B_SETFIGHTSKILLS(BDT_13569_SMUGGLER, 45);
    DAILY_ROUTINE = RTN_START_13569;
}

func void RTN_START_13569() {
    TA_STAND_GUARDING(11, 0, 11, 10, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(11, 10, 11, 20, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(11, 20, 11, 30, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(11, 30, 11, 40, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(11, 40, 11, 50, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(11, 50, 12, 0, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(12, 0, 12, 10, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(12, 10, 12, 20, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(12, 20, 12, 30, "PART1_CAVE_IN_40");
    TA_STAND_DRINKING(12, 30, 13, 0, "PART1_CAVE_IN_07");
    TA_STAND_EATING(13, 0, 13, 30, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(13, 30, 13, 40, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(13, 40, 13, 50, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(13, 50, 14, 0, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(14, 0, 14, 10, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(14, 10, 14, 20, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(14, 20, 14, 30, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(14, 30, 14, 40, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(14, 40, 14, 50, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(14, 50, 15, 0, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(15, 0, 15, 10, "PART1_CAVE_IN_40");
    TA_STAND_EATING(15, 10, 15, 40, "PART1_CAVE_IN_07");
    TA_STAND_DRINKING(15, 40, 16, 20, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(16, 20, 16, 30, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(16, 30, 16, 40, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(16, 40, 16, 50, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(16, 50, 17, 0, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(17, 0, 17, 10, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(17, 10, 17, 20, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(17, 20, 17, 30, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(17, 30, 17, 40, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(17, 40, 17, 50, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(17, 50, 18, 0, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(18, 0, 18, 10, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(18, 10, 18, 20, "PART1_CAVE_IN_40");
    TA_STAND_DRINKING(18, 20, 18, 50, "PART1_CAVE_IN_07");
    TA_STAND_EATING(18, 50, 19, 20, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(19, 20, 19, 30, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(19, 30, 19, 40, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(19, 40, 19, 50, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(19, 50, 20, 0, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(20, 0, 20, 10, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(20, 10, 20, 20, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(20, 20, 20, 30, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(20, 30, 20, 40, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(20, 40, 20, 50, "PART1_CAVE_IN_40");
    TA_STAND_DRINKING(20, 50, 21, 20, "PART1_CAVE_IN_07");
    TA_STAND_EATING(21, 20, 21, 50, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(21, 50, 22, 0, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(22, 0, 22, 10, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(22, 10, 22, 20, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(22, 20, 22, 30, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(22, 30, 22, 40, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(22, 40, 22, 50, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(22, 50, 23, 0, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(23, 0, 23, 10, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(23, 10, 23, 20, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(23, 20, 23, 30, "PART1_CAVE_IN_40");
    TA_STAND_EATING(23, 30, 0, 0, "PART1_CAVE_IN_07");
    TA_STAND_DRINKING(0, 0, 0, 30, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(0, 30, 0, 40, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(0, 40, 0, 50, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(0, 50, 1, 10, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(1, 10, 1, 20, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(1, 20, 1, 30, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(1, 30, 1, 40, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(1, 40, 1, 50, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(1, 50, 2, 0, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(2, 0, 2, 10, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(2, 10, 2, 20, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(2, 20, 2, 30, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(2, 30, 2, 40, "PART1_CAVE_IN_40");
    TA_STAND_DRINKING(2, 40, 3, 10, "PART1_CAVE_IN_07");
    TA_STAND_EATING(3, 10, 3, 40, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(3, 40, 3, 50, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(3, 50, 4, 0, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(4, 0, 4, 10, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(4, 10, 4, 20, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(4, 20, 4, 30, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(4, 30, 4, 40, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(4, 40, 4, 50, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(4, 50, 5, 0, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(5, 0, 5, 10, "PART1_CAVE_IN_40");
    TA_STAND_DRINKING(5, 10, 5, 40, "PART1_CAVE_IN_07");
    TA_STAND_EATING(5, 40, 6, 20, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(6, 20, 6, 30, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(6, 30, 6, 40, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(6, 40, 6, 50, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(6, 50, 7, 10, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(7, 10, 7, 20, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(7, 20, 7, 30, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(7, 30, 7, 40, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(7, 40, 7, 50, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(7, 50, 8, 0, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(8, 0, 8, 10, "PART1_CAVE_IN_40");
    TA_STAND_EATING(8, 10, 8, 40, "PART1_CAVE_IN_07");
    TA_STAND_DRINKING(8, 40, 9, 20, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(9, 20, 9, 30, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(9, 30, 9, 40, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(9, 40, 9, 50, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(9, 50, 10, 0, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(10, 0, 10, 10, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(10, 10, 10, 20, "PART1_CAVE_IN_07");
    TA_STAND_GUARDING(10, 20, 10, 30, "PART1_CAVE_IN_40");
    TA_STAND_GUARDING(10, 30, 10, 40, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(10, 40, 10, 50, "PART1_CAVE_IN_07");
    TA_STAND_ARMSCROSSED(10, 50, 11, 0, "PART1_CAVE_IN_40");
}

func void RTN_QA401_CUTSCENE_13569() {
    TA_STAND_ARMSCROSSED(6, 0, 20, 0, "PART1_CAVE_IN_40");
    TA_STAND_ARMSCROSSED(20, 0, 6, 0, "PART1_CAVE_IN_40");
}

func void RTN_QA401_FIGHT_WAIT_13569() {
    TA_STAYSTRAIGHT_NOIQ(6, 0, 20, 0, "PART1_CAVE_IN_40");
    TA_STAYSTRAIGHT_NOIQ(20, 0, 6, 0, "PART1_CAVE_IN_40");
}

func void RTN_QA401_FIGHT_CAVE_13569() {
    TA_PLUNDER(6, 0, 20, 0, "PART1_CAVE_IN_52");
    TA_PLUNDER(20, 0, 6, 0, "PART1_CAVE_IN_52");
}

func void RTN_QA401_FLEE_13569() {
    TA_FLEE_NOIQ(6, 0, 20, 0, TOT);
    TA_FLEE_NOIQ(20, 0, 6, 0, TOT);
}

