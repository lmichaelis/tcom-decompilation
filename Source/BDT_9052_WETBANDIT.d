instance BDT_9052_WETBANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOOBTHIEF;
    GUILD = GIL_BDT;
    ID = 9052;
    VOICE = 45;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9052_WETBANDIT, 8);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9052_WETBANDIT, MALE, HUMHEADWITHOUTPONY, FACE_N_HA_MARV, 1, 35417);
    B_CREATEAMBIENTINV(BDT_9052_WETBANDIT);
    MDL_APPLYOVERLAYMDS(BDT_9052_WETBANDIT, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9052_WETBANDIT);
    B_GIVENPCTALENTS(BDT_9052_WETBANDIT);
    B_SETFIGHTSKILLS(BDT_9052_WETBANDIT, 1);
    DAILY_ROUTINE = RTN_START_9052;
}

func void RTN_START_9052() {
    TA_STAND_WP(20, 0, 4, 0, "PARTM5_HEROHOUSE_HA_02");
    TA_STAND_WP(4, 0, 20, 0, TOT2);
}

