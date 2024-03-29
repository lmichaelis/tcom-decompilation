func void SQ507_MANHUNTERS_TRAP() {
    PRINTD("Walka");
    SQ507_FIGHTWITHBOUNTYHUNTERS = 2;
    BDT_13416_MANHUNTER.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(BDT_13416_MANHUNTER, GIL_BDT);
    BDT_13416_MANHUNTER.FLAGS = 0;
    B_IMMEDIATEATTACKPLAYER(BDT_13416_MANHUNTER, AR_KILL);
    BDT_13419_MANHUNTER.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(BDT_13419_MANHUNTER, GIL_BDT);
    BDT_13419_MANHUNTER.FLAGS = 0;
    B_IMMEDIATEATTACKPLAYER(BDT_13419_MANHUNTER, AR_KILL);
    BDT_13431_HUNTINGDOG.GUILD = GIL_BDT;
    NPC_SETTRUEGUILD(BDT_13431_HUNTINGDOG, GIL_BDT);
    BDT_13431_HUNTINGDOG.FLAGS = 0;
    B_IMMEDIATEATTACKPLAYER(BDT_13431_HUNTINGDOG, AR_KILL);
}

instance DIA_13416_MANHUNTER_EXIT(C_INFO) {
    NPC = 58394;
    NR = 999;
    CONDITION = DIA_13416_MANHUNTER_EXIT_CONDITION;
    INFORMATION = DIA_13416_MANHUNTER_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_13416_MANHUNTER_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_13416_MANHUNTER_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_13416_MANHUNTER_SQ507_BADLUCK(C_INFO) {
    NPC = 58394;
    NR = 1;
    CONDITION = DIA_13416_MANHUNTER_SQ507_BADLUCK_CONDITION;
    INFORMATION = DIA_13416_MANHUNTER_SQ507_BADLUCK_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_13416_MANHUNTER_SQ507_BADLUCK_CONDITION() {
    return TRUE;
}

func void DIA_13416_MANHUNTER_SQ507_BADLUCK_INFO() {
    B_STARTOTHERROUTINE(VLK_6126_LENA, "LAYOVER2");
    NPC_REFRESH(VLK_6126_LENA);
    B_STARTOTHERROUTINE(MIL_13698_BARRY, "LAYOVER2");
    NPC_REFRESH(MIL_13698_BARRY);
    AI_OUTPUT(SELF, OTHER, "DIA_13416_ManHunter_SQ507_BadLuck_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_13416_ManHunter_SQ507_BadLuck_03_02");
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 82711);
}

