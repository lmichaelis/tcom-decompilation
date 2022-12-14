func void EVT_SECONDGATE_COUNT() {
    PRINTD("Cyk, mieczyk naliczy? punkt");
    VZ_SECONDGATE_COUNT = (VZ_SECONDGATE_COUNT) + (1);
    if ((VZ_SECONDGATE_COUNT) == (1)) {
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_SECONDGATE_OPEN_V1);
    };
    MOB_CHANGEFOCUSNAME("VZ_SECONDGATE_SWORD_02", "MOBNAME_NOTHING");
    FF_APPLYONCEEXT(0xa3bf, 650, 2);
    MOB_CHANGEFOCUSNAME("VZ_SECONDGATE_SWORD_01", "MOBNAME_NOTHING");
    WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_EarthQuake");
}

var int EVT_SECONDGATE_COUNT.VZ_SECONDGATE_COUNT = 0;
func void EVT_SECONDGATE_OPEN() {
    VZ_SECONDGATE_OPENCOUNT = (VZ_SECONDGATE_OPENCOUNT) + (1);
    if ((VZ_SECONDGATE_OPENCOUNT) == (2)) {
        Q514_SECONDGATEOPENED = TRUE;
        FF_APPLYONCEEXT(0xa3c1, 1000, 5);
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_SECONDGATE_OPEN_V2);
        B_GIVEPLAYERXP(XP_Q514_OPENSECONDGATE);
    };
}

var int EVT_SECONDGATE_OPEN.VZ_SECONDGATE_OPENCOUNT = 0;
func void Q514_SECONDGATE_APPLY() {
    Q514_SECONDGATE_COUNT = (Q514_SECONDGATE_COUNT) + (1);
    if ((Q514_SECONDGATE_COUNT) == (1)) {
        WLD_SENDTRIGGER("VZ_SECONDGATE_LEFT");
        WLD_SENDTRIGGER("VZ_SECONDGATE_RIGHT");
        WLD_SENDTRIGGER("VZ_SECONDGATE_CAMERA");
    };
    if ((Q514_SECONDGATE_COUNT) == (5)) {
        WLD_SENDUNTRIGGER("VZ_SECONDGATE_CAMERA");
    };
}

var int Q514_SECONDGATE_APPLY.Q514_SECONDGATE_COUNT = 0;
var int VZ_SWITCHPUZZLE_DOOR_LASTUSED = 0;
var int VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 0;
var int VZ_SWITCHPUZZLE_DOOR01_STATE = 0;
var int VZ_SWITCHPUZZLE_DOOR02_STATE = 0;
var int VZ_SWITCHPUZZLE_DOOR03_STATE = 0;
var int VZ_SWITCHPUZZLE_DOOR04_STATE = 0;
var int VZ_SWITCHPUZZLE_DOOR05_STATE = 0;
var int VZ_SWITCHPUZZLE_DOOR06_STATE = 0;
var int VZ_SWITCHPUZZLE_DOOR07_STATE = 0;
var int VZ_SWITCHPUZZLE_DOOR08_STATE = 0;
var int VZ_SWITCHPUZZLE_DOOR09_STATE = 0;
func void EVT_SWITCHPUZZLE_OPENDOORS() {
    if ((VZ_SWITCHPUZZLE_DOOR_CURRENTUSED) == (1)) {
        VZ_SWITCHPUZZLE_DOOR01_STATE = 1;
        VZ_SWITCHPUZZLE_DOOR_LASTUSED = VZ_SWITCHPUZZLE_DOOR_CURRENTUSED;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_01");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_CURRENTUSED) == (2)) {
        VZ_SWITCHPUZZLE_DOOR02_STATE = 1;
        VZ_SWITCHPUZZLE_DOOR_LASTUSED = VZ_SWITCHPUZZLE_DOOR_CURRENTUSED;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_02_A");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_02_B");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_02_C");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_CURRENTUSED) == (3)) {
        VZ_SWITCHPUZZLE_DOOR03_STATE = 1;
        VZ_SWITCHPUZZLE_DOOR_LASTUSED = VZ_SWITCHPUZZLE_DOOR_CURRENTUSED;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_03");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_CURRENTUSED) == (4)) {
        VZ_SWITCHPUZZLE_DOOR04_STATE = 1;
        VZ_SWITCHPUZZLE_DOOR_LASTUSED = VZ_SWITCHPUZZLE_DOOR_CURRENTUSED;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_04");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_CURRENTUSED) == (5)) {
        VZ_SWITCHPUZZLE_DOOR05_STATE = 1;
        VZ_SWITCHPUZZLE_DOOR_LASTUSED = VZ_SWITCHPUZZLE_DOOR_CURRENTUSED;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_05_A");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_05_B");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_05_C");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_CURRENTUSED) == (6)) {
        VZ_SWITCHPUZZLE_DOOR06_STATE = 1;
        VZ_SWITCHPUZZLE_DOOR_LASTUSED = VZ_SWITCHPUZZLE_DOOR_CURRENTUSED;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_06");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_CURRENTUSED) == (7)) {
        VZ_SWITCHPUZZLE_DOOR07_STATE = 1;
        VZ_SWITCHPUZZLE_DOOR_LASTUSED = VZ_SWITCHPUZZLE_DOOR_CURRENTUSED;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_07");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_CURRENTUSED) == (8)) {
        VZ_SWITCHPUZZLE_DOOR08_STATE = 1;
        VZ_SWITCHPUZZLE_DOOR_LASTUSED = VZ_SWITCHPUZZLE_DOOR_CURRENTUSED;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_08");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_CURRENTUSED) == (9)) {
        VZ_SWITCHPUZZLE_DOOR09_STATE = 1;
        VZ_SWITCHPUZZLE_DOOR_LASTUSED = VZ_SWITCHPUZZLE_DOOR_CURRENTUSED;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_09");
    };
    PRINTD(CS2("Otwieramy ", INTTOSTRING(VZ_SWITCHPUZZLE_DOOR_CURRENTUSED)));
}

