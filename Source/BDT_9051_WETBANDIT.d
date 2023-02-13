instance BDT_9051_WETBANDIT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_NOOBTHIEF;
    GUILD = GIL_BDT;
    ID = 9051;
    VOICE = 11;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(BDT_9051_WETBANDIT, 8);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(BDT_9051_WETBANDIT, MALE, HUMHEADFATBALD, FACE_N_HA_HARRY, 1, 35417);
    B_CREATEAMBIENTINV(BDT_9051_WETBANDIT);
    MDL_APPLYOVERLAYMDS(BDT_9051_WETBANDIT, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BDT_9051_WETBANDIT);
    B_GIVENPCTALENTS(BDT_9051_WETBANDIT);
    B_SETFIGHTSKILLS(BDT_9051_WETBANDIT, 1);
    DAILY_ROUTINE = RTN_START_9051;
}

func void RTN_START_9051() {
    TA_STAND_WP(20, 0, 4, 0, "PARTM5_HEROHOUSE_HA_01");
    TA_STAND_WP(4, 0, 20, 0, TOT2);
}

