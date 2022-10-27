var int SQ505_IPAIEDYOUFUCKINGGOLD = 0;
func void SLUMSGUARDIAN_PROTECTION_ON() {
    SQ505_IPAIEDYOUFUCKINGGOLD = TRUE;
    SLUMSGUARDIAN_PROTECTIONPAID = TRUE;
    SLUMSGUARDIAN_NEWTRAPS = FALSE;
    SLUMSGUARDIAN_PAYDAY = WLD_GETDAY();
}

func void SLUMSGUARDIAN_PROTECTION_OFF() {
    SLUMSGUARDIAN_PROTECTIONPAID = FALSE;
    SLUMSGUARDIAN_NEWTRAPS = TRUE;
    B_SETATTITUDE(NONE_11253_SLUMSGUARDIAN, ATT_ANGRY);
    B_SETATTITUDE(NONE_11254_SLUMSGUARDIAN, ATT_ANGRY);
    B_SETATTITUDE(NONE_11255_SLUMSGUARDIAN, ATT_ANGRY);
    B_SETATTITUDE(NONE_11256_SLUMSGUARDIAN, ATT_ANGRY);
    SLUMSGUARDIAN_PAYDAY = WLD_GETDAY();
}

instance INFO_SLUMSGUARDIAN_EXIT(C_INFO) {
    NR = 999;
    CONDITION = INFO_SLUMSGUARDIAN_EXIT_CONDITION;
    INFORMATION = INFO_SLUMSGUARDIAN_EXIT_INFO;
    PERMANENT = 1;
    DESCRIPTION = DIALOG_ENDE;
}

func int INFO_SLUMSGUARDIAN_EXIT_CONDITION() {
    return TRUE;
}

func void INFO_SLUMSGUARDIAN_EXIT_INFO() {
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_EXIT_15_00");
    if ((SLUMSGUARDIAN_PROTECTIONPAID) == (FALSE)) {
        if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_EXIT_08_01");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_EXIT_08_01");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_EXIT_08_01");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_EXIT_08_01");
        };
    };
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_EXIT_08_02");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_EXIT_08_02");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_EXIT_08_02");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_EXIT_08_02");
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance INFO_SLUMSGUARDIAN_HELLO(C_INFO) {
    NR = 3;
    CONDITION = INFO_SLUMSGUARDIAN_HELLO_CONDITION;
    INFORMATION = INFO_SLUMSGUARDIAN_HELLO_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int INFO_SLUMSGUARDIAN_HELLO_CONDITION() {
    if (((((SLUMSGUARDIAN_PROTECTIONPAID) == (FALSE)) && ((SLUMSGUARDIAN_FIRSTTIME) == (FALSE))) && ((LOG_GETSTATUS(MIS_QA304)) != (LOG_RUNNING))) && ((LOG_GETSTATUS(MIS_SQ505)) != (LOG_RUNNING))) {
        if (((HERO.GUILD) == (GIL_NONE)) || ((HERO.GUILD) == (GIL_VLK))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void INFO_SLUMSGUARDIAN_HELLO_INFO() {
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_08_00");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_08_02");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_08_03");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_08_00");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_08_02");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_08_03");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_08_00");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_08_02");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_08_03");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_08_00");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_08_02");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_08_03");
    };
    SLUMSGUARDIAN_FIRSTTIME = TRUE;
    INFO_CLEARCHOICES(0xa591);
    INFO_ADDCHOICE(0xa591, "How much should I pay you?", 0xa596);
    INFO_ADDCHOICE(0xa591, "I can do it myself!", 0xa594);
    INFO_ADDCHOICE(0xa591, "Are you threatening me?", 0xa595);
}

func void INFO_SLUMSGUARDIAN_HELLO_FORGETIT() {
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_ForgetIt_15_00");
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_ForgetIt_08_01");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_ForgetIt_08_01");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_ForgetIt_08_01");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_ForgetIt_08_01");
    };
    SLUMSGUARDIAN_PROTECTION_OFF();
    AI_STOPPROCESSINFOS(SELF);
}

func void INFO_SLUMSGUARDIAN_HELLO_ISTHREAT() {
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_IsThreat_15_00");
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_IsThreat_08_01");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_IsThreat_08_01");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_IsThreat_08_01");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_IsThreat_08_01");
    };
}

