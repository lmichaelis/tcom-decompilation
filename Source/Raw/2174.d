instance NONE_6362_THUG(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_SOELDNER;
    GUILD = GIL_SLD;
    ID = 0x18da;
    VOICE = 42;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6362_THUG, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_6362_THUG, MALE, HUMHEADBALD, FACE_N_BANDIT05, 1, 0x8a46);
    MDL_APPLYOVERLAYMDS(NONE_6362_THUG, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(NONE_6362_THUG);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_6362_THUG);
    DAILY_ROUTINE = RTN_START_6362;
}

func void RTN_START_6362() {
    TA_STAND_ARMSCROSSED(8, 0, 16, 0, "PART3_GOLDMINE_01");
    TA_STAND_ARMSCROSSED(16, 0, 8, 0, "PART3_GOLDMINE_01");
}
