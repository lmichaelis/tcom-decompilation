const int VALUE_RUM = 15;
const int MANA_RUM = 20;
const int VALUE_GROG = 20;
const int MANA_GROG = 25;
const int VALUE_PFEFFER_01 = 50;
const int VALUE_SHELLFLESH = 3;
const int HP_SHELLFLESH = 10;
const int MANA_SHELLFLESH = 2;
instance ITFO_ADDON_SHELLFLESH(C_ITEM) {
    NAME = NAMEFOOD_ADDON_SHELLFLESH;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SHELLFLESH;
    VISUAL = "ItAt_Meatbugflesh.3DS";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_FOODHUGE;
    ON_STATE[0] = USE_SHELLFLESH;
    DESCRIPTION = NAME;
    TEXT[1] = DESCFOOD_ADDON_SHELLFLESH;
    TEXT[3] = NAME_BONUS_MANA;
    COUNT[3] = MANA_SHELLFLESH;
    TEXT[4] = NAME_BONUS_HP;
    COUNT[4] = HP_SHELLFLESH;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_SHELLFLESH() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, MANA_SHELLFLESH);
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_SHELLFLESH);
}

instance ITFO_ADDON_RUM(C_ITEM) {
    NAME = FOODNAME_RUM;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_RUM;
    VISUAL = "ItMi_Rum_02.3ds";
    MATERIAL = MAT_GLAS;
    ON_STATE[0] = USERUM;
    SCEMENAME = SCEME_POTIONFAST;
    DESCRIPTION = NAME;
    TEXT[1] = DESCFOOD_ADDON_RUM_1;
    TEXT[2] = DESCFOOD_ADDON_RUM_2;
    TEXT[4] = NAME_BONUS_MANA;
    COUNT[4] = MANA_RUM;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_RUM;
}

func void USERUM() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, MANA_RUM);
}

instance ITFO_ADDON_GROG(C_ITEM) {
    NAME = FOODNAME_GROG;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_GROG;
    VISUAL = "ItMi_Rum_02.3ds";
    MATERIAL = MAT_GLAS;
    ON_STATE[0] = USEGROG;
    SCEMENAME = SCEME_POTIONFAST;
    DESCRIPTION = NAME;
    TEXT[1] = FOODNAME_GROG_DESC;
    TEXT[4] = NAME_BONUS_MANA;
    COUNT[4] = MANA_GROG;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_GROG;
}

func void USEGROG() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, MANA_GROG);
}

instance ITFO_ADDON_PFEFFER_01(C_ITEM) {
    NAME = FOODNAME_PFEFFER;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_PFEFFER_01;
    VISUAL = "KM_pocket_10.3DS";
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = FOODNAME_PFEFFER_DESC1;
    TEXT[2] = FOODNAME_PFEFFER_DESC2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