func void EVT_SWITCHPUZZLE_CLOSEDOORS() {
    WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_EarthQuake");
    if ((VZ_SWITCHPUZZLE_DOOR_LASTUSED) == (1)) {
        VZ_SWITCHPUZZLE_DOOR01_STATE = 0;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_01");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_LASTUSED) == (2)) {
        VZ_SWITCHPUZZLE_DOOR02_STATE = 0;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_02_A");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_02_B");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_02_C");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_LASTUSED) == (3)) {
        VZ_SWITCHPUZZLE_DOOR03_STATE = 0;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_03");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_LASTUSED) == (4)) {
        VZ_SWITCHPUZZLE_DOOR04_STATE = 0;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_04");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_LASTUSED) == (5)) {
        VZ_SWITCHPUZZLE_DOOR05_STATE = 0;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_05_A");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_05_B");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_05_C");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_LASTUSED) == (6)) {
        VZ_SWITCHPUZZLE_DOOR06_STATE = 0;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_06");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_LASTUSED) == (7)) {
        VZ_SWITCHPUZZLE_DOOR07_STATE = 0;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_07");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_LASTUSED) == (8)) {
        VZ_SWITCHPUZZLE_DOOR08_STATE = 0;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_08");
    };
    if ((VZ_SWITCHPUZZLE_DOOR_LASTUSED) == (9)) {
        VZ_SWITCHPUZZLE_DOOR09_STATE = 0;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_09");
    };
    PRINTD(CS2("Zamykamy ", INTTOSTRING(VZ_SWITCHPUZZLE_DOOR_LASTUSED)));
    EVT_SWITCHPUZZLE_OPENDOORS();
}

func void EVT_SWITCHPUZZLE_01() {
    if ((VZ_SWITCHPUZZLE_LOGENTRY) == (FALSE)) {
        VZ_SWITCHPUZZLE_LOGENTRY = TRUE;
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_PUZZLECHAMBER_FIRSTDOOR);
    };
    VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 1;
    EVT_SWITCHPUZZLE_CLOSEDOORS();
}

var int EVT_SWITCHPUZZLE_01.VZ_SWITCHPUZZLE_LOGENTRY = 0;
func void EVT_SWITCHPUZZLE_02() {
    VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 2;
    EVT_SWITCHPUZZLE_CLOSEDOORS();
}

func void EVT_SWITCHPUZZLE_03() {
    VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 3;
    EVT_SWITCHPUZZLE_CLOSEDOORS();
}

func void EVT_SWITCHPUZZLE_04() {
    VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 4;
    EVT_SWITCHPUZZLE_CLOSEDOORS();
}

func void EVT_SWITCHPUZZLE_05() {
    VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 5;
    EVT_SWITCHPUZZLE_CLOSEDOORS();
}

func void EVT_SWITCHPUZZLE_06() {
    VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 6;
    EVT_SWITCHPUZZLE_CLOSEDOORS();
}

func void EVT_SWITCHPUZZLE_07() {
    VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 7;
    EVT_SWITCHPUZZLE_CLOSEDOORS();
}

func void EVT_SWITCHPUZZLE_08() {
    VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 8;
    EVT_SWITCHPUZZLE_CLOSEDOORS();
}

func void EVT_SWITCHPUZZLE_09() {
    VZ_SWITCHPUZZLE_DOOR_CURRENTUSED = 9;
    EVT_SWITCHPUZZLE_CLOSEDOORS();
}

func void EVT_SWITCHPUZZLE_BIGDOOR_LOGENTRY() {
    WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_EarthQuake");
    if ((VZ_SWITCHPUZZLE_BIGDOOR_LOGENTRY) == (FALSE)) {
        VZ_SWITCHPUZZLE_BIGDOOR_LOGENTRY = TRUE;
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_PUZZLECHAMBER_BIGDOOROPEN);
    };
}

