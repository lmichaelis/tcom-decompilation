const int VALUE_RATIONS = 25;
const int VALUE_EVENTPOISON = 35;
const int VALUE_GOLDPOCKET200 = 200;
const int VALUE_EVENTCHEST = 0;
const int VALUE_SECRET_ADVENTUREQUEST = 250;
const int VALUE_CURSEDGOLDCUP = 1000;
const int VALUE_CURSEDGOLDCUPAFTER = 5;
const int VALUE_COURIEREVENTPOCKET = 95;
const int VALUE_ARROWPACKET_100 = 50;
const int VALUE_ARROWPACKET_50 = 25;
const int VALUE_ARROWPACKET_10 = 5;
const int VALUE_BOLTPACKET_100 = 50;
const int VALUE_BOLTPACKET_50 = 25;
const int VALUE_BOLTPACKET_10 = 5;
const int VALUE_OLDCOINPOCKET = 100;
const int VALUE_LOCKPICKSPOCKET = 25;
const int VALUE_MAGICOREPOWDEREDPOCKET = 30;
instance ITSE_EVENTCHEST(C_ITEM) {
    NAME = MISCNAME_EVENTCHEST;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_EVENTCHEST;
    VISUAL = "ItMi_JeweleryChest.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = EVENTCHEST;
    MATERIAL = MAT_METAL;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_EVENTCHEST_1;
}

func void EVENTCHEST() {
    if (NPC_HASITEMS(SELF, 0x9019)) {
        B_PLAYERFINDITEM(0x893f, 1);
        SND_PLAY("PICKLOCK_SUCCESS");
    };
    PRINT(PRINT_KEYMISSING);
    B_SAY_OVERLAY(SELF, SELF, "$KEYMISSING");
    CREATEINVITEMS(SELF, 0x953f, 1);
}