func void INFO_SLUMSGUARDIAN_HELLO_HOWMUCH() {
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_Hello_HowMuch_15_01");
    if (WLD_ISTIME(6, 0, 22, 0)) {
        if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_HowMuch_08_02");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_HowMuch_08_02");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_HowMuch_08_02");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_HowMuch_08_02");
        };
        SLUMSGUARDIAN_PAYDAYNIGHT = FALSE;
    };
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_HowMuch_08_03");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_HowMuch_08_03");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_HowMuch_08_03");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_HowMuch_08_03");
    };
    SLUMSGUARDIAN_PAYDAYNIGHT = TRUE;
    INFO_ADDCHOICE(0xa591, "I don't have that much on me.", 0xa59a);
    if ((((NPC_HASITEMS(OTHER, 0x859b)) >= (SLUMSGUARDIAN_DAY)) && ((SLUMSGUARDIAN_PAYDAYNIGHT) == (FALSE))) || (((NPC_HASITEMS(OTHER, 0x859b)) >= (SLUMSGUARDIAN_NIGHT)) && ((SLUMSGUARDIAN_PAYDAYNIGHT) == (TRUE)))) {
        INFO_ADDCHOICE(0xa591, "Here's the gold.", 0xa597);
    };
}

func void INFO_SLUMSGUARDIAN_HELLO_OKTAKEIT() {
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_Hello_OkTakeIt_15_00");
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_OkTakeIt_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_OkTakeIt_08_02");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_OkTakeIt_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_OkTakeIt_08_02");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_OkTakeIt_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_OkTakeIt_08_02");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_OkTakeIt_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_OkTakeIt_08_02");
    };
    if ((SLUMSGUARDIAN_PAYDAYNIGHT) == (FALSE)) {
    };
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, SLUMSGUARDIAN_NIGHT);
    SLUMSGUARDIAN_PROTECTION_ON();
    AI_STOPPROCESSINFOS(SELF);
}

func void INFO_SLUMSGUARDIAN_HELLO_NOTNOW_GIVE() {
    SLUMSGUARDIAN_PROTECTION_ON();
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, NPC_HASITEMS(OTHER, 0x859b));
    AI_STOPPROCESSINFOS(SELF);
}

func void INFO_SLUMSGUARDIAN_GOTOHERO() {
    B_STANDUP();
    AI_GOTONPC(SELF, OTHER);
}

func void INFO_SLUMSGUARDIAN_HELLO_NOTNOW() {
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_Hello_NotNow_15_00");
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_NotNow_08_01");
        INFO_SLUMSGUARDIAN_GOTOHERO();
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_NotNow_08_02");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_NotNow_08_01");
        INFO_SLUMSGUARDIAN_GOTOHERO();
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_NotNow_08_02");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_NotNow_08_01");
        INFO_SLUMSGUARDIAN_GOTOHERO();
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_NotNow_08_02");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_NotNow_08_01");
        INFO_SLUMSGUARDIAN_GOTOHERO();
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_NotNow_08_02");
    };
    if ((NPC_HASITEMS(OTHER, 0x859b)) > (0)) {
        if (((NPC_HASITEMS(OTHER, 0x859b)) >= (SLUMSGUARDIAN_NIGHT)) && ((SLUMSGUARDIAN_PAYDAYNIGHT) == (TRUE))) {
            SLUMSGUARDIAN_PROTECTION_OFF();
            if ((SELF.VOICE) == (2)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_NotNow_08_03");
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_NotNow_08_04");
            } else if ((SELF.VOICE) == (13)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_NotNow_08_03");
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_NotNow_08_04");
            } else if ((SELF.VOICE) == (72)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_NotNow_08_03");
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_NotNow_08_04");
            } else if ((SELF.VOICE) == (45)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_NotNow_08_03");
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_NotNow_08_04");
            };
            AI_STOPPROCESSINFOS(SELF);
            B_ATTACK(SELF, OTHER, AR_NONE, 1);
            SELF.AIVAR[52] = TRUE;
        } else if (((NPC_HASITEMS(OTHER, 0x859b)) >= (SLUMSGUARDIAN_DAY)) && ((SLUMSGUARDIAN_PAYDAYNIGHT) == (FALSE))) {
            if ((SELF.VOICE) == (2)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_NotNow_08_05");
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_NotNow_08_06");
            } else if ((SELF.VOICE) == (13)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_NotNow_08_05");
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_NotNow_08_06");
            } else if ((SELF.VOICE) == (72)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_NotNow_08_05");
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_NotNow_08_06");
            } else if ((SELF.VOICE) == (45)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_NotNow_08_05");
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_NotNow_08_06");
            };
            INFO_CLEARCHOICES(0xa591);
            INFO_ADDCHOICE(0xa591, "(Give up all the gold)", 0xa598);
            INFO_ADDCHOICE(0xa591, CHOICE_FIGHT, 0xa59b);
        } else if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_NotNow_08_07");
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_NotNow_08_08");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_NotNow_08_07");
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_NotNow_08_08");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_NotNow_08_07");
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_NotNow_08_08");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_NotNow_08_07");
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_NotNow_08_08");
        };
        INFO_SLUMSGUARDIAN_HELLO_NOTNOW_GIVE();
    };
    SLUMSGUARDIAN_PROTECTION_OFF();
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_Hello_NotNow_08_09");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_Hello_NotNow_08_09");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_Hello_NotNow_08_09");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_Hello_NotNow_08_09");
    };
    AI_STOPPROCESSINFOS(SELF);
}

