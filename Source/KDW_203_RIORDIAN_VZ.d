instance KDW_203_RIORDIAN_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RIORDIAN;
    GUILD = GIL_KDW;
    ID = 30005;
    VOICE = 19;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    AIVAR[51] = MAGIC_ALWAYS;
    B_SETATTRIBUTESTOLEVEL(KDW_203_RIORDIAN_VZ, 60);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(KDW_203_RIORDIAN_VZ, MALE, HUMHEADBALD, FACE_P_RIORDIAN, 0, 33573);
    MDL_APPLYOVERLAYMDS(KDW_203_RIORDIAN_VZ, HUMANSMAGEMDS);
    B_GIVENPCTALENTS(KDW_203_RIORDIAN_VZ);
    B_SETFIGHTSKILLS(KDW_203_RIORDIAN_VZ, 60);
    DAILY_ROUTINE = RTN_START_30005;
}

func void RTN_START_30005() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "VOLFZACK_01");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "VOLFZACK_01");
}

func void RTN_FOLLOW_30005() {
    TA_FOLLOW_PLAYER(8, 0, 22, 0, "PART5_RIORDIAN_WAIT");
    TA_FOLLOW_PLAYER(22, 0, 8, 0, "PART5_RIORDIAN_WAIT");
}

func void RTN_BEFOREBRIDGE_WAIT_30005() {
    TA_SEARCH_ONLY(8, 0, 22, 0, "VOLFZACKE_BEFOREBRIDGE_RIORDIAN");
    TA_SEARCH_ONLY(22, 0, 8, 0, "VOLFZACKE_BEFOREBRIDGE_RIORDIAN");
}

func void RTN_BRIDGECUTSCENE_30005() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_BRIDGE_CUTSCENE_KESSEL");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_BRIDGE_CUTSCENE_KESSEL");
}

func void RTN_CAMP_30005() {
    TA_READ(8, 0, 22, 0, "VOLFZACKE_RIORDIAN");
    TA_READ(22, 0, 8, 0, "VOLFZACKE_RIORDIAN");
}

func void RTN_FAKECAMP_30005() {
    TA_READ(8, 0, 22, 0, "VOLFZACKE_RIORDIAN");
    TA_READ(22, 0, 8, 0, "VOLFZACKE_RIORDIAN");
}

func void RTN_LOOKINGFORUS_30005() {
    TA_SEARCH_ONLY(8, 0, 22, 0, "VOLFZACK_18");
    TA_SEARCH_ONLY(22, 0, 8, 0, "VOLFZACK_18");
}

func void RTN_LEAVE_30005() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACK_10");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACK_10");
}

