instance VLK_6358_MIROH_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_MIROH;
    GUILD = GIL_NONE;
    ID = 63580;
    VOICE = 72;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(VLK_6358_MIROH_VZ, 35);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    EQUIPITEM(VLK_6358_MIROH_VZ, 34015);
    B_SETNPCVISUAL(VLK_6358_MIROH_VZ, MALE, HUMHEADPSIONIC, FACE_B_MIROH, 3, 35578);
    MDL_APPLYOVERLAYMDS(VLK_6358_MIROH_VZ, HUMANSTIREDMDS);
    B_GIVENPCTALENTS(VLK_6358_MIROH_VZ);
    B_SETFIGHTSKILLS(VLK_6358_MIROH_VZ, 40);
    MDL_APPLYOVERLAYMDS(VLK_6358_MIROH_VZ, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(VLK_6358_MIROH_VZ, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(VLK_6358_MIROH_VZ, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(VLK_6358_MIROH_VZ, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_63580;
}

func void RTN_START_63580() {
    TA_PLUNDER(22, 0, 8, 0, "VOLFZACKE_BEFORE_NIRKO");
    TA_PLUNDER(8, 0, 22, 0, "VOLFZACKE_BEFORE_NIRKO");
}

func void RTN_FAKECAMP_63580() {
    TA_PLUNDER(22, 0, 8, 0, "VOLFZACK_MINER_AFTER_02");
    TA_PLUNDER(8, 0, 22, 0, "VOLFZACK_MINER_AFTER_02");
}

func void RTN_CAMP_63580() {
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACKE_RECOON");
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACKE_RECOON");
}

func void RTN_Q514_KITCHEN_63580() {
    TA_TREASURE(22, 0, 8, 0, "VOLFZACK_KITCHEN_05");
    TA_TREASURE(8, 0, 22, 0, "VOLFZACK_KITCHEN_05");
}

func void RTN_Q514_TRAININGHALL_63580() {
    TA_TREASURE(22, 0, 8, 0, "VOLFZACK_TRAININGHALL_ROCKS");
    TA_TREASURE(8, 0, 22, 0, "VOLFZACK_TRAININGHALL_ROCKS");
}

func void RTN_Q514_TRAININGHALL_SCARED_63580() {
    TA_SEARCH_SCARED(8, 0, 22, 0, "VOLFZACK_TRAININGHALL_WORKER");
    TA_SEARCH_SCARED(22, 0, 8, 0, "VOLFZACK_TRAININGHALL_WORKER");
}

