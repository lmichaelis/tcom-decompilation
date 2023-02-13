func void BOOKSTAND_MINING_S1() {
    var int NDOCID;
    var int BOOK_TEACH_HOWMANY;
    var int WERT;
    var int BOOKSTAND_MINING_CHECKREAD;
    var C_NPC HER;
    HER = HLP_GETNPC(50091);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if ((BOOKSTAND_MINING_CHECKREAD) == (FALSE)) {
            BOOKSTAND_MINING_CHECKREAD = TRUE;
            B_GIVEPLAYERXP(XP_READBOOKSTAND);
            if ((HERO_HACKCHANCE) < (97)) {
                WERT = 3;
                PRINTSCREENS(CONCATSTRINGS(PRINT_LEARN_MINE, INTTOSTRING(WERT)), -(1), -(1), FONT_SCREEN, 5);
                HERO_HACKCHANCE = (HERO_HACKCHANCE) + (WERT);
            } else {
                BOOK_TEACH_HOWMANY = (100) - (HERO_HACKCHANCE);
                B_UPGRADE_HERO_HACKCHANCE(BOOK_TEACH_HOWMANY);
                PRINTSCREENS(CONCATSTRINGS(PRINT_LEARN_MINE, INTTOSTRING(BOOK_TEACH_HOWMANY)), -(1), -(1), FONT_SCREEN, 5);
            };
            SND_PLAY("LEVELUP");
        };
        NDOCID = DOC_CREATE();
        DOC_SETPAGES(NDOCID, 2);
        DOC_SETPAGE(NDOCID, 0, "Book_KM_02_L.tga", 0);
        DOC_SETPAGE(NDOCID, 1, "Book_KM_02_R.tga", 0);
        DOC_SETFONT(NDOCID, -(1), FONT_BOOK);
        DOC_SETMARGINS(NDOCID, 0, 210, 15, 40, 15, 1);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_MINING_1);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_MINING_2);
        DOC_PRINTLINES(NDOCID, 0, "");
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTAND_MINING_3);
        DOC_SETMARGINS(NDOCID, 1, 15, 15, 235, 15, 1);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_MINING_4);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_MINING_5);
        DOC_PRINTLINES(NDOCID, 1, "");
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTAND_MINING_6);
        DOC_SHOW(NDOCID);
    };
}
