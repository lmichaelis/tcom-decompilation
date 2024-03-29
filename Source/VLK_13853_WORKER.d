instance VLK_13853_WORKER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_HOUSEMAID;
    GUILD = GIL_VLK;
    ID = 13853;
    VOICE = 16;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(VLK_13853_WORKER, 10);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(VLK_13853_WORKER, FEMALE, HUMHEADBABE4, FACE_WN_CITIZEN121, 5, 35597);
    MDL_APPLYOVERLAYMDS(VLK_13853_WORKER, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_13853_WORKER);
    B_GIVENPCTALENTS(VLK_13853_WORKER);
    B_SETFIGHTSKILLS(VLK_13853_WORKER, 20);
    DAILY_ROUTINE = RTN_START_13853;
    AIVAR[70] = NPC_AMB_CITY_CITIZEN;
}

func void RTN_START_13853() {
    TA_COOK_STOVE(8, 15, 11, 0, "PARTM4_VOLKERGUARDS_HOUSE_STOVE");
    TA_STAND_SWEEPING(11, 0, 12, 30, "PARTM4_VOLKERGUARDS_HOUSE_SWEEP_02");
    TA_SIT_BENCH(12, 30, 14, 2, "PARTM8_BENCH_27");
    TA_STAND_SWEEPING(14, 2, 15, 0, "PARTM4_VOLKERGUARDS_HOUSE_SWEEP_01");
    TA_COOK_STOVE(15, 0, 19, 0, "PARTM4_VOLKERGUARDS_HOUSE_STOVE");
    TA_SLEEP(19, 0, 8, 15, "PARTM1_HOUSE01_BED_05");
}

