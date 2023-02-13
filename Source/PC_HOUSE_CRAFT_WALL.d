instance PC_HOUSE_CRAFT_WALL(C_INFO) {
    NPC = 50091;
    NR = 9;
    CONDITION = PC_HOUSE_CRAFT_CONDITION;
    INFORMATION = PC_HOUSE_CRAFT_WALL_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = CHOICE_HOUSECRAFT_WALLS;
}

var int HOUSE_CRAFT_WALL_CHANGETEXTURE;
var int HOUSE_CRAFT_WALL_WALL_OPTION_01;
var int HOUSE_CRAFT_WALL_WALL_OPTION_02;
var int HOUSE_CRAFT_WALL_WALL_OPTION_03;
var int HOUSE_CRAFT_WALL_WALL_OPTION_04;
var int HOUSE_CRAFT_WALL_WALL_OPTION_05;
var int HOUSE_CRAFT_WALL_WALL_OPTION_06;
var int HOUSE_CRAFT_WALL_WALL_OPTION_07;
var int HOUSE_CRAFT_WALL_WALL_OPTION_08;
var int HOUSE_CRAFT_WALL_WALL_OPTION_09;
var int HOUSE_CRAFT_WALL_WALL_OPTION_10;
var int HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS;
func void PC_HOUSE_CRAFT_WALL_UNTRIGGERCAMERA() {
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_01");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_02");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_03");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_04");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_05");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_06");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_07");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_08");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_09");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_10");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_11");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_LIVINGROOM_12");
}

func void PC_HOUSE_CRAFT_WALL_BACK() {
    PC_HOUSE_CRAFT_WALL_UNTRIGGERCAMERA();
    PC_HOUSE_CRAFT_RANDOMCAMERA();
    INFO_CLEARCHOICES(50013);
}

func void PC_HOUSE_CRAFT_WALL_INFO() {
    PC_HOUSE_CRAFT_RANDOMCAMERA_UNTRIGGERCAMERA();
    PC_HOUSE_CRAFT_WALL_UNTRIGGERCAMERA();
    WLD_SENDTRIGGER("KM_HEROHOUSE_LIVINGROOM_01");
    INFO_CLEARCHOICES(50013);
    INFO_ADDCHOICE(50013, DIALOG_BACK, 50027);
    if ((PLAYERHOUSE_WALL_01) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_01) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_01, 50035);
        };
    };
    if ((PLAYERHOUSE_WALL_02) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_02) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_02, 50036);
        };
    };
    if ((PLAYERHOUSE_WALL_03) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_03) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_03, 50037);
        };
    };
    if ((PLAYERHOUSE_WALL_04) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_04) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_04, 50038);
        };
    };
    if ((PLAYERHOUSE_WALL_05) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_05) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_05, 50039);
        };
    };
    if ((PLAYERHOUSE_WALL_06) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_06) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_06, 50040);
        };
    };
    if ((PLAYERHOUSE_WALL_07) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_07) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_07, 50041);
        };
    };
    if ((PLAYERHOUSE_WALL_08) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_08) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_08, 50042);
        };
    };
    if ((PLAYERHOUSE_WALL_09) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_09) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_09, 50043);
        };
    };
    if ((PLAYERHOUSE_WALL_10) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_10) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_10, 50044);
        };
    };
    if ((PLAYERHOUSE_WALL_11) >= (1)) {
        if ((HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS) == (FALSE)) {
            INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_WALL_11, 50045);
        };
    };
    if ((((((((((((HOUSE_CRAFT_WALL_WALL_OPTION_01) == (TRUE)) || ((HOUSE_CRAFT_WALL_WALL_OPTION_02) == (TRUE))) || ((HOUSE_CRAFT_WALL_WALL_OPTION_03) == (TRUE))) || ((HOUSE_CRAFT_WALL_WALL_OPTION_04) == (TRUE))) || ((HOUSE_CRAFT_WALL_WALL_OPTION_05) == (TRUE))) || ((HOUSE_CRAFT_WALL_WALL_OPTION_06) == (TRUE))) || ((HOUSE_CRAFT_WALL_WALL_OPTION_07) == (TRUE))) || ((HOUSE_CRAFT_WALL_WALL_OPTION_08) == (TRUE))) || ((HOUSE_CRAFT_WALL_WALL_OPTION_09) == (TRUE))) || ((HOUSE_CRAFT_WALL_WALL_OPTION_10) == (TRUE))) || ((HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS) == (TRUE))) {
        INFO_ADDCHOICE(50013, CHOICE_HOUSECRAFT_DELETE, 50046);
    };
}

