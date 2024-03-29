const int VALUE_POISON = 50;
const int VALUE_WEIRDSTONE = 5;
const int VALUE_ANTIDOTE = 25;
const int VALUE_SHOVEL = 18;
const int VALUE_SMELLINGSALT = 50;
const int VALUE_WATERPEARL = 500;
const int VALUE_DISTILLER = 0;
const int VALUE_HEAVYSACK = 0;
const int VALUE_FISHROD = 25;
const int VALUE_SPYGLASS = 50;
const int VALUE_BARBKNIFE = 5;
const int VALUE_SILVERWARE = 5;
const int VALUE_SALT = 50;
const int VALUE_SALTORE = 70;
const int VALIE_FAKEARTIFACT_CROWN = 40;
const int VALUE_SCAVENGERWOOD = 15;
const int VALUE_GOLDENINNOS = 100;
const int VALUE_SILVERINNOS = 50;
const int VALUE_BRONZEINNOS = 15;
const int VALUE_SILVER = 20;
const int VALUE_FLUTE = 10;
const int VALUE_TOBACCO = 15;
const int VALUE_STRONGTOBACCO = 20;
const int VALUE_MONSTERGUTS = 1;
const int HP_WATERPEARL = 35;
const int MANAMAX_WATERPEARL = 5;
instance ITMI_SILVER(C_ITEM) {
    NAME = NAMEMISC_SILVER;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SILVER;
    VISUAL = "KM_vob_silver_nugget_01.3ds";
    MATERIAL = MAT_STONE;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_SILVER_1;
    TEXT[2] = ITEMDESC_ITMI_SILVER_2;
    TEXT[3] = ITEMDESC_ITMI_SILVER_3;
    TEXT[4] = ITEMDESC_ITMI_SILVER_4;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

instance ITMI_BARBKNIFE(C_ITEM) {
    NAME = NAMEMISC_RAZOR;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_BARBKNIFE;
    VISUAL = "ItMi_Stuff_Barbknife_01.3DS";
    MATERIAL = MAT_METAL;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_BARBKNIFE_1;
    TEXT[2] = ITEMDESC_ITMI_BARBKNIFE_2;
    TEXT[3] = ITEMDESC_ITMI_BARBKNIFE_3;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_SILVERWARE(C_ITEM) {
    NAME = NAMEMISC_SILVERWARE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SILVERWARE;
    VISUAL = "ItMi_Stuff_Silverware_01.3DS";
    MATERIAL = MAT_METAL;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_SILVERWARE_1;
    TEXT[2] = ITEMDESC_ITMI_SILVERWARE_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_SALT(C_ITEM) {
    NAME = NAMEMISC_SALT;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SALT;
    VISUAL = "ItMi_Alchemy_Salt_01.3DS";
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = NAMEMISC_SALT_DESC1;
    TEXT[2] = NAMEMISC_SALT_DESC2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_SALT_ORE(C_ITEM) {
    NAME = NAMEMISC_SALTORE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SALTORE;
    VISUAL = "KM_vob_salt_nugget_01.3DS";
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_SALT_ORE_1;
    TEXT[2] = ITEMDESC_ITMI_SALT_ORE_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_SCAVENGERWOOD(C_ITEM) {
    NAME = NAMEMISC_WOODENSCAVENGER;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SCAVENGERWOOD;
    VISUAL = "KM_ITMI_SCAVENGERWOOD.3DS";
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
}

instance ITMI_GOLDENINNOS(C_ITEM) {
    NAME = NAMEMISC_GOLDENINNOS;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_GOLDENINNOS;
    VISUAL = "ItMi_InnosStatue.3DS";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_GOLDENINNOS_1;
    TEXT[2] = ITEMDESC_ITMI_GOLDENINNOS_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_SILVERINNOS(C_ITEM) {
    NAME = NAMEMISC_SILVERINNOS;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SILVERINNOS;
    VISUAL = "KM_SilverInnos.3DS";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_SILVERINNOS_1;
    TEXT[2] = ITEMDESC_ITMI_GOLDENINNOS_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_BRONZEINNOS(C_ITEM) {
    NAME = NAMEMISC_BRONZEINNOS;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_BRONZEINNOS;
    VISUAL = "KM_BronzeInnos.3DS";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_BRONZEINNOS_1;
    TEXT[2] = ITEMDESC_ITMI_GOLDENINNOS_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_OAR(C_ITEM) {
    NAME = NAMEMISC_OAR;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_vob_oar_01.3DS";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_OAR_1;
    TEXT[2] = ITEMDESC_ITMI_OAR_2;
}

instance ITMI_PALMBOARD(C_ITEM) {
    NAME = NAMEMISC_PALMBOARD;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_vob_board_01.3DS";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_PALMBOARD_1;
    TEXT[2] = ITEMDESC_ITMI_PALMBOARD_2;
    TEXT[3] = ITEMDESC_ITMI_PALMBOARD_3;
}

instance ITMI_STRONGPOISON(C_ITEM) {
    NAME = NAMEMISC_STRONGPOISON;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_POISON;
    VISUAL = "KM_new_bottle_06.3DS";
    MATERIAL = MAT_GLAS;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_STRONGPOISON_1;
    TEXT[2] = ITEMDESC_ITMI_STRONGPOISON_2;
}

instance ITMI_ANTIDOTE(C_ITEM) {
    NAME = NAMEMISC_ANTIDOTE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_ANTIDOTE;
    VISUAL = "KM_new_bottle_03.3DS";
    MATERIAL = MAT_GLAS;
    DESCRIPTION = NAME;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    TEXT[1] = ITEMDESC_ITMI_ANTIDOTE_1;
    TEXT[2] = ITEMDESC_ITMI_ANTIDOTE_2;
}

instance ITMI_SHOVEL(C_ITEM) {
    NAME = NAMEMISC_SHOVEL;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SHOVEL;
    ON_STATE[0] = USE_SHOVEL;
    VISUAL = "KM_vob_shovel.3DS";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    SCEMENAME = "DIG";
    TEXT[1] = MISCDESC_SHOVEL_TEXT02;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

func void USE_SHOVEL() {
    var int ARG_02_CHECK;
    if ((SELF.ID) == (0)) {
        if (((THISSHOULDBENOTHERE_CHECK) == (TRUE)) && ((NPC_GETDISTTOWP(HERO, "PART4_ARG_01")) <= (500))) {
            if ((ARG_02_CHECK) == (FALSE)) {
                ARG_02_CHECK = TRUE;
                WLD_SENDTRIGGER("ARG_SECRET02");
                WLD_INSERTITEM(40008, "FP_ARG_P4");
            };
        };
    };
}

instance ITMI_SMELLINGSALT(C_ITEM) {
    NAME = NAMEMISC_SMELLINGSALT;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SMELLINGSALT;
    VISUAL = "KM_SoberingSalts.3DS";
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    SCEMENAME = SCEME_POTIONFAST;
    TEXT[1] = MISCDESC_SMELLINGSALT_TEXT02;
    TEXT[2] = MISCDESC_SMELLINGSALT_TEXT03;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_WATERPEARL(C_ITEM) {
    NAME = NAMEMISC_WATERPEAL;
    MAINFLAG = ITEM_KAT_POTIONS;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_WATERPEARL;
    SCEMENAME = SCEME_FOOD;
    ON_STATE[0] = USE_WATERPEARL;
    VISUAL = "KM_WaterPearl.3ds";
    MATERIAL = MAT_STONE;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_WATERPEARL_1;
    TEXT[2] = ITEMDESC_ITMI_WATERPEARL_2;
    TEXT[3] = NAME_BONUS_HP;
    COUNT[3] = HP_WATERPEARL;
    TEXT[4] = NAME_BONUS_MANAMAX;
    COUNT[4] = MANAMAX_WATERPEARL;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_MISC_STANDARD;
}

func void USE_WATERPEARL() {
    NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, HP_WATERPEARL);
    B_RAISEATTRIBUTE(SELF, ATR_MANA_MAX, MANAMAX_WATERPEARL);
    NPC_CHANGEATTRIBUTE(SELF, ATR_MANA, MANAMAX_WATERPEARL);
}

instance ITMI_HEAVYSACK(C_ITEM) {
    NAME = NAMEMISC_HEAVYSACK;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = (ITEM_MULTI) | (ITEM_IMPORTANT);
    VALUE = VALUE_HEAVYSACK;
    VISUAL = "KM_VOB_SACKS_02.3DS";
    MATERIAL = MAT_METAL;
    DESCRIPTION = NAME;
    TEXT[1] = MISCDESC_HEAVYSACK_TEXT02;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

instance ITMI_FISHROD(C_ITEM) {
    NAME = NAMEMISC_FISHROD;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_FISHROD;
    VISUAL = "KM_fishing_rod_01.3DS";
    MATERIAL = MAT_WOOD;
    SCEMENAME = "FISHING";
    DESCRIPTION = NAME;
    TEXT[1] = MISCDESC_FISHROD_TEXT02;
    TEXT[2] = MISCDESC_FISHROD_TEXT03;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

instance ITMI_SPYGLASS(C_ITEM) {
    NAME = NAMEMISC_SPYGLASS;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_SPYGLASS;
    VISUAL = "KM_lunette_01.3DS";
    MATERIAL = MAT_WOOD;
    SCEMENAME = "SPYGLASS";
    DESCRIPTION = NAME;
    TEXT[1] = MISCDESC_SPYGLASS_TEXT02;
    TEXT[2] = MISCDESC_SPYGLASS_TEXT03;
    TEXT[3] = MISCDESC_SPYGLASS_TEXT04;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

instance ITMI_BUCKETOFWATER(C_ITEM) {
    NAME = NAMEMISC_BUCKETOFWATER;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_VOB_BUCKET_03.3ds";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_BUCKETOFWATER_1;
    TEXT[2] = ITEMDESC_ITMI_BUCKETOFWATER_2;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

instance ITMI_PAINTBRUSH(C_ITEM) {
    NAME = NAMEMISC_PAINTBRUSH;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_vob_brush_01.3ds";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

instance ITMI_PALETTE(C_ITEM) {
    NAME = NAMEMISC_PALETTE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_vob_painting_palette_01.3ds";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

instance ITMI_CANONBALL(C_ITEM) {
    NAME = NAMEMISC_CANNONBALL;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_CANONBALL.3ds";
    MATERIAL = MAT_METAL;
    DESCRIPTION = NAME;
    TEXT[4] = ITEMDESC_ITMI_CANONBALL_1;
}

instance ITMI_FAKEARTIFACT_CROWN(C_ITEM) {
    NAME = NAMEMISC_ADANOSCROWN;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALIE_FAKEARTIFACT_CROWN;
    VISUAL = "KM_FakeArtefact_AddanosCrown.3DS";
    MATERIAL = MAT_METAL;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_FAKEARTIFACT_CROWN_1;
    TEXT[2] = ITEMDESC_ITMI_FAKEARTIFACT_CROWN_2;
    INV_ZBIAS = INVCAM_ENTF_MISC2_STANDARD;
}

instance ITMI_BODOWINPACKET(C_ITEM) {
    NAME = NAMEMISC_BODOWINPACKET;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = (ITEM_IMPORTANT) | (ITEM_MULTI);
    VALUE = 0;
    VISUAL = "KM_ItMi_Packet_01.3ds";
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_BODOWINPACKET_1;
    TEXT[2] = ITEMDESC_ITMI_BODOWINPACKET_2;
}

instance ITMI_WEIRDSTONE(C_ITEM) {
    NAME = NAMEMISC_WEIRDSTONE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_WEIRDSTONE;
    VISUAL = "KM_WeirdStone.3ds";
    MATERIAL = MAT_STONE;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_WEIRDSTONE_1;
    TEXT[2] = ITEMDESC_ITMI_WEIRDSTONE_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
}

instance ITMI_BAKERSPOON(C_ITEM) {
    NAME = NAMEMISC_BAKERSPOON;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = 0;
    VISUAL = "KM_vob_breadgiver_02.3ds";
    MATERIAL = MAT_WOOD;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_BAKERSPOON_1;
    TEXT[2] = ITEMDESC_ITMI_BAKERSPOON_2;
}

instance ITFS_FLUTENPC(C_ITEM) {
    NAME = MISCNAME_FLUTE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_FLUTE;
    VISUAL = "KM_FLUTE.3DS";
    MATERIAL = MAT_WOOD;
    SCEMENAME = "FLUTENPC";
    DESCRIPTION = NAME;
}

instance ITFS_FLUTE(C_ITEM) {
    NAME = MISCNAME_FLUTE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_FLUTE;
    VISUAL = "KM_FLUTE.3DS";
    MATERIAL = MAT_WOOD;
    SCEMENAME = SCEME_FLUTE;
    DESCRIPTION = NAME;
    ON_STATE[0] = USE_FLUTE_STOP;
    ON_STATE[1] = USE_FLUTE;
    ON_STATE[2] = USE_FLUTE_STOP;
}

func void BOUNTY_SHADOWBEAST_CHANGERTN() {
    BOUNTY_SHADOWBEAST_WAKEUP = 2;
    B_STARTOTHERROUTINE(BDT_8027_SHADOWBEAST, "FIGHT");
    NPC_REFRESH(BDT_8027_SHADOWBEAST);
}

func void USE_FLUTE_STOP() {
    if (((SELF.ID) == (0)) == (FALSE)) {
        return;
    };
    if (HLP_ISVALIDNPC(BDT_8027_SHADOWBEAST)) {
        if ((NPC_ISDEAD(BDT_8027_SHADOWBEAST)) == (FALSE)) {
            if ((NPC_GETDISTTONPC(HERO, BDT_8027_SHADOWBEAST)) <= (700)) {
                if ((BOUNTY_SHADOWBEAST_WAKEUP) == (4)) {
                    BOUNTY_SHADOWBEAST_WAKEUP = 2;
                    B_GIVEPLAYERXP(XP_BOUNTY_WAKEUPSHADOWBEAST);
                    B_SETATTRIBUTESTOLEVEL(BDT_8027_SHADOWBEAST, 45);
                    NPC_CLEARAIQUEUE(BDT_8027_SHADOWBEAST);
                    NPC_EXCHANGEROUTINE(BDT_8027_SHADOWBEAST, "FIGHT");
                    AI_TURNTONPC(BDT_8027_SHADOWBEAST, HERO);
                    AI_PLAYANI(BDT_8027_SHADOWBEAST, "T_WARN");
                    AI_PLAYANI(BDT_8027_SHADOWBEAST, "T_WARN");
                    AI_STANDUPQUICK(BDT_8027_SHADOWBEAST);
                    AI_FUNCTION(BDT_8027_SHADOWBEAST, 36971);
                };
            };
        };
    };
    STOPALLSOUNDS();
}

func void USE_FLUTE() {
    var int ARG_04_CHECK;
    var int SONG;
    if (((SELF.ID) == (0)) == (FALSE)) {
        return;
    };
    if (HLP_ISVALIDNPC(BDT_8027_SHADOWBEAST)) {
        if ((NPC_ISDEAD(BDT_8027_SHADOWBEAST)) == (FALSE)) {
            if ((NPC_GETDISTTONPC(HERO, BDT_8027_SHADOWBEAST)) <= (700)) {
                PRINTSCREEN(PRINT_FLUTESECRET, -(1), -(1), FONT_SCREEN, 4);
                BOUNTY_SHADOWBEAST_WAKEUP = 3;
            };
        };
    };
    SONG = HLP_RANDOM(23);
    if (((SONG) == (0)) || ((SONG) == (1))) {
        SND_PLAY("FLUTE_SONG_01");
    };
    if ((SONG) == (2)) {
        SND_PLAY("FLUTE_SONG_02");
    };
    if ((SONG) == (3)) {
        SND_PLAY("FLUTE_SONG_03");
    };
    if ((SONG) == (4)) {
        SND_PLAY("FLUTE_SONG_04");
    };
    if ((SONG) == (5)) {
        SND_PLAY("FLUTE_SONG_05");
    };
    if ((SONG) == (6)) {
        SND_PLAY("FLUTE_SONG_06");
    };
    if ((SONG) == (7)) {
        SND_PLAY("FLUTE_SONG_07");
    };
    if ((SONG) == (8)) {
        SND_PLAY("FLUTE_SONG_08");
    };
    if ((SONG) == (9)) {
        SND_PLAY("FLUTE_SONG_09");
    };
    if ((SONG) == (10)) {
        SND_PLAY("FLUTE_SONG_10");
    };
    if ((SONG) == (11)) {
        SND_PLAY("FLUTE_SONG_11");
        if ((YOUMUSTGOBACK_CHECK) == (TRUE)) {
            if ((((((NPC_GETDISTTOWP(HERO, "PART11_ARG_01")) <= (300)) && ((RNG_ZOMBIEFABIOCASE) != (1))) && ((RNG_ZOMBIEFABIOCASE2) != (1))) && ((Q401_FABIOANDGANGGONE) == (1))) && ((LOG_GETSTATUS(MIS_Q401)) == (LOG_SUCCESS))) {
                if ((ARG_04_CHECK) == (FALSE)) {
                    ARG_04_CHECK = TRUE;
                    WLD_SENDTRIGGER("ARG_SECRET04");
                    WLD_INSERTITEM(40014, "FP_ARG_P11");
                };
            };
        };
    };
    if ((SONG) == (12)) {
        SND_PLAY("FLUTE_SONG_12");
    };
    if ((SONG) == (13)) {
        SND_PLAY("FLUTE_SONG_13");
    };
    if ((SONG) == (14)) {
        SND_PLAY("FLUTE_SONG_14");
    };
    if ((SONG) == (15)) {
        SND_PLAY("FLUTE_SONG_15");
    };
    if ((SONG) == (16)) {
        SND_PLAY("FLUTE_SONG_16");
    };
    if ((SONG) == (17)) {
        SND_PLAY("FLUTE_SONG_17");
    };
    if ((SONG) == (18)) {
        SND_PLAY("FLUTE_SONG_18");
    };
    if ((SONG) == (19)) {
        SND_PLAY("FLUTE_SONG_19");
    };
    if ((SONG) == (20)) {
        SND_PLAY("FLUTE_SONG_20");
    };
    if ((SONG) == (21)) {
        SND_PLAY("FLUTE_SONG_21");
    };
    if ((SONG) == (22)) {
        SND_PLAY("FLUTE_SONG_22");
    };
}

instance ITMI_MAGICFLUTE(C_ITEM) {
    NAME = NAMEMISC_MAGICFLUTE;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_FLUTE;
    VISUAL = "KM_FLUTE.3DS";
    MATERIAL = MAT_WOOD;
    SCEMENAME = SCEME_FLUTE;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_MAGICFLUTE_1;
    TEXT[2] = ITEMDESC_ITMI_MAGICFLUTE_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    ON_STATE[0] = USE_FLUTE_STOP;
    ON_STATE[1] = USE_FLUTE;
    ON_STATE[2] = USE_FLUTE_STOP;
}

instance ITMI_TOBACCO(C_ITEM) {
    NAME = MISCNAME_TOBACCO;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_TOBACCO;
    VISUAL = "ItMi_Joint_US.3ds";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_JOINT;
    ON_STATE[0] = USE_TOBACCO;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_TOBACCO_1;
    TEXT[2] = ITEMDESC_ITMI_TOBACCO_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_RING_STANDARD;
}

var int KM_FIRSTTOBACCO;
func void USE_TOBACCO() {
    if ((SELF.ID) == (0)) {
        if ((KM_FIRSTTOBACCO) == (FALSE)) {
            KM_FIRSTTOBACCO = TRUE;
            B_GIVEPLAYERXP(XP_ITMI_TOBACCO);
        };
    };
}

instance ITMI_STRONGTOBACCO(C_ITEM) {
    NAME = MISCNAME_STRONGTOBACCO;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_STRONGTOBACCO;
    VISUAL = "ItMi_Joint_US.3ds";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_JOINTSTRONG;
    ON_STATE[0] = USE_STRONGTOBACCO;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_STRONGTOBACCO_1;
    TEXT[2] = ITEMDESC_ITMI_STRONGTOBACCO_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_RING_STANDARD;
}

var int KM_FIRSTSTRONGTOBACCO;
func void USE_STRONGTOBACCO() {
    if ((SELF.ID) == (0)) {
        if ((KM_FIRSTSTRONGTOBACCO) == (FALSE)) {
            KM_FIRSTSTRONGTOBACCO = TRUE;
            B_GIVEPLAYERXP(XP_ITMI_TOBACCOSTRONG);
        };
    };
}

instance ITMI_BIGFATBLUNT(C_ITEM) {
    NAME = MISCNAME_BIGFATBLUNT;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = ITEM_MULTI;
    VALUE = VALUE_JOINT;
    VISUAL = "ITMI_FatBlunt.3ds";
    MATERIAL = MAT_LEATHER;
    SCEMENAME = SCEME_JOINTSTRONG;
    ON_STATE[0] = USE_BIGFATBLUNT;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_BIGFATBLUNT_1;
    TEXT[2] = ITEMDESC_ITMI_BIGFATBLUNT_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ZBIAS = INVCAM_ENTF_RING_STANDARD;
}

var int KM_BIGFATBLUNT;
func void USE_BIGFATBLUNT() {
    if ((SELF.ID) == (0)) {
        if ((KM_BIGFATBLUNT) == (FALSE)) {
            KM_BIGFATBLUNT = TRUE;
            B_GIVEPLAYERXP(XP_ITMI_JOINT_BIGFATBLUNT);
        };
        WLD_PLAYEFFECT("SLOW_TIME", SELF, SELF, 0, 0, 0, FALSE);
    };
}

instance ITMI_MONSTERGUTS(C_ITEM) {
    NAME = MISCNAME_MONSTERGUTS;
    MAINFLAG = ITEM_KAT_NONE;
    FLAGS = (ITEM_MULTI) | (ITEM_MISSION);
    VALUE = VALUE_MONSTERGUTS;
    VISUAL = "KM_MonsterGuts.3DS";
    MATERIAL = MAT_LEATHER;
    DESCRIPTION = NAME;
    TEXT[1] = ITEMDESC_ITMI_MONSTERGUTS_1;
    TEXT[2] = ITEMDESC_ITMI_MONSTERGUTS_2;
    TEXT[5] = NAME_VALUE;
    COUNT[5] = VALUE;
    INV_ROTX = 90;
    INV_ROTY = 180;
    INV_ROTZ = 180;
}

