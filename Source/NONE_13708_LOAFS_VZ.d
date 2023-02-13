instance NONE_13708_LOAFS_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_LOAFS;
    GUILD = GIL_NONE;
    ID = 137080;
    VOICE = 48;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(NONE_13708_LOAFS_VZ, 35);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(NONE_13708_LOAFS_VZ, 34015);
    B_SETNPCVISUAL(NONE_13708_LOAFS_VZ, MALE, HUMHEADPONY, FACE_L_LOAFS, BODYTEX_L_HOMELESS02, 35588);
    MDL_APPLYOVERLAYMDS(NONE_13708_LOAFS_VZ, HUMANSPOCKETWALKMDS);
    B_GIVENPCTALENTS(NONE_13708_LOAFS_VZ);
    B_SETFIGHTSKILLS(NONE_13708_LOAFS_VZ, 40);
    MDL_APPLYOVERLAYMDS(NONE_13708_LOAFS_VZ, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(NONE_13708_LOAFS_VZ, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(NONE_13708_LOAFS_VZ, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(NONE_13708_LOAFS_VZ, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_137080;
}

func void RTN_START_137080() {
    TA_STAND_ARMSCROSSED(22, 0, 8, 0, "VOLFZACKE_BEFORE_LUCAS");
    TA_STAND_ARMSCROSSED(8, 0, 22, 0, "VOLFZACKE_BEFORE_LUCAS");
}

func void RTN_FAKECAMP_137080() {
    TA_PLUNDER(22, 0, 8, 0, "VOLFZACK_MINER_AFTER_03");
    TA_PLUNDER(8, 0, 22, 0, "VOLFZACK_MINER_AFTER_03");
}

func void RTN_CAMP_137080() {
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACKE_LUCAS");
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACKE_LUCAS");
}

func void RTN_Q514_KITCHEN_137080() {
    TA_TREASURE(22, 0, 8, 0, "VOLFZACK_KITCHEN_05");
    TA_TREASURE(8, 0, 22, 0, "VOLFZACK_KITCHEN_05");
}

func void RTN_Q514_TRAININGHALL_137080() {
    TA_TREASURE(22, 0, 8, 0, "VOLFZACK_TRAININGHALL_ROCKS");
    TA_TREASURE(8, 0, 22, 0, "VOLFZACK_TRAININGHALL_ROCKS");
}

func void RTN_Q514_TRAININGHALL_SCARED_137080() {
    TA_SEARCH_SCARED(8, 0, 22, 0, "VOLFZACK_TRAININGHALL_WORKER");
    TA_SEARCH_SCARED(22, 0, 8, 0, "VOLFZACK_TRAININGHALL_WORKER");
}