instance ITSE_COURIEREVENTPOCKET(C_ITEM) {
    NAME = MISCNAME_COURIEREVENTPOCKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_COURIEREVENTPOCKET;
    VISUAL = "KM_pocket_02.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    MATERIAL = MAT_LEATHER;
    ON_STATE[0] = COURIEREVENTPOCKET;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_COURIEREVENTPOCKET_1;
    TEXT[2] = ITEMDESC_ITSE_COURIEREVENTPOCKET_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void COURIEREVENTPOCKET() {
    B_PLAYERFINDITEM(0x859b, EVENT_COURIERPACKAGEGOLD);
    B_PLAYERFINDITEM(0x8592, 3);
    B_PLAYERFINDITEM(0x9074, 3);
    B_PLAYERFINDITEM(0x9071, 5);
}

instance ITSE_RIPPEDHAND(C_ITEM) {
    NAME = MISCNAME_RIPPEDHAND;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_CutOutHand.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = RIPPEDHAND;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_RIPPEDHAND_1;
    TEXT[2] = ITEMDESC_ITSE_RIPPEDHAND_2;
}

func void RIPPEDHAND() {
    B_PLAYERFINDITEM(0x85a4, 5);
}

instance ITSE_GOLDPOCKET200(C_ITEM) {
    NAME = MISCNAME_GOLDPOCKET200;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_GOLDPOCKET200;
    VISUAL = "KM_pocket_02.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = GOLDPOCKET200;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_GOLDPOCKET200_1;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void GOLDPOCKET200() {
    B_PLAYERFINDITEM(0x859b, 200);
}

instance ITMI_EVENT_CURSEDGOLDCUP(C_ITEM) {
    NAME = MISCNAME_EVENT_CURSEDGOLDCUP;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = (ITEM_MULTI) | (ITEM_IMPORTANT);
    VALUE = VALUE_CURSEDGOLDCUP;
    VISUAL = "Itmi_Event_CursedGoldCup.3DS";
    MATERIAL = MAT_METAL;
    DESCRIPTION = NAME;
    TEXT[0] = ITEMDESC_ITMI_EVENT_CURSEDGOLDCUP_1;
    TEXT[1] = ITEMDESC_ITMI_EVENT_CURSEDGOLDCUP_2;
    TEXT[2] = ITEMDESC_ITMI_EVENT_CURSEDGOLDCUP_3;
    TEXT[3] = ITEMDESC_ITMI_EVENT_CURSEDGOLDCUP_4;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_EVENT_CURSEDGOLDCUPAFTER(C_ITEM) {
    NAME = MISCNAME_EVENT_CURSEDGOLDCUPAFTER;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_CURSEDGOLDCUPAFTER;
    VISUAL = "ItMi_Event_CursedGoldCupAfter.3DS";
    MATERIAL = MAT_METAL;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_EVENT_CURSEDGOLDCUPAFTER_1;
    TEXT[2] = ITEMDESC_ITMI_EVENT_CURSEDGOLDCUPAFTER_2;
    TEXT[3] = ITEMDESC_ITMI_EVENT_CURSEDGOLDCUPAFTER_3;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITSE_KURTGOODBYEPOCKET(C_ITEM) {
    NAME = SECRETSNAME_GOLDPOCKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = (ITEM_MULTI) | (ITEM_IMPORTANT);
    VALUE = 0;
    VISUAL = "KM_pocket_01.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_KURTGOODBYEPOCKET;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_KURTGOODBYEPOCKET_1;
    TEXT[2] = ITEMDESC_ITSE_KURTGOODBYEPOCKET_2;
}

func void USE_KURTGOODBYEPOCKET() {
    if ((KURT_GIVENGOLD) == (1)) {
        B_PLAYERFINDITEM(0x859b, 300);
    };
    if ((KURT_GIVENGOLD) == (2)) {
        B_PLAYERFINDITEM(0x859b, 150);
    };
}

instance ITSE_GOLDINNOS_SURPRISE(C_ITEM) {
    NAME = MISCNAME_GOLDINNOS_SURPRISE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_GOLDENINNOS;
    VISUAL = "ItMi_InnosStatue.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_GOLDINNOS_SURPRISE;
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_GOLDINNOS_SURPRISE_1;
    TEXT[2] = ITEMDESC_ITSE_GOLDINNOS_SURPRISE_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_GOLDINNOS_SURPRISE() {
    if ((GOLDINNOS_SURPRISE_COUNT) == (0)) {
        B_PLAYERFINDITEM(0x837d, 1);
    };
    if ((GOLDINNOS_SURPRISE_COUNT) == (1)) {
        B_PLAYERFINDITEM(0x85a4, 1);
    };
    if ((GOLDINNOS_SURPRISE_COUNT) == (2)) {
        B_PLAYERFINDITEM(0x859a, 1);
    };
    GOLDINNOS_SURPRISE_COUNT = (GOLDINNOS_SURPRISE_COUNT) + (1);
}

var int USE_GOLDINNOS_SURPRISE.GOLDINNOS_SURPRISE_COUNT = 0;
instance ITSE_SILVERINNOS_SURPRISE(C_ITEM) {
    NAME = MISCNAME_SILVERINNOS_SURPRISE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SILVERINNOS;
    VISUAL = "KM_SilverInnos.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_SILVERINNOS_SURPRISE;
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_SILVERINNOS_SURPRISE_1;
    TEXT[2] = ITEMDESC_ITSE_SILVERINNOS_SURPRISE_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_SILVERINNOS_SURPRISE() {
    if ((SILVERINNOS_SURPRISE_COUNT) == (0)) {
        B_PLAYERFINDITEM(0x904b, 1);
    };
    if ((SILVERINNOS_SURPRISE_COUNT) == (1)) {
        B_PLAYERFINDITEM(0x85b2, 1);
    };
    if ((SILVERINNOS_SURPRISE_COUNT) == (2)) {
        B_PLAYERFINDITEM(0x859f, 1);
    };
    SILVERINNOS_SURPRISE_COUNT = (SILVERINNOS_SURPRISE_COUNT) + (1);
}

var int USE_SILVERINNOS_SURPRISE.SILVERINNOS_SURPRISE_COUNT = 0;
instance ITSE_BRONZEINNOS_SURPRISE(C_ITEM) {
    NAME = MISCNAME_BRONZEINNOS_SURPRISE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_BRONZEINNOS;
    VISUAL = "KM_BronzeInnos.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_BRONZEINNOS_SURPRISE;
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_BRONZEINNOS_SURPRISE_1;
    TEXT[2] = ITEMDESC_ITSE_BRONZEINNOS_SURPRISE_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_BRONZEINNOS_SURPRISE() {
    if ((BRONZEINNOS_SURPRISE_COUNT) == (0)) {
        B_PLAYERFINDITEM(0x8592, 1);
    };
    if ((BRONZEINNOS_SURPRISE_COUNT) == (1)) {
        B_PLAYERFINDITEM(0x85b4, 1);
    };
    if ((BRONZEINNOS_SURPRISE_COUNT) == (2)) {
        B_PLAYERFINDITEM(0x8c8c, 1);
    };
    BRONZEINNOS_SURPRISE_COUNT = (BRONZEINNOS_SURPRISE_COUNT) + (1);
}

var int USE_BRONZEINNOS_SURPRISE.BRONZEINNOS_SURPRISE_COUNT = 0;
instance ITSE_ARROWPACKET_10(C_ITEM) {
    NAME = MISCNAME_ARROWPACKET_10;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_ARROWPACKET_10;
    VISUAL = "Quiver_Arrows_InventoryItem.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_ARROWPACKET_10;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_ARROWPACKET_10_1;
    TEXT[2] = ITEMDESC_ITSE_ARROWPACKET_10_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_ARROWPACKET_10() {
    B_PLAYERFINDITEM(0x864f, 10);
}

instance ITSE_ARROWPACKET_50(C_ITEM) {
    NAME = MISCNAME_ARROWPACKET_50;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_ARROWPACKET_50;
    VISUAL = "Quiver_Arrows_InventoryItem.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_ARROWPACKET_50;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_ARROWPACKET_50_1;
    TEXT[2] = ITEMDESC_ITSE_ARROWPACKET_50_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_ARROWPACKET_50() {
    B_PLAYERFINDITEM(0x864f, 50);
}

instance ITSE_ARROWPACKET_100(C_ITEM) {
    NAME = MISCNAME_ARROWPACKET_100;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_ARROWPACKET_100;
    VISUAL = "Quiver_Arrows_InventoryItem.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_ARROWPACKET_100;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_ARROWPACKET_100_1;
    TEXT[2] = ITEMDESC_ITSE_ARROWPACKET_100_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_ARROWPACKET_100() {
    B_PLAYERFINDITEM(0x864f, 100);
}

instance ITSE_BOLTPACKET_10(C_ITEM) {
    NAME = MISCNAME_BOLTPACKET_10;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_BOLTPACKET_10;
    VISUAL = "Quiver_Bolts_InventoryItem.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_BOLTPACKET_10;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_BOLTPACKET_10_1;
    TEXT[2] = ITEMDESC_ITSE_BOLTPACKET_10_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_BOLTPACKET_10() {
    B_PLAYERFINDITEM(0x8650, 10);
}

instance ITSE_BOLTPACKET_50(C_ITEM) {
    NAME = MISCNAME_BOLTPACKET_50;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_BOLTPACKET_50;
    VISUAL = "Quiver_Bolts_InventoryItem.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_BOLTPACKET_50;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_BOLTPACKET_50_1;
    TEXT[2] = ITEMDESC_ITSE_BOLTPACKET_50_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_BOLTPACKET_50() {
    B_PLAYERFINDITEM(0x8650, 50);
}

instance ITSE_BOLTPACKET_100(C_ITEM) {
    NAME = MISCNAME_BOLTPACKET_100;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_BOLTPACKET_100;
    VISUAL = "Quiver_Bolts_InventoryItem.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_BOLTPACKET_100;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_BOLTPACKET_100_1;
    TEXT[2] = ITEMDESC_ITSE_BOLTPACKET_100_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_BOLTPACKET_100() {
    B_PLAYERFINDITEM(0x8650, 100);
}

instance ITSE_OLDCOINPOCKET(C_ITEM) {
    NAME = MISCNAME_OLDCOINPOCKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_OLDCOINPOCKET;
    VISUAL = "KM_pocket_03.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = OLDCOINPOCKET;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_OLDCOINPOCKET_1;
    TEXT[2] = ITEMDESC_ITSE_OLDCOINPOCKET_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void OLDCOINPOCKET() {
    B_PLAYERFINDITEM(0x859c, 10);
}

instance ITFO_POISON(C_ITEM) {
    NAME = MISCNAME_POISON;
    MAINFLAG = ITEM_KAT_POTIONS;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_EVENTPOISON;
    VISUAL = "KM_new_bottle_06.3ds";
    MATERIAL = MAT_GLAS;
    ON_STATE[0] = USE_POISON;
    SCEMENAME = SCEME_POTIONFAST;
    WEAR = WEAR_EFFECT;
    DESCRIPTION = NAME;
}

func void USE_POISON() {
    B_SAY(SELF, SELF, "$Dead");
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, -(SELF.ATTRIBUTE[1]));
}

instance ITSE_ARAXOSMINE_FOODPACKET_01(C_ITEM) {
    NAME = MISCNAME_ARAXOSMINE_FOODPACKET_01;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_ItMi_Packet_08.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_ARAXOSMINE_FOODPACKET_01;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_ARAXOSMINE_FOODPACKET_01_1;
    TEXT[2] = ITEMDESC_ITSE_ARAXOSMINE_FOODPACKET_01_2;
}

func void USE_ARAXOSMINE_FOODPACKET_01() {
    B_PLAYERFINDITEM(0x84ac, 2);
    B_PLAYERFINDITEM(0x8e05, 2);
    B_PLAYERFINDITEM(0x84be, 2);
    B_PLAYERFINDITEM(0x85de, 5);
    B_PLAYERFINDITEM(0x8e1c, 5);
    B_PLAYERFINDITEM(0x8e12, 1);
}

instance ITSE_ARAXOSMINE_FOODPACKET_02(C_ITEM) {
    NAME = MISCNAME_ARAXOSMINE_FOODPACKET_02;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_ItMi_Packet_07.3ds";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_ARAXOSMINE_FOODPACKET_02;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_ARAXOSMINE_FOODPACKET_02_1;
    TEXT[2] = ITEMDESC_ITSE_ARAXOSMINE_FOODPACKET_02_2;
}

func void USE_ARAXOSMINE_FOODPACKET_02() {
    B_PLAYERFINDITEM(0x8f19, 1);
    B_PLAYERFINDITEM(0x8f36, 1);
    B_PLAYERFINDITEM(0x8f64, 2);
    B_PLAYERFINDITEM(0x8f21, 1);
}

instance ITSE_POWDEREDOREPOCKET(C_ITEM) {
    NAME = MISCNAME_POWDEREDOREPOCKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = (ITEM_MULTI) | (ITEM_IMPORTANT);
    VALUE = 0;
    VISUAL = "KM_pocket_04.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_POWDEREDOREPOCKET;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_POWDEREDOREPOCKET_1;
}

func void USE_POWDEREDOREPOCKET() {
    B_PLAYERFINDITEM(0x8c95, 14);
}

instance ITSE_LOCKPICKSPOCKET(C_ITEM) {
    NAME = MISCNAME_LOCKPICKSPOCKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = (ITEM_MULTI) | (ITEM_IMPORTANT);
    VALUE = VALUE_LOCKPICKSPOCKET;
    VISUAL = "KM_pocket_04.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_LOCKPICKSPOCKET;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_LOCKPICKSPOCKET_1;
    TEXT[2] = ITEMDESC_ITSE_LOCKPICKSPOCKET_2;
    TEXT[3] = ITEMDESC_ITSE_LOCKPICKSPOCKET_3;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_LOCKPICKSPOCKET() {
    B_PLAYERFINDITEM(0x84ca, 12);
}

instance ITSE_MAGICOREPOWDEREDPOCKET(C_ITEM) {
    NAME = MISCNAME_MAGICOREPOWDEREDPOCKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = (ITEM_MULTI) | (ITEM_IMPORTANT);
    VALUE = VALUE_MAGICOREPOWDEREDPOCKET;
    VISUAL = "KM_pocket_04.3DS";
    SCEMENAME = SCEME_MAPSEALED;
    ON_STATE[0] = USE_MAGICOREPOWDEREDPOCKET;
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITSE_MAGICOREPOWDEREDPOCKET_1;
    TEXT[2] = ITEMDESC_ITSE_MAGICOREPOWDEREDPOCKET_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_MAGICOREPOWDEREDPOCKET() {
    B_PLAYERFINDITEM(0x8c95, 12);
}

