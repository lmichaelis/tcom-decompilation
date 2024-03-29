instance SLD_11066_GUIDEMERCHANT(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_GUIDEMERCHANT;
    GUILD = GIL_SLD;
    ID = 11066;
    VOICE = 59;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETATTRIBUTESTOLEVEL(SLD_11066_GUIDEMERCHANT, 30);
    B_SETFIGHTSKILLS(SLD_11066_GUIDEMERCHANT, 30);
    B_SETNPCVISUAL(SLD_11066_GUIDEMERCHANT, MALE, HUMHEADBALD, FACE_B_MISCELLANEOUSGOODSMERCHANT, 3, 35465);
    MDL_APPLYOVERLAYMDS(SLD_11066_GUIDEMERCHANT, HUMANSRELAXEDMDS);
    B_GIVENPCTALENTS(SLD_11066_GUIDEMERCHANT);
    B_CREATEWEAPONINV();
    DAILY_ROUTINE = RTN_START_11066;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_11066() {
    TA_TABLEBOOK(6, 50, 22, 0, "PARTM4_MERCHANTGUIDE_04");
    TA_STAND_EATING(22, 0, 0, 30, "PARTM1_GUILDHOUSE_LIVINGROOM_STAND_01");
    TA_SOFA(0, 30, 6, 50, "PARTM1_GUILDHOUSE_LIVINGROOM_SOFA");
}

