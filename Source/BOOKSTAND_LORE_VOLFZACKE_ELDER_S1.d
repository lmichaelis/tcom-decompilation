func void BOOKSTAND_LORE_VOLFZACKE_ELDER_S1() {
    var int NDOCID;
    var int BOOKSTAND_LORE_VOLFZACKE_ELDER_CHECKREAD;
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((BOOKSTAND_LORE_VOLFZACKE_ELDER_CHECKREAD) == (FALSE)) {
            BOOKSTAND_LORE_VOLFZACKE_ELDER_CHECKREAD = TRUE;
            B_GIVEPLAYERXP(XP_READLOREBOOKSTAND);
        };
        NDOCID = DOC_CREATE();
        DOC_SETPAGES(NDOCID, 2);
        DOC_SETPAGE(NDOCID, 0, "Book_KM_04_L.tga", 0);
        DOC_SETPAGE(NDOCID, 1, "Book_KM_04_R.tga", 0);
        DOC_SETFONT(NDOCID, -(1), FONT_BOOK);
        DOC_SETMARGINS(NDOCID, 0, 210, 15, 40, 15, 1);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_VOLFZACKE_ELDER_1);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_LORE_VOLFZACKE_ELDER_2);
        DOC_SETMARGINS(NDOCID, 1, 15, 15, 235, 15, 1);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_LORE_VOLFZACKE_ELDER_3);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_LORE_VOLFZACKE_ELDER_4);
        DOC_SHOW(NDOCID);
    };
}

