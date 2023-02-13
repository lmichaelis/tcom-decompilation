func void BOOKSTAND_LORE_TROLL_S1() {
    var int NDOCID;
    var int BOOKSTAND_LORE_TROLL_CHECKREAD;
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((BOOKSTAND_LORE_TROLL_CHECKREAD) == (FALSE)) {
            BOOKSTAND_LORE_TROLL_CHECKREAD = TRUE;
            B_GIVEPLAYERXP(XP_READLOREBOOKSTAND);
        };
        NDOCID = DOC_CREATE();
        DOC_SETPAGES(NDOCID, 2);
        DOC_SETPAGE(NDOCID, 0, "Book_KM_03_L.tga", 0);
        DOC_SETPAGE(NDOCID, 1, "Book_KM_03_R.tga", 0);
        DOC_SETMARGINS(NDOCID, 0, 215, 15, 45, 15, 1);
        DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, NAME_TROLL);
        DOC_SETFONT(NDOCID, -(1), FONT_BOOK);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_TROLL_1);
        DOC_SETMARGINS(NDOCID, 1, 15, 15, 240, 15, 1);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_LORE_TROLL_2);
        DOC_SHOW(NDOCID);
    };
}

