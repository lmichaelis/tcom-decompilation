instance DIA_ARMORSELLER_EXIT(C_INFO) {
    NPC = 52689;
    NR = 999;
    CONDITION = DIA_ARMORSELLER_EXIT_CONDITION;
    INFORMATION = DIA_ARMORSELLER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_ARMORSELLER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_ARMORSELLER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_ARMORSELLER_HELLO(C_INFO) {
    NPC = 52689;
    NR = 1;
    CONDITION = DIA_ARMORSELLER_HELLO_CONDITION;
    INFORMATION = DIA_ARMORSELLER_HELLO_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Who are you?";
}

func int DIA_ARMORSELLER_HELLO_CONDITION() {
    return TRUE;
}

func void DIA_ARMORSELLER_HELLO_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_ArmorSeller_Hello_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_ArmorSeller_Hello_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_ArmorSeller_Hello_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_ArmorSeller_Hello_03_04");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    INFO_CLEARCHOICES(72658);
    INFO_ADDCHOICE(72658, "Armor upgrades?", 72661);
}

func void DIA_ARMORSELLER_HELLO_UPGRADE() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "DIA_ArmorSeller_Upgrade_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_ArmorSeller_Upgrade_03_02");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_ArmorSeller_Upgrade_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_ArmorSeller_Upgrade_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_ArmorSeller_Upgrade_03_05");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
    LOG_CREATETOPIC(TOPIC_ARMORS, LOG_NOTE);
    AI_LOGENTRY(TOPIC_ARMORS, LOG_ARMORS_CITY);
    TRADER_LOGENTRY_ARMOR();
}

instance DIA_ARMORSELLER_TEACH(C_INFO) {
    NPC = 52689;
    NR = 1;
    CONDITION = DIA_ARMORSELLER_TEACH_CONDITION;
    INFORMATION = DIA_ARMORSELLER_TEACH_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Could you teach me something?";
}

func int DIA_ARMORSELLER_TEACH_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72658)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARMORSELLER_TEACH_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    B_SAY(OTHER, SELF, "$MARVIN_CanYouTeachMe");
    AI_STARTFACEANI(SELF, S_SERIOUS, 1, -(1));
    AI_OUTPUT(SELF, OTHER, "DIA_ArmorSeller_Teach_03_02");
    AI_RESETFACEANI(SELF);
    AI_RESETFACEANI(OTHER);
}

instance DIA_ARMORSELLER_BUYARMOR(C_INFO) {
    NPC = 52689;
    NR = 850;
    CONDITION = DIA_ARMORSELLER_BUYARMOR_CONDITION;
    INFORMATION = DIA_ARMORSELLER_BUYARMOR_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_BUYARMOR;
}

func int DIA_ARMORSELLER_BUYARMOR_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72658)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARMORSELLER_BUYARMOR_INFO() {
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    INFO_CLEARCHOICES(72665);
    if ((KAPITEL) >= (4)) {
        INFO_ADDCHOICE(72665, TXT_ARMORTRADE_42, 72673);
    };
    INFO_ADDCHOICE(72665, TXT_ARMORTRADE_02, 72672);
    INFO_ADDCHOICE(72665, TXT_ARMORTRADE_03, 72671);
    INFO_ADDCHOICE(72665, TXT_ARMORTRADE_04, 72670);
    INFO_ADDCHOICE(72665, TXT_ARMORTRADE_05, 72669);
    INFO_ADDCHOICE(72665, TXT_ARMORTRADE_06, 72668);
    INFO_ADDCHOICE(72665, DIALOG_BACK, 72674);
}

func void DIA_ARMORSELLER_BUYARMOR_CHAINL() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_CHAIN_L)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_CHAIN_L);
        CREATEINVITEMS(SELF, 35398, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35398, 1);
        AI_EQUIPARMOR(HERO, 35398);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_CHAIN_L);
        DIA_ARMORSELLER_BUYARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ARMORSELLER_BUYARMOR_INFO();
}

