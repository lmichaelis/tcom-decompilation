const int VALUE_WEED = 1;
const int VALUE_BEET = 3;
const int HP_BEET = 2;
const int VALUE_SWAMPHERB = 15;
const int MANA_SWAMPHERB = 5;
const int VALUE_MANA_HERB_01 = 10;
const int MANA_MANA_HERB_01 = 10;
const int VALUE_MANA_HERB_02 = 20;
const int MANA_MANA_HERB_02 = 15;
const int VALUE_MANA_HERB_03 = 30;
const int MANA_MANA_HERB_03 = 20;
const int VALUE_HEALTH_HERB_01 = 15;
const int HP_HEALTH_HERB_01 = 10;
const int VALUE_HEALTH_HERB_02 = 25;
const int HP_HEALTH_HERB_02 = 15;
const int VALUE_HEALTH_HERB_03 = 35;
const int HP_HEALTH_HERB_03 = 20;
const int VALUE_DEX_HERB_01 = 500;
const int VALUE_STRENGTH_HERB_01 = 500;
const int VALUE_SPEED_HERB_01 = 20;
const int SPEED_BOOST = 45;
const int VALUE_MUSHROOM_01 = 5;
const int HP_MUSHROOM_01 = 5;
const int VALUE_MUSHROOM_02 = 10;
const int HP_MUSHROOM_02 = 15;
const int VALUE_FORESTBERRY = 5;
const int HP_FORESTBERRY = 7;
const int VALUE_BLUEPLANT = 5;
const int HP_BLUEPLANT = 5;
const int MANA_BLUEPLANT = 5;
const int VALUE_PLANEBERRY = 5;
const int HP_PLANEBERRY = 5;
const int VALUE_TEMP_HERB = 10;
const int VALUE_PERM_HERB = 500;
func void FOOD_MUSHROOMBONUS() {
    if ((SELF.ID) == (0)) {
        if (((DUNKELPILZ_BONUS) >= (15)) && ((DUNKELPILZ_BONUS) < (35))) {
            if ((FOOD_MUSHROOMBONUS_PRINT1) == (FALSE)) {
                FOOD_MUSHROOMBONUS_PRINT1 = TRUE;
                PRINT(PRINT_MUCHROOM_EAT1);
            };
        } else if (((DUNKELPILZ_BONUS) >= (35)) && ((DUNKELPILZ_BONUS) < (50))) {
            if ((FOOD_MUSHROOMBONUS_PRINT2) == (FALSE)) {
                FOOD_MUSHROOMBONUS_PRINT2 = TRUE;
                PRINT(PRINT_MUCHROOM_EAT2);
            };
        } else if ((DUNKELPILZ_BONUS) >= (50)) {
            B_RAISEATTRIBUTE(SELF, ATR_MANA_MAX, 5);
            NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, 5);
            PRINT(PRINT_MUCHROOM_EAT3);
            FOOD_MUSHROOMBONUS_PRINT1 = FALSE;
            FOOD_MUSHROOMBONUS_PRINT2 = FALSE;
            SND_PLAY("LevelUp");
            DUNKELPILZ_BONUS = (DUNKELPILZ_BONUS) - (50);
        };
    };
}

var int FOOD_MUSHROOMBONUS.FOOD_MUSHROOMBONUS_PRINT1 = 0;
var int FOOD_MUSHROOMBONUS.FOOD_MUSHROOMBONUS_PRINT2 = 0;
instance ITPL_WEED(C_ITEM) {
    NAME = PLANTNAME_WEED;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_WEED;
    VISUAL = "ItPl_Weed.3ds";
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    SCEMENAME = SCEME_NOTHING;
    TEXT[1] = PLANTDESC_WEED_1;
    TEXT[2] = PLANTDESC_WEED_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_WEED;
}

instance ITPL_WEED_LOKVAR(C_ITEM) {
    NAME = PLANTNAME_WEED;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_WEED;
    VISUAL = "ItPl_Weed.3ds";
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    SCEMENAME = SCEME_NOTHING;
    TEXT[1] = PLANTDESC_WEED_1;
    TEXT[2] = PLANTDESC_WEED_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_WEED;
}

instance ITPL_BEET(C_ITEM) {
    NAME = PLANTNAME_BEET;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_BEET;
    VISUAL = "ItPl_Beet.3ds";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_BEET;
    SCEMENAME = SCEME_NOTHING;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_BEET_1;
    TEXT[2] = PLANTDESC_BEET_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_BEET;
}

func void USE_BEET() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_BEET);
}

instance ITPL_SWAMPHERB(C_ITEM) {
    NAME = PLANTNAME_SWAMPHERB;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SWAMPHERB;
    VISUAL = "ItPl_SwampHerb.3ds";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_SWAMPHERB;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_SWAMPHERB_1;
    TEXT[2] = PLANTDESC_SWAMPHERB_2;
    TEXT[4] = NAME_BONUS_MANA;
    COUNT[4] = MANA_SWAMPHERB;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_SWAMPHERB;
}

func void USE_SWAMPHERB() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, MANA_SWAMPHERB);
}