var int EVT_SWITCHPUZZLE_BIGDOOR_LOGENTRY.VZ_SWITCHPUZZLE_BIGDOOR_LOGENTRY = 0;
func void EVT_SWITCHPUZZLE_BIGDOOR_01() {
    EVT_SWITCHPUZZLE_BIGDOOR_LOGENTRY();
    WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_BIGDOOR_MOVER_01");
}

func void EVT_SWITCHPUZZLE_BIGDOOR_02() {
    EVT_SWITCHPUZZLE_BIGDOOR_LOGENTRY();
    WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_BIGDOOR_MOVER_02");
}

func void EVT_SWITCHPUZZLE_OPENALLDOORS() {
    Q514_PUZZLECHAMBER_FINISH = TRUE;
    B_LOGENTRY(TOPIC_Q514, LOG_Q514_PUZZLECHAMBER_FINISH);
    WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
    SND_PLAY("MFX_EarthQuake");
    if ((VZ_SWITCHPUZZLE_DOOR01_STATE) == (0)) {
        VZ_SWITCHPUZZLE_DOOR01_STATE = 1;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_01");
    };
    if ((VZ_SWITCHPUZZLE_DOOR02_STATE) == (0)) {
        VZ_SWITCHPUZZLE_DOOR02_STATE = 1;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_02_A");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_02_B");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_02_C");
    };
    if ((VZ_SWITCHPUZZLE_DOOR03_STATE) == (0)) {
        VZ_SWITCHPUZZLE_DOOR03_STATE = 1;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_03");
    };
    if ((VZ_SWITCHPUZZLE_DOOR04_STATE) == (0)) {
        VZ_SWITCHPUZZLE_DOOR04_STATE = 1;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_04");
    };
    if ((VZ_SWITCHPUZZLE_DOOR05_STATE) == (0)) {
        VZ_SWITCHPUZZLE_DOOR05_STATE = 1;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_05_A");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_05_B");
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_05_C");
    };
    if ((VZ_SWITCHPUZZLE_DOOR06_STATE) == (0)) {
        VZ_SWITCHPUZZLE_DOOR06_STATE = 1;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_06");
    };
    if ((VZ_SWITCHPUZZLE_DOOR07_STATE) == (0)) {
        VZ_SWITCHPUZZLE_DOOR07_STATE = 1;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_07");
    };
    if ((VZ_SWITCHPUZZLE_DOOR08_STATE) == (0)) {
        VZ_SWITCHPUZZLE_DOOR08_STATE = 1;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_08");
    };
    if ((VZ_SWITCHPUZZLE_DOOR09_STATE) == (0)) {
        VZ_SWITCHPUZZLE_DOOR09_STATE = 1;
        WLD_SENDTRIGGER("VZ_SWITCHPUZZLE_DOOR_09");
    };
}

var int VZ_CHESSPUZZLE_BUTTON01_STATE = 0;
var int VZ_CHESSPUZZLE_BUTTON02_STATE = 0;
var int VZ_CHESSPUZZLE_BUTTON03_STATE = 0;
var int VZ_CHESSPUZZLE_BUTTON04_STATE = 0;
var int VZ_CHESSPUZZLE_BUTTON05_STATE = 0;
var int VZ_CHESSPUZZLE_BUTTON06_STATE = 0;
var int VZ_CHESSPUZZLE_BUTTON07_STATE = 0;
var int VZ_CHESSPUZZLE_BUTTON08_STATE = 0;
instance CHESSPUZZLE_BUTTON01_USER(C_NPC)
instance CHESSPUZZLE_BUTTON02_USER(C_NPC)
instance CHESSPUZZLE_BUTTON03_USER(C_NPC)
instance CHESSPUZZLE_BUTTON04_USER(C_NPC)
instance CHESSPUZZLE_BUTTON05_USER(C_NPC)
instance CHESSPUZZLE_BUTTON06_USER(C_NPC)
instance CHESSPUZZLE_BUTTON07_USER(C_NPC)
instance CHESSPUZZLE_BUTTON08_USER(C_NPC)
var int CHESSPUZZLE_BUTTON01_USERID = 0;
var int CHESSPUZZLE_BUTTON02_USERID = 0;
var int CHESSPUZZLE_BUTTON03_USERID = 0;
var int CHESSPUZZLE_BUTTON04_USERID = 0;
var int CHESSPUZZLE_BUTTON05_USERID = 0;
var int CHESSPUZZLE_BUTTON06_USERID = 0;
var int CHESSPUZZLE_BUTTON07_USERID = 0;
var int CHESSPUZZLE_BUTTON08_USERID = 0;
func void EVT_CHESS_GOODANWSER_ADD() {
    Q514_CHESS_GOODANWSERCOUNT = (Q514_CHESS_GOODANWSERCOUNT) + (1);
    PRINTD(CS2("Dobre odpowiedzi: ", INTTOSTRING(Q514_CHESS_GOODANWSERCOUNT)));
    if ((Q514_CHESS_GOODANWSERCOUNT) == (3)) {
        Q514_CHESS_BOSSFIGHT = TRUE;
    };
}

