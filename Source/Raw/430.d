instance DIA_KQ407_ARMY_EXIT(C_INFO) {
    NR = 999;
    CONDITION = DIA_KQ407_ARMY_EXIT_CONDITION;
    INFORMATION = DIA_KQ407_ARMY_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_KQ407_ARMY_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_KQ407_ARMY_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_KQ407_ARMY_READY(C_INFO) {
    NR = 999;
    CONDITION = DIA_KQ407_ARMY_READY_CONDITION;
    INFORMATION = DIA_KQ407_ARMY_READY_INFO;
    PERMANENT = TRUE;
    IMPORTANT = TRUE;
}

func int DIA_KQ407_ARMY_READY_CONDITION() {
    if (NPC_ISINSTATE(SELF, 0xf09f)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_KQ407_ARMY_READY_INFO() {
    B_SAY(SELF, OTHER, "$QM401_Militia_Ready");
    AI_STOPPROCESSINFOS(SELF);
}

func void B_ASSIGNAMBIENTINFOS_KQ407_ARMY(var C_NPC SLF) {
    DIA_KQ407_ARMY_EXIT.NPC = HLP_GETINSTANCEID(SLF);
    DIA_KQ407_ARMY_READY.NPC = HLP_GETINSTANCEID(SLF);
}