instance ITPL_MANA_HERB_01(C_ITEM) {
    NAME = PLANTNAME_MANA_HERB_01;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_MANA_HERB_01;
    VISUAL = "ItPl_Mana_Herb_01.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_MANA_HERB_01;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_MANA_HERB_01_1;
    TEXT[2] = PLANTDESC_MANA_HERB_01_2;
    TEXT[4] = NAME_BONUS_MANA;
    COUNT[4] = MANA_MANA_HERB_01;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_MANA_HERB_01;
}

func void USE_MANA_HERB_01() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, MANA_MANA_HERB_01);
}

instance ITPL_MANA_HERB_02(C_ITEM) {
    NAME = PLANTNAME_MANA_HERB_02;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_MANA_HERB_02;
    VISUAL = "ItPl_Mana_Herb_02.3ds";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_MANA_HERB_02;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_MANA_HERB_02;
    TEXT[4] = NAME_BONUS_MANA;
    COUNT[4] = MANA_MANA_HERB_02;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_MANA_HERB_02;
}

func void USE_MANA_HERB_02() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, MANA_MANA_HERB_02);
}

instance ITPL_MANA_HERB_03(C_ITEM) {
    NAME = PLANTNAME_MANA_HERB_03;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_MANA_HERB_03;
    VISUAL = "ItPl_Mana_Herb_03.3ds";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_MANA_HERB_03;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_MANA_HERB_03_1;
    TEXT[2] = PLANTDESC_MANA_HERB_03_2;
    TEXT[4] = NAME_BONUS_MANA;
    COUNT[4] = MANA_MANA_HERB_03;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_MANA_HERB_03;
}

func void USE_MANA_HERB_03() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, MANA_MANA_HERB_03);
}

instance ITPL_HEALTH_HERB_01(C_ITEM) {
    NAME = FOODNAME_HEALTH_HERB_01;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_HEALTH_HERB_01;
    VISUAL = "ItPl_Health_Herb_01.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_HEALTH_HERB_01;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = FOODNAME_HEALTH_HERB_01_DESC1;
    TEXT[2] = FOODNAME_HEALTH_HERB_01_DESC2;
    TEXT[4] = NAME_BONUS_HP;
    COUNT[4] = HP_HEALTH_HERB_01;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_HEALTH_HERB_01;
}

func void USE_HEALTH_HERB_01() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_HEALTH_HERB_01);
}

instance ITPL_HEALTH_HERB_02(C_ITEM) {
    NAME = PLANTNAME_HEALTH_HERB_02;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_HEALTH_HERB_02;
    VISUAL = "ItPl_Health_Herb_02.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_HEALTH_HERB_02;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_HEALTH_HERB_02_1;
    TEXT[2] = PLANTDESC_HEALTH_HERB_02_2;
    TEXT[4] = NAME_BONUS_HP;
    COUNT[4] = HP_HEALTH_HERB_02;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_HEALTH_HERB_02;
}

func void USE_HEALTH_HERB_02() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_HEALTH_HERB_02);
}

instance ITPL_HEALTH_HERB_03(C_ITEM) {
    NAME = PLANTNAME_HEALTH_HERB_03;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_HEALTH_HERB_03;
    VISUAL = "ItPl_Health_Herb_03.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_HEALTH_HERB_03;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_HEALTH_HERB_03;
    TEXT[4] = NAME_BONUS_HP;
    COUNT[4] = HP_HEALTH_HERB_03;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_HEALTH_HERB_03;
}

func void USE_HEALTH_HERB_03() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_HEALTH_HERB_03);
}

instance ITPL_DEX_HERB_01(C_ITEM) {
    NAME = PLANTNAME_DEX_HERB_01;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_DEX_HERB_01;
    VISUAL = "ItPl_Dex_Herb_01.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_DEX_HERB_01;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_DEX_HERB_01_1;
    TEXT[2] = PLANTDESC_DEX_HERB_01_2;
    TEXT[4] = NAME_BONUS_DEX;
    COUNT[4] = 1;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_DEX_HERB_01;
}

func void USE_DEX_HERB_01() {
    B_RAISEATTRIBUTE(SELF, ATR_DEXTERITY, 1);
}

instance ITPL_STRENGTH_HERB_01(C_ITEM) {
    NAME = PLANTNAME_STRENGTH_HERB_01;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_STRENGTH_HERB_01;
    VISUAL = "ItPl_Strength_Herb_01.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_STRENGTH_HERB_01;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[0] = PLANTDESC_STRENGTH_HERB_01_1;
    TEXT[1] = PLANTDESC_STRENGTH_HERB_01_2;
    TEXT[2] = PLANTDESC_STRENGTH_HERB_01_3;
    TEXT[4] = NAME_BONUS_STR;
    COUNT[4] = 1;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_STRENGTH_HERB_01;
}

func void USE_STRENGTH_HERB_01() {
    B_RAISEATTRIBUTE(SELF, ATR_STRENGTH, 1);
}