func void EVT_CHESS_GOODANWSER_SUBTRACT() {
    Q514_CHESS_GOODANWSERCOUNT = (Q514_CHESS_GOODANWSERCOUNT) - (1);
    PRINTD(CS2("Dobre odpowiedzi: ", INTTOSTRING(Q514_CHESS_GOODANWSERCOUNT)));
}

func void EVT_CHESS_BADANWSER_ADD() {
    Q514_CHESS_BADANWSERCOUNT = (Q514_CHESS_BADANWSERCOUNT) + (1);
    PRINTD(CS2("Z?e odpowiedzi: ", INTTOSTRING(Q514_CHESS_BADANWSERCOUNT)));
    if ((Q514_CHESS_GOODANWSERCOUNT) == (3)) {
        Q514_CHESS_DEATH = TRUE;
    };
}

func void EVT_CHESS_BADANWSER_SUBTRACT() {
    Q514_CHESS_BADANWSERCOUNT = (Q514_CHESS_BADANWSERCOUNT) - (1);
    PRINTD(CS2("Z?e odpowiedzi: ", INTTOSTRING(Q514_CHESS_BADANWSERCOUNT)));
}

func void EVT_DISABLECHESS() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_CANTUSEBUTTON) == (FALSE)) {
            if (((VZ_CHESSPUZZLE_BUTTON01_STATE) == (1)) && ((CHESSPUZZLE_BUTTON01_USERID) == (HLP_GETINSTANCEID(SELF)))) {
                VZ_CHESSPUZZLE_BUTTON01_STATE = 0;
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_01");
                EVT_CHESS_GOODANWSER_SUBTRACT();
            };
            if (((VZ_CHESSPUZZLE_BUTTON02_STATE) == (1)) && ((CHESSPUZZLE_BUTTON02_USERID) == (HLP_GETINSTANCEID(SELF)))) {
                VZ_CHESSPUZZLE_BUTTON02_STATE = 0;
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_02");
            };
            if (((VZ_CHESSPUZZLE_BUTTON03_STATE) == (1)) && ((CHESSPUZZLE_BUTTON03_USERID) == (HLP_GETINSTANCEID(SELF)))) {
                VZ_CHESSPUZZLE_BUTTON03_STATE = 0;
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_03");
                EVT_CHESS_GOODANWSER_SUBTRACT();
            };
            if (((VZ_CHESSPUZZLE_BUTTON04_STATE) == (1)) && ((CHESSPUZZLE_BUTTON04_USERID) == (HLP_GETINSTANCEID(SELF)))) {
                VZ_CHESSPUZZLE_BUTTON04_STATE = 0;
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_04");
            };
            if (((VZ_CHESSPUZZLE_BUTTON05_STATE) == (1)) && ((CHESSPUZZLE_BUTTON05_USERID) == (HLP_GETINSTANCEID(SELF)))) {
                VZ_CHESSPUZZLE_BUTTON05_STATE = 0;
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_05");
            };
            if (((VZ_CHESSPUZZLE_BUTTON06_STATE) == (1)) && ((CHESSPUZZLE_BUTTON06_USERID) == (HLP_GETINSTANCEID(SELF)))) {
                VZ_CHESSPUZZLE_BUTTON06_STATE = 0;
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_06");
            };
            if (((VZ_CHESSPUZZLE_BUTTON07_STATE) == (1)) && ((CHESSPUZZLE_BUTTON07_USERID) == (HLP_GETINSTANCEID(SELF)))) {
                VZ_CHESSPUZZLE_BUTTON07_STATE = 0;
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_07");
            };
            if (((VZ_CHESSPUZZLE_BUTTON08_STATE) == (1)) && ((CHESSPUZZLE_BUTTON08_USERID) == (HLP_GETINSTANCEID(SELF)))) {
                VZ_CHESSPUZZLE_BUTTON08_STATE = 0;
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_08");
                EVT_CHESS_GOODANWSER_SUBTRACT();
            };
        };
    };
}

func void EVT_CHESS_LOGENTRY() {
    if ((Q514_CHESSCHAMBER_BUTTONPUZZLE) == (0)) {
        Q514_CHESSCHAMBER_BUTTONPUZZLE = 1;
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_CHESSCHAMBER_FIRSTBUTTON);
    };
}

func void EVT_CHESSTEST_01() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_CANTUSEBUTTON) == (FALSE)) {
            if ((VZ_CHESSPUZZLE_BUTTON01_STATE) == (0)) {
                VZ_CHESSPUZZLE_BUTTON01_STATE = 1;
                CHESSPUZZLE_BUTTON01_USER = HLP_GETNPC(0x717);
                CHESSPUZZLE_BUTTON01_USERID = HLP_GETINSTANCEID(CHESSPUZZLE_BUTTON01_USER);
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_01");
                EVT_CHESS_GOODANWSER_ADD();
                EVT_CHESS_LOGENTRY();
            };
        };
    };
}

