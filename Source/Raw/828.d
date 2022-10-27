func void USE_BOOKSTANDSQ509_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        NDOCID = DOC_CREATE();
        DOC_SETPAGES(NDOCID, 2);
        DOC_SETPAGE(NDOCID, 0, "Book_Red_L.tga", 0);
        DOC_SETPAGE(NDOCID, 1, "Book_Red_R.tga", 0);
        DOC_SETMARGINS(NDOCID, 0, 275, 20, 30, 20, 1);
        DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
        DOC_PRINTLINE(NDOCID, 0, WRITTENTEXT_BOOKSTANDSQ50_1);
        DOC_SETFONT(NDOCID, 0, FONT_BOOK);
        DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_BOOKSTANDSQ50_2);
        DOC_SETMARGINS(NDOCID, -(1), 30, 20, 275, 20, 1);
        DOC_SETFONT(NDOCID, 1, FONT_BOOKHEADLINE);
        DOC_PRINTLINE(NDOCID, 1, WRITTENTEXT_BOOKSTANDSQ50_3);
        DOC_SETFONT(NDOCID, 1, FONT_BOOK);
        DOC_PRINTLINES(NDOCID, 1, WRITTENTEXT_BOOKSTANDSQ50_4);
        DOC_SHOW(NDOCID);
        if ((SQ509_BODOWINDIARY_01_READ) == (FALSE)) {
            SQ509_BODOWINDIARY_01_READ = TRUE;
            B_LOGENTRY(TOPIC_SQ509, LOG_SQ509_BODOWINDIARY_01);
            SQ509_PREPAREBODOWIN();
        };
    };
}

instance USE_BOOKSTANDSQ509_S1.HER(C_NPC)
var int USE_BOOKSTANDSQ509_S1.NDOCID = 0;
