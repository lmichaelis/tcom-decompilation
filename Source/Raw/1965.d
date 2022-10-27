instance NONE_6410_BLAKE(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_BLAKE;
    GUILD = GIL_NONE;
    ID = 0x190a;
    VOICE = 30;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[55] = TRUE;
    B_SETATTRIBUTESTOLEVEL(NONE_6410_BLAKE, 30);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_6410_BLAKE, 0x9ad4);
    B_SETNPCVISUAL(NONE_6410_BLAKE, MALE, HUMHEADBALD, FACE_B_BLAKE, 3, 0x8a6b);
    MDL_APPLYOVERLAYMDS(NONE_6410_BLAKE, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_6410_BLAKE);
    CREATEINVITEMS(NONE_6410_BLAKE, 0x8b6a, 1);
    B_GIVENPCTALENTS(NONE_6410_BLAKE);
    B_SETFIGHTSKILLS(NONE_6410_BLAKE, 60);
    DAILY_ROUTINE = RTN_START_6410;
}

func void RTN_START_6410() {
    TA_STAND_ARMSCROSSED(8, 0, 11, 0, "KM_NATHANIEL_HOUSE_BLAKE_01");
    TA_STAND_ARMSCROSSED(11, 0, 8, 0, "KM_NATHANIEL_HOUSE_BLAKE_01");
}

