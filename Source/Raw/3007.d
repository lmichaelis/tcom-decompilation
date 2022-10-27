instance NONE_202_KESSEL_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_KESSEL;
    GUILD = GIL_NONE;
    ID = 0x753a;
    VOICE = 27;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(NONE_202_KESSEL_VZ, 60);
    FIGHT_TACTIC = FAI_HUMAN_MASTER;
    EQUIPITEM(NONE_202_KESSEL_VZ, 0x9a38);
    EQUIPITEM(NONE_202_KESSEL_VZ, 0x9b1d);
    CREATEINVITEMS(NONE_202_KESSEL_VZ, 0x8650, 30);
    AIVAR[57] = TRUE;
    AIVAR[25] = TRUE;
    B_SETNPCVISUAL(NONE_202_KESSEL_VZ, MALE, HUMHEADWITHOUTPONY, FACE_N_KESSEL, 1, 0x8a3c);
    B_GIVENPCTALENTS(NONE_202_KESSEL_VZ);
    B_SETFIGHTSKILLS(NONE_202_KESSEL_VZ, 80);
    MDL_APPLYOVERLAYMDS(NONE_202_KESSEL_VZ, HUMANS1HST2);
    MDL_APPLYOVERLAYMDS(NONE_202_KESSEL_VZ, HUMANS2HST2);
    MDL_APPLYOVERLAYMDS(NONE_202_KESSEL_VZ, HUMANSBOWT2);
    MDL_APPLYOVERLAYMDS(NONE_202_KESSEL_VZ, HUMANSCBOWT2);
    DAILY_ROUTINE = RTN_START_30010;
}

func void RTN_START_30010() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VOLFZACK_02");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VOLFZACK_02");
}

func void RTN_CAMPREADY_30010() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VOLFZACK_21");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VOLFZACK_21");
}

func void RTN_GUIDEBRIDGE_NOIQ_30010() {
    TA_GUIDE_PLAYER_NOSOUND(8, 0, 22, 0, "VOLFZACK_13");
    TA_GUIDE_PLAYER_NOSOUND(22, 0, 8, 0, "VOLFZACK_13");
}

func void RTN_GUIDEBRIDGE_30010() {
    TA_GUIDE_PLAYER(8, 0, 22, 0, "VOLFZACK_14");
    TA_GUIDE_PLAYER(22, 0, 8, 0, "VOLFZACK_14");
}

func void RTN_GUIDECAMP_30010() {
    TA_GUIDE_PLAYER(8, 0, 22, 0, "VOLFZACK_12");
    TA_GUIDE_PLAYER(22, 0, 8, 0, "VOLFZACK_12");
}

func void RTN_GOCAMP_30010() {
    TA_RUNTOWP(8, 0, 22, 0, "VOLFZACK_12");
    TA_RUNTOWP(22, 0, 8, 0, "VOLFZACK_12");
}

func void RTN_CAMP_30010() {
    TA_CHECKSWD(8, 0, 22, 0, "VOLFZACK_13");
    TA_CHECKSWD(22, 0, 8, 0, "VOLFZACK_13");
}

func void RTN_FAKECAMP_30010() {
    TA_CHECKSWD(8, 0, 22, 0, "VOLFZACK_BRIDGE_CUTSCENE_KESSEL_02");
    TA_CHECKSWD(22, 0, 8, 0, "VOLFZACK_BRIDGE_CUTSCENE_KESSEL_02");
}

func void RTN_TREASURYFOLLOW_30010() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_CATACOMBS_67");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_CATACOMBS_67");
}

func void RTN_TREASURYWAIT_30010() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_TREASURY_KESSEL_CUTSCENE_01");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_TREASURY_KESSEL_CUTSCENE_01");
}

func void RTN_TREASURYFLEE_30010() {
    TA_FLEETOWP(8, 0, 22, 0, "VOLFZACK_SWORD_KESSEL");
    TA_FLEETOWP(22, 0, 8, 0, "VOLFZACK_SWORD_KESSEL");
}

func void RTN_TREASURYTIRED_30010() {
    TA_BREATH(8, 0, 22, 0, "VOLFZACK_SWORD_KESSEL");
    TA_BREATH(22, 0, 8, 0, "VOLFZACK_SWORD_KESSEL");
}

func void RTN_SWORDCUTSCENE_30010() {
    TA_STAYSTRAIGHT_NOIQ(8, 0, 22, 0, "VOLFZACK_SWORD_KESSEL");
    TA_STAYSTRAIGHT_NOIQ(22, 0, 8, 0, "VOLFZACK_SWORD_KESSEL");
}

func void RTN_DEPRESSION_30010() {
    TA_SIT_DEPRESSION(8, 0, 22, 0, "VOLFZACK_SWORD_01");
    TA_SIT_DEPRESSION(22, 0, 8, 0, "VOLFZACK_SWORD_01");
}