func void INFO_SLUMSGUARDIAN_HELLO_NOTNOW_FIGHT() {
    SLUMSGUARDIAN_PROTECTION_OFF();
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_NONE, 1);
    SELF.AIVAR[52] = TRUE;
}

instance INFO_SLUMSGUARDIAN_PAYDAY(C_INFO) {
    NR = 3;
    CONDITION = INFO_SLUMSGUARDIAN_PAYDAY_CONDITION;
    INFORMATION = INFO_SLUMSGUARDIAN_PAYDAY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int INFO_SLUMSGUARDIAN_PAYDAY_CONDITION() {
    if (((((SLUMSGUARDIAN_PAYDAY) <= ((WLD_GETDAY()) - (4))) && ((LOG_GETSTATUS(MIS_QA304)) != (LOG_RUNNING))) && ((LOG_GETSTATUS(MIS_SQ505)) != (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 0xa591))) {
        if (((HERO.GUILD) == (GIL_NONE)) || ((HERO.GUILD) == (GIL_VLK))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void INFO_SLUMSGUARDIAN_PAYDAY_INFO() {
    if ((SLUMSGUARDIAN_PROTECTIONPAID) == (TRUE)) {
        if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_PayDay_08_00");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_PayDay_08_00");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_PayDay_08_00");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_PayDay_08_00");
        };
        if (WLD_ISTIME(6, 0, 22, 0)) {
            if ((SELF.VOICE) == (2)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_PayDay_08_01");
            } else if ((SELF.VOICE) == (13)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_PayDay_08_01");
            } else if ((SELF.VOICE) == (72)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_PayDay_08_01");
            } else if ((SELF.VOICE) == (45)) {
                AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_PayDay_08_01");
            };
            SLUMSGUARDIAN_PAYDAYNIGHT = FALSE;
        } else if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_PayDay_08_02");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_PayDay_08_02");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_PayDay_08_02");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_PayDay_08_02");
        };
        SLUMSGUARDIAN_PAYDAYNIGHT = TRUE;
        INFO_CLEARCHOICES(0xa59c);
        if ((((SLUMSGUARDIAN_PAYDAYNIGHT) == (FALSE)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SLUMSGUARDIAN_DAY))) || (((SLUMSGUARDIAN_PAYDAYNIGHT) == (TRUE)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SLUMSGUARDIAN_NIGHT)))) {
            INFO_ADDCHOICE(0xa59c, "Here, gold for you.", 0xa59f);
        };
        INFO_ADDCHOICE(0xa59c, "That's it, I'm not paying anymore!", 0xa5a0);
    };
    if ((SLUMSGUARDIAN_PROTECTIONPAID) == (FALSE)) {
        if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_PayDay_Den_08_00");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_PayDay_Den_08_00");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_PayDay_Den_08_00");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_PayDay_Den_08_00");
        };
        AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_PayDay_Den_15_01");
        if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_PayDay_Den_08_02");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_PayDay_Den_08_02");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_PayDay_Den_08_02");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_PayDay_Den_08_02");
        };
        SLUMSGUARDIAN_PAYDAY = WLD_GETDAY();
        AI_STOPPROCESSINFOS(SELF);
        B_ATTACK(SELF, OTHER, AR_NONE, 1);
        SELF.AIVAR[52] = TRUE;
    };
}

func void INFO_SLUMSGUARDIAN_PAYDAY_PAYAGAIN() {
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_PayDay_PayAgain_15_00");
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_PayDay_PayAgain_08_01");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_PayDay_PayAgain_08_01");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_PayDay_PayAgain_08_01");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_PayDay_PayAgain_08_01");
    };
    if ((SLUMSGUARDIAN_PAYDAYNIGHT) == (FALSE)) {
    };
    B_GIVEINVITEMS(OTHER, SELF, 0x859b, SLUMSGUARDIAN_NIGHT);
    SLUMSGUARDIAN_PROTECTION_ON();
    AI_STOPPROCESSINFOS(SELF);
}

