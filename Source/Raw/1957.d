instance VLK_6058_GUY(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BUERGER;
    GUILD = GIL_VLK;
    ID = 0x17aa;
    VOICE = 72;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_6058_GUY, 20);
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    AIVAR[54] = TRUE;
    AIVAR[55] = TRUE;
    AIVAR[56] = TRUE;
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_6058_GUY, MALE, HUMHEADFATBALD, FACE_L_BEGGAR26, 2, 0x8af4);
    MDL_APPLYOVERLAYMDS(VLK_6058_GUY, HUMANSARROGANCEMDS);
    B_CREATEAMBIENTINV(VLK_6058_GUY);
    B_GIVENPCTALENTS(VLK_6058_GUY);
    B_SETFIGHTSKILLS(VLK_6058_GUY, 40);
    DAILY_ROUTINE = RTN_START_6058;
    AIVAR[74] = NPC_CITY_IMFROMSLUMS;
    AIVAR[70] = NPC_AMB_CITY_SLUMS;
}

func void RTN_START_6058() {
    TA_OBSERVE(8, 0, 19, 30, "SLUMS_STAND_19");
    TA_WATCHFIGHT_DUMB(19, 30, 5, 0, "SLUMS_FIGHTCLUB_24");
    TA_OBSERVE(5, 0, 8, 0, "SLUMS_STAND_19");
}

func void RTN_FIGHTCLUB_6058() {
    TA_WATCHFIGHT_DUMB(8, 0, 19, 30, "SLUMS_FIGHTCLUB_24");
    TA_WATCHFIGHT_DUMB(19, 30, 2, 0, "SLUMS_FIGHTCLUB_24");
    TA_WATCHFIGHT_DUMB(2, 0, 8, 0, "SLUMS_FIGHTCLUB_24");
}

func void RTN_AFTERSQ230_6058() {
    TA_STAND_WP(19, 30, 19, 40, "SLUMS_FIGHTCLUB_24");
    TA_STAND_WP(19, 40, 19, 30, "SLUMS_FIGHTCLUB_24");
}

