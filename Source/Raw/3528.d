func void Q303_FINISHQUEST() {
    B_GIVEPLAYERXP(XP_Q303_FINISH);
    LOG_SETSTATUS(_@(MIS_Q303), TOPIC_Q303, LOG_SUCCESS);
    if ((NPC_HASITEMS(HERO, 0x9236)) >= (1)) {
        NPC_REMOVEINVITEMS(HERO, 0x9236, NPC_HASITEMS(HERO, 0x9236));
        CREATEINVITEMS(HERO, 0x87b3, 1);
    };
    if ((Q301_SPOTCORPSELOGENTRY) != (3)) {
        FF_APPLYONCEEXTGT(0xfabe, 0, -(1));
        Q301_SPOTCORPSELOGENTRY = 3;
    };
    NPC_REMOVEINVITEMS(HERO, 0x9237, NPC_HASITEMS(HERO, 0x9237));
}

func void Q303_CHANGEBODYGUARDSRTN() {
    B_STARTOTHERROUTINE(PIR_1308_SIMON, "Q303_SMALLTALK");
    NPC_REFRESH(PIR_1308_SIMON);
    B_STARTOTHERROUTINE(PIR_1306_RODRIGO, "Q303_SMALLTALK");
    NPC_REFRESH(PIR_1306_RODRIGO);
}

func void DIA_RODRIGO_ABOUTSTAN() {
    AI_OUTPUT(OTHER, SELF, "DIA_Rodrigo_Stan_15_01");
}
