func int GETPLAYERGUILDRICHPRESENCEID() {
    if ((SQ504_JOINEDWATERCIRCLE) == (TRUE)) {
        return 999;
    };
    if ((HERO.GUILD) == (GIL_MIL)) {
        if (((MARVIN_MILITIASPECIALIZATION) == (0)) && ((Q205_WEGOTARMOR) == (TRUE))) {
            return 199;
        };
        return (100) + (MARVIN_MILITIASPECIALIZATION);
    };
    if ((HERO.GUILD) == (GIL_SLD)) {
        if (((MARVIN_ARAXOSSPECIALIZATION) == (0)) && (NPC_KNOWSINFO(HERO, 0x11648))) {
            return 299;
        };
        return (200) + (MARVIN_ARAXOSSPECIALIZATION);
    };
    return HERO.GUILD;
}

func int RESERVED_FUNC_INT_52() {
    if ((((NPC_KNOWSINFO(OTHER, 0x10f73)) == (FALSE)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SMITH)) == (0))) && ((HERO.GUILD) == (GIL_MIL))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_53() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (INGOR_SMITH)) {
        if ((HERO.LP) >= (5)) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, INGOR_SMITH);
            NPC_REMOVEINVITEMS(SELF, 0x859b, INGOR_SMITH);
        };
        DIA_ODGAR_TRAIN_SMITH_INFO();
    };
    B_SAY(SELF, OTHER, RESERVED_CONST_STRING_04);
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_54() {
    if ((((NPC_KNOWSINFO(OTHER, 0x10f73)) == (FALSE)) && ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_SMITH)) == (1))) && ((HERO.GUILD) == (GIL_MIL))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_55() {
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (INGOR_SMITH2)) {
        if ((HERO.LP) >= (10)) {
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, INGOR_SMITH2);
            NPC_REMOVEINVITEMS(SELF, 0x859b, INGOR_SMITH2);
        };
        DIA_ODGAR_TRAIN_SMITH2_INFO();
    };
    B_SAY(SELF, OTHER, RESERVED_CONST_STRING_04);
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_56() {
    return 0;
}

func int RESERVED_FUNC_INT_57() {
    return 0;
}

func int RESERVED_FUNC_INT_58() {
    return 0;
}

func int RESERVED_FUNC_INT_59() {
    return 0;
}

func int RESERVED_FUNC_INT_60() {
    return 0;
}

func int RESERVED_FUNC_INT_61() {
    return 0;
}

func int RESERVED_FUNC_INT_62() {
    return 0;
}

func int RESERVED_FUNC_INT_63() {
    if (((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_ALCHEMY)) == (2)) && (NPC_KNOWSINFO(OTHER, 0x13df2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_64() {
    AI_OUTPUT(OTHER, SELF, RESERVED_CONST_STRING_97);
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (RESERVED_CONST_INT_02)) {
        ALCHEMY_FINISHTRAIN = TRUE;
        ALCHEMY_FINISHTRAIN_DAY = WLD_GETDAY();
        if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_ALCHEMY)) == (3)) {
            AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
            NPC_REMOVEINVITEMS(SELF, 0x859b, RESERVED_CONST_INT_02);
            AI_OUTPUT(SELF, OTHER, RESERVED_CONST_STRING_98);
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, RESERVED_CONST_INT_02);
            AI_WAITTILLEND(OTHER, SELF);
            AI_FUNCTION(OTHER, 0xff4e);
            AI_WAIT(OTHER, 0x3f8ccccd);
            AI_FUNCTION(OTHER, 0xff4f);
            AI_WAIT(OTHER, 0x3f8ccccd);
            AI_WAITTILLEND(SELF, OTHER);
            B_SAY(SELF, OTHER, RESERVED_CONST_STRING_99);
            AI_RESETFACEANI(SELF);
        };
    };
    B_SAY(SELF, OTHER, RESERVED_CONST_STRING_04);
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_65() {
    return 0;
}

func int RESERVED_FUNC_INT_66() {
    return 0;
}

func int RESERVED_FUNC_INT_67() {
    return 0;
}

func int RESERVED_FUNC_INT_68() {
    return 0;
}

func int RESERVED_FUNC_INT_69() {
    return 0;
}

