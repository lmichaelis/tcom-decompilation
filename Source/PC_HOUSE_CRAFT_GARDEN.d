instance PC_HOUSE_CRAFT_GARDEN(C_INFO) {
    NPC = 50091;
    NR = 3;
    CONDITION = PC_HOUSE_CRAFT_CONDITION;
    INFORMATION = PC_HOUSE_CRAFT_GARDEN_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = CHOICE_HOUSECRAFT_GARDEN;
}

func void PC_HOUSE_CRAFT_GARDEN_UNTRIGGERCAMERA() {
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_GARDEN_01");
    WLD_SENDUNTRIGGER("KM_HEROHOUSE_GARDEN_02");
}

var int HOUSE_CRAFT_GARDEN_GOD_OPTION_INNOS;
var int HOUSE_CRAFT_GARDEN_GOD_OPTION_ADANOS;
var int HOUSE_CRAFT_GARDEN_GOD_OPTION_BELIAR;
func void PC_HOUSE_CRAFT_GARDEN_INFO() {
    PC_HOUSE_CRAFT_GARDEN_GOD_SETCOLLISION_ON();
    PC_HOUSE_CRAFT_RANDOMCAMERA_UNTRIGGERCAMERA();
    PC_HOUSE_CRAFT_GARDEN_UNTRIGGERCAMERA();
    WLD_SENDTRIGGER("KM_HEROHOUSE_GARDEN_01");
    INFO_CLEARCHOICES(50001);
    INFO_ADDCHOICE(50001, DIALOG_BACK, 50007);
    INFO_ADDCHOICE(50001, CHOICE_HOUSECRAFT_GODSTATUE, 50008);
}

func void PC_HOUSE_CRAFT_GARDEN_BACK_MAINMENU() {
    PC_HOUSE_CRAFT_GARDEN_UNTRIGGERCAMERA();
    PC_HOUSE_CRAFT_RANDOMCAMERA();
    INFO_CLEARCHOICES(50001);
}

func void PC_HOUSE_CRAFT_GARDEN_GOD() {
    PC_HOUSE_CRAFT_GARDEN_GOD_SETCOLLISION_OFF();
    PC_HOUSE_CRAFT_GARDEN_UNTRIGGERCAMERA();
    WLD_SENDTRIGGER("KM_HEROHOUSE_GARDEN_02");
    INFO_CLEARCHOICES(50001);
    INFO_ADDCHOICE(50001, DIALOG_BACK, 50006);
    if ((PLAYERHOUSE_GOD_BELIAR) >= (1)) {
        if ((HOUSE_CRAFT_GARDEN_GOD_OPTION_BELIAR) == (FALSE)) {
            INFO_ADDCHOICE(50001, CHOICE_HOUSECRAFT_BELIAR, 50011);
        };
    };
    if ((PLAYERHOUSE_GOD_ADANOS) >= (1)) {
        if ((HOUSE_CRAFT_GARDEN_GOD_OPTION_ADANOS) == (FALSE)) {
            INFO_ADDCHOICE(50001, CHOICE_HOUSECRAFT_ADANOS, 50010);
        };
    };
    if ((PLAYERHOUSE_GOD_INNOS) >= (1)) {
        if ((HOUSE_CRAFT_GARDEN_GOD_OPTION_INNOS) == (FALSE)) {
            INFO_ADDCHOICE(50001, CHOICE_HOUSECRAFT_INNOS, 50009);
        };
    };
    if ((((HOUSE_CRAFT_GARDEN_GOD_OPTION_INNOS) == (TRUE)) || ((HOUSE_CRAFT_GARDEN_GOD_OPTION_ADANOS) == (TRUE))) || ((HOUSE_CRAFT_GARDEN_GOD_OPTION_BELIAR) == (TRUE))) {
        INFO_ADDCHOICE(50001, CHOICE_HOUSECRAFT_DELETE, 50012);
    };
}

func void PC_HOUSE_CRAFT_GARDEN_GOD_INNOS() {
    PC_HOUSE_CRAFT_GARDEN_GOD_CLEARALLVOBS();
    WLD_SENDTRIGGER("KM_HEROHOUSE_MOVER_GARDEN_GOD_INNOS");
    HOUSE_CRAFT_GARDEN_GOD_OPTION_INNOS = TRUE;
    HOUSE_CRAFT_GARDEN_GOD_OPTION_ADANOS = FALSE;
    HOUSE_CRAFT_GARDEN_GOD_OPTION_BELIAR = FALSE;
    PLAYERHOUSE_GOD_INNOS -= 1;
    PC_HOUSE_CRAFT_GARDEN_GOD();
}

func void PC_HOUSE_CRAFT_GARDEN_GOD_ADANOS() {
    PC_HOUSE_CRAFT_GARDEN_GOD_CLEARALLVOBS();
    WLD_SENDTRIGGER("KM_HEROHOUSE_MOVER_GARDEN_GOD_ADANOS");
    HOUSE_CRAFT_GARDEN_GOD_OPTION_INNOS = FALSE;
    HOUSE_CRAFT_GARDEN_GOD_OPTION_ADANOS = TRUE;
    HOUSE_CRAFT_GARDEN_GOD_OPTION_BELIAR = FALSE;
    PLAYERHOUSE_GOD_ADANOS -= 1;
    PC_HOUSE_CRAFT_GARDEN_GOD();
}

func void PC_HOUSE_CRAFT_GARDEN_GOD_BELIAR() {
    PC_HOUSE_CRAFT_GARDEN_GOD_CLEARALLVOBS();
    WLD_SENDTRIGGER("KM_HEROHOUSE_MOVER_GARDEN_GOD_BELIAR");
    HOUSE_CRAFT_GARDEN_GOD_OPTION_INNOS = FALSE;
    HOUSE_CRAFT_GARDEN_GOD_OPTION_ADANOS = FALSE;
    HOUSE_CRAFT_GARDEN_GOD_OPTION_BELIAR = TRUE;
    PLAYERHOUSE_GOD_BELIAR -= 1;
    PC_HOUSE_CRAFT_GARDEN_GOD();
}

func void PC_HOUSE_CRAFT_GARDEN_GOD_CLEAR() {
    PC_HOUSE_CRAFT_GARDEN_GOD_CLEARALLVOBS();
    HOUSE_CRAFT_GARDEN_GOD_OPTION_INNOS = FALSE;
    HOUSE_CRAFT_GARDEN_GOD_OPTION_ADANOS = FALSE;
    HOUSE_CRAFT_GARDEN_GOD_OPTION_BELIAR = FALSE;
    PC_HOUSE_CRAFT_GARDEN_GOD();
}

