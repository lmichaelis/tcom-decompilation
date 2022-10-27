instance VLK_6057_GIRL(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGERIN;
    GUILD = GIL_VLK;
    ID = 0x17a9;
    VOICE = 31;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6057_GIRL, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6057_GIRL, FEMALE, HUMHEADBABEHAIR1, FACE_WN_BEGGAR25, 5, 0x8b15);
    MDL_APPLYOVERLAYMDS(VLK_6057_GIRL, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6057_GIRL);
    B_GIVENPCTALENTS(VLK_6057_GIRL);
    B_SETFIGHTSKILLS(VLK_6057_GIRL, 40);
    DAILY_ROUTINE = RTN_START_6057;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6057() {
    TA_OBSERVE(7, 30, 21, 20, "SLUMS_STAND_18");
    TA_SLEEP(21, 20, 7, 30, "SLUMS_HOUSE05_08");
}
