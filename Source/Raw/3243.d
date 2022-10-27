instance VLK_6407_RAMHA_Q602(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_RAMHA;
    GUILD = GIL_NONE;
    ID = 0xc406;
    VOICE = 16;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    B_SETATTRIBUTESTOLEVEL(VLK_6407_RAMHA_Q602, 30);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    AIVAR[96] = -(1);
    B_SETNPCVISUAL(VLK_6407_RAMHA_Q602, FEMALE, HUMHEADBABE4, FACE_WB_RAMHA, 7, 0x8b11);
    MDL_APPLYOVERLAYMDS(VLK_6407_RAMHA_Q602, HUMANSBABEMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_6407_RAMHA_Q602);
    B_GIVENPCTALENTS(VLK_6407_RAMHA_Q602);
    B_SETFIGHTSKILLS(VLK_6407_RAMHA_Q602, 40);
    MDL_APPLYOVERLAYMDS(VLK_6407_RAMHA_Q602, HUMANS1HST1);
    MDL_APPLYOVERLAYMDS(VLK_6407_RAMHA_Q602, HUMANS2HST1);
    MDL_APPLYOVERLAYMDS(VLK_6407_RAMHA_Q602, HUMANSBOWT1);
    MDL_APPLYOVERLAYMDS(VLK_6407_RAMHA_Q602, HUMANSCBOWT1);
    DAILY_ROUTINE = RTN_START_50182;
}

func void RTN_START_50182() {
    TA_SEARCH_SCARED_Q602(7, 0, 22, 0, "PARTE3_RAMHA");
    TA_SEARCH_SCARED_Q602(22, 0, 7, 0, "PARTE3_RAMHA");
}
