instance VLK_10036_DACK(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_DACK;
    GUILD = GIL_VLK;
    ID = 10036;
    VOICE = 17;
    FLAGS = NPC_FLAG_IMPORTANT;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_10036_DACK, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_10036_DACK, MALE, HUMHEADFATBALD, FACE_N_DACK, 1, 35546);
    MDL_APPLYOVERLAYMDS(VLK_10036_DACK, HUMANSPOCKETWALKMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_10036_DACK);
    B_GIVENPCTALENTS(VLK_10036_DACK);
    B_SETFIGHTSKILLS(VLK_10036_DACK, 45);
    DAILY_ROUTINE = RTN_START_10036;
}

func void RTN_START_10036() {
    TA_SIT_THRONE_READING(7, 0, 10, 0, "HARBOUR_DACKROOM_THRONE");
    TA_CHAIR_WRITING(10, 0, 15, 0, "HARBOUR_DACKROOM_02");
    TA_READ(15, 0, 18, 0, "HARBOUR_DACKROOM_FIREPLACE");
    TA_STAND_DRINKING(18, 0, 23, 0, "HARBOUR_DACK_STAND");
    TA_SLEEP(23, 0, 7, 0, "HARBOUR_DACKROOM_BED");
}

func void RTN_KQ406_ANGRYMOB_10036() {
    TA_SIT_THRONE_READING(7, 0, 10, 0, "HARBOUR_DACKROOM_THRONE");
    TA_CHAIR_WRITING(10, 0, 15, 0, "HARBOUR_DACKROOM_02");
    TA_READ(15, 0, 18, 0, "HARBOUR_DACKROOM_FIREPLACE");
    TA_CHAIR_WRITING(18, 0, 23, 0, "HARBOUR_DACKROOM_02");
    TA_SLEEP(23, 0, 7, 0, "HARBOUR_DACKROOM_BED");
}