func void INFO_SLUMSGUARDIAN_PAYDAY_PAYNOMORE() {
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_PayDay_PayNoMore_15_00");
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_PayDay_PayNoMore_08_01");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_PayDay_PayNoMore_08_01");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_PayDay_PayNoMore_08_01");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_PayDay_PayNoMore_08_01");
    };
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_PayDay_PayNoMore_15_02");
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_PayDay_PayNoMore_08_03");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_PayDay_PayNoMore_08_03");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_PayDay_PayNoMore_08_03");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_PayDay_PayNoMore_08_03");
    };
    SLUMSGUARDIAN_PROTECTION_OFF();
    AI_STOPPROCESSINFOS(SELF);
}

func void SLUMSGUARDIAN_CHANGEMYMIND_OK() {
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_ChangeMyMind_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_ChangeMyMind_08_02");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_ChangeMyMind_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_ChangeMyMind_08_02");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_ChangeMyMind_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_ChangeMyMind_08_02");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_ChangeMyMind_08_01");
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_ChangeMyMind_08_02");
    };
}

instance INFO_SLUMSGUARDIAN_CHANGEMYMIND(C_INFO) {
    NR = 3;
    CONDITION = INFO_SLUMSGUARDIAN_CHANGEMYMIND_CONDITION;
    INFORMATION = INFO_SLUMSGUARDIAN_CHANGEMYMIND_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = "I changed my mind. I decided to pay you.";
}

func int INFO_SLUMSGUARDIAN_CHANGEMYMIND_CONDITION() {
    if (((((SLUMSGUARDIAN_PROTECTIONPAID) == (FALSE)) && ((LOG_GETSTATUS(MIS_QA304)) != (LOG_RUNNING))) && ((LOG_GETSTATUS(MIS_SQ505)) != (LOG_RUNNING))) && (NPC_KNOWSINFO(OTHER, 0xa591))) {
        if (((HERO.GUILD) == (GIL_NONE)) || ((HERO.GUILD) == (GIL_VLK))) {
            return TRUE;
        };
    };
    return 0 /* !broken stack! */;
}

func void INFO_SLUMSGUARDIAN_CHANGEMYMIND_INFO() {
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_ChangeMyMind_15_00");
    if (((NPC_HASITEMS(OTHER, 0x859b)) >= (SLUMSGUARDIAN_NIGHT)) && (WLD_ISTIME(22, 0, 6, 0))) {
        SLUMSGUARDIAN_CHANGEMYMIND_OK();
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SLUMSGUARDIAN_NIGHT);
        SLUMSGUARDIAN_PROTECTION_ON();
        AI_STOPPROCESSINFOS(SELF);
    };
    if (((NPC_HASITEMS(OTHER, 0x859b)) >= (SLUMSGUARDIAN_DAY)) && (WLD_ISTIME(6, 0, 22, 0))) {
        SLUMSGUARDIAN_CHANGEMYMIND_OK();
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SLUMSGUARDIAN_DAY);
        SLUMSGUARDIAN_PROTECTION_ON();
        AI_STOPPROCESSINFOS(SELF);
    };
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_ChangeMyMind_08_04");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_ChangeMyMind_08_04");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_ChangeMyMind_08_04");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_ChangeMyMind_08_04");
    };
    AI_STOPPROCESSINFOS(SELF);
}

instance INFO_SLUMSGUARDIAN_SQ505_LITTLEHELP(C_INFO) {
    NR = 1;
    CONDITION = INFO_SLUMSGUARDIAN_SQ505_LITTLEHELP_CONDITION;
    INFORMATION = INFO_SLUMSGUARDIAN_SQ505_LITTLEHELP_INFO;
    PERMANENT = FALSE;
    DESCRIPTION = "Don't you think that loud Usurer's man is a nuisance?";
}

