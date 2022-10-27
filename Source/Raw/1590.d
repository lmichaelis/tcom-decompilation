instance VLK_880_NIKOLAS(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_ASTROLOGER;
    GUILD = GIL_NONE;
    ID = 880;
    VOICE = 6;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_880_NIKOLAS, 12);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_880_NIKOLAS, MALE, HUMHEADBALD, FACE_N_NIKOLAS, 1, 0x8ac9);
    MDL_APPLYOVERLAYMDS(VLK_880_NIKOLAS, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_880_NIKOLAS);
    B_SETFIGHTSKILLS(VLK_880_NIKOLAS, 40);
    DAILY_ROUTINE = RTN_START_880;
    AIVAR[74] = NPC_CITY_IAMFROMOLDCITY;
}

func void RTN_START_880() {
    TA_READ_BOOKSTAND(8, 0, 22, 0, "PARTM5_HOUSE_NICOLAS_BOOK");
    TA_SLEEP(22, 0, 8, 0, "PARTM5_HOUSE_NICOLAS_BED");
}

func void RTN_WANTEDPOSTER_880() {
    TA_SLEEP_NOIQ(8, 0, 22, 0, "PARTM5_HOUSE_NICOLAS_BED");
    TA_SLEEP_NOIQ(22, 0, 8, 0, "PARTM5_HOUSE_NICOLAS_BED");
}

