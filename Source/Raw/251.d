const int VALUE_SHELL_01 = 30;
const int VALUE_SHELL_02 = 60;
var int SHELL_OPENER = 0;
func void B_OPENSHELL() {
    SHELLOMIZER = HLP_RANDOM(100);
    SHELL_OPENER = (SHELL_OPENER) + (1);
    if ((SHELL_OPENER) == (1)) {
        B_PLAYERFINDITEM(0x837d, 1);
    };
    if ((SHELL_OPENER) == (25)) {
        B_PLAYERFINDITEM(0x85b5, 1);
    };
    if ((SHELLOMIZER) >= (80)) {
        B_PLAYERFINDITEM(0x837d, 1);
    };
    if ((SHELLOMIZER) >= (55)) {
        B_PLAYERFINDITEM(0x8372, 1);
    };
    if ((SHELLOMIZER) >= (50)) {
        B_PLAYERFINDITEM(0x85b2, 1);
    };
    if ((SHELLOMIZER) >= (40)) {
        B_PLAYERFINDITEM(0x85af, 1);
    };
    if ((SHELLOMIZER) >= (35)) {
        B_PLAYERFINDITEM(0x85b1, 1);
    };
    if ((SHELLOMIZER) >= (25)) {
        B_PLAYERFINDITEM(0x85ae, 1);
    };
    B_SAY_OVERLAY(SELF, SELF, "$NOTHINGTOGET02");
    AI_PRINTSCREEN(PRINT_NOTHINGTOGET02, -(1), YPOS_ITEMGIVEN, FONT_SCREENSMALL, 2);
}

var int B_OPENSHELL.SHELLOMIZER = 0;
instance ITMI_SHELL_01(C_ITEM) {
    NAME = MISCNAME_SHELL_01;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SHELL_01;
    VISUAL = "ItMi_Shell_01.3ds";
    MATERIAL = MAT_STONE;
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_SHELL_01;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_SHELL_01_1;
    TEXT[2] = ITEMDESC_ITMI_SHELL_01_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

func void USE_SHELL_01() {
    B_OPENSHELL();
}

instance ITMI_SHELL_02(C_ITEM) {
    NAME = MISCNAME_SHELL_02;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SHELL_02;
    VISUAL = "ItMi_Shell_02.3ds";
    MATERIAL = MAT_STONE;
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_SHELL_02;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_SHELL_01_1;
    TEXT[2] = ITEMDESC_ITMI_SHELL_01_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

func void USE_SHELL_02() {
    B_OPENSHELL();
}
