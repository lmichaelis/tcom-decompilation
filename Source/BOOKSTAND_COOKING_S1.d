func void BOOKSTAND_COOKING_S1() {
    var int NDOCID;
    var int BOOKSTAND_COOKING_CHECKREAD;
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((BOOKSTAND_COOKING_CHECKREAD) == (FALSE)) {
            BOOKSTAND_COOKING_CHECKREAD = TRUE;
            B_GIVEPLAYERXP(XP_READBOOKSTAND);
        };
        NDOCID = DOC_CREATE();
        DOC_SETPAGES(NDOCID, 2);
        DOC_SETPAGE(NDOCID, 0, "Book_KM_03_L.tga", 0);
        DOC_SETPAGE(NDOCID, 1, "Book_KM_03_R.tga", 0);
        DOC_SETFONT(NDOCID, -(1), FONT_BOOK);
        DOC_SETMARGINS(NDOCID, 0, 190, 15, 40, 15, 1);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_COOKING_1);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_COOKING_2);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_COOKING_3);
        DOC_SETMARGINS(NDOCID, 1, 15, 15, 225, 15, 1);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_COOKING_4);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_COOKING_5);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_COOKING_6);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_COOKING_7);
        DOC_SHOW(NDOCID);
    };
}