func int RESERVED_FUNC_INT_70() {
    return 0;
}

func int RESERVED_FUNC_INT_71() {
    return 0;
}

func int RESERVED_FUNC_INT_72() {
    return 0;
}

func int RESERVED_FUNC_INT_73() {
    return 0;
}

func int RESERVED_FUNC_INT_74() {
    if (((RESERVED_VAR_INT_49) == (TRUE)) && ((PQ109_QUESTBEGINNING) == (TRUE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_75() {
    return 0;
}

func int RESERVED_FUNC_INT_76() {
    return 0;
}

func int RESERVED_FUNC_INT_77() {
    return 0;
}

func int RESERVED_FUNC_INT_78() {
    return 0;
}

func int RESERVED_FUNC_INT_79() {
    return 0;
}

func int RESERVED_FUNC_INT_80() {
    return 0;
}

func int RESERVED_FUNC_INT_81() {
    return 0;
}

func int RESERVED_FUNC_INT_82() {
    return 0;
}

func int RESERVED_FUNC_INT_83() {
    return 0;
}

func int RESERVED_FUNC_INT_84() {
    return 0;
}

func int RESERVED_FUNC_INT_85() {
    return 0;
}

func int RESERVED_FUNC_INT_86() {
    return 0;
}

func int RESERVED_FUNC_INT_87() {
    return 0;
}

func int RESERVED_FUNC_INT_88() {
    return 0;
}

func int RESERVED_FUNC_INT_89() {
    return 0;
}

func int RESERVED_FUNC_INT_90() {
    return 0;
}

func int RESERVED_FUNC_INT_91() {
    return 0;
}

func int RESERVED_FUNC_INT_92() {
    return 0;
}

func int RESERVED_FUNC_INT_93() {
    return 0;
}

func int RESERVED_FUNC_INT_94() {
    return 0;
}

func int RESERVED_FUNC_INT_95() {
    if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((LOG_GETSTATUS(MIS_QM401)) == (LOG_SUCCESS))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_96() {
    if ((RESERVED_VAR_INT_65) == (FALSE)) {
        RESERVED_VAR_INT_65 = TRUE;
        B_GIVEPLAYERXP(XP_ARMORUPGRADE_TIER3);
    };
    AI_STARTFACEANI(SELF, S_SMILE, 1, -(1));
    B_SAY(SELF, OTHER, RESERVED_CONST_STRING_160);
    if ((NPC_GETTALENTSKILL(OTHER, NPC_TALENT_PICKPOCKET)) >= (1)) {
        if ((SELF.AIVAR[6]) == (TRUE)) {
            DIA_IMBUSY_CALM();
        };
    };
    DIA_IMBUSY_CALM();
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_97() {
    return 0;
}

func int RESERVED_FUNC_INT_98() {
    return 0;
}

func int RESERVED_FUNC_INT_99() {
    return 0;
}

func int RESERVED_FUNC_INT_100() {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_51(var int PAR1) {
    BUFF_REMOVE(PAR1);
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_52(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_53(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_54(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_55(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_56(var int PAR1) {
    AI_OUTPUT(OTHER, SELF, "DIA_Sambor_Hunting_Special_Teeth_15_01");
    if ((NPC_HASITEMS(OTHER, 0x859b)) >= (MARKUS_CLAWSTROPHY)) {
        if ((PLAYER_TALENT_TAKEANIMALTROPHY[0]) == (TRUE)) {
            NPC_REMOVEINVITEMS(SELF, 0x859b, MARKUS_CLAWSTROPHY);
            AI_OUTPUT(SELF, OTHER, "SVM_1_YouLearnedSomething");
            B_GIVEINVITEMS(OTHER, SELF, 0x859b, MARKUS_CLAWSTROPHY);
            PRINTSCREEN(PRINT_LEARNTAKEANIMALTROPHYTEETH, -(1), -(1), FONT_SCREEN, 2);
        };
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) < (MARKUS_CLAWSTROPHY)) {
        AI_OUTPUT(SELF, OTHER, "DIA_Markus_Hunting_Special_Claws_03_04");
    };
    DIA_MARKUS_HUNTING_SPECIAL_CHOICES();
    return 0 /* !broken stack! */;
}

func int RESERVED_FUNC_INT_PAR_INT1_57(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_58(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_59(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_60(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_61(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_62(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_63(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_64(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_65(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_66(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_67(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_68(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_69(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_70(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_71(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_72(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_73(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_74(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_75(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_76(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_77(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_78(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_79(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_80(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_81(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_82(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_83(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_84(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_85(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_86(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_87(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_88(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_89(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_90(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_91(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_92(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_93(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_94(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_95(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_96(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_97(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_98(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_99(var int PAR1) {
    return 0;
}

func int RESERVED_FUNC_INT_PAR_INT1_100(var int PAR1) {
    return 0;
}

instance RESERVED_INFO_01(C_INFO) {
    NPC = 0xcf17;
    NR = 7;
    CONDITION = RESERVED_FUNC_INT_52;
    INFORMATION = RESERVED_FUNC_INT_53;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_SMITH1, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_SMITH, 1), INGOR_SMITH);
}

instance RESERVED_INFO_02(C_INFO) {
    NPC = 0xcf17;
    NR = 7;
    CONDITION = RESERVED_FUNC_INT_54;
    INFORMATION = RESERVED_FUNC_INT_55;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_SMITH2, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_SMITH, 2), INGOR_SMITH2);
}

instance RESERVED_INFO_03(C_INFO) {
}

instance RESERVED_INFO_04(C_INFO) {
    NPC = 0xe38a;
    NR = 700;
    CONDITION = RESERVED_FUNC_INT_63;
    INFORMATION = RESERVED_FUNC_INT_64;
    PERMANENT = TRUE;
    DESCRIPTION = B_BUILDLEARNSTRING2(PRINT_LEARN_ALCHEMY3, B_GETLEARNCOSTTALENT(OTHER, NPC_TALENT_ALCHEMY, 3), RESERVED_CONST_INT_02);
}

instance RESERVED_INFO_05(C_INFO) {
    NPC = 0xcec1;
    NR = 1;
    CONDITION = DIA_RECRUIT02_Q203_BEER_CONDITION;
    INFORMATION = DIA_RECRUIT02_Q203_BEER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

instance RESERVED_INFO_06(C_INFO) {
    NPC = 0xced7;
    NR = 1;
    CONDITION = DIA_RECRUIT03_Q203_BEER_CONDITION;
    INFORMATION = DIA_RECRUIT03_Q203_BEER_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

instance RESERVED_INFO_07(C_INFO) {
}

instance RESERVED_INFO_08(C_INFO) {
    NPC = 0xcdd3;
    NR = 1;
    CONDITION = RESERVED_FUNC_INT_74;
    INFORMATION = DIA_DAVIS_PQ109_START_JOB;
    PERMANENT = FALSE;
    DESCRIPTION = RESERVED_CONST_STRING_183;
}

instance RESERVED_INFO_09(C_INFO) {
}

instance RESERVED_INFO_10(C_INFO) {
}

instance RESERVED_INFO_11(C_INFO) {
}

instance RESERVED_INFO_12(C_INFO) {
}

instance RESERVED_INFO_13(C_INFO) {
}

instance RESERVED_INFO_14(C_INFO) {
}

instance RESERVED_INFO_15(C_INFO) {
}

instance RESERVED_INFO_16(C_INFO) {
}

instance RESERVED_INFO_17(C_INFO) {
    NPC = 0xeb40;
    NR = 500;
    CONDITION = RESERVED_FUNC_INT_95;
    INFORMATION = RESERVED_FUNC_INT_96;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

instance RESERVED_INFO_18(C_INFO) {
}

instance RESERVED_INFO_19(C_INFO) {
}

instance RESERVED_INFO_20(C_INFO) {
}

instance RESERVED_INFO_21(C_INFO) {
}

instance RESERVED_INFO_22(C_INFO) {
}

instance RESERVED_INFO_23(C_INFO) {
}

instance RESERVED_INFO_24(C_INFO) {
}

instance RESERVED_INFO_25(C_INFO) {
}

instance RESERVED_INFO_26(C_INFO) {
}

instance RESERVED_INFO_27(C_INFO) {
}

instance RESERVED_INFO_28(C_INFO) {
}

instance RESERVED_INFO_29(C_INFO) {
}

instance RESERVED_INFO_30(C_INFO) {
}