func void APPLYHOUSEWALLTEXTURE() {
    var string WALLTEXTUREPREFIX;
    var string TEXNAME;
    var ZCRESOURCE TEXRES;
    var string DEFAULTWALLTEXTURE;
    var int TEXPTR;
    if ((TEXPTR) == (0)) {
        TEXPTR = ZCTEXTURE_LOAD(DEFAULTWALLTEXTURE);
    };
    if ((TEXPTR) == (0)) {
        MEM_WARN("ApplyHouseWallTexture: Null ptr");
        return;
    };
    TEXRES = _^(TEXPTR);
    if (((TEXRES.BITFIELD[1]) & (ZCRESOURCE_BITFIELD1_CANBECACHEDOUT)) == (ZCRESOURCE_BITFIELD1_CANBECACHEDOUT)) {
        TEXRES.BITFIELD[1] = (TEXRES.BITFIELD[1]) & (~(ZCRESOURCE_BITFIELD1_CANBECACHEDOUT));
    };
    if ((HOUSE_CRAFT_WALL_CHANGETEXTURE) >= (10)) {
        TEXNAME = CS3(WALLTEXTUREPREFIX, I2S(HOUSE_CRAFT_WALL_CHANGETEXTURE), ".TGA");
    };
    if ((HOUSE_CRAFT_WALL_CHANGETEXTURE) > (0)) {
        TEXNAME = CS4(WALLTEXTUREPREFIX, "0", I2S(HOUSE_CRAFT_WALL_CHANGETEXTURE), ".TGA");
    };
    TEXNAME = DEFAULTWALLTEXTURE;
    if (!(HLP_STRCMP(TEXNAME, TEXRES._ZCOBJECT_OBJECTNAME))) {
        CALL__THISCALL(TEXPTR, 6247728);
        CALL_ZSTRINGPTRPARAM(TEXNAME);
        CALL__THISCALL(TEXPTR, 5938400);
        CALL__THISCALL(TEXPTR, 6247632);
    };
}

func void PC_HOUSE_CRAFT_WALL_WALL_01() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 1;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_01 = (PLAYERHOUSE_WALL_01) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_02() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 2;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_02 = (PLAYERHOUSE_WALL_02) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_03() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 3;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_03 = (PLAYERHOUSE_WALL_03) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_04() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 4;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_04 = (PLAYERHOUSE_WALL_04) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_05() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 5;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_05 = (PLAYERHOUSE_WALL_05) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_06() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 6;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_06 = (PLAYERHOUSE_WALL_06) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_07() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 7;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_07 = (PLAYERHOUSE_WALL_07) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_08() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 8;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_08 = (PLAYERHOUSE_WALL_08) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_09() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 9;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_09 = (PLAYERHOUSE_WALL_09) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_10() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 10;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = TRUE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    PLAYERHOUSE_WALL_10 = (PLAYERHOUSE_WALL_10) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_11() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    if ((PLAYERHOUSE_WALL_CHRISTMAS_ISADDED) == (FALSE)) {
        PLAYERHOUSE_WALL_CHRISTMAS_ISADDED = TRUE;
    };
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 11;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = TRUE;
    PLAYERHOUSE_WALL_11 = (PLAYERHOUSE_WALL_11) - (1);
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

func void PC_HOUSE_CRAFT_WALL_WALL_CLEARALL() {
    PC_HOUSE_CRAFT_WALL_WALL_CLEAR();
    HOUSE_CRAFT_WALL_CHANGETEXTURE = 0;
    HOUSE_CRAFT_WALL_WALL_OPTION_01 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_02 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_03 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_04 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_05 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_06 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_07 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_08 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_09 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_10 = FALSE;
    HOUSE_CRAFT_WALL_WALL_OPTION_CHRISTMAS = FALSE;
    APPLYHOUSEWALLTEXTURE();
    PC_HOUSE_CRAFT_WALL_INFO();
}

