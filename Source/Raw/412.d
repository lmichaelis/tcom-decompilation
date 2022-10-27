instance DIA_QM401_RENEGADEATTACKGROUP_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_QM401_RENEGADEATTACKGROUP_EXIT_CONDITION;
    INFORMATION = DIA_QM401_RENEGADEATTACKGROUP_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_QM401_RENEGADEATTACKGROUP_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_QM401_RENEGADEATTACKGROUP_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_QM401_RENEGADEATTACKGROUP_JUSTREADY(C_INFO) {
    NR = 1;
    CONDITION = DIA_QM401_RENEGADEATTACKGROUP_JUSTREADY_CONDITION;
    INFORMATION = DIA_QM401_RENEGADEATTACKGROUP_JUSTREADY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_QM401_RENEGADEATTACKGROUP_JUSTREADY_CONDITION() {
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(MIL_13513_MILITIA))) {
        return FALSE;
    };
    if ((((((((QM401_RENEGADESCAVEATTACK_GO) == (FALSE)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((QM401_RENEGADESCAVEATTACK) == (1))) && ((NPC_GETDISTTOWP(SELF, "PART7_QM401_BEFORE_SPOT_05")) <= (0x7d0))) && ((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING))) || ((((((QM401_RENEGADESCAVEATTACK_GO) == (FALSE)) && (NPC_ISINSTATE(SELF, 0xf09f))) && ((QM401_RENEGADESCAVEATTACK) == (2))) && ((NPC_GETDISTTOWP(SELF, "PART7_QM401_BEFORE_SPOT_01")) <= (0x7d0))) && ((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)))) || ((QM401_CANUSEBOOKS) == (TRUE))) {
        return FALSE;
    };
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_QM401_RENEGADEATTACKGROUP_JUSTREADY_INFO() {
    B_SAY(SELF, OTHER, "$QM401_Militia_Ready");
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_QM401_RENEGADEATTACKGROUP_READYFORATTACK(C_INFO) {
    NR = 1;
    CONDITION = DIA_QM401_RENEGADEATTACKGROUP_READYFORATTACK_CONDITION;
    INFORMATION = DIA_QM401_RENEGADEATTACKGROUP_READYFORATTACK_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_QM401_RENEGADEATTACKGROUP_READYFORATTACK_CONDITION() {
    if ((LOG_GETSTATUS(MIS_QM401)) == (LOG_RUNNING)) {
        if ((((QM401_RENEGADESCAVEATTACK) == (1)) && ((NPC_GETDISTTOWP(SELF, "PART7_QM401_BEFORE_SPOT_05")) <= (0x7d0))) || (((QM401_RENEGADESCAVEATTACK) == (2)) && ((NPC_GETDISTTOWP(SELF, "PART7_QM401_BEFORE_SPOT_01")) <= (0x7d0)))) {
            if ((NPC_ISINSTATE(SELF, 0xf09f)) && ((QM401_RENEGADESCAVEATTACK_GO) == (FALSE))) {
                return TRUE;
            };
        };
    };
    return 0 /* !broken stack! */;
}

func void DIA_QM401_RENEGADEATTACKGROUP_READYFORATTACK_INFO() {
    AI_PLAYANI(SELF, "T_STAND_2_MILSTAND_HERO");
    B_SAY(SELF, OTHER, "$QM401_Militia_Ready");
    INFO_CLEARCHOICES(0xa6a2);
    INFO_ADDCHOICE(0xa6a2, DIALOG_ENDE, 0xa6a5);
    INFO_ADDCHOICE(0xa6a2, "Let's go!", 0xa6a6);
}

func void DIA_QM401_RENEGADEATTACKGROUP_READYFORATTACK_END() {
    AI_PLAYANI(SELF, "T_REMOVE_MILSTAND");
    AI_STOPPROCESSINFOS(SELF);
}

func void DIA_QM401_RENEGADEATTACKGROUP_READYFORATTACK_GO() {
    B_SAY(OTHER, SELF, "$MARVIN_LETSGO");
    AI_PLAYANI(SELF, "T_REMOVE_MILSTAND");
    AI_WAITTILLEND(SELF, OTHER);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 0xf56d);
}

func void B_ASSIGNAMBIENTINFOS_QM401_RENEGADEATTACKGROUP(var C_NPC SLF) {
    DIA_QM401_RENEGADEATTACKGROUP_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_QM401_RENEGADEATTACKGROUP_READYFORATTACK.NPC = HLP_GETINSTANCEID(SLF);
    DIA_QM401_RENEGADEATTACKGROUP_JUSTREADY.NPC = HLP_GETINSTANCEID(SLF);
}

