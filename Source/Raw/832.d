func void BOOKSTAND_CRAFT_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((BOOKSTAND_CRAFT_CHECKREAD) == (FALSE)) {
            BOOKSTAND_CRAFT_CHECKREAD = TRUE;
            B_GIVEPLAYERXP(XP_READBOOKSTAND);
        };
        NDOCID = DOC_CREATE();
        DOC_SETPAGES(NDOCID, 2);
        DOC_SETPAGE(NDOCID, 0, "Book_KM_01_L.tga", 0);
        DOC_SETPAGE(NDOCID, 1, "Book_KM_01_R.tga", 0);
        DOC_SETFONT(NDOCID, -(1), FONT_BOOK);
        DOC_SETMARGINS(NDOCID, 0, 190, 15, 15, 15, 1);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_CRAFT_1);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_CRAFT_2);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_CRAFT_3);
        DOC_SETMARGINS(NDOCID, -(1), 15, 15, 195, 15, 1);
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_CRAFT_4);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_CRAFT_5);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_CRAFT_6);
        DOC_SHOW(NDOCID);
    };
}

instance BOOKSTAND_CRAFT_S1.HER(C_NPC)
var int BOOKSTAND_CRAFT_S1.BOOKSTAND_CRAFT_CHECKREAD = 0;
var int BOOKSTAND_CRAFT_S1.NDOCID = 0;
