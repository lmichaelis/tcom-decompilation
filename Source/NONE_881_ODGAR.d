instance NONE_881_ODGAR(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_ODGAR;
    GUILD = GIL_VLK;
    ID = 881;
    VOICE = 47;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(NONE_881_ODGAR, 20);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    B_SETNPCVISUAL(NONE_881_ODGAR, MALE, HUMHEADFATBALD, FACE_N_ODGAR, BODYTEX_N, 33898);
    MDL_APPLYOVERLAYMDS(NONE_881_ODGAR, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(NONE_881_ODGAR);
    B_SETFIGHTSKILLS(NONE_881_ODGAR, 30);
    DAILY_ROUTINE = RTN_START_881;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_881() {
    TA_SMITH_KMFIRE(6, 0, 6, 10, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(6, 10, 6, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(6, 20, 6, 30, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(6, 30, 6, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(6, 40, 6, 50, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(6, 50, 7, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(7, 0, 7, 10, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(7, 10, 7, 20, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(7, 20, 7, 30, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(7, 30, 7, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(7, 40, 7, 50, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(7, 50, 8, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(8, 0, 8, 10, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(8, 10, 8, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(8, 20, 8, 30, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(8, 30, 8, 40, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(8, 40, 8, 50, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(8, 50, 9, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(9, 0, 9, 10, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(9, 10, 9, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(9, 20, 9, 30, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(9, 30, 9, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(9, 40, 9, 50, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(9, 50, 10, 0, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(10, 0, 10, 10, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(10, 10, 10, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(10, 20, 10, 30, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(10, 30, 10, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(10, 40, 10, 50, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(10, 50, 11, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(11, 0, 11, 10, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(11, 10, 11, 20, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(11, 20, 11, 30, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(11, 30, 11, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(11, 40, 11, 50, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(11, 50, 12, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(12, 0, 12, 10, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(12, 10, 12, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(12, 20, 12, 30, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(12, 30, 12, 40, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(12, 40, 12, 50, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(12, 50, 13, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(13, 0, 13, 10, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(13, 10, 13, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(13, 20, 13, 30, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(13, 30, 13, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(13, 40, 13, 50, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(13, 50, 14, 0, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(14, 0, 14, 10, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(14, 10, 14, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(14, 20, 14, 30, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(14, 30, 14, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(14, 40, 14, 50, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(14, 50, 15, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(15, 0, 15, 10, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(15, 10, 15, 20, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(15, 20, 15, 30, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(15, 30, 15, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(15, 40, 15, 50, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(15, 50, 16, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(16, 0, 16, 10, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(16, 10, 16, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(16, 20, 16, 30, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(16, 30, 16, 40, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(16, 40, 16, 50, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(16, 50, 17, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(17, 0, 17, 10, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(17, 10, 17, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(17, 20, 17, 30, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(17, 30, 17, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(17, 40, 17, 50, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(17, 50, 18, 0, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(18, 0, 18, 10, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(18, 10, 18, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(18, 20, 18, 30, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(18, 30, 18, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(18, 40, 18, 50, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(18, 50, 19, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(19, 0, 19, 10, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(19, 10, 19, 20, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(19, 20, 19, 30, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(19, 30, 19, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(19, 40, 19, 50, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(19, 50, 20, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(20, 0, 20, 10, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(20, 10, 20, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(20, 20, 20, 30, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(20, 30, 20, 40, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(20, 40, 20, 50, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(20, 50, 21, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(21, 0, 21, 10, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(21, 10, 21, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(21, 20, 21, 30, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(21, 30, 21, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(21, 40, 21, 50, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(21, 50, 22, 0, "PARTM3_SMITH1_04");
    TA_SMITH_KMFIRE(22, 0, 22, 10, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(22, 10, 22, 20, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_KMFIRE(22, 20, 22, 30, "PARTM3_SMITH1_FIRE");
    TA_SMITH_ANVIL(22, 30, 22, 40, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_COOL(22, 40, 22, 50, "PARTM3_SMITH1_BUCKET");
    TA_SMITH_ANVIL(22, 50, 23, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_SHARP(23, 0, 23, 10, "PARTM3_SMITH1_SWORD");
    TA_CHECKSWD(23, 10, 23, 20, "PARTM3_SMITH1_04");
    TA_SLEEP(23, 20, 6, 0, "PARTM3_SMITH1_HOUSE_BED_02");
}

func void RTN_HARDWORKING_881() {
    TA_SMITH_ANVIL(16, 0, 21, 0, "PARTM3_SMITH1_ANVIL");
    TA_SMITH_ANVIL(21, 0, 16, 0, "PARTM3_SMITH1_ANVIL");
}

func void RTN_BEER_881() {
    TA_STAND_DRINKING(16, 0, 21, 0, "PARTM3_SMITH1_04");
    TA_STAND_DRINKING(21, 0, 16, 0, "PARTM3_SMITH1_04");
}
