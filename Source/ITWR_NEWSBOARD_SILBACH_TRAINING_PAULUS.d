instance ITWR_NEWSBOARD_SILBACH_TRAINING_PAULUS(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_TRAINING_PAULUS;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_TRAINING_PAULUS;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_TRAINING_PAULUS() {
    var int NDOCID;
    TEACHER_LOGENTRY_PAULUS();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_PRINTLINE(NDOCID, 0, "");
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRAINING_PAULUS_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRAINING_PAULUS_2);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_TRAINING_FOLKARD(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_TRAINING_FOLKARD;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_TRAINING_FOLKARD;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_TRAINING_FOLKARD() {
    var int NDOCID;
    TEACHER_LOGENTRY_FOLKARD();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_02.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_PRINTLINE(NDOCID, 0, "");
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRAINING_FOLKARD_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRAINING_FOLKARD_2);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_TRAINING_MARKUS(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_TRAINING_MARKUS;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_TRAINING_MARKUS;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_TRAINING_MARKUS() {
    var int NDOCID;
    TEACHER_LOGENTRY_MARKUS();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_PRINTLINE(NDOCID, 0, "");
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRAINING_MARKUS_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRAINING_MARKUS_2);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_TRAINING_KIPPER(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_TRAINING_KIPPER;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_TRAINING_KIPPER;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_TRAINING_KIPPER() {
    var int NDOCID;
    TEACHER_LOGENTRY_KIPPER();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_02.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_PRINTLINE(NDOCID, 0, "");
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRAINING_KIPPER_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_TRAINING_STONE(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_TRAINING_STONE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_TRAINING_STONE;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_TRAINING_STONE() {
    var int NDOCID;
    TEACHER_LOGENTRY_STONE();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_PRINTLINE(NDOCID, 0, "");
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRAINING_STONE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRAINING_STONE_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_TRADE(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_TRADE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_TRADE;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_TRADE() {
    var int NDOCID;
    TEACHER_SILBACH_LOGENTRY_TRADE();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRADE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRADE_2);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRADE_3);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRADE_4);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRADE_5);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRADE_6);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRADE_7);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRADE_8);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_TRADE_9);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_FRIDA(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_FRIDA;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_FRIDA;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_FRIDA() {
    var int NDOCID;
    if ((NEWSBOARD_LOGENTRY_SILBACH_FRIDA) == (FALSE)) {
        NEWSBOARD_LOGENTRY_SILBACH_FRIDA = TRUE;
        LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
        B_LOGENTRY(TOPIC_BARTER, LOG_NEWSBOARD_SILBACH_FRIDA);
    };
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_02.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_PRINTLINE(NDOCID, 0, "");
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_FRIDA_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_FRIDA_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_FRIDA_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_NOBMEAL(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_NOBMEAL;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_NOBMEAL;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_NOBMEAL() {
    var int NDOCID;
    if ((NEWSBOARD_LOGENTRY_SILBACH_NOB) == (FALSE)) {
        NEWSBOARD_LOGENTRY_SILBACH_NOB = TRUE;
        LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
        B_LOGENTRY(TOPIC_BARTER, LOG_NEWSBOARD_SILBACH_JILL);
    };
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_NOBMEAL_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_NOBMEAL_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_NOBMEAL_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_NOBMEAL_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_GOLDMINE(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_GOLDMINE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_GOLDMINE;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_GOLDMINE() {
    var int NDOCID;
    var int NEWSBOARD_LOGENTRY_SILBACH_GOLDMINE;
    if (((NEWSBOARD_LOGENTRY_SILBACH_GOLDMINE) == (FALSE)) && ((SQ119_CANGOTOARAXOSMINE) == (FALSE))) {
        NEWSBOARD_LOGENTRY_SILBACH_GOLDMINE = TRUE;
        if ((FASTTRAVEL_ARAXOS_LOGENTRY_CHECK) == (FALSE)) {
            LOG_CREATETOPIC(TOPIC_GOLDMINE, LOG_NOTE);
            B_LOGENTRY(TOPIC_GOLDMINE, LOG_GOLDMINE_CHECKOUT_V2);
        } else {
            LOG_CREATETOPIC(TOPIC_GOLDMINE, LOG_NOTE);
            B_LOGENTRY(TOPIC_GOLDMINE, LOG_GOLDMINE_CHECKOUT_V1);
        };
    };
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 50, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_GOLDMINE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_GOLDMINE_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_GOLDMINE_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_GOLDMINE_4);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_GOLDMINE_5);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_GOLDMINE_6);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_REMY(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_REMY;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_REMY;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_REMY() {
    var int NDOCID;
    if ((NEWSBOARD_LOGENTRY_SILBACH_REMY) == (FALSE)) {
        NEWSBOARD_LOGENTRY_SILBACH_REMY = TRUE;
        LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
        B_LOGENTRY(TOPIC_BARTER, LOG_NEWSBOARD_SILBACH_REMY);
    };
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REMY_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REMY_2);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REMY_3);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REMY_4);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REMY_5);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REMY_6);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_LOKVAR(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_LOKVAR;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_LOKVAR;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_LOKVAR() {
    var int NDOCID;
    var int NEWSBOARD_LOGENTRY_SILBACH_LOKVAR;
    if ((NEWSBOARD_LOGENTRY_SILBACH_LOKVAR) == (FALSE)) {
        NEWSBOARD_LOGENTRY_SILBACH_LOKVAR = TRUE;
        LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
        B_LOGENTRY(TOPIC_BARTER, LOG_NEWSBOARD_SILBACH_LOKVAR);
    };
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_02.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_LOKVAR_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_LOKVAR_2);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_WATCHOUT(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_WATCHOUT;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_WATCHOUT;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_WATCHOUT() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_WATCHOUT_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_WATCHOUT_2);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_WATCHOUT_3);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_WATCHOUT_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_BEAST(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_BEAST;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_BEAST;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_BEAST() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_BEAST_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_BEAST_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_BEAST_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_REFUGEE(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_REFUGEE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_REFUGEE;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_REFUGEE() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REFUGEE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REFUGEE_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REFUGEE_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REFUGEE_4);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REFUGEE_5);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_REFUGEE_6);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_RUNES(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_RUNES;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_RUNES;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_RUNES() {
    var int NDOCID;
    if ((SELLINGRUNES_INFO) == (FALSE)) {
        SELLINGRUNES_INFO = TRUE;
        LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
        B_LOGENTRY(TOPIC_BARTER, LOG_CITYBARTER_LAUDUS);
    };
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_RUNES_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_RUNES_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_RUNES_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_RUNES_4);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_RUNES_5);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_RUNES_6);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_SILBACH_NEWS_CARDEN(C_ITEM) {
    NAME = NAME_NEWSBOARD_SILBACH_CARDEN;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_SILBACH_NEWS_CARDEN;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_SILBACH_NEWS_CARDEN() {
    var int NDOCID;
    var int SILBACH_NEWS_CARDEN_LOGENTRY;
    if ((SILBACH_NEWS_CARDEN_LOGENTRY) == (FALSE)) {
        SILBACH_NEWS_CARDEN_LOGENTRY = TRUE;
        LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
        B_LOGENTRY(TOPIC_BARTER, LOG_NEWSBOARD_SILBACH_CARDEN);
    };
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETFONT(NDOCID, 0, FONT_BOOKHEADLINE);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_CARDEN_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_CARDEN_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_CARDEN_3);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_CARDEN_4);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_CARDEN_5);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_CARDEN_6);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_SILBACH_NEWS_CARDEN_7);
    DOC_SHOW(NDOCID);
}
