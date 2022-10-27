instance DIA_13347_REFUGEE_EXIT(C_INFO) {
    NPC = 0xd854;
    NR = 999;
    CONDITION = DIA_13347_REFUGEE_EXIT_CONDITION;
    INFORMATION = DIA_13347_REFUGEE_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13347_REFUGEE_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13347_REFUGEE_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13347_REFUGEE_ATTACK(C_INFO) {
    NPC = 0xd854;
    NR = 1;
    CONDITION = DIA_13347_REFUGEE_ATTACK_CONDITION;
    INFORMATION = DIA_13347_REFUGEE_ATTACK_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13347_REFUGEE_ATTACK_CONDITION() {
    return TRUE;
}

func void DIA_13347_REFUGEE_ATTACK_INFO() {
    B_SAY(SELF, OTHER, "$ENEMYKILLED");
    AI_STOPPROCESSINFOS(SELF);
    B_ATTACK(SELF, OTHER, AR_KILL, 1);
}

