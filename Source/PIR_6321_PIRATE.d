instance PIR_6321_PIRATE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ADDON_PIRAT;
    GUILD = GIL_PIR;
    ID = 6321;
    VOICE = 54;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(PIR_6321_PIRATE, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(PIR_6321_PIRATE, MALE, HUMHEADTHIEF, FACE_N_PIRATE01, 1, 33570);
    MDL_APPLYOVERLAYMDS(PIR_6321_PIRATE, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(PIR_6321_PIRATE);
    B_GIVENPCTALENTS(PIR_6321_PIRATE);
    B_SETFIGHTSKILLS(PIR_6321_PIRATE, 55);
    DAILY_ROUTINE = RTN_START_6321;
}

func void RTN_START_6321() {
    TA_SMALLTALK(1, 0, 6, 0, "P17_HAVEN_HUT6_06");
    TA_SMALLTALK(6, 0, 1, 0, "P17_HAVEN_HUT6_06");
}

