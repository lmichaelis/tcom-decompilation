instance MIL_6385_SAMBOR_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_SAMBOR;
    GUILD = GIL_MIL;
    ID = 50074;
    VOICE = 66;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[15] = TRUE;
    B_SETATTRIBUTESTOLEVEL(MIL_6385_SAMBOR_Q602, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(MIL_6385_SAMBOR_Q602, MALE, HUMHEADWITHOUTPONY, FACE_N_SAMBOR, 1, 35493);
    MDL_APPLYOVERLAYMDS(MIL_6385_SAMBOR_Q602, HUMANSWOUNDEDMDS);
    B_GIVENPCTALENTS(MIL_6385_SAMBOR_Q602);
    B_SETFIGHTSKILLS(MIL_6385_SAMBOR_Q602, 29);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(MIL_6385_SAMBOR_Q602);
    DAILY_ROUTINE = RTN_START_50074;
}

func void RTN_START_50074() {
    TA_PLUNDER_Q602(8, 0, 18, 0, "PARTE3_SAMBOR");
    TA_PLUNDER_Q602(18, 0, 8, 0, "PARTE3_SAMBOR");
}

