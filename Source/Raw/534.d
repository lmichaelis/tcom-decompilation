func void B_RESTARTINFLATE() {
    if ((NPC_GETLASTHITSPELLID(SELF)) == (SPL_INFLATE)) {
        NPC_SETSTATETIME(SELF, 0);
    };
}

func void B_STOPINFLATE() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xa92d);
    NPC_CLEARAIQUEUE(SELF);
    AI_STANDUP(SELF);
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        B_ASSESSDAMAGE();
    };
    NPC_SETTEMPATTITUDE(SELF, ATT_HOSTILE);
}

func int ZS_INFLATE() {
    NPC_PERCENABLE(SELF, PERC_ASSESSMAGIC, 0xab38);
    NPC_STOPANI(SELF, "S_INFLATE_VICTIM");
    if (!(C_BODYSTATECONTAINS(SELF, BS_UNCONSCIOUS))) {
        AI_PLAYANIBS(SELF, "T_STAND_2_INFLATE_VICTIM", BS_UNCONSCIOUS);
    };
    SELF.AIVAR[77] = 0;
    return 0 /* !broken stack! */;
}

func int ZS_INFLATE_LOOP() {
    if ((NPC_GETSTATETIME(SELF)) > (SPL_TIME_INFLATE)) {
        B_STOPINFLATE();
        return LOOP_END;
    };
    if ((NPC_GETSTATETIME(SELF)) != (SELF.AIVAR[77])) {
        if ((NPC_GETSTATETIME(SELF)) == (1)) {
            MDL_SETMODELFATNESS(SELF, 0x3f800000);
        } else if ((NPC_GETSTATETIME(SELF)) == (2)) {
            MDL_SETMODELFATNESS(SELF, 0x40400000);
        } else if ((NPC_GETSTATETIME(SELF)) == (3)) {
            MDL_SETMODELFATNESS(SELF, 0x41000000);
        } else if ((NPC_GETSTATETIME(SELF)) == (4)) {
            MDL_SETMODELFATNESS(SELF, 0x41400000);
        } else if ((NPC_GETSTATETIME(SELF)) == (5)) {
            MDL_SETMODELFATNESS(SELF, 0x41100000);
            B_SAY(SELF, OTHER, "$Aargh_1");
        } else if ((NPC_GETSTATETIME(SELF)) == (6)) {
            MDL_SETMODELFATNESS(SELF, 0x41700000);
        } else if ((NPC_GETSTATETIME(SELF)) == (7)) {
            MDL_SETMODELFATNESS(SELF, 0x41900000);
        } else if ((NPC_GETSTATETIME(SELF)) == (8)) {
            MDL_SETMODELFATNESS(SELF, 0x41300000);
            B_SAY(SELF, OTHER, "$Aargh_2");
        } else if ((NPC_GETSTATETIME(SELF)) == (9)) {
            MDL_SETMODELFATNESS(SELF, 0x41700000);
        } else if ((NPC_GETSTATETIME(SELF)) == (10)) {
            MDL_SETMODELFATNESS(SELF, 0x41500000);
        } else if ((NPC_GETSTATETIME(SELF)) == (11)) {
            MDL_SETMODELFATNESS(SELF, 0x41400000);
        } else if ((NPC_GETSTATETIME(SELF)) == (12)) {
            MDL_SETMODELFATNESS(SELF, 0x41200000);
        } else if ((NPC_GETSTATETIME(SELF)) == (13)) {
            MDL_SETMODELFATNESS(SELF, 0x41000000);
        } else if ((NPC_GETSTATETIME(SELF)) == (14)) {
            MDL_SETMODELFATNESS(SELF, 0x40a00000);
            B_SAY(SELF, OTHER, "$Aargh_3");
        } else if ((NPC_GETSTATETIME(SELF)) == (15)) {
            MDL_SETMODELFATNESS(SELF, 0x40c00000);
        } else if ((NPC_GETSTATETIME(SELF)) == (16)) {
            MDL_SETMODELFATNESS(SELF, 0x40800000);
        } else if ((NPC_GETSTATETIME(SELF)) == (17)) {
            MDL_SETMODELFATNESS(SELF, 0x40000000);
        } else if ((NPC_GETSTATETIME(SELF)) == (18)) {
            MDL_SETMODELFATNESS(SELF, 0x3f800000);
        } else if ((NPC_GETSTATETIME(SELF)) == (19)) {
            MDL_SETMODELFATNESS(SELF, 0x3f800000);
        };
        SELF.AIVAR[77] = NPC_GETSTATETIME(SELF);
        if ((SELF.ATTRIBUTE[0]) > (SPL_INFLATE_DAMAGE)) {
            B_MAGICHURTNPC(OTHER, SELF, SPL_INFLATE_DAMAGE);
        } else {
            B_MAGICHURTNPC(OTHER, SELF, (SELF.ATTRIBUTE[0]) - (1));
        };
    };
    return LOOP_CONTINUE;
}

func void ZS_INFLATE_END() {
}

