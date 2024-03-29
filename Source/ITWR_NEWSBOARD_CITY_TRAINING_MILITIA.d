instance ITWR_NEWSBOARD_CITY_TRAINING_MILITIA(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_TRAINING_MILITIA;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_TRAINING_MILITIA;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_TRAINING_MILITIA() {
    var int NDOCID;
    LOG_CREATETOPIC(TOPIC_CITYTEACHER, LOG_NOTE);
    B_LOGENTRY(TOPIC_CITYTEACHER, LOG_TEACHER_CITY_MILITIA);
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_02.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_MILITIA_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_MILITIA_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_MILITIA_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_TRAINING_ARAXOS(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_TRAINING_ARAXOS;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_TRAINING_ARAXOS;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_TRAINING_ARAXOS() {
    var int NDOCID;
    LOG_CREATETOPIC(TOPIC_CITYTEACHER, LOG_NOTE);
    B_LOGENTRY(TOPIC_CITYTEACHER, LOG_TEACHER_CITY_ARAXOS);
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ARAXOS_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ARAXOS_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ARAXOS_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ARAXOS_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_TRAINING_NORMAN(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_TRAINING_NORMAN;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_TRAINING_NORMAN;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_TRAINING_NORMAN() {
    var int NDOCID;
    TEACHER_LOGENTRY_NORMAN();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_02.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_NORMAN_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_NORMAN_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_NORMAN_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_TRAINING_ODGAR(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_TRAINING_ODGAR;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_TRAINING_ODGAR;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_TRAINING_ODGAR() {
    var int NDOCID;
    TEACHER_LOGENTRY_ODGAR();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ODGAR_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ODGAR_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ODGAR_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_TRAINING_ALLAN(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_TRAINING_ALLAN;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_TRAINING_ALLAN;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_TRAINING_ALLAN() {
    var int NDOCID;
    TEACHER_LOGENTRY_ALLAN();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ALLAN_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ALLAN_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_ALLAN_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_TRAINING_NIRKA(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_TRAINING_NIRKA;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_TRAINING_NIRKA;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_TRAINING_NIRKA() {
    var int NDOCID;
    TEACHER_LOGENTRY_NIRKA();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_02.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_NIRKA_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_NIRKA_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_NIRKA_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_NIRKA_4);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_NIRKA_5);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_TRAINING_DACK(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_TRAINING_DACK;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_TRAINING_DACK;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_TRAINING_DACK() {
    var int NDOCID;
    TEACHER_LOGENTRY_DACK();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_DACK_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_DACK_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_DACK_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_DACK_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_TRAINING_PATRACJAN(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_TRAINING_PATRACJAN;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_TRAINING_PATRACJAN;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_TRAINING_PATRACJAN() {
    var int NDOCID;
    TEACHER_LOGENTRY_PATRACJAN();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_PATRACJAN_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_PATRACJAN_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRAINING_PATRACJAN_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_TRADE(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_TRADE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_TRADE;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_TRADE() {
    var int NDOCID;
    TRADER_CITY_LOGENTRY_TRADE();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_2);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_3);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_4);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_5);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_6);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_7);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_8);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_9);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_10);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_12);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_TRADE_13);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_HARBOUR_TRADE(C_ITEM) {
    NAME = NAME_NEWSBOARD_HARBOUR_TRADE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_HARBOUR_TRADE;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_HARBOUR_TRADE() {
    var int NDOCID;
    TRADER_HARBOUR_LOGENTRY_TRADE();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_OLD_02.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_HARBOUR_TRADE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_HARBOUR_TRADE_2);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_HARBOUR_TRADE_3);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_HARBOUR_TRADE_4);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_HARBOUR_TRADE_5);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_HARBOUR_TRADE_6);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_HARBOUR_TRADE_7);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_HARBOUR_TRADE_8);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_OLDCITY_TRADE(C_ITEM) {
    NAME = NAME_NEWSBOARD_OLDCITY_TRADE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_OLDCITY_TRADE;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_OLDCITY_TRADE() {
    var int NDOCID;
    TRADER_OLDCITY_LOGENTRY_TRADE();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_OLDCITY_TRADE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_OLDCITY_TRADE_2);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_OLDCITY_TRADE_3);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_OLDCITY_TRADE_4);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_OLDCITY_TRADE_5);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_OLDCITY_TRADE_6);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_HOUSE_01(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_HOUSE_01;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_HOUSE_01;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITWR_NEWSBOARD_CITY_NEWS_HOUSE_01_1;
    TEXT[2] = ITEMDESC_ITWR_NEWSBOARD_CITY_NEWS_HOUSE_01_2;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_HOUSE_01() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_HOUSE_01_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_HOUSE_01_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_HOUSE_01_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_HOUSE_01_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_SALTMINE(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_SALTMINE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_SALTMINE;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_SALTMINE() {
    var int NDOCID;
    var int SQ312_STARTQUEST;
    if (((LOG_GETSTATUS(MIS_SQ312)) == (0)) && ((SQ312_STARTQUEST) == (FALSE))) {
        SQ312_STARTQUEST = TRUE;
        LOG_CREATETOPIC(TOPIC_SQ312, LOG_MISSION);
        LOG_SETSTATUS(_@(MIS_SQ312), TOPIC_SQ312, LOG_RUNNING);
        B_LOGENTRY(TOPIC_SQ312, LOG_SQ312_START_V1);
    };
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_02.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SALTMINE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SALTMINE_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SALTMINE_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SALTMINE_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_LONDRAM(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_LONDRAM;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_LONDRAM;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_LONDRAM() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_LONDRAM_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_LONDRAM_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_LONDRAM_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_LONDRAM_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_VALLEY(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_VALLEY;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_VALLEY;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_VALLEY() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_VALLEY_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_VALLEY_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_VALLEY_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_VALLEY_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_SEWERS(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_SEWERS;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_SEWERS;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_SEWERS() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SEWERS_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SEWERS_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SEWERS_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINE(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SEWERS_4);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SEWERS_5);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SEWERS_6);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SEWERS_7);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_NEWREFUGEE(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_NEWREFUGEE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_NEWREFUGEE;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_NEWREFUGEE() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_NEWREFUGEE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_NEWREFUGEE_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_NEWREFUGEE_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_NEWREFUGEE_4);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_NEWREFUGEE_5);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_NEWREFUGEE_6);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_VOLKER(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_VOLKER;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_VOLKER;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_VOLKER() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_VOLKER_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_VOLKER_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_VOLKER_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_VOLKER_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_KING(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_KING;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_KING;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_KING() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_KING_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_KING_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_KING_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_KING_4);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_WOLFSDEN(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_WOLFSDEN;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_WOLFSDEN;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_WOLFSDEN() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_WOLFSDEN_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_WOLFSDEN_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_WOLFSDEN_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_DANGER(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_DANGER;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_DANGER;
    SCEMENAME = SCEME_MAP;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_DANGER() {
    var int NDOCID;
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_3);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_4);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_5);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_6);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_7);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_8);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_9);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_DANGER_10);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_MUSEUM(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_MUSEUM;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_MUSEUM;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_MUSEUM() {
    var int NDOCID;
    TEACHER_LOGENTRY_MUSEUM();
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_ELEGANT_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_MUSEUM_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_MUSEUM_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_MUSEUM_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_MUSEUM_4);
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_MUSEUM_5);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_SELLIRON(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_SELLIRON;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_SELLIRON;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_SELLIRON() {
    var int NDOCID;
    LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
    B_LOGENTRY(TOPIC_BARTER, LOG_BARTER_WALTER);
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLIRON_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLIRON_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLIRON_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_SELLORE(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_SELLORE;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_SELLORE;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_SELLORE() {
    var int NDOCID;
    LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
    B_LOGENTRY(TOPIC_BARTER, LOG_BARTER_DIMA);
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLORE_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLORE_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLORE_3);
    DOC_SHOW(NDOCID);
}

instance ITWR_NEWSBOARD_CITY_NEWS_SELLSILVER(C_ITEM) {
    NAME = NAME_NEWSBOARD_CITY_NEWS_SELLSILVER;
    MAINFLAG = ITEM_KAT_DOCS;
    FLAGS = ITEM_MISSION;
    VALUE = 0;
    VISUAL = "KM_item_scroll_8.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_NEWSBOARD_CITY_NEWS_SELLSILVER;
    SCEMENAME = SCEME_MAPSEALED;
    DESCRIPTION = NAME;
    TEXT[1] = NAME_NEWSBOARD_DESCRIPTION;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

func void USE_NEWSBOARD_CITY_NEWS_SELLSILVER() {
    var int NDOCID;
    LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
    B_LOGENTRY(TOPIC_BARTER, LOG_BARTER_ODGAR);
    NDOCID = DOC_CREATE();
    DOC_SETPAGES(NDOCID, 1);
    DOC_SETPAGE(NDOCID, 0, "SCROLL_NORMAL_01.TGA", 0);
    DOC_SETMARGINS(NDOCID, -(1), 50, 50, 70, 50, 1);
    DOC_SETFONT(NDOCID, 0, FONT_BOOK);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLSILVER_1);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLSILVER_2);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLSILVER_3);
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, "");
    DOC_PRINTLINES(NDOCID, 0, WRITTENTEXT_NEWSBOARD_CITY_NEWS_SELLSILVER_4);
    DOC_SHOW(NDOCID);
}

