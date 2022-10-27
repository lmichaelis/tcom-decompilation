instance VLK_6093_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 0x17cd;
    VOICE = 31;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6093_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6093_GIRL, FEMALE, HUMHEADBABE1, FACE_WN_CITIZEN60, 5, 0x8b14);
    MDL_APPLYOVERLAYMDS(VLK_6093_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6093_GIRL);
    B_GIVENPCTALENTS(VLK_6093_GIRL);
    B_SETFIGHTSKILLS(VLK_6093_GIRL, 30);
    DAILY_ROUTINE = RTN_START_6093;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_6093() {
    TA_STAND_SWEEPING(7, 30, 12, 30, "HARBOUR_PATH_96");
    TA_SIT_CHAIR_EAT(12, 30, 15, 0, "HARBOUR_HOUSE11_11");
    TA_SMALLTALK(15, 0, 18, 0, "PARTM1_SMALLTALK_06");
    TA_STAND_ARMSCROSSED(18, 0, 21, 15, "HARBOUR_MARKETSTALLBUY_05");
    TA_SLEEP(21, 15, 7, 30, "HARBOUR_HOUSE11_36");
}

func void RTN_Q206_FINBARBODY_6093() {
    TA_SIT_CHAIR_EAT(12, 30, 15, 0, "HARBOUR_HOUSE11_11");
    TA_SIT_CHAIR_EAT(15, 0, 12, 30, "HARBOUR_HOUSE11_11");
}

