func void SMOKEJOINT_STARTRTN() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((NPC_GETDISTTOWP(SELF, SELF.WP)) > (TA_DIST_SELFWP_MAX)) {
        AI_GOTOWP(SELF, SELF.WP);
    };
    if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
        if ((NPC_HASITEMS(SELF, 0x8595)) == (0)) {
            CREATEINVITEM(SELF, 0x8595);
        };
    };
    if ((NPC_HASITEMS(SELF, 0x8592)) == (0)) {
        CREATEINVITEM(SELF, 0x8592);
    };
    SELF.AIVAR[19] = NOTINPOS;
}

func void ZS_SMOKE_JOINT() {
    if ((NPC_HASEQUIPPEDARMOR(HERO)) == (TRUE)) {
        if ((((NPC_WASINSTATE(SELF, 0xf09f)) && (NPC_HASGUILDARMOREQUIPPED(HERO, GIL_MIL))) && ((SELF.GUILD) == (GIL_VLK))) || (((SELF.GUILD) == (GIL_NONE)) && ((NPC_GETDISTTONPC(SELF, HERO)) <= (1000)))) {
            PRINTD("By³em w rozmowie");
            AI_STARTSTATE(SELF, 0xb68b, 1, "");
        } else {
            SMOKEJOINT_STARTRTN();
        } else {
            /* set_instance(0) */;
        };
    };
    SMOKEJOINT_STARTRTN();
}

func void SMOKEJOINT_RANDOMANI() {
    if ((NPC_GETSTATETIME(SELF)) > (5)) {
        PRINTD("Palimy");
        RANDOMJOINT = HLP_RANDOM(10);
        if ((RANDOMJOINT) == (0)) {
            PRINTD("Losuje");
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                PRINTD("Obywatel");
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_1", BS_ITEMINTERACT);
            } else {
                PRINTD("Reszta");
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_1", BS_ITEMINTERACT);
            };
        };
        if ((RANDOMJOINT) == (1)) {
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_1", BS_ITEMINTERACT);
            } else {
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_1", BS_ITEMINTERACT);
            };
        };
        if ((RANDOMJOINT) == (2)) {
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_2", BS_ITEMINTERACT);
            } else {
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_2", BS_ITEMINTERACT);
            };
        };
        if ((RANDOMJOINT) == (3)) {
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_1", BS_ITEMINTERACT);
            } else {
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_1", BS_ITEMINTERACT);
            };
        };
        if ((RANDOMJOINT) == (4)) {
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_1", BS_ITEMINTERACT);
            } else {
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_1", BS_ITEMINTERACT);
            };
        };
        if ((RANDOMJOINT) == (5)) {
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_2", BS_ITEMINTERACT);
            } else {
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_2", BS_ITEMINTERACT);
            };
        };
        if ((RANDOMJOINT) == (6)) {
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_1", BS_ITEMINTERACT);
            } else {
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_1", BS_ITEMINTERACT);
            };
        };
        if ((RANDOMJOINT) == (7)) {
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_1", BS_ITEMINTERACT);
            } else {
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_1", BS_ITEMINTERACT);
            };
        };
        if ((RANDOMJOINT) == (8)) {
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_2", BS_ITEMINTERACT);
            } else {
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_2", BS_ITEMINTERACT);
            };
        };
        if ((RANDOMJOINT) == (9)) {
            if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
                AI_PLAYANIBS(SELF, "T_JOINTFAST_RANDOM_1", BS_ITEMINTERACT);
            } else {
                AI_PLAYANIBS(SELF, "T_JOINT_RANDOM_1", BS_ITEMINTERACT);
            };
        };
        NPC_SETSTATETIME(SELF, 0);
    };
}

var int SMOKEJOINT_RANDOMANI.RANDOMJOINT = 0;
func int ZS_SMOKE_JOINT_LOOP() {
    if (NPC_ISONFP(SELF, "STAND")) {
        AI_ALIGNTOFP(SELF);
        if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
            SELF.AIVAR[19] = NOTINPOS;
        };
    };
    if (WLD_ISFPAVAILABLE(SELF, "STAND")) {
        AI_GOTOFP(SELF, "STAND");
        AI_STANDUP(SELF);
        AI_ALIGNTOFP(SELF);
        SELF.AIVAR[19] = NOTINPOS_WALK;
    };
    AI_ALIGNTOWP(SELF);
    if ((SELF.AIVAR[19]) == (NOTINPOS_WALK)) {
        SELF.AIVAR[19] = NOTINPOS;
    };
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
            AI_USEITEMTOSTATE(SELF, 0x8595, 0);
        } else {
            AI_USEITEMTOSTATE(SELF, 0x8592, 0);
        } else {
            SELF.AIVAR[19] = ISINPOS;
        };
    };
    if ((SELF.AIVAR[19]) == (ISINPOS)) {
        if (NPC_HASGUILDARMOREQUIPPED(HERO, GIL_MIL)) {
            if ((((NPC_GETDISTTONPC(SELF, HERO)) <= (0x5dc)) && ((SELF.GUILD) == (GIL_VLK))) || ((SELF.GUILD) == (GIL_NONE))) {
                PRINTD("Policja, chowaj!");
                NPC_CLEARAIQUEUE(SELF);
                B_CLEARPERCEPTIONS(SELF);
                AI_STARTSTATE(SELF, 0xb68b, 1, "");
            } else {
                SMOKEJOINT_RANDOMANI();
            } else {
                /* set_instance(0) */;
            };
        };
        SMOKEJOINT_RANDOMANI();
    };
    return LOOP_CONTINUE;
}

func void ZS_SMOKE_JOINT_END() {
    if (((SELF.GUILD) == (GIL_VLK)) || ((SELF.GUILD) == (GIL_NONE))) {
        AI_USEITEMTOSTATE(SELF, 0x8595, -(1));
    };
    AI_USEITEMTOSTATE(SELF, 0x8592, -(1));
}

func void ZS_SMOKE_JOINT_OBSERVE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    if ((HLP_STRCMP(NPC_GETNEARESTWP(SELF), SELF.WP)) == (FALSE)) {
        AI_GOTOWP(SELF, SELF.WP);
        AI_ALIGNTOWP(SELF);
    };
}

func int ZS_SMOKE_JOINT_OBSERVE_LOOP() {
    if ((NPC_GETDISTTONPC(SELF, HERO)) >= (0x5dc)) {
        PRINTD("Wracamy do zabawy");
        NPC_CLEARAIQUEUE(SELF);
        B_CLEARPERCEPTIONS(SELF);
        AI_STARTSTATE(SELF, 0xb686, 1, "");
    };
    if ((NPC_GETSTATETIME(SELF)) > (1)) {
        B_TURNTONPC(SELF, HERO);
        B_LOOKATNPC(SELF, HERO);
        NPC_SETSTATETIME(SELF, 0);
    };
    return LOOP_CONTINUE;
}

func void ZS_SMOKE_JOINT_OBSERVE_END() {
}