func void DIA_ARMORSELLER_BUYARMOR_CHAINM() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_CHAIN_M)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_CHAIN_M);
        CREATEINVITEMS(SELF, 35403, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35403, 1);
        AI_EQUIPARMOR(HERO, 35403);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_CHAIN_M);
        DIA_ARMORSELLER_BUYARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ARMORSELLER_BUYARMOR_INFO();
}

func void DIA_ARMORSELLER_BUYARMOR_LEATHERL() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_KM_LEATHER_L)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_KM_LEATHER_L);
        CREATEINVITEMS(SELF, 35414, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35414, 1);
        AI_EQUIPARMOR(HERO, 35414);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_KM_LEATHER_L);
        DIA_ARMORSELLER_BUYARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ARMORSELLER_BUYARMOR_INFO();
}

func void DIA_ARMORSELLER_BUYARMOR_LEATHERM() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_KM_LEATHER_M)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_KM_LEATHER_M);
        CREATEINVITEMS(SELF, 35417, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35417, 1);
        AI_EQUIPARMOR(HERO, 35417);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_KM_LEATHER_M);
        DIA_ARMORSELLER_BUYARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ARMORSELLER_BUYARMOR_INFO();
}

func void DIA_ARMORSELLER_BUYARMOR_HUNTERL() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_HUNTER_L)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_HUNTER_L);
        CREATEINVITEMS(SELF, 35422, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35422, 1);
        AI_EQUIPARMOR(HERO, 35422);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_HUNTER_L);
        DIA_ARMORSELLER_BUYARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ARMORSELLER_BUYARMOR_INFO();
}

func void DIA_ARMORSELLER_BUYARMOR_KNIGHT() {
    if ((NPC_HASITEMS(OTHER, 34203)) >= (VALUE_ITAR_KNIGHTARMOR)) {
        NPC_REMOVEINVITEMS(SELF, 34203, VALUE_ITAR_KNIGHTARMOR);
        CREATEINVITEMS(SELF, 35525, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35525, 1);
        AI_EQUIPARMOR(HERO, 35525);
        B_GIVEINVITEMS(OTHER, SELF, 34203, VALUE_ITAR_KNIGHTARMOR);
        DIA_ARMORSELLER_BUYARMOR_INFO();
    };
    B_SAY(SELF, OTHER, "$NOGOLD");
    DIA_ARMORSELLER_BUYARMOR_INFO();
}

func void DIA_ARMORSELLER_BUYARMOR_BACK() {
    AI_RESETFACEANI(SELF);
    INFO_CLEARCHOICES(72665);
}

instance DIA_ARMORSELLER_UPGRADEARMOR(C_INFO) {
    NPC = 52689;
    NR = 991;
    CONDITION = DIA_ARMORSELLER_UPGRADEARMOR_CONDITION;
    INFORMATION = DIA_ARMORSELLER_UPGRADEARMOR_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_UPGRADEARMOR;
}

