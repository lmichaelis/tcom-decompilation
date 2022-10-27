func void BOOKSTAND_LORE_BEGINNINGANDEND_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((BOOKSTAND_LORE_BEGINNINGANDEND_CHECKREAD) == (FALSE)) {
            BOOKSTAND_LORE_BEGINNINGANDEND_CHECKREAD = TRUE;
            B_GIVEPLAYERXP(XP_READLOREBOOKSTAND);
            NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS_MAX, 5);
            NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, 5);
            PRINTSCREENS(PRINT_LEARN_HP5, -(1), -(1), FONT_SCREEN, 4);
            MARVINTRANSFORMHP = (MARVINTRANSFORMHP) + (5);
            SND_PLAY("LEVELUP");
        };
        NDOCID = DOC_CREATE();
        DOC_SETPAGES(NDOCID, 2);
        DOC_SETPAGE(NDOCID, 0, "Book_KM_01_L.tga", 0);
        DOC_SETPAGE(NDOCID, 1, "Book_KM_01_R.tga", 0);
        DOC_SETMARGINS(NDOCID, 0, 215, 15, 40, 15, 1);
        DOC_SETFONT(NDOCID, -(1), FONT_BOOKHEADLINE);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_BEGINNINGANDEND_1);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_BEGINNINGANDEND_2);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_BEGINNINGANDEND_3);
        DOC_SETMARGINS(NDOCID, 1, 15, 15, 225, 15, 1);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_LORE_BEGINNINGANDEND_4);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_LORE_BEGINNINGANDEND_5);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_LORE_BEGINNINGANDEND_6);
        DOC_SHOW(NDOCID);
    };
}

instance BOOKSTAND_LORE_BEGINNINGANDEND_S1.HER(C_NPC)
var int BOOKSTAND_LORE_BEGINNINGANDEND_S1.BOOKSTAND_LORE_BEGINNINGANDEND_CHECKREAD = 0;
var int BOOKSTAND_LORE_BEGINNINGANDEND_S1.NDOCID = 0;
