instance VLK_6389_NIRKA(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_NIRKA;
    GUILD = GIL_VLK;
    ID = 0x18f5;
    VOICE = 53;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6389_NIRKA, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(VLK_6389_NIRKA, 0x865b);
    EQUIPITEM(VLK_6389_NIRKA, 0x9a7d);
    B_SETNPCVISUAL(VLK_6389_NIRKA, MALE, HUMHEADPSIONIC, FACE_N_NIRKA, 1, 0x8a5e);
    MDL_APPLYOVERLAYMDS(VLK_6389_NIRKA, HUMANSARROGANCEMDS);
    B_GIVENPCTALENTS(VLK_6389_NIRKA);
    B_SETFIGHTSKILLS(VLK_6389_NIRKA, 60);
    DAILY_ROUTINE = RTN_START_6389;
    AIVAR[74] = NPC_SQ225_KNOWGERHARD;
}

func void RTN_START_6389() {
    TA_SIT_CHAIR_EAT(7, 0, 9, 0, "PARTM4_HUNTERHOUSE_CHAIR_01");
    TA_SIT_BENCH(9, 0, 19, 0, "PARTM4_BENCH_07");
    TA_SIT_CHAIR_EAT(19, 0, 22, 0, "PARTM4_HUNTERHOUSE_CHAIR_01");
    TA_SLEEP(22, 0, 7, 0, "PARTM4_HUNTERHOUSE_BED");
}

func void RTN_ALCHEMY_6389() {
    TA_SIT_BENCH(8, 0, 18, 0, "PARTM4_BENCH_07");
    TA_SIT_BENCH(18, 0, 8, 0, "PARTM4_BENCH_07");
}

func void RTN_SQ416_RAMSEYHOUSE_6389() {
    TA_WAITING(8, 0, 18, 0, "PARTM5_RAMSEY_SQ416_HUNTER_03");
    TA_WAITING(18, 0, 8, 0, "PARTM5_RAMSEY_SQ416_HUNTER_03");
}

func void RTN_SQ416_RAMSEYHOUSE_SMALLTALK_6389() {
    TA_SMALLTALK(7, 0, 10, 0, "PARTM5_RAMSEY_SMALLTALK_01");
    TA_SMALLTALK(10, 0, 7, 0, "PARTM5_RAMSEY_SMALLTALK_01");
}