func int DIA_ARMORSELLER_UPGRADEARMOR_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72658)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARMORSELLER_UPGRADEARMOR_INFO() {
    ARMORSELLER_CHAIN_L_TIER2 = CS7(NAMEARMOR_CHAIN_L_TIER2, " (", I2S((VALUE_ITAR_CHAIN_L) / (2)), PRINT_SZ, " + 5x ", NAMECRAFT_IRON, ")");
    ARMORSELLER_CHAIN_M_TIER2 = CS7(NAMEARMOR_CHAIN_M_TIER2, " (", I2S((VALUE_ITAR_CHAIN_M) / (2)), PRINT_SZ, " + 6x ", NAMECRAFT_IRON, ")");
    ARMORSELLER_CRAB_TIER2 = CS7(NAMEARMOR_CRAB_TIER2, " (", I2S((VALUE_ITAR_CRAB) / (2)), PRINT_SZ, " + 4x ", THROPHYNAME_CRABSHELL, ")");
    ARMORSELLER_LEATHER_L_TIER2 = CS7(NAMEARMOR_KM_LEATHER_L_TIER2, " (", I2S((VALUE_ITAR_KM_LEATHER_L) / (2)), PRINT_SZ, " + 1x ", THROPHYNAME_TURTLESHELL, ")");
    ARMORSELLER_LEATHER_M_TIER2 = CS7(NAMEARMOR_KM_LEATHER_M_TIER2, " (", I2S((VALUE_ITAR_KM_LEATHER_M) / (2)), PRINT_SZ, " + 2x ", THROPHYNAME_TURTLESHELL, ")");
    ARMORSELLER_HUNTER_L_TIER2 = CS7(NAMEARMOR_KM_HUNTER_L_TIER2, " (", I2S((VALUE_ITAR_HUNTER_L) / (2)), PRINT_SZ, " + 1x ", THROPHYNAME_CRAWLERPLATE, ")");
    ARMORSELLER_STH_L_TIER2 = CS7(NAMEARMOR_STH_L_TIER2, " (", I2S((VALUE_ITAR_STH_L) / (2)), PRINT_SZ, " + 2x ", THROPHYNAME_CRAWLERPLATE, ")");
    ARMORSELLER_STH_H_TIER2 = CS7(NAMEARMOR_STH_H_TIER2, " (", I2S((VALUE_ITAR_STH_H) / (2)), PRINT_SZ, " + 4x ", THROPHYNAME_CRAWLERPLATE, ")");
    ARMORSELLER_NORDMAR_TIER2 = CS7(NAMEARMOR_NORDMAR_TIER2, " (", I2S((VALUE_ITAR_NORDMAR) / (2)), PRINT_SZ, " + 2x ", MISCNAME_NUGGET, ")");
    ARMORSELLER_ARX_R_TIER2 = CS7(NAMEARMOR_ARX_R_TIER2, " (", I2S((VALUE_ITAR_ARX_R) / (2)), PRINT_SZ, " + 5x ", NAMECRAFT_IRON, ")");
    ARMORSELLER_ARX_B_TIER2 = CS7(NAMEARMOR_ARX_B_TIER2, " (", I2S((VALUE_ITAR_ARX_B) / (2)), PRINT_SZ, " + 3x ", THROPHYNAME_TURTLESHELL, ")");
    ARMORSELLER_ARX_W1_TIER2 = CS7(NAMEARMOR_ARX_W1_TIER2, " (", I2S((VALUE_ITAR_ARX_W1) / (2)), PRINT_SZ, " + 20x ", NAMECRAFT_IRON, ")");
    ARMORSELLER_ARX_W2_TIER2 = CS7(NAMEARMOR_ARX_W2_TIER2, " (", I2S((VALUE_ITAR_ARX_W2) / (2)), PRINT_SZ, " + 10x ", NAMEMISC_SILVER, ")");
    ARMORSELLER_ARX_H1_TIER2 = CS7(NAMEARMOR_ARX_H1_TIER2, " (", I2S((VALUE_ITAR_ARX_H1) / (2)), PRINT_SZ, " + 4x ", THROPHYNAME_CRABSHELL, ")");
    ARMORSELLER_ARX_H2_TIER2 = CS7(NAMEARMOR_ARX_H2_TIER2, " (", I2S((VALUE_ITAR_ARX_H2) / (2)), PRINT_SZ, " + 6x ", THROPHYNAME_CRAWLERPLATE, ")");
    ARMORSELLER_MIL_R_TIER2 = CS7(NAMEARMOR_MIL_R_01_TIER2, " (", I2S((VALUE_ITAR_MIL_R) / (2)), PRINT_SZ, " + 5x ", NAMECRAFT_IRON, ")");
    ARMORSELLER_MIL_B_TIER2 = CS7(NAMEARMOR_MIL_B_TIER2, " (", I2S((VALUE_ITAR_MIL_B) / (2)), PRINT_SZ, " + 3x ", THROPHYNAME_TURTLESHELL, ")");
    ARMORSELLER_MIL_W1_TIER2 = CS7(NAMEARMOR_MIL_W1_TIER2, " (", I2S((VALUE_ITAR_MIL_W1) / (2)), PRINT_SZ, " + 20x ", NAMECRAFT_IRON, ")");
    ARMORSELLER_MIL_W2_TIER2 = CS7(NAMEARMOR_MIL_W2_TIER2, " (", I2S((VALUE_ITAR_MIL_W2) / (2)), PRINT_SZ, " + 10x ", NAMEMISC_SILVER, ")");
    ARMORSELLER_MIL_C1_TIER2 = CS7(NAMEARMOR_MIL_C1_TIER2, " (", I2S((VALUE_ITAR_MIL_C1) / (2)), PRINT_SZ, " + 4x ", THROPHYNAME_CRAWLERPLATE, ")");
    ARMORSELLER_MIL_C2_TIER2 = CS7(NAMEARMOR_MIL_C2_TIER2, " (", I2S((VALUE_ITAR_MIL_C2) / (2)), PRINT_SZ, " + 6x ", THROPHYNAME_CRABSHELL, ")");
    ARMORSELLER_USM_L_TIER2 = CS7(NAMEARMOR_USM_L_TIER2, " (", I2S((VALUE_ITAR_USM_L) / (2)), PRINT_SZ, " + 10x ", NAMECRAFT_IRON, ")");
    ARMORSELLER_WS_M_TIER2 = CS7(NAMEARMOR_WS_M_TIER2, " (", I2S((VALUE_ITAR_WS_M) / (2)), PRINT_SZ, " + 8x ", NAMEMISC_SILVER, ")");
    ARMORSELLER_GRD_M_TIER2 = CS7(NAMEARMOR_GRD_M_TIER2, " (", I2S((VALUE_ITAR_GRD_M) / (2)), PRINT_SZ, " + 20x ", MISCNAME_GOLDNUGGET_ADDON, ")");
    ARMORSELLER_KNIGHT_TIER2 = CS7(NAMEARMOR_KNIGHTARMOR_TIER2, " (", I2S((VALUE_ITAR_KNIGHTARMOR) / (5)), PRINT_SZ, " + 20x ", NAMECRAFT_IRON, ")");
    INFO_CLEARCHOICES(72675);
    if ((NPC_HASITEMS(OTHER, 35398)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_CHAIN_L_TIER2, 72679);
    };
    if ((NPC_HASITEMS(OTHER, 35403)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_CHAIN_M_TIER2, 72680);
    };
    if ((NPC_HASITEMS(OTHER, 35414)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_LEATHER_L_TIER2, 72682);
    };
    if ((NPC_HASITEMS(OTHER, 35417)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_LEATHER_M_TIER2, 72683);
    };
    if ((NPC_HASITEMS(OTHER, 35422)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_HUNTER_L_TIER2, 72684);
    };
    if ((NPC_HASITEMS(OTHER, 35430)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_STH_L_TIER2, 72685);
    };
    if ((NPC_HASITEMS(OTHER, 35435)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_STH_H_TIER2, 72686);
    };
    if ((NPC_HASITEMS(OTHER, 35407)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_CRAB_TIER2, 72681);
    };
    if ((NPC_HASITEMS(OTHER, 35479)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_USM_L_TIER2, 72688);
    };
    if ((NPC_HASITEMS(OTHER, 35444)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_NORDMAR_TIER2, 72687);
    };
    if ((NPC_HASITEMS(OTHER, 35515)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_WS_M_TIER2, 72689);
    };
    if ((NPC_HASITEMS(OTHER, 35617)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_GRD_M_TIER2, 72690);
    };
    if ((NPC_HASITEMS(OTHER, 35451)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_ARX_R_TIER2, 72691);
    };
    if ((NPC_HASITEMS(OTHER, 35465)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_ARX_B_TIER2, 72692);
    };
    if ((NPC_HASITEMS(OTHER, 35454)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_ARX_W1_TIER2, 72693);
    };
    if ((NPC_HASITEMS(OTHER, 35459)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_ARX_W2_TIER2, 72694);
    };
    if ((NPC_HASITEMS(OTHER, 35470)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_ARX_H1_TIER2, 72695);
    };
    if ((NPC_HASITEMS(OTHER, 35475)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_ARX_H2_TIER2, 72696);
    };
    if ((NPC_HASITEMS(OTHER, 35482)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_MIL_R_TIER2, 72697);
    };
    if ((NPC_HASITEMS(OTHER, 35488)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_MIL_B_TIER2, 72698);
    };
    if ((NPC_HASITEMS(OTHER, 35501)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_MIL_W1_TIER2, 72699);
    };
    if ((NPC_HASITEMS(OTHER, 35506)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_MIL_W2_TIER2, 72700);
    };
    if ((NPC_HASITEMS(OTHER, 35493)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_MIL_C1_TIER2, 72701);
    };
    if ((NPC_HASITEMS(OTHER, 35498)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_MIL_C2_TIER2, 72702);
    };
    if ((NPC_HASITEMS(OTHER, 35525)) >= (1)) {
        INFO_ADDCHOICE(72675, ARMORSELLER_KNIGHT_TIER2, 72703);
    };
    INFO_ADDCHOICE(72675, DIALOG_BACK, 72678);
}

