func void SQ505_BARREL_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        SELF.AIVAR[4] = TRUE;
        PLAYER_MOBSI_PRODUCTION = MOBSI_BARRELHIDEYOUNGVOLKERGUARD;
        AI_PROCESSINFOS(HER);
    };
}

instance SQ505_BARREL_S1.HER(C_NPC)
func int PC_SQ505_BARREL_HIDE_CONDITION() {
    if ((PLAYER_MOBSI_PRODUCTION) == (MOBSI_BARRELHIDEYOUNGVOLKERGUARD)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

instance PC_SQ505_BARREL_END(C_INFO) {
    NPC = 0xc3ab;
    NR = 999;
    CONDITION = PC_SQ505_BARREL_HIDE_CONDITION;
    INFORMATION = PC_SQ505_BARREL_END_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func void PC_SQ505_BARREL_END_INFO() {
    AI_STOPPROCESSINFOS(SELF);
    SELF.AIVAR[4] = FALSE;
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
}

instance PC_SQ505_BARREL_HIDE(C_INFO) {
    NPC = 0xc3ab;
    CONDITION = PC_SQ505_BARREL_HIDE_CONDITION;
    INFORMATION = PC_SQ505_BARREL_HIDE_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_CORPSEBARREL;
}

func void PC_SQ505_BARREL_HIDE_END() {
    MOB_CHANGEFOCUSNAME("SQ505_BARREL_03", "MOBNAME_NOTHING");
    AI_STOPPROCESSINFOS(SELF);
    MOB_CHANGEFOCUSNAME("SQ505_BARREL_02", "MOBNAME_NOTHING");
    SELF.AIVAR[4] = FALSE;
    MOB_CHANGEFOCUSNAME("SQ505_BARREL_01", "MOBNAME_NOTHING");
    PLAYER_MOBSI_PRODUCTION = MOBSI_NONE;
    FADESCREENTOBLACKF(1, 0x7e0b, 1000);
}

func void PC_SQ505_BARREL_HIDE_INFO() {
    INFO_CLEARCHOICES(0x7e05);
    INFO_ADDCHOICE(0x7e05, DIALOG_BACK, 0x7e08);
    INFO_ADDCHOICE(0x7e05, "(Take him to Tengral)", 0x7e0a);
    INFO_ADDCHOICE(0x7e05, "(Give him a sea funeral)", 0x7e09);
}

func void PC_SQ505_BARREL_HIDE_BACK() {
    INFO_CLEARCHOICES(0x7e05);
}

func void PC_SQ505_BARREL_HIDE_V1() {
    SQ505_YOUNGVOLKERGUARD_GRAVE = 1;
    PC_SQ505_BARREL_HIDE_END();
}

func void PC_SQ505_BARREL_HIDE_V2() {
    SQ505_YOUNGVOLKERGUARD_GRAVE = 2;
    PC_SQ505_BARREL_HIDE_END();
}

func void SQ505_BARREL_HIDE_FADESCREEN() {
    if ((SQ505_YOUNGVOLKERGUARD_GRAVE) == (1)) {
        TELEPORTNPCTOWP(0x71b, "HARBOUR_BEACH_SQ505_GRAVE");
        B_LOGENTRY(TOPIC_SQ505, LOG_SQ505_YOUNGVOLKERGUARD_GRAVE_V1);
        WLD_SENDTRIGGER("SQ505_MOVER_GRAVE_M6");
        SQ505_VOLKERGUARDS_M3_WAIT();
    };
    if ((SQ505_YOUNGVOLKERGUARD_GRAVE) == (2)) {
        TELEPORTNPCTOWP(0x71b, "PARTM8_SQ505_GRAVE_HERO");
        NPC_CLEARAIQUEUE(KDF_9004_TENGRAL);
        B_STARTOTHERROUTINE(KDF_9004_TENGRAL, "SQ505_GRAVE");
        TELEPORTNPCTOWP(0xd87e, KDF_9004_TENGRAL.WP);
        WLD_SENDTRIGGER("SQ505_MOVER_GRAVE_M8");
    };
    NPC_CLEARAIQUEUE(NONE_13640_VOLKERGUARD);
    B_STARTOTHERROUTINE(NONE_13640_VOLKERGUARD, TOT);
    TELEPORTNPCTOWP(0xcd9a, NONE_13640_VOLKERGUARD.WP);
    FADESCREENFROMBLACK(1);
    FF_APPLYONCEEXTGT(0x7df3, 0, -(1));
    WLD_SETTIME(23, 0);
}

