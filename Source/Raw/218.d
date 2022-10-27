instance ITSE_ERZFISCH(C_ITEM) {
    NAME = SECRETSNAME_FISH1;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MISSION;
    VALUE = 25;
    VISUAL = "ItFo_Fish.3DS";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_ERZFISCH;
    DESCRIPTION = NAME;
    TEXT[1] = SECRETSDESC_FISH;
}

func void USE_ERZFISCH() {
    B_PLAYERFINDITEM(0x859a, 1);
}

instance ITSE_GOLDFISCH(C_ITEM) {
    NAME = SECRETSNAME_FISH2;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MISSION;
    VALUE = 25;
    VISUAL = "ItFo_Fish.3DS";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_GOLDFISCH;
    DESCRIPTION = NAME;
    TEXT[1] = SECRETSDESC_FISH;
}

func void USE_GOLDFISCH() {
    B_PLAYERFINDITEM(0x859b, 50);
}

instance ITPO_PERM_MAGICPOTENTIAL(C_ITEM) {
    NAME = POTIONNAME_PERM_MAGICPOTENTIAL;
    MAINFLAG = ITEM_KAT_POTIONS;
    FLAGS = ITEM_MULTI;
    VALUE = 0xdac;
    VISUAL = "KM_new_bottle_07.3DS";
    MATERIAL = MAT_GLAS;
    SCEMENAME = SCEME_POTIONFAST;
    ON_STATE[0] = USE_RINGFISCH;
    DESCRIPTION = NAME;
    TEXT[2] = NAME_MAGICDAMAGE_BONUS;
    COUNT[2] = 5;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_RINGFISCH() {
    if ((SELF.ID) == (0)) {
        PRINTSCREEN(CS3(NAME_MAGICDAMAGE_BONUS, RESERVED_CONST_STRING_49, INTTOSTRING(HP_APPLE)), -(1), -(1), FONT_SCREEN, 4);
        RESERVED_VAR_INT_05 += 1;
    };
}

instance ITSE_LOCKPICKFISCH(C_ITEM) {
    NAME = SECRETSNAME_FISH4;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = (ITEM_MISSION) | (ITEM_MULTI);
    VALUE = (VALUE_LOCKPICK) * (3);
    VISUAL = "ItFo_Fish.3DS";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_LOCKPICKFISCH;
    DESCRIPTION = NAME;
    TEXT[1] = SECRETSDESC_FISH;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_LOCKPICKFISCH() {
    B_PLAYERFINDITEM(0x84ca, 3);
}

instance ITSE_GOLDPOCKET25(C_ITEM) {
    NAME = SECRETSNAME_GOLDPOCKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 25;
    VISUAL = "KM_pocket_02.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = GOLDPOCKET25;
    DESCRIPTION = NAME;
    TEXT[1] = SECRETSDESC_GOLDPOCKET25;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void GOLDPOCKET25() {
    B_PLAYERFINDITEM(0x859b, 25);
}

instance ITSE_GOLDPOCKET50(C_ITEM) {
    NAME = SECRETSNAME_GOLDPOCKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 50;
    VISUAL = "KM_pocket_02.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = GOLDPOCKET50;
    DESCRIPTION = NAME;
    TEXT[1] = SECRETSDESC_GOLDPOCKET50;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void GOLDPOCKET50() {
    B_PLAYERFINDITEM(0x859b, 50);
}

instance ITSE_GOLDPOCKET100(C_ITEM) {
    NAME = SECRETSNAME_GOLDPOCKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 100;
    VISUAL = "KM_pocket_02.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = GOLDPOCKET100;
    DESCRIPTION = NAME;
    TEXT[1] = SECRETSDESC_GOLDPOCKET100_1;
    TEXT[2] = SECRETSDESC_GOLDPOCKET100_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void GOLDPOCKET100() {
    B_PLAYERFINDITEM(0x859b, 100);
}