func void DIA_ARMORSELLER_UPGRADEARMOR_BACK() {
    INFO_CLEARCHOICES(72675);
}

func void DIA_ARMORSELLER_UPGRADEARMOR_CHAIN_L_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35398)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_CHAIN_L) / (2)))) && ((NPC_HASITEMS(OTHER, 35980)) >= (5))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_CHAIN_L) / (2));
        CREATEINVITEMS(SELF, 35399, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35399, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35980, 5);
        AI_EQUIPARMOR(OTHER, 35399);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_CHAIN_M_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35403)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_CHAIN_M) / (2)))) && ((NPC_HASITEMS(OTHER, 35980)) >= (6))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_CHAIN_M) / (2));
        CREATEINVITEMS(SELF, 35404, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35404, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35980, 6);
        AI_EQUIPARMOR(OTHER, 35404);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_CRAB_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35407)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_CRAB) / (2)))) && ((NPC_HASITEMS(OTHER, 35361)) >= (4))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_CRAB) / (2));
        CREATEINVITEMS(SELF, 35408, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35408, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35361, 4);
        AI_EQUIPARMOR(OTHER, 35408);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_LEATHER_L_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35414)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_KM_LEATHER_L) / (2)))) && ((NPC_HASITEMS(OTHER, 35360)) >= (1))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_KM_LEATHER_L) / (2));
        CREATEINVITEMS(SELF, 35415, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35415, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35360, 1);
        AI_EQUIPARMOR(OTHER, 35415);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_LEATHER_M_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35417)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_KM_LEATHER_M) / (2)))) && ((NPC_HASITEMS(OTHER, 35360)) >= (2))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_KM_LEATHER_M) / (2));
        CREATEINVITEMS(SELF, 35418, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35418, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35360, 2);
        AI_EQUIPARMOR(OTHER, 35418);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_HUNTER_L_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35422)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_HUNTER_L) / (2)))) && ((NPC_HASITEMS(OTHER, 33862)) >= (1))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_HUNTER_L) / (2));
        CREATEINVITEMS(SELF, 35423, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35423, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 33862, 1);
        AI_EQUIPARMOR(OTHER, 35423);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_STH_L_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35430)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_STH_L) / (2)))) && ((NPC_HASITEMS(OTHER, 33862)) >= (2))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_STH_L) / (2));
        CREATEINVITEMS(SELF, 35431, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35431, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 33862, 2);
        AI_EQUIPARMOR(OTHER, 35431);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_STH_H_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35435)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_STH_H) / (2)))) && ((NPC_HASITEMS(OTHER, 33862)) >= (4))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_STH_H) / (2));
        CREATEINVITEMS(SELF, 35436, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35436, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 33862, 4);
        AI_EQUIPARMOR(OTHER, 35436);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_NORDMAR_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35444)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_NORDMAR) / (2)))) && ((NPC_HASITEMS(OTHER, 34202)) >= (2))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_NORDMAR) / (2));
        CREATEINVITEMS(SELF, 35445, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35445, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 34202, 2);
        AI_EQUIPARMOR(OTHER, 35445);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_USM_L_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35479)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_USM_L) / (2)))) && ((NPC_HASITEMS(OTHER, 35980)) >= (10))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_USM_L) / (2));
        CREATEINVITEMS(SELF, 35480, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35480, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35980, 10);
        AI_EQUIPARMOR(OTHER, 35480);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_WS_M_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35515)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_WS_M) / (2)))) && ((NPC_HASITEMS(OTHER, 36939)) >= (8))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_WS_M) / (2));
        CREATEINVITEMS(SELF, 35516, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35516, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35980, 8);
        AI_EQUIPARMOR(OTHER, 35516);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_GRD_M_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35617)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_GRD_M) / (2)))) && ((NPC_HASITEMS(OTHER, 33660)) >= (20))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_GRD_M) / (2));
        CREATEINVITEMS(SELF, 35618, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35618, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 33660, 20);
        AI_EQUIPARMOR(OTHER, 35618);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_ARX_R_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35451)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_ARX_R) / (2)))) && ((NPC_HASITEMS(OTHER, 35980)) >= (5))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_ARX_R) / (2));
        CREATEINVITEMS(SELF, 35452, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35452, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35980, 5);
        AI_EQUIPARMOR(OTHER, 35452);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_ARX_B_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35465)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_ARX_B) / (2)))) && ((NPC_HASITEMS(OTHER, 35360)) >= (3))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_ARX_B) / (2));
        CREATEINVITEMS(SELF, 35466, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35466, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35360, 3);
        AI_EQUIPARMOR(OTHER, 35466);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_ARX_W1_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35454)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_ARX_W1) / (2)))) && ((NPC_HASITEMS(OTHER, 35980)) >= (20))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_ARX_W1) / (2));
        CREATEINVITEMS(SELF, 35455, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35455, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35980, 20);
        AI_EQUIPARMOR(OTHER, 35455);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_ARX_W2_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35459)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_ARX_W2) / (2)))) && ((NPC_HASITEMS(OTHER, 36939)) >= (10))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_ARX_W2) / (2));
        CREATEINVITEMS(SELF, 35460, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35460, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 36939, 10);
        AI_EQUIPARMOR(OTHER, 35460);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_ARX_H1_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35470)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_ARX_H1) / (2)))) && ((NPC_HASITEMS(OTHER, 35361)) >= (4))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_ARX_H1) / (2));
        CREATEINVITEMS(SELF, 35471, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35471, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35361, 4);
        AI_EQUIPARMOR(OTHER, 35471);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_ARX_H2_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35475)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_ARX_H2) / (2)))) && ((NPC_HASITEMS(OTHER, 33862)) >= (6))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_ARX_H2) / (2));
        CREATEINVITEMS(SELF, 35476, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35476, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 33862, 6);
        AI_EQUIPARMOR(OTHER, 35476);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_MIL_R_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35482)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_MIL_R) / (2)))) && ((NPC_HASITEMS(OTHER, 35980)) >= (5))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_MIL_R) / (2));
        CREATEINVITEMS(SELF, 35483, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35483, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35980, 5);
        AI_EQUIPARMOR(OTHER, 35483);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_MIL_B_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35488)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_MIL_B) / (2)))) && ((NPC_HASITEMS(OTHER, 35360)) >= (3))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_MIL_B) / (2));
        CREATEINVITEMS(SELF, 35489, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35489, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35360, 3);
        AI_EQUIPARMOR(OTHER, 35489);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_MIL_W1_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35501)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_MIL_W1) / (2)))) && ((NPC_HASITEMS(OTHER, 35980)) >= (20))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_MIL_W1) / (2));
        CREATEINVITEMS(SELF, 35502, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35502, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35980, 20);
        AI_EQUIPARMOR(OTHER, 35502);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_MIL_W2_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35506)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_MIL_W2) / (2)))) && ((NPC_HASITEMS(OTHER, 36939)) >= (10))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_MIL_W2) / (2));
        CREATEINVITEMS(SELF, 35507, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35507, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 36939, 10);
        AI_EQUIPARMOR(OTHER, 35507);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_MIL_C1_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35493)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_MIL_C1) / (2)))) && ((NPC_HASITEMS(OTHER, 33862)) >= (4))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_MIL_C1) / (2));
        CREATEINVITEMS(SELF, 35494, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35494, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 33862, 4);
        AI_EQUIPARMOR(OTHER, 35494);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_MIL_C2_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35498)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_MIL_C2) / (2)))) && ((NPC_HASITEMS(OTHER, 35361)) >= (6))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_MIL_C2) / (2));
        CREATEINVITEMS(SELF, 35499, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35499, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35361, 6);
        AI_EQUIPARMOR(OTHER, 35499);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

