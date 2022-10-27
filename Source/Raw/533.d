func void B_RESTARTGREENTENTACLE() {
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_GREENTENTACLE)) {
        NPC_SETSTATETIME(SELF, 0);
    };
}

func void B_STOPGREENTENTACLE() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        B_ASSESSDAMAGE();
    };
    NPC_SETTEMPATTITUDE(SELF, ATT_HOSTILE);
}

func int ZS_GREENTENTACLE() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xab32);
    NPC_PERCENABLE(SELF, PERC_ASSESSDAMAGE, 0xa2a3);
    NPC_STOPANI(SELF, "s_GreententacleA_Victim");
    NPC_STOPANI(SELF, "s_GreententacleB_Victim");
    NPC_STOPANI(SELF, "s_GreententacleC_Victim");
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    if (!(C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS))) {
        if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
            if ((RANDY) == (0)) {
                AI_PLAYANIBS(SELF, "T_STAND_2_GREENTENTACLEA_VICTIM", BS_UNCONSCIOUS);
            };
            if ((RANDY) == (1)) {
                AI_PLAYANIBS(SELF, "T_STAND_2_GREENTENTACLEB_VICTIM", BS_UNCONSCIOUS);
            };
            if ((RANDY) == (2)) {
                AI_PLAYANIBS(SELF, "T_STAND_2_GREENTENTACLEC_VICTIM", BS_UNCONSCIOUS);
            };
        } else {
            AI_PLAYANIBS(SELF, "T_STAND_2_FREEZE_VICTIM", BS_UNCONSCIOUS);
        };
    };
    return 0 /* !broken stack! */;
}

var int ZS_GREENTENTACLE.RANDY = 0;
func int ZS_GREENTENTACLE_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) > (SPL_TIME_GREENTENTACLE)) {
        B_STOPGREENTENTACLE();
        return LOOP_END;
    };
    return LOOP_CONTINUE;
}

func void ZS_GREENTENTACLE_END() {
}

