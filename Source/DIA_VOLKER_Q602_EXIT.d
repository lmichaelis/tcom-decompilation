instance DIA_VOLKER_Q602_EXIT(C_INFO) {
    NPC = 60096;
    NR = 999;
    CONDITION = DIA_VOLKER_Q602_EXIT_CONDITION;
    INFORMATION = DIA_VOLKER_Q602_EXIT_INFO;
    PERMANENT = TRUE;
    DESCRIPTION = DIALOG_ENDE;
}

func int DIA_VOLKER_Q602_EXIT_CONDITION() {
    return TRUE;
}

func void DIA_VOLKER_Q602_EXIT_INFO() {
    AI_STOPPROCESSINFOS(SELF);
}

instance DIA_VOLKER_Q602_FINAL(C_INFO) {
    NPC = 60096;
    NR = 1;
    CONDITION = DIA_VOLKER_Q602_FINAL_CONDITION;
    INFORMATION = DIA_VOLKER_Q602_FINAL_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VOLKER_Q602_FINAL_CONDITION() {
    if (((LOG_GETSTATUS(MIS_Q602)) == (LOG_RUNNING)) && ((Q602_FINALBOSS_READYTOFIGHT) != (2))) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

var int VOLKER_Q602_FINAL_FIREMAGES;
var int VOLKER_Q602_FINAL_ULRYK;
var int VOLKER_Q602_FINAL_SAVE;
var int VOLKER_Q602_FINAL_WHY;
var int VOLKER_Q602_FINAL_REVANGE;
func void DIA_VOLKER_Q602_FINAL_CHOICES() {
    INFO_CLEARCHOICES(90714);
    if ((((((VOLKER_Q602_FINAL_FIREMAGES) == (TRUE)) || ((VOLKER_Q602_FINAL_ULRYK) == (TRUE))) || ((VOLKER_Q602_FINAL_SAVE) == (TRUE))) || ((VOLKER_Q602_FINAL_WHY) == (TRUE))) || ((VOLKER_Q602_FINAL_REVANGE) == (TRUE))) {
        INFO_ADDCHOICE(90714, "I'm not going to listen to any more of your nonsense.", 90728);
    };
    if ((VOLKER_Q602_FINAL_REVANGE) == (FALSE)) {
        INFO_ADDCHOICE(90714, "Time to pay off your debt, Volker.", 90723);
    };
    if (NPC_KNOWSINFO(OTHER, 90167)) {
        if ((VOLKER_Q602_FINAL_FIREMAGES) == (FALSE)) {
            INFO_ADDCHOICE(90714, "Why did you murder the Fire Mages?", 90735);
        };
    };
    if ((VOLKER_Q602_FINAL_ULRYK) == (FALSE)) {
        INFO_ADDCHOICE(90714, "Why the alliance with Ulryk?", 90736);
    };
    if ((VOLKER_Q602_FINAL_SAVE) == (FALSE)) {
        INFO_ADDCHOICE(90714, "So you dare say you did all this to save the island?", 90729);
    };
    if ((VOLKER_Q602_FINAL_WHY) == (FALSE)) {
        INFO_ADDCHOICE(90714, "Why do you care so much about Archolos?", 90732);
    };
}

func void DIA_VOLKER_Q602_FINAL_INFO() {
    WLD_SENDTRIGGER("Q602_VOLKERGATE");
    SELF.AIVAR[15] = FALSE;
    if ((IVY_Q602_JOINEDTEAM) == (TRUE)) {
        TELEPORTNPCTOWP(59916, "PARTE5_IVY_FINALBATTLE");
        NONE_16_IVY_Q602.AIVAR[96] = -(1);
        NONE_16_IVY_Q602.FLAGS = NPC_FLAG_IMPORTANT;
        NONE_16_IVY_Q602.AIVAR[15] = TRUE;
    };
    AI_STARTFACEANI(SELF, S_ANGRY, 1, -(1));
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    DIA_VOLKER_Q602_FINAL_CHOICES();
}

func void DIA_VOLKER_Q602_FINAL_REVANGE() {
    VOLKER_Q602_FINAL_REVANGE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Revange_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Revange_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Revange_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Revange_15_04");
    if (((HERO.GUILD) == (GIL_MIL)) || ((MARVIN_LOSTGUILDMILITA) == (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Revange_03_05");
    };
    if (((HERO.GUILD) == (GIL_SLD)) || ((MARVIN_LOSTGUILDARAXOS) == (1))) {
        AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Revange_03_06");
    };
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Revange_03_07");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Revange_03_08");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Revange_03_09");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Revange_03_10");
    INFO_CLEARCHOICES(90714);
    INFO_ADDCHOICE(90714, "I will take revenge on behalf of Kessel and the entire Ring of Water.", 90725);
    INFO_ADDCHOICE(90714, "Neither Kessel nor Ulryk matter anymore.", 90726);
    INFO_ADDCHOICE(90714, "I don't care about that fool, all I want is revenge on you.", 90727);
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_NEXT() {
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Next_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Next_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Next_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Next_03_04");
    DIA_VOLKER_Q602_FINAL_CHOICES();
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_LEFT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Left_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Left_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Left_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Left_15_04");
    DIA_VOLKER_Q602_FINAL_REVANGE_NEXT();
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_ONLYUS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_OnlyUs_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_OnlyUs_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_OnlyUs_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_OnlyUs_15_04");
    DIA_VOLKER_Q602_FINAL_REVANGE_NEXT();
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_DONTCARE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_DontCare_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_DontCare_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_DontCare_03_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_DontCare_15_04");
    DIA_VOLKER_Q602_FINAL_REVANGE_NEXT();
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_FIGHT() {
    NPC_EXCHANGEROUTINE(SELF, "Q602_FIGHT");
    Q602_FINALBOSS_READYTOFIGHT = 2;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Fight_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Fight_03_02");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Fight_15_03");
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Fight_15_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Fight_03_05");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Fight_03_06");
    B_USEFAKEQ602POTION_VOLKER();
    INFO_CLEARCHOICES(90714);
    AI_STOPPROCESSINFOS(SELF);
    AI_FUNCTION(SELF, 61193);
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_SAVE() {
    VOLKER_Q602_FINAL_SAVE = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Save_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Save_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Save_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Save_03_04");
    INFO_CLEARCHOICES(90714);
    INFO_ADDCHOICE(90714, "Don't compare it to all those murders.", 90731);
    INFO_ADDCHOICE(90714, "What do you know about me?", 90730);
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_SAVE_WHAT() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_What_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_What_03_02");
    DIA_VOLKER_Q602_FINAL_CHOICES();
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_SAVE_COMPARE() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Compare_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Compare_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Compare_03_03");
    DIA_VOLKER_Q602_FINAL_CHOICES();
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_WHY() {
    VOLKER_Q602_FINAL_WHY = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Why_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Why_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Why_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Why_03_04");
    INFO_CLEARCHOICES(90714);
    INFO_ADDCHOICE(90714, "You've been all about your own position from the start!", 90733);
    if (NPC_KNOWSINFO(OTHER, 90421)) {
        INFO_ADDCHOICE(90714, "And that's why you set fire to the harbor?", 90734);
    };
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_WHY_STATUS() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Status_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Status_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Status_03_03");
    DIA_VOLKER_Q602_FINAL_CHOICES();
}

func void DIA_VOLKER_Q602_FINAL_REVANGE_WHY_HARBOUR() {
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Harbour_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Harbour_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Harbour_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Harbour_03_04");
    DIA_VOLKER_Q602_FINAL_CHOICES();
}

func void DIA_VOLKER_Q602_FINAL_FIREMAGES() {
    VOLKER_Q602_FINAL_FIREMAGES = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_FireMages_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_FireMages_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_FireMages_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_FireMages_03_04");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_FireMages_03_05");
    DIA_VOLKER_Q602_FINAL_CHOICES();
}

func void DIA_VOLKER_Q602_FINAL_ULRYK() {
    VOLKER_Q602_FINAL_ULRYK = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_Final_Ulryk_15_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Ulryk_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Ulryk_03_03");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_Final_Ulryk_03_04");
    DIA_VOLKER_Q602_FINAL_CHOICES();
}

instance DIA_VOLKER_Q602_FINALDECISION(C_INFO) {
    NPC = 60096;
    NR = 1;
    CONDITION = DIA_VOLKER_Q602_FINALDECISION_CONDITION;
    INFORMATION = DIA_VOLKER_Q602_FINALDECISION_INFO;
    PERMANENT = FALSE;
    IMPORTANT = TRUE;
}

func int DIA_VOLKER_Q602_FINALDECISION_CONDITION() {
    if ((Q602_FINALBOSSTIME) == (3)) {
        return TRUE;
    };
    return 0 /* !broken stack! */;
}

func void DIA_VOLKER_Q602_FINALDECISION_INFO() {
    B_HEALNPC_SELF();
    B_HEALNPC_OTHER();
    AI_STARTFACEANI(OTHER, S_ANGRY, 1, -(1));
    AI_SETWALKMODE(SELF, NPC_RUN);
    AI_TURNTONPC(SELF, OTHER);
    AI_TURNTONPC(OTHER, SELF);
    AI_PLAYANI(SELF, T_STAND_2_SCAREDDIALOGUE);
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_FinalDecision_03_01");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_FinalDecision_03_02");
    INFO_CLEARCHOICES(90737);
    INFO_ADDCHOICE(90737, "Get off this island and never come back. (Let go)", 90743);
    INFO_ADDCHOICE(90737, "I will not judge you, but all of Archolos will. (Prison)", 90742);
    INFO_ADDCHOICE(90737, "This is for my brother, you filthy scum! (Kill)", 90741);
}

func void VOLKER_Q602_FINISHGAME() {
    INFO_CLEARCHOICES(90737);
    AI_WAITTILLEND(OTHER, SELF);
    AI_STOPPROCESSINFOS(OTHER);
    AI_FUNCTION(OTHER, 93955);
}

func void DIA_VOLKER_Q602_FINALDECISION_KILL() {
    FINALBOARDS_VOLKERSTATUS = 1;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_FinalDecision_Kill_15_01");
    B_MARVIN_ATTACKINDIALOGUE_PREPARE();
    AI_FUNCTION(OTHER, 90744);
    B_MARVIN_ATTACKINDIALOGUE_ATTACK();
    VOLKER_Q602_FINISHGAME();
}

func void DIA_VOLKER_Q602_FINALDECISION_NOTME() {
    FINALBOARDS_VOLKERSTATUS = 2;
    NPC_EXCHANGEROUTINE(SELF, "FINISH");
    SELF.FLAGS = 2;
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_FinalDecision_NotMe_15_01");
    AI_PLAYANI(SELF, "T_REMOVE_SCAREDDIALOGUE");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_FinalDecision_NotMe_03_02");
    VOLKER_Q602_FINISHGAME();
}

func void DIA_VOLKER_Q602_FINALDECISION_LEAVE() {
    FINALBOARDS_VOLKERSTATUS = 3;
    NPC_EXCHANGEROUTINE(SELF, FLEE);
    SELF.FLAGS = 2;
    SELF.AIVAR[15] = TRUE;
    AI_OUTPUT(OTHER, SELF, "DIA_Volker_Q602_FinalDecision_Leave_15_01");
    AI_PLAYANI(SELF, "T_REMOVE_SCAREDDIALOGUE");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_FinalDecision_Leave_03_02");
    AI_OUTPUT(SELF, OTHER, "DIA_Volker_Q602_FinalDecision_Leave_03_03");
    VOLKER_Q602_FINISHGAME();
}

func void MARVIN_Q602_KILLVOLKER() {
    AI_PLAYANI(VLK_15000_VOLKER_Q602, T_DEAD);
    SND_PLAY("FIG_SwordFinal");
    SND_PLAY("SVM_51_DEAD");
    B_MAGICHURTNPC(HERO, VLK_15000_VOLKER_Q602, 99999);
    AI_REMOVEWEAPON(HERO);
    HERO.AIVAR[4] = FALSE;
}

