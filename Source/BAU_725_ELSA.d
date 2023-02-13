instance BAU_725_ELSA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ALBYNWIFE;
    GUILD = GIL_BAU;
    ID = 725;
    VOICE = 34;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(BAU_725_ELSA, 3);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(BAU_725_ELSA, FEMALE, HUMHEADBABE3, FACE_WN_ELSA, 5, 35609);
    MDL_APPLYOVERLAYMDS(BAU_725_ELSA, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(BAU_725_ELSA);
    B_GIVENPCTALENTS(BAU_725_ELSA);
    B_SETFIGHTSKILLS(BAU_725_ELSA, 15);
    DAILY_ROUTINE = RTN_START_725;
    AIVAR[74] = NPC_IAMBUSY;
}

func void RTN_START_725() {
    TA_SIT_THRONE_READING(7, 0, 12, 0, "PART12_RAMSEYHOUSE_ARMCHAIR");
    TA_STAND_DRINKING(12, 0, 14, 0, "PART12_RAMSEYHOUSE_08");
    TA_SIT_CHAIR_EAT(14, 0, 15, 30, "PART12_RAMSEYHOUSE_CHAIR04");
    TA_SIT_THRONE_READING(15, 30, 18, 0, "PART12_RAMSEYHOUSE_ARMCHAIR03");
    TA_STAND_DRINKING(18, 0, 19, 30, "PART12_RAMSEYHOUSE_08");
    TA_SLEEP(19, 30, 7, 0, "PART12_RAMSEYHOUSE_BED01");
}

func void RTN_TOT_725() {
    TA_STAND_WP(8, 0, 13, 0, TOT);
    TA_STAND_WP(13, 0, 8, 0, TOT);
}

