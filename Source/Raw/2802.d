instance DJG_10000_PETER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_BAUER;
    GUILD = GIL_DJG;
    ID = 0x2710;
    VOICE = 28;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_AMBIENT;
    B_SETATTRIBUTESTOLEVEL(DJG_10000_PETER, 6);
    FIGHT_TACTIC = FAI_HUMAN_COWARD;
    B_SETNPCVISUAL(DJG_10000_PETER, MALE, HUMHEADPONY, FACE_P_PETER, 0, 0x8af4);
    MDL_APPLYOVERLAYMDS(DJG_10000_PETER, HUMANSRELAXEDMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(DJG_10000_PETER);
    B_GIVENPCTALENTS(DJG_10000_PETER);
    B_SETFIGHTSKILLS(DJG_10000_PETER, 15);
    DAILY_ROUTINE = RTN_START_10000;
    AIVAR[70] = NPC_AMB_FARMER_WOLFSDEN;
}

func void RTN_START_10000() {
    TA_PLUNDER(6, 0, 14, 0, "PART16_PATH_26");
    TA_SIT_BENCH(14, 0, 18, 0, "PART16_OUTDOORHOUSE01_BENCH01");
    TA_STAND_EATING(18, 0, 21, 0, "PART16_PATH_27");
    TA_SIT_BENCH(21, 0, 23, 0, "PART16_OUTDOORHOUSE01_BENCH01");
    TA_SLEEP(23, 0, 6, 0, "PART16_OUTDOORHOUSE01_BED01");
}