func void EVT_CHESSTEST_02() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_CANTUSEBUTTON) == (FALSE)) {
            if ((VZ_CHESSPUZZLE_BUTTON02_STATE) == (0)) {
                VZ_CHESSPUZZLE_BUTTON02_STATE = 1;
                CHESSPUZZLE_BUTTON02_USER = HLP_GETNPC(0x717);
                CHESSPUZZLE_BUTTON02_USERID = HLP_GETINSTANCEID(CHESSPUZZLE_BUTTON02_USER);
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_02");
                EVT_CHESS_LOGENTRY();
            };
        };
    };
}

func void EVT_CHESSTEST_03() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_CANTUSEBUTTON) == (FALSE)) {
            if ((VZ_CHESSPUZZLE_BUTTON03_STATE) == (0)) {
                VZ_CHESSPUZZLE_BUTTON03_STATE = 1;
                CHESSPUZZLE_BUTTON03_USER = HLP_GETNPC(0x717);
                CHESSPUZZLE_BUTTON03_USERID = HLP_GETINSTANCEID(CHESSPUZZLE_BUTTON03_USER);
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_03");
                EVT_CHESS_GOODANWSER_ADD();
                EVT_CHESS_LOGENTRY();
            };
        };
    };
}

func void EVT_CHESSTEST_04() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_CANTUSEBUTTON) == (FALSE)) {
            if ((VZ_CHESSPUZZLE_BUTTON04_STATE) == (0)) {
                VZ_CHESSPUZZLE_BUTTON04_STATE = 1;
                CHESSPUZZLE_BUTTON04_USER = HLP_GETNPC(0x717);
                CHESSPUZZLE_BUTTON04_USERID = HLP_GETINSTANCEID(CHESSPUZZLE_BUTTON04_USER);
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_04");
                EVT_CHESS_LOGENTRY();
            };
        };
    };
}

func void EVT_CHESSTEST_05() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_CANTUSEBUTTON) == (FALSE)) {
            if ((VZ_CHESSPUZZLE_BUTTON05_STATE) == (0)) {
                VZ_CHESSPUZZLE_BUTTON05_STATE = 1;
                CHESSPUZZLE_BUTTON05_USER = HLP_GETNPC(0x717);
                CHESSPUZZLE_BUTTON05_USERID = HLP_GETINSTANCEID(CHESSPUZZLE_BUTTON05_USER);
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_05");
                EVT_CHESS_LOGENTRY();
            };
        };
    };
}

func void EVT_CHESSTEST_06() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_CANTUSEBUTTON) == (FALSE)) {
            if ((VZ_CHESSPUZZLE_BUTTON06_STATE) == (0)) {
                VZ_CHESSPUZZLE_BUTTON06_STATE = 1;
                CHESSPUZZLE_BUTTON06_USER = HLP_GETNPC(0x717);
                CHESSPUZZLE_BUTTON06_USERID = HLP_GETINSTANCEID(CHESSPUZZLE_BUTTON06_USER);
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_06");
                EVT_CHESS_LOGENTRY();
            };
        };
    };
}

func void EVT_CHESSTEST_07() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_CANTUSEBUTTON) == (FALSE)) {
            if ((VZ_CHESSPUZZLE_BUTTON07_STATE) == (0)) {
                VZ_CHESSPUZZLE_BUTTON07_STATE = 1;
                CHESSPUZZLE_BUTTON07_USER = HLP_GETNPC(0x717);
                CHESSPUZZLE_BUTTON07_USERID = HLP_GETINSTANCEID(CHESSPUZZLE_BUTTON07_USER);
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_07");
                EVT_CHESS_LOGENTRY();
            };
        };
    };
}

func void EVT_CHESSTEST_08() {
    if ((Q514_PUZZLECHAMBER_FINISH) == (TRUE)) {
        if ((Q514_CHESS_CANTUSEBUTTON) == (FALSE)) {
            if ((VZ_CHESSPUZZLE_BUTTON08_STATE) == (0)) {
                VZ_CHESSPUZZLE_BUTTON08_STATE = 1;
                CHESSPUZZLE_BUTTON08_USER = HLP_GETNPC(0x717);
                CHESSPUZZLE_BUTTON08_USERID = HLP_GETINSTANCEID(CHESSPUZZLE_BUTTON08_USER);
                WLD_SENDTRIGGER("VZ_CHESSPUZZLE_BUTTON_08");
                EVT_CHESS_GOODANWSER_ADD();
                EVT_CHESS_LOGENTRY();
            };
        };
    };
}

func void EVT_TREASURY_DOOR_OPEN() {
    FF_APPLYONCEEXT(0xa406, 500, 2);
}

