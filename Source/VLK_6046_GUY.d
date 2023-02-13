instance VLK_6046_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 6046;
    VOICE = 25;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6046_GUY, 20);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    MDL_SETVISUAL(VLK_6046_GUY, HUMANSMDS);
    MDL_SETVISUALBODY(VLK_6046_GUY, HUMBODYNAKED0, 1, 0, HUMHEADBALD, FACE_N_BEGGAR14, 1, 35572);
    MDL_APPLYOVERLAYMDS(VLK_6046_GUY, HUMANSTIREDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6046_GUY);
    B_GIVENPCTALENTS(VLK_6046_GUY);
    B_SETFIGHTSKILLS(VLK_6046_GUY, 40);
    DAILY_ROUTINE = RTN_START_6046;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6046() {
    TA_OBSERVE(8, 0, 21, 55, "SLUMS_STAND_08");
    TA_SLEEP(21, 55, 8, 0, "SLUMS_HOUSE02_04");
}