func int INFO_SLUMSGUARDIAN_SQ505_LITTLEHELP_CONDITION() {
    if (((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0x10a6d))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void INFO_SLUMSGUARDIAN_SQ505_LITTLEHELP_INFO() {
    AI_STARTFACEANI(OTHER, S_WHAT, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_SQ505_LittleHelp_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_SQ505_LittleHelp_08_02");
        AI_RESETFACEANI(SELF);
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_SQ505_LittleHelp_08_03");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_SQ505_LittleHelp_08_02");
        AI_RESETFACEANI(SELF);
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_SQ505_LittleHelp_08_03");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_SQ505_LittleHelp_08_02");
        AI_RESETFACEANI(SELF);
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_SQ505_LittleHelp_08_03");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_SQ505_LittleHelp_08_02");
        AI_RESETFACEANI(SELF);
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_SQ505_LittleHelp_08_03");
    };
    INFO_CLEARCHOICES(0xa5a5);
    INFO_ADDCHOICE(0xa5a5, "How much do you want for silencing him?", 0xa5a9);
}

var int SLUMSGUARDIAN_SQ505_COST = 0;
func void INFO_SLUMSGUARDIAN_SQ505_LITTLEHELP_HOWMUCH() {
    SLUMSGUARDIAN_SQ505_COST = 1;
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_SQ505_LittleHelp_HowMuch_15_01");
    AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_SQ505_LittleHelp_HowMuch_08_02");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_SQ505_LittleHelp_HowMuch_08_02");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_SQ505_LittleHelp_HowMuch_08_02");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_SQ505_LittleHelp_HowMuch_08_02");
    };
}

instance INFO_SLUMSGUARDIAN_SQ505_PAY(C_INFO) {
    NR = 1;
    CONDITION = INFO_SLUMSGUARDIAN_SQ505_PAY_CONDITION;
    INFORMATION = INFO_SLUMSGUARDIAN_SQ505_PAY_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_PAYTOSHUTVOLKERSPEAKERS;
}

func int INFO_SLUMSGUARDIAN_SQ505_PAY_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && (NPC_KNOWSINFO(OTHER, 0xa5a5))) && ((SQ505_PAIDSLUMSGUARDIANMONEY) == (FALSE))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int SQ505_SLUMSGUARDIAN_ASKABOUTGOLD = 0;
func void INFO_SLUMSGUARDIAN_SQ505_PAY_INFO() {
    INFO_CLEARCHOICES(0xa5aa);
    INFO_ADDCHOICE(0xa5aa, DIALOG_BACK, 0xa5ae);
    if ((SLUMSGUARDIAN_SQ505_COST) == (1)) {
        INFO_ADDCHOICE(0xa5aa, "Here. You never saw me. (500 GP)", 0xa5b1);
    };
    INFO_ADDCHOICE(0xa5aa, "Here. You never saw me. (300 GP)", 0xa5b1);
    if ((SQ505_SLUMSGUARDIAN_ASKABOUTGOLD) == (FALSE)) {
        if ((SQ505_IPAIEDYOUFUCKINGGOLD) == (TRUE)) {
            INFO_ADDCHOICE(0xa5aa, "I paid you to protect me!", 0xa5af);
        } else {
            INFO_ADDCHOICE(0xa5aa, "That's a hell of a lot...", 0xa5b0);
        };
    };
}

func void INFO_SLUMSGUARDIAN_SQ505_PAY_BACK() {
    INFO_CLEARCHOICES(0xa5aa);
}

func void INFO_SLUMSGUARDIAN_SQ505_PAY_IHELPED() {
    SQ505_SLUMSGUARDIAN_ASKABOUTGOLD = TRUE;
    SLUMSGUARDIAN_SQ505_COST = 2;
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_SQ505_Pay_IHelped_15_01");
    AI_STARTFACEANI(SELF, S_NOPE, 1, -(1));
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_SQ505_Pay_IHelped_08_02");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_SQ505_Pay_IHelped_08_02");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_SQ505_Pay_IHelped_08_02");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_SQ505_Pay_IHelped_08_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    INFO_SLUMSGUARDIAN_SQ505_PAY_INFO();
}

func void INFO_SLUMSGUARDIAN_SQ505_PAY_TOOMUCH() {
    SQ505_SLUMSGUARDIAN_ASKABOUTGOLD = TRUE;
    AI_STARTFACEANI(OTHER, S_SERIOUS, 1, -(1));
    AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_SQ505_Pay_TooMuch_15_01");
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_SQ505_Pay_TooMuch_08_02");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_SQ505_Pay_TooMuch_08_02");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_SQ505_Pay_TooMuch_08_02");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_SQ505_Pay_TooMuch_08_02");
    };
    AI_RESETFACEANI(OTHER);
    AI_RESETFACEANI(SELF);
    INFO_SLUMSGUARDIAN_SQ505_PAY_INFO();
}