func void Q514_VOLFZACKETREASURECUTSCENE_START() {
    Q514_VOLFZACKETREASURECUTSCENE_COUNT = (Q514_VOLFZACKETREASURECUTSCENE_COUNT) + (1);
    if ((Q514_VOLFZACKETREASURECUTSCENE_COUNT) == (2)) {
        CUTSCENE_START(0x16a1c);
    };
}

var int Q514_VOLFZACKETREASURECUTSCENE_START.Q514_VOLFZACKETREASURECUTSCENE_COUNT = 0;
func void EVT_TREASURE_BUTTON() {
    if ((Q514_TREASURE_MOVER) == (FALSE)) {
        Q514_TREASURE_MOVER = TRUE;
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
        SND_PLAY("MFX_EarthQuake");
        WLD_SENDTRIGGER("VZ_TREASURY_BUTTON");
        WLD_SENDTRIGGER("VZ_TREASURY_DOOR_01");
        WLD_SENDTRIGGER("VZ_TREASURY_DOOR_02");
        WLD_SENDTRIGGER("VZ_TREASURY_DOOR_ENTRY_MOVER");
    };
}

var int EVT_TREASURE_BUTTON.Q514_TREASURE_MOVER = 0;
func void EVT_SWORDROOM_SECRETPATH() {
    if ((Q514_SWORD_KICKBROKENWALL) == (1)) {
        MOB_CHANGEFOCUSNAME("VZ_KICKWALL", "MOBNAME_NOTHING");
        Q514_SWORD_KICKBROKENWALL = 2;
        Q514_SWORD_FINISH = 1;
        WLD_PLAYEFFECT("FX_EarthQuake", HERO, HERO, 0, 0, 0, FALSE);
        WLD_PLAYEFFECT("FX_DUST", HERO, HERO, 0, 0, 0, FALSE);
        SND_PLAY("MFX_EarthQuake");
        SND_PLAY("ROCKS_KICK_01");
        SND_PLAY("ROCKS_FALL_01");
        SND_PLAY("ROCKS_FALL_02");
        WLD_SENDTRIGGER("VZ_BROKENPATH_01");
        WLD_SENDTRIGGER("VZ_BROKENPATH_02");
        WLD_SENDTRIGGER("VZ_BROKENPATH_03");
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_SWORDROOM_WALL);
    };
}

var int VZ_Q514_TRAP01_DIABLED = 0;
var int VZ_Q514_TRAP01_MOVER = 0;
func void EVT_ENDGAMEARMORROOM_TRAP() {
    if ((VZ_Q514_TRAP01_DIABLED) == (0)) {
        if ((VZ_Q514_TRAP01_MOVER) == (0)) {
            VZ_Q514_TRAP01_MOVER = 1;
            WLD_SENDTRIGGER("VZ_TRAP_01");
        };
    };
}

func void EVT_ENDGAMEARMORROOM_TRAP_DISABLE() {
    if ((VZ_Q514_TRAP01_MOVER) == (1)) {
        VZ_Q514_TRAP01_MOVER = 0;
        WLD_SENDTRIGGER("VZ_TRAP_01");
    };
}

func void EVT_SHOOT01_TRIGGER() {
    if ((VZ_Q514_TRAP01_DIABLED) == (0)) {
        WLD_SENDTRIGGER("VZ_SHOOT01_MOVER");
        VZ_Q514_TRAP01_DIABLED = 1;
        Q514_CHESS_TRAPROOM_LOGENTRY = 2;
        PRINTD("I cyk");
        if ((VZ_Q514_TRAP01_MOVER) == (1)) {
            VZ_Q514_TRAP01_MOVER = 0;
            WLD_SENDTRIGGER("VZ_TRAP_01");
        };
    };
}

func void EVT_SIDEQUEST_TRAP_01_DISABLED() {
    if ((VZ_Q514_TRAP02_MOVER) == (1)) {
        VZ_Q514_TRAP02_MOVER = 2;
        WLD_SENDTRIGGER("VZ_SIDEQUEST_TRAP_01");
        WLD_SENDTRIGGER("VZ_GARGOYLE_STATUE_07_A");
    };
    Q514_VARINWORK_LADDER = 1;
    B_LOGENTRY(TOPIC_Q514, LOG_Q514_VARINWORK_LADDER_START);
}

