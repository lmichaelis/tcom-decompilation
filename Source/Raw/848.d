func void BOOKSTAND_LORE_ERRORSWATERMAGES_02_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((BOOKSTAND_LORE_ERRORSWATERMAGES_02_CHECKREAD) == (FALSE)) {
            BOOKSTAND_LORE_ERRORSWATERMAGES_02_CHECKREAD = TRUE;
            B_GIVEPLAYERXP(XP_READLOREBOOKSTAND);
        };
        NDOCID = DOC_CREATE();
        DOC_SETPAGES(NDOCID, 2);
        DOC_SETPAGE(NDOCID, 0, "Book_KM_04_L.tga", 0);
        DOC_SETPAGE(NDOCID, 1, "Book_KM_04_R.tga", 0);
        DOC_SETMARGINS(NDOCID, 0, 215, 15, 40, 15, 1);
        DOC_SETFONT(NDOCID, -(1), FONT_BOOKHEADLINE);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_ERRORSWATERMAGES_02_1);
        DOC_SETFONT(NDOCID, -(1), FONT_BOOK);
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_ERRORSWATERMAGES_02_2);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_ERRORSWATERMAGES_02_3);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_ERRORSWATERMAGES_02_4);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_ERRORSWATERMAGES_02_5);
        DOC_SETMARGINS(NDOCID, 1, 15, 15, 225, 15, 1);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_LORE_ERRORSWATERMAGES_02_6);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_LORE_ERRORSWATERMAGES_02_7);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_LORE_ERRORSWATERMAGES_02_8);
        DOC_SHOW(NDOCID);
    };
}

instance BOOKSTAND_LORE_ERRORSWATERMAGES_02_S1.HER(C_NPC)
var int BOOKSTAND_LORE_ERRORSWATERMAGES_02_S1.BOOKSTAND_LORE_ERRORSWATERMAGES_02_CHECKREAD = 0;
var int BOOKSTAND_LORE_ERRORSWATERMAGES_02_S1.NDOCID = 0;
