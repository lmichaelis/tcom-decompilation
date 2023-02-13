instance VLK_6282_RUUD_VZ(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RUUD;
    GUILD = GIL_NONE;
    ID = 30024;
    VOICE = 68;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_FRIEND;
    B_SETATTRIBUTESTOLEVEL(VLK_6282_RUUD_VZ, 10);
    FIGHT_TACTIC = FAI_HUMAN_NORMAL;
    EQUIPITEM(VLK_6282_RUUD_VZ, 34000);
    CREATEINVITEMS(VLK_6282_RUUD_VZ, 33966, 1);
    CREATEINVITEMS(VLK_6282_RUUD_VZ, 33964, 1);
    B_SETNPCVISUAL(VLK_6282_RUUD_VZ, MALE, HUMHEADFATBALD, FACE_N_RUUD, 1, 35549);
    B_GIVENPCTALENTS(VLK_6282_RUUD_VZ);
    B_SETFIGHTSKILLS(VLK_6282_RUUD_VZ, 30);
    MDL_APPLYOVERLAYMDS(VLK_6282_RUUD_VZ, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(VLK_6282_RUUD_VZ, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(VLK_6282_RUUD_VZ, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(VLK_6282_RUUD_VZ, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_30024;
}

func void RTN_START_30024() {
    TA_STAYSTRAIGHT(8, 0, 22, 0, "VOLFZACKE_BEFORE_RUUD");
    TA_STAYSTRAIGHT(22, 0, 8, 0, "VOLFZACKE_BEFORE_RUUD");
}

func void RTN_FAKECAMP_30024() {
    TA_READ(8, 0, 22, 0, "VOLFZACK_MINER_AFTER_01");
    TA_READ(22, 0, 8, 0, "VOLFZACK_MINER_AFTER_01");
}

func void RTN_CAMP_30024() {
    TA_READ(8, 0, 22, 0, "VOLFZACKE_RUUD");
    TA_READ(22, 0, 8, 0, "VOLFZACKE_RUUD");
}

func void RTN_Q514_LADDER_30024() {
    TA_STAND_ARMSCROSSED(8, 0, 22, 0, "VOLFZACK_SIDEQUEST_V1_CUTTER");
    TA_STAND_ARMSCROSSED(22, 0, 8, 0, "VOLFZACK_SIDEQUEST_V1_CUTTER");
}