var int VZ_Q514_TRAP03_MOVER = 0;
func void Q514_REMOVEVIRAN() {
    Q514_VARINWORK_LADDER = 3;
    B_STARTOTHERROUTINE(SLD_13784_VARIN_VZ, "CAMP");
    NPC_REFRESH(SLD_13784_VARIN_VZ);
    TELEPORTNPCTOWP(0xe7d0, SLD_13784_VARIN_VZ.WP);
    if ((Q504_LOWELLVOLFZACKE) == (TRUE)) {
        if ((NPC_ISDEAD(BAU_2277_LOWELL_VZ)) == (FALSE)) {
            B_STARTOTHERROUTINE(BAU_2277_LOWELL_VZ, "CAMP");
            NPC_REFRESH(BAU_2277_LOWELL_VZ);
            TELEPORTNPCTOWP(0xe6e2, BAU_2277_LOWELL_VZ.WP);
            return;
        };
    };
    if ((Q504_VEIGOVOLFZACKE) == (TRUE)) {
        if ((NPC_ISDEAD(VLK_6232_VEIGO_VZ)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6232_VEIGO_VZ, "CAMP");
            NPC_REFRESH(VLK_6232_VEIGO_VZ);
            TELEPORTNPCTOWP(0xe7f2, VLK_6232_VEIGO_VZ.WP);
            return;
        };
    };
    if ((Q504_RUUDVOLFZACKE) == (TRUE)) {
        if ((NPC_ISDEAD(VLK_6282_RUUD_VZ)) == (FALSE)) {
            B_STARTOTHERROUTINE(VLK_6282_RUUD_VZ, "CAMP");
            NPC_REFRESH(VLK_6282_RUUD_VZ);
            TELEPORTNPCTOWP(0xe7f7, VLK_6282_RUUD_VZ.WP);
            return;
        };
    };
    if ((Q504_UWEVOLFZACKE) == (1)) {
        if ((NPC_ISDEAD(BAU_730_UWE_VZ)) == (FALSE)) {
            B_STARTOTHERROUTINE(BAU_730_UWE_VZ, "CAMP");
            NPC_REFRESH(BAU_730_UWE_VZ);
            TELEPORTNPCTOWP(0xe6ee, BAU_730_UWE_VZ.WP);
            return;
        };
    };
}

func void EVT_SIDEQUEST_TRAP_02() {
    if ((VZ_Q514_TRAP03_MOVER) == (0)) {
        VZ_Q514_TRAP03_MOVER = 1;
        WLD_SENDTRIGGER("VZ_SIDEQUEST_TRAP_02");
        FF_APPLYONCEEXT(0xef53, 300, 5);
        B_LOGENTRY(TOPIC_Q514, LOG_Q514_VARINWORK_ROOM_MEATBUG);
    };
    if ((Q514_CRAWLER_FINISH) == (0)) {
        Q514_REMOVEVIRAN();
    };
}

var int VZ_Q514_ARMORROOM_01 = 0;
var int VZ_Q514_ARMORROOM_02 = 0;
var int VZ_Q514_ARMORROOM_03 = 0;
var int VZ_Q514_ARMORROOM_04 = 0;
var int VZ_Q514_ARMORROOM_05 = 0;
var int VZ_Q514_ARMORROOM_06 = 0;
var int VZ_Q514_ARMORROOM_07 = 0;
var int VZ_Q514_ARMORROOM_08 = 0;
var int VZ_Q514_ARMORROOM_09 = 0;
var int VZ_Q514_ARMORROOM_10 = 0;
var int VZ_Q514_ARMORROOM_11 = 0;
func void EVT_SIDEQUEST_TRAP_03() {
    if ((Q514_TRAP04_COLORS) == (0)) {
        Q514_TRAP04_COLORS = 1;
    };
}

func void EVT_SIDEQUEST_TRAP_03_DISABLED() {
    if ((Q514_TRAP04_COLORS) == (1)) {
        Q514_TRAP04_COLORS = 2;
    };
}

func void EVT_VZ_LEVER_RED() {
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_01");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_05");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_07");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_08");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_09");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_10");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_11");
    if ((VZ_Q514_ARMORROOM_01) == (0)) {
        VZ_Q514_ARMORROOM_01 = 1;
    };
    VZ_Q514_ARMORROOM_01 = 0;
    if ((VZ_Q514_ARMORROOM_02) == (1)) {
        VZ_Q514_ARMORROOM_02 = 0;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_02");
    };
    if ((VZ_Q514_ARMORROOM_03) == (1)) {
        VZ_Q514_ARMORROOM_03 = 0;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_03");
    };
    if ((VZ_Q514_ARMORROOM_05) == (0)) {
        VZ_Q514_ARMORROOM_05 = 1;
    };
    VZ_Q514_ARMORROOM_05 = 0;
    if ((VZ_Q514_ARMORROOM_07) == (0)) {
        VZ_Q514_ARMORROOM_07 = 1;
    };
    VZ_Q514_ARMORROOM_07 = 0;
    if ((VZ_Q514_ARMORROOM_08) == (0)) {
        VZ_Q514_ARMORROOM_08 = 1;
    };
    VZ_Q514_ARMORROOM_08 = 0;
    if ((VZ_Q514_ARMORROOM_09) == (0)) {
        VZ_Q514_ARMORROOM_09 = 1;
    };
    VZ_Q514_ARMORROOM_09 = 0;
    if ((VZ_Q514_ARMORROOM_10) == (0)) {
        VZ_Q514_ARMORROOM_10 = 1;
    };
    VZ_Q514_ARMORROOM_10 = 0;
    if ((VZ_Q514_ARMORROOM_11) == (0)) {
        VZ_Q514_ARMORROOM_11 = 1;
    };
    VZ_Q514_ARMORROOM_11 = 0;
}

