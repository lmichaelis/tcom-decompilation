instance VLK_5401_BRAD(NPC_DEFAULT) {
    NPC_DEFAULT();
    NAME[0] = NPCNAME_BRAD;
    GUILD = GIL_BDT;
    ID = 5401;
    VOICE = 55;
    FLAGS = 0;
    NPCTYPE = NPCTYPE_MAIN;
    AIVAR[61] = TRUE;
    B_SETATTRIBUTESTOLEVEL(VLK_5401_BRAD, 40);
    FIGHT_TACTIC = FAI_HUMAN_STRONG;
    CREATEINVITEMS(VLK_5401_BRAD, 33964, 2);
    CREATEINVITEMS(VLK_5401_BRAD, 34735, 1);
    B_SETNPCVISUAL(VLK_5401_BRAD, MALE, HUMHEADBALD, FACE_N_BRAD, BODYTEX_N_BRAD, -(1));
    MDL_APPLYOVERLAYMDS(VLK_5401_BRAD, HUMANSMILITIAMDS);
    B_CREATEWEAPONINV();
    B_CREATEAMBIENTINV(VLK_5401_BRAD);
    B_GIVENPCTALENTS(VLK_5401_BRAD);
    B_SETFIGHTSKILLS(VLK_5401_BRAD, 50);
    DAILY_ROUTINE = RTN_BRAD_5401;
}

func void RTN_BRAD_5401() {
    TA_PEE(8, 0, 23, 0, "PART3_EASTEREGG_OHSHIT");
    TA_PEE(23, 0, 8, 0, "PART3_EASTEREGG_OHSHIT");
}

