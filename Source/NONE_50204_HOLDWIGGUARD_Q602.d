instance NONE_50204_HOLDWIGGUARD_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOLDWIGGUARD;
    GUILD = GIL_NONE;
    ID = 50204;
    VOICE = 22;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_50204_HOLDWIGGUARD_Q602, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(NONE_50204_HOLDWIGGUARD_Q602, MALE, HUMHEADPONY, FACE_N_HOLDWIGGUARD_02, 1, 35398);
    MDL_APPLYOVERLAYMDS(NONE_50204_HOLDWIGGUARD_Q602, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(NONE_50204_HOLDWIGGUARD_Q602);
    B_GIVENPCTALENTS(NONE_50204_HOLDWIGGUARD_Q602);
    B_SETFIGHTSKILLS(NONE_50204_HOLDWIGGUARD_Q602, 40);
    MDL_APPLYOVERLAYMDS(NONE_50204_HOLDWIGGUARD_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(NONE_50204_HOLDWIGGUARD_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(NONE_50204_HOLDWIGGUARD_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(NONE_50204_HOLDWIGGUARD_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_V1_50204;
}

func void RTN_START_V1_50204() {
    TA_STAND_ARMSCROSSED(8, 0, 23, 0, "PARTE4_Q602_VINEYARDLEADER_WARRIOR_02");
    TA_STAND_ARMSCROSSED(23, 0, 8, 0, "PARTE4_Q602_VINEYARDLEADER_WARRIOR_02");
}