func void DIA_ARMORSELLER_UPGRADEARMOR_KNIGHT_TIER2() {
    if ((((NPC_HASITEMS(OTHER, 35525)) >= (1)) && ((NPC_HASITEMS(OTHER, 34203)) >= ((VALUE_ITAR_KNIGHTARMOR) / (5)))) && ((NPC_HASITEMS(OTHER, 35980)) >= (20))) {
        NPC_REMOVEINVITEMS(SELF, 34203, (VALUE_ITAR_KNIGHTARMOR) / (4));
        CREATEINVITEMS(SELF, 35526, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35526, 1);
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER2);
        NPC_REMOVEINVITEMS(SELF, 35980, 5);
        AI_EQUIPARMOR(OTHER, 35526);
    };
    B_SAY(SELF, OTHER, "$NOITEMS");
    DIA_ARMORSELLER_UPGRADEARMOR_INFO();
}

instance DIA_ARMORSELLER_PICKPOCKET(C_INFO) {
    NPC = 52689;
    NR = 998;
    CONDITION = DIA_ARMORSELLER_PICKPOCKET_CONDITION;
    INFORMATION = DIA_ARMORSELLER_PICKPOCKET_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = PICKPOCKET_80;
}

func int DIA_ARMORSELLER_PICKPOCKET_CONDITION() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) && ((SELF.AIVAR[6]) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARMORSELLER_PICKPOCKET_INFO() {
    INFO_CLEARCHOICES(72704);
    INFO_ADDCHOICE(72704, DIALOG_BACK, 72708);
    INFO_ADDCHOICE(72704, DIALOG_PICKPOCKET, 72707);
}

func void DIA_ARMORSELLER_PICKPOCKET_DOIT() {
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (2)) {
        CREATEINVITEMS(SELF, 35361, 1);
        B_GIVEINVITEMS(SELF, OTHER, 35361, 1);
        B_PICKPOCKET_AMBIENT_TIER_2();
        SELF.AIVAR[6] = TRUE;
        INFO_CLEARCHOICES(72704);
    };
    AI_PLAYANI(HERO, T_CANNOTTAKE);
    PRINTSCREEN(PRINT_CANTPICKPOCKETTHISPERSON, -(1), -(1), FONT_SCREEN, 4);
    INFO_CLEARCHOICES(72704);
}

func void DIA_ARMORSELLER_PICKPOCKET_BACK() {
    INFO_CLEARCHOICES(72704);
}

instance DIA_ARMORSELLER_TRADE(C_INFO) {
    NPC = 52689;
    NR = 889;
    CONDITION = DIA_ARMORSELLER_TRADE_CONDITION;
    INFORMATION = DIA_ARMORSELLER_TRADE_INFO;
    PERMANENT = TRUE;
    TRADE = TRUE;
    DESCRIPTION = "Let's deal.";
}

func int DIA_ARMORSELLER_TRADE_CONDITION() {
    if (NPC_KNOWSINFO(OTHER, 72658)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_ARMORSELLER_TRADE_INFO() {
    B_SAY(OTHER, SELF, "$MARVIN_LetsTrade");
    TRADER_LOGENTRY_ARMORSELLER();
    B_GIVETRADEINV(SELF);
}
