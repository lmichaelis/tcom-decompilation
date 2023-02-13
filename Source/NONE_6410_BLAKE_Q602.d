instance NONE_6410_BLAKE_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_BLAKE;
    GUILD = GIL_NONE;
    ID = 50117;
    VOICE = 30;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_6410_BLAKE_Q602, 60);
    AIVAR[52] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    EQUIPITEM(NONE_6410_BLAKE_Q602, 39628);
    B_SETNPCVISUAL(NONE_6410_BLAKE_Q602, MALE, HUMHEADBALD, FACE_B_BLAKE, 3, 35435);
    MDL_APPLYOVERLAYMDS(NONE_6410_BLAKE_Q602, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(NONE_6410_BLAKE_Q602);
    B_GIVENPCTALENTS(NONE_6410_BLAKE_Q602);
    B_SETFIGHTSKILLS(NONE_6410_BLAKE_Q602, 60);
    MDL_APPLYOVERLAYMDS(NONE_6410_BLAKE_Q602, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_6410_BLAKE_Q602, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_6410_BLAKE_Q602, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_6410_BLAKE_Q602, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_50117;
}

func void RTN_START_50117() {
    TA_STAND_ARMSCROSSED(8, 0, 11, 0, "PARTE3_BLAKE");
    TA_STAND_ARMSCROSSED(11, 0, 8, 0, "PARTE3_BLAKE");
}

func void RTN_FIGHT_50117() {
    TA_KILLMARVIN(8, 0, 11, 0, "PARTE3_BLAKE");
    TA_KILLMARVIN(11, 0, 8, 0, "PARTE3_BLAKE");
}

