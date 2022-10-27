func void B_ASSESSTALK() {
    if (((FMQ001_BLOCKDIALOGUE) == (TRUE)) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(MIL_4043_INSTRUCTOR)))) {
        return;
    };
    if ((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) {
        return;
    };
    if (ISHEROINVISIBLE()) {
        return;
    };
    if (((FADESCREENSTATE) != (0)) || (SCREENFADED)) {
        return;
    };
    if (SELF.AIVAR[92]) {
        return;
    };
    if ((C_BODYSTATECONTAINS(SELF, BS_LIE)) || (C_BODYSTATECONTAINS(OTHER, BS_LIE))) {
        return;
    };
    PCL = HLP_GETNPC(0xeb63);
    PCR = HLP_GETNPC(0xeb64);
    if (((HLP_GETINSTANCEID(OTHER)) == (HLP_GETINSTANCEID(PCL))) || ((HLP_GETINSTANCEID(OTHER)) == (HLP_GETINSTANCEID(PCR)))) {
        PRINTSCREEN(INTTOSTRING(SELF.AIVAR[80]), -(1), 70, FONT_SCREEN, 2);
        return;
    };
    if ((SELF.GUILD) > (GIL_SEPERATOR_HUM)) {
        if ((NPC_CHECKINFO(SELF, 1)) == (FALSE)) {
            if ((NPC_CHECKINFO(SELF, 0)) == (FALSE)) {
                return;
            };
        };
    };
    if ((SELF.GUILD) < (GIL_SEPERATOR_HUM)) {
        if (B_ASSESSENEMY()) {
            return;
        };
        if (((B_GETPLAYERCRIME(SELF)) == (CRIME_MURDER)) && (C_WANTTOATTACKMURDER(SELF, OTHER))) {
            B_ATTACK(SELF, OTHER, AR_HUMANMURDEREDHUMAN, 0);
            return;
        };
        if (C_REFUSETALK(SELF, OTHER)) {
            B_SAY(SELF, OTHER, "$NOTNOW");
            return;
        };
    };
    if ((((SELF.AIVAR[3]) == (FALSE)) && ((C_IAMMANNEQUIN(SELF)) == (FALSE))) && ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(SLD_1009_CARAMON_Q602)))) {
        if ((C_BODYSTATECONTAINS(SELF, BS_WALK)) || (C_BODYSTATECONTAINS(SELF, BS_RUN))) {
            B_SAY(OTHER, SELF, "$SC_HEYWAITASECOND");
        } else if (!(NPC_CANSEENPC(SELF, OTHER))) {
            RND = HLP_RANDOM(100);
            if ((RND) <= (25)) {
                B_SAY(OTHER, SELF, "$SC_HEYTURNAROUND");
            } else if ((RND) <= (50)) {
                B_SAY(OTHER, SELF, "$SC_HEYTURNAROUND02");
            } else if ((RND) <= (75)) {
                B_SAY(OTHER, SELF, "$SC_HEYTURNAROUND03");
            } else if ((RND) <= (99)) {
                B_SAY(OTHER, SELF, "$SC_HEYTURNAROUND04");
            };
        };
    };
    NPC_CLEARAIQUEUE(SELF);
    B_CLEARPERCEPTIONS(SELF);
    if (C_BODYSTATECONTAINS(SELF, BS_SIT)) {
        if ((SELF.AIVAR[3]) == (TRUE)) {
            AI_STANDUPQUICK(OTHER);
        } else {
            AI_STANDUP(OTHER);
        } else if (NPC_CANSEENPC(SELF, OTHER)) {
            AI_STARTSTATE(SELF, 0xf09f, 0, "");
        } else if (NPC_ISINSTATE(SELF, 0xf08e)) {
            AI_STANDUP(SELF);
        };
        AI_STARTSTATE(SELF, 0xf09f, 1, "");
        return;
    };
    if ((SELF.AIVAR[3]) == (TRUE)) {
        AI_STANDUPQUICK(SELF);
        AI_STANDUPQUICK(OTHER);
    };
    AI_STANDUP(SELF);
    AI_STANDUP(OTHER);
    AI_STARTSTATE(SELF, 0xf09f, 0, "");
}

instance B_ASSESSTALK.PCL(C_NPC)
instance B_ASSESSTALK.PCR(C_NPC)
var int B_ASSESSTALK.RND = 0;
