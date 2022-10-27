instance BDT_11057_PETRAMAN(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SHADYCHARACTER;
    GUILD = GIL_BDT;
    ID = 0x2b31;
    VOICE = 42;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    AIVAR[61] = TRUE;
    AIVAR[52] = TRUE;
    B_SETATTRIBUTESTOLEVEL(BDT_11057_PETRAMAN, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BDT_11057_PETRAMAN, MALE, HUMHEADPONY, FACE_N_BANDIT41, 1, 0x8a56);
    MDL_APPLYOVERLAYMDS(BDT_11057_PETRAMAN, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_11057_PETRAMAN);
    B_GIVENPCTALENTS(BDT_11057_PETRAMAN);
    B_SETFIGHTSKILLS(BDT_11057_PETRAMAN, 20);
    DAILY_ROUTINE = RTN_START_11057;
}

func void RTN_START_11057() {
    TA_SIT_SLAVSQUAT(6, 0, 8, 0, "PART9_PETRAMAN_02");
    TA_SIT_SLAVSQUAT(8, 0, 6, 0, "PART9_PETRAMAN_02");
}

