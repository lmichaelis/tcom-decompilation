const int VALUE_LOCKPICK = 5;
const int VALUE_KEY_01 = 3;
instance ITKE_LOCKPICK(C_ITEM) {
    NAME = MISCNAME_LOCKPICK;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_LOCKPICK;
    VISUAL = "ItKe_Lockpick.3ds";
    MATERIAL = MAT_METAL;
    DESCRIPTION = NAME;
    TEXT[1] = MISCNAME_LOCKPICK_DESC1;
    TEXT[2] = MISCNAME_LOCKPICK_DESC2;
    TEXT[3] = MISCNAME_LOCKPICK_DESC3;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

