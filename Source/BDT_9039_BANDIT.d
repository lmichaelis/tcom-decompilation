instance BDT_9039_BANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BANDIT;
    GUILD = GIL_BDT;
    ID = 9039;
    VOICE = 13;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9039_BANDIT, 36);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9039_BANDIT, MALE, HUMHEADBALD, FACE_N_BANDIT66, 1, 35438);
    B_CREATEAMBIENTINV(BDT_9039_BANDIT);
    MDL_APPLYOVERLAYMDS(BDT_9039_BANDIT, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9039_BANDIT);
    B_GIVENPCTALENTS(BDT_9039_BANDIT);
    B_SETFIGHTSKILLS(BDT_9039_BANDIT, 35);
    DAILY_ROUTINE = RTN_START_9039;
}

func void RTN_START_9039() {
    TA_SIT_SLAVSQUAT(8, 0, 12, 0, "PART17_PATH_223");
    TA_SIT_SLAVSQUAT(12, 0, 8, 0, "PART17_PATH_223");
}