func void EVT_VZ_LEVER_YELLOW() {
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_02");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_06");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_08");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_09");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_10");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_11");
    if ((VZ_Q514_ARMORROOM_02) == (0)) {
        VZ_Q514_ARMORROOM_02 = 1;
    };
    VZ_Q514_ARMORROOM_02 = 0;
    if ((VZ_Q514_ARMORROOM_01) == (1)) {
        VZ_Q514_ARMORROOM_01 = 0;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_01");
    };
    if ((VZ_Q514_ARMORROOM_03) == (1)) {
        VZ_Q514_ARMORROOM_03 = 0;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_03");
    };
    if ((VZ_Q514_ARMORROOM_06) == (0)) {
        VZ_Q514_ARMORROOM_06 = 1;
    };
    VZ_Q514_ARMORROOM_06 = 0;
    if ((VZ_Q514_ARMORROOM_08) == (0)) {
        VZ_Q514_ARMORROOM_08 = 1;
    };
    VZ_Q514_ARMORROOM_08 = 0;
    if ((VZ_Q514_ARMORROOM_09) == (0)) {
        VZ_Q514_ARMORROOM_09 = 1;
    };
    VZ_Q514_ARMORROOM_09 = 0;
    if ((VZ_Q514_ARMORROOM_10) == (0)) {
        VZ_Q514_ARMORROOM_10 = 1;
    };
    VZ_Q514_ARMORROOM_10 = 0;
    if ((VZ_Q514_ARMORROOM_11) == (0)) {
        VZ_Q514_ARMORROOM_11 = 1;
    };
    VZ_Q514_ARMORROOM_11 = 0;
}

func void EVT_VZ_LEVER_BLUE() {
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_03");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_04");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_07");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_09");
    WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_11");
    if ((VZ_Q514_ARMORROOM_03) == (0)) {
        VZ_Q514_ARMORROOM_03 = 1;
    };
    VZ_Q514_ARMORROOM_03 = 0;
    if ((VZ_Q514_ARMORROOM_01) == (1)) {
        VZ_Q514_ARMORROOM_01 = 0;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_01");
    };
    if ((VZ_Q514_ARMORROOM_02) == (1)) {
        VZ_Q514_ARMORROOM_02 = 0;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_02");
    };
    if ((VZ_Q514_ARMORROOM_04) == (0)) {
        VZ_Q514_ARMORROOM_04 = 1;
    };
    VZ_Q514_ARMORROOM_04 = 0;
    if ((VZ_Q514_ARMORROOM_07) == (0)) {
        VZ_Q514_ARMORROOM_07 = 1;
    };
    VZ_Q514_ARMORROOM_07 = 0;
    if ((VZ_Q514_ARMORROOM_09) == (0)) {
        VZ_Q514_ARMORROOM_09 = 1;
    };
    VZ_Q514_ARMORROOM_09 = 0;
    if ((VZ_Q514_ARMORROOM_11) == (0)) {
        VZ_Q514_ARMORROOM_11 = 1;
    };
    VZ_Q514_ARMORROOM_11 = 0;
}

func void EVT_VZ_LEVER_DISABLE() {
    Q514_ARMORROOM_CANTUSELEVERS = 1;
    if ((VZ_Q514_ARMORROOM_01) == (0)) {
        VZ_Q514_ARMORROOM_01 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_01");
    };
    if ((VZ_Q514_ARMORROOM_02) == (0)) {
        VZ_Q514_ARMORROOM_02 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_02");
    };
    if ((VZ_Q514_ARMORROOM_03) == (0)) {
        VZ_Q514_ARMORROOM_03 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_03");
    };
    if ((VZ_Q514_ARMORROOM_04) == (0)) {
        VZ_Q514_ARMORROOM_04 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_04");
    };
    if ((VZ_Q514_ARMORROOM_05) == (0)) {
        VZ_Q514_ARMORROOM_05 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_05");
    };
    if ((VZ_Q514_ARMORROOM_06) == (0)) {
        VZ_Q514_ARMORROOM_06 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_06");
    };
    if ((VZ_Q514_ARMORROOM_07) == (0)) {
        VZ_Q514_ARMORROOM_07 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_07");
    };
    if ((VZ_Q514_ARMORROOM_08) == (0)) {
        VZ_Q514_ARMORROOM_08 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_08");
    };
    if ((VZ_Q514_ARMORROOM_09) == (0)) {
        VZ_Q514_ARMORROOM_09 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_09");
    };
    if ((VZ_Q514_ARMORROOM_10) == (0)) {
        VZ_Q514_ARMORROOM_10 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_10");
    };
    if ((VZ_Q514_ARMORROOM_11) == (0)) {
        VZ_Q514_ARMORROOM_11 = 1;
        WLD_SENDTRIGGER("VOLFZACKE_ROCKETHQ_11");
    };
    EVT_SIDEQUEST_TRAP_03_DISABLED();
}