func void INFO_SLUMSGUARDIAN_SQ505_PAY_GOLD() {
    if ((((SLUMSGUARDIAN_SQ505_COST) == (1)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ505_SLUMSGUARDIAN_COST_V1))) || (((SLUMSGUARDIAN_SQ505_COST) == (2)) && ((NPC_HASITEMS(OTHER, 0x859b)) >= (SQ505_SLUMSGUARDIAN_COST_V2)))) {
        SQ505_PAIDSLUMSGUARDIANMONEY = TRUE;
        SQ505_REMOVEVOLKERGUARD_SLUMS = TRUE;
        SQ505_REMOVEVOLKERGUARD_SLUMS_DAY = WLD_GETDAY();
        if ((SLUMSGUARDIAN_SQ505_COST) == (1)) {
        } else {
            AI_OUTPUT(OTHER, SELF, "Info_SlumsGuardian_SQ505_Pay_Gold_15_01");
        } else {
            AI_STARTFACEANI(SELF, S_SMUG, 1, -(1));
        } else if ((SELF.VOICE) == (2)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_SQ505_Pay_Gold_08_02");
        } else if ((SELF.VOICE) == (13)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_SQ505_Pay_Gold_08_02");
        } else if ((SELF.VOICE) == (72)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_SQ505_Pay_Gold_08_02");
        } else if ((SELF.VOICE) == (45)) {
            AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_SQ505_Pay_Gold_08_02");
        };
        B_GIVEINVITEMS(OTHER, SELF, 0x859b, SQ505_SLUMSGUARDIAN_COST_V2);
        AI_LOGENTRY(TOPIC_SQ505, LOG_SQ505_SLUMSGUARDIAN_PAID);
        INFO_SLUMSGUARDIAN_SQ505_PAY_BACK();
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    B_SAY(SELF, OTHER, "$NOGOLD_BRIBE");
    AI_RESETFACEANI(SELF);
}

instance INFO_SLUMSGUARDIAN_SQ505_VOLKERGUARDSGONE(C_INFO) {
    NR = 1;
    CONDITION = INFO_SLUMSGUARDIAN_SQ505_VOLKERGUARDSGONE_CONDITION;
    INFORMATION = INFO_SLUMSGUARDIAN_SQ505_VOLKERGUARDSGONE_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int INFO_SLUMSGUARDIAN_SQ505_VOLKERGUARDSGONE_CONDITION() {
    if ((((LOG_GETSTATUS(MIS_SQ505)) == (LOG_RUNNING)) && ((SQ505_REMOVEVOLKERGUARD_SLUMS) == (2))) && ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(NONE_13637_SLUMSGUARDIAN)))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void INFO_SLUMSGUARDIAN_SQ505_VOLKERGUARDSGONE_INFO() {
    if ((SELF.VOICE) == (2)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_SQ505_VolkerGuardsGone_08_01");
    };
    if ((SELF.VOICE) == (13)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V2_SQ505_VolkerGuardsGone_08_01");
    };
    if ((SELF.VOICE) == (72)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V3_SQ505_VolkerGuardsGone_08_01");
    };
    if ((SELF.VOICE) == (45)) {
        AI_OUTPUT(SELF, OTHER, "Info_SlumsGuardian_V4_SQ505_VolkerGuardsGone_08_01");
    };
    AI_LOGENTRY(TOPIC_SQ505, LOG_SQ505_VOLKERGUARD_SLUMS_GONE);
    AI_FUNCTION(SELF, 0x7dfd);
    NPC_EXCHANGEROUTINE(SELF, START);
}

func void B_ASSIGNAMBIENTINFOS_SLUMSGUARDIAN(var C_NPC SLF) {
    INFO_SLUMSGUARDIAN_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    INFO_SLUMSGUARDIAN_HELLO.NPC = HLP_GETINSTANCEID(SLF);
    INFO_SLUMSGUARDIAN_PAYDAY.NPC = HLP_GETINSTANCEID(SLF);
    INFO_SLUMSGUARDIAN_CHANGEMYMIND.NPC = HLP_GETINSTANCEID(SLF);
    INFO_SLUMSGUARDIAN_SQ505_LITTLEHELP.NPC = HLP_GETINSTANCEID(SLF);
    INFO_SLUMSGUARDIAN_SQ505_PAY.NPC = HLP_GETINSTANCEID(SLF);
    INFO_SLUMSGUARDIAN_SQ505_VOLKERGUARDSGONE.NPC = HLP_GETINSTANCEID(SLF);
}