instance ITPL_SPEED_HERB_01(C_ITEM) {
    NAME = PLANTNAME_SPEED_HERB_01;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SPEED_HERB_01;
    VISUAL = "ItPl_Speed_Herb_01.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_SPEED_HERB_01;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_SPEED_HERB_01_1;
    TEXT[2] = PLANTDESC_SPEED_HERB_01_2;
    TEXT[4] = NAME_SEC_DURATION;
    COUNT[4] = SPEED_BOOST;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_SPEED_HERB_01;
}

func void USE_SPEED_HERB_01() {
    BUFF_APPLYEXT(SELF, 0x7ec6, (SPEED_BOOST) * (1000), FALSE, TRUE);
}

instance ITPL_MUSHROOM_01(C_ITEM) {
    NAME = PLANTNAME_MUSHROOM_01;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_MUSHROOM_01;
    VISUAL = "ItPl_Mushroom_01.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_MUSHROOM_01;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_MUSHROOM_01_1;
    TEXT[2] = PLANTDESC_MUSHROOM_01_2;
    TEXT[4] = NAME_BONUS_HP;
    COUNT[4] = HP_MUSHROOM_01;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_MUSHROOM_01;
}

func void USE_MUSHROOM_01() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_MUSHROOM_01);
    DUNKELPILZ_BONUS = (DUNKELPILZ_BONUS) + (1);
    FOOD_MUSHROOMBONUS();
}

instance ITPL_MUSHROOM_02(C_ITEM) {
    NAME = PLANTNAME_MUSHROOM_02;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_MUSHROOM_02;
    VISUAL = "ItPl_Mushroom_02.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_MUSHROOM_02;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_MUSHROOM_02_1;
    TEXT[2] = PLANTDESC_MUSHROOM_02_2;
    TEXT[4] = NAME_BONUS_HP;
    COUNT[4] = HP_MUSHROOM_02;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_MUSHROOM_02;
}

func void USE_MUSHROOM_02() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_MUSHROOM_02);
}

instance ITPL_BLUEPLANT(C_ITEM) {
    NAME = PLANTNAME_BLUEPLANT;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_BLUEPLANT;
    VISUAL = "ItPl_Blueplant.3DS";
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = USE_BLUEPLANT;
    SCEMENAME = SCEME_FOOD;
    DESCRIPTION = NAME;
    TEXT[0] = PLANTDESC_BLUEPLANT_1;
    TEXT[1] = PLANTDESC_BLUEPLANT_2;
    TEXT[3] = NAME_BONUS_HP;
    COUNT[3] = HP_BLUEPLANT;
    TEXT[4] = NAME_BONUS_MANA;
    COUNT[4] = MANA_BLUEPLANT;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_BLUEPLANT;
}

func void USE_BLUEPLANT() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, MANA_BLUEPLANT);
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_BLUEPLANT);
}

instance ITPL_FORESTBERRY(C_ITEM) {
    NAME = FOODNAME_FORESTBERRY;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_FORESTBERRY;
    VISUAL = "ItPl_Forestberry.3DS";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_FOOD;
    ON_STATE[0] = USE_FORESTBERRY;
    DESCRIPTION = NAME;
    TEXT[1] = FOODNAME_FORESTBERRY_DESC;
    TEXT[4] = NAME_BONUS_HP;
    COUNT[4] = HP_FORESTBERRY;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_FORESTBERRY;
}

func void USE_FORESTBERRY() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_FORESTBERRY);
}

instance ITPL_PLANEBERRY(C_ITEM) {
    NAME = PLANTNAME_PLANEBERRY;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_PLANEBERRY;
    VISUAL = "ItPl_Planeberry.3DS";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_FOOD;
    ON_STATE[0] = USE_PLANEBERRY;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_PLANEBERRY;
    TEXT[4] = NAME_BONUS_HP;
    COUNT[4] = HP_PLANEBERRY;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_PLANEBERRY;
}

func void USE_PLANEBERRY() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_PLANEBERRY);
}

instance ITPL_TEMP_HERB(C_ITEM) {
    NAME = PLANTNAME_TEMP_HERB;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = (ITEM_MULTI) | (ITEM_MISSION);
    VALUE = VALUE_TEMP_HERB;
    VISUAL = "ItPl_Temp_Herb.3ds";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_NOTHING;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_TEMP_HERB_1;
    TEXT[2] = PLANTDESC_TEMP_HERB_2;
    TEXT[3] = PLANTDESC_TEMP_HERB_3;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_TEMP_HERB;
}

instance ITPL_PERM_HERB(C_ITEM) {
    NAME = PLANTNAME_PERM_HERB;
    MAINFLAG = ITEM_KAT_FOOD;
    FLAGS = (ITEM_MULTI) | (ITEM_MISSION);
    VALUE = VALUE_PERM_HERB;
    VISUAL = "ItPl_Perm_Herb.3ds";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_NOTHING;
    DESCRIPTION = NAME;
    TEXT[1] = PLANTDESC_PERM_HERB_1;
    TEXT[2] = PLANTDESC_PERM_HERB_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE_PERM_HERB;
}

