instance VLK_30000_MATEY_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_MATEY;
    GUILD = GIL_VLK;
    ID = 50172;
    VOICE = 52;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_30000_MATEY_Q602, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_30000_MATEY_Q602, MALE, HUMHEADBALD, FACE_N_MATEY, BODYTEX_N, 35530);
    MDL_APPLYOVERLAYMDS(VLK_30000_MATEY_Q602, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(VLK_30000_MATEY_Q602);
    B_SETFIGHTSKILLS(VLK_30000_MATEY_Q602, 30);
    MDL_APPLYOVERLAYMDS(VLK_30000_MATEY_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(VLK_30000_MATEY_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(VLK_30000_MATEY_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(VLK_30000_MATEY_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50172;
}

func void RTN_START_50172() {
    TA_SEARCH_SCARED(8, 0, 9, 0, "PARTM1_BIGHOUSE_14");
    TA_SEARCH_SCARED(9, 0, 8, 0, "PARTM1_BIGHOUSE_14");
}

func void RTN_Q602_STAY_50172() {
    TA_SIT_DEPRESSION(8, 0, 9, 0, "PARTM1_BIGHOUSE_14");
    TA_SIT_DEPRESSION(9, 0, 8, 0, "PARTM1_BIGHOUSE_14");
}
