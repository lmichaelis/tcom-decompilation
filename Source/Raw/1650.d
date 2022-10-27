instance VLK_6000_FISHMONGER(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NAME_FISHMONGER;
    GUILD = GIL_VLK;
    ID = 0x1770;
    VOICE = 43;
    FLAGS = 2;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6000_FISHMONGER, 20);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    B_SETNPCVISUAL(VLK_6000_FISHMONGER, MALE, HUMHEADPSIONIC, FACE_P_FISHMONGER01, 0, 0x8ade);
    MDL_APPLYOVERLAYMDS(VLK_6000_FISHMONGER, HUMANSARROGANCEMDS);
    B_CREATEWEAPONINV();
    B_GIVENPCTALENTS(VLK_6000_FISHMONGER);
    B_SETFIGHTSKILLS(VLK_6000_FISHMONGER, 30);
    DAILY_ROUTINE = RTN_START_6000;
}

func void RTN_START_6000() {
    TA_FISHTABLE(7, 0, 11, 0, "HARBOUR_FISHTABLE_CUT_01");
    TA_STAND_ARMSCROSSED(11, 0, 16, 0, "HARBOUR_MARKETSTALL_01");
    TA_FISHTABLE(16, 0, 18, 0, "HARBOUR_FISHTABLE_CUT_01");
    TA_WAITING(18, 0, 23, 45, "HARBOUR_MARKETSTALL_01");
    TA_SLEEP(23, 45, 7, 0, "HARBOUR_HOUSE01_25");
}

func void RTN_KQ403_EVENT_6000() {
    TA_BREATH(8, 0, 11, 0, "HARBOUR_KQ403_04");
    TA_BREATH(11, 0, 8, 0, "HARBOUR_KQ403_04");
}

func void RTN_TAVERN_6000() {
    TA_FISHTABLE(7, 0, 11, 0, "HARBOUR_FISHTABLE_CUT_01");
    TA_STAND_ARMSCROSSED(11, 0, 16, 0, "HARBOUR_MARKETSTALL_01");
    TA_FISHTABLE(16, 0, 18, 0, "HARBOUR_FISHTABLE_CUT_01");
    TA_WAITING(18, 0, 23, 45, "HARBOUR_MARKETSTALL_01");
    TA_SIT_CHAIR(23, 45, 7, 0, "HARBOUR_TAVERN_GUEST_03");
}

