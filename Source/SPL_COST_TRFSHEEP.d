const int SPL_COST_TRFSHEEP = 5;
const int SPL_COST_TRFSCAVENGER = 5;
const int SPL_COST_TRFGIANTRAT = 5;
const int SPL_COST_TRFGIANTBUG = 5;
const int SPL_COST_TRFWOLF = 5;
const int SPL_COST_TRFWARAN = 5;
const int SPL_COST_TRFSNAPPER = 5;
const int SPL_COST_TRFWARG = 5;
const int SPL_COST_TRFFIREWARAN = 5;
const int SPL_COST_TRFLURKER = 5;
const int SPL_COST_TRFSHADOWBEAST = 5;
const int SPL_COST_TRFDRAGONSNAPPER = 5;
instance SPELL_TRANSFORM(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    SPELLTYPE = SPELL_NEUTRAL;
    TARGETCOLLECTALGO = TARGET_COLLECT_NONE;
    CANTURNDURINGINVEST = 0;
}

func int SPELL_LOGIC_TRFSHEEP(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFSHEEP))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFSHEEP);
        NPC_SETACTIVESPELLINFO(SELF, 50805);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFSCAVENGER(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFSCAVENGER))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFSCAVENGER);
        NPC_SETACTIVESPELLINFO(SELF, 50706);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFGIANTRAT(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFGIANTRAT))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFGIANTRAT);
        NPC_SETACTIVESPELLINFO(SELF, 50467);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFGIANTBUG(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFGIANTBUG))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFGIANTBUG);
        NPC_SETACTIVESPELLINFO(SELF, 50434);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFWOLF(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFWOLF))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFWOLF);
        NPC_SETACTIVESPELLINFO(SELF, 51071);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFWARAN(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFWARAN))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFWARAN);
        NPC_SETACTIVESPELLINFO(SELF, 51037);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFSNAPPER(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFSNAPPER))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFSNAPPER);
        NPC_SETACTIVESPELLINFO(SELF, 50894);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFWARG(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFWARG))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFWARG);
        NPC_SETACTIVESPELLINFO(SELF, 51049);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFFIREWARAN(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFFIREWARAN))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFFIREWARAN);
        NPC_SETACTIVESPELLINFO(SELF, 50392);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFLURKER(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFLURKER))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFLURKER);
        NPC_SETACTIVESPELLINFO(SELF, 50583);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFSHADOWBEAST(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFSHADOWBEAST))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFSHADOWBEAST);
        NPC_SETACTIVESPELLINFO(SELF, 50783);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_TRFDRAGONSNAPPER(var int MANAINVESTED) {
    if (((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) || ((SELF.ATTRIBUTE[2]) >= (SPL_COST_TRFDRAGONSNAPPER))) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_TRFDRAGONSNAPPER);
        NPC_SETACTIVESPELLINFO(SELF, 50383);
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

