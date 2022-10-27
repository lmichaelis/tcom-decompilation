const int SPL_COST_PALLIGHTHEAL = 10;
const int SPL_COST_PALMEDIUMHEAL = 25;
const int SPL_COST_PALFULLHEAL = 50;
const int SPL_COST_LIGHTHEAL = 10;
const int SPL_COST_MEDIUMHEAL = 25;
const int SPL_COST_FULLHEAL = 50;
const int SPL_HEAL_PALLIGHTHEAL = 200;
const int SPL_HEAL_PALMEDIUMHEAL = 400;
const int SPL_HEAL_PALFULLHEAL = 800;
const int SPL_HEAL_LIGHTHEAL = 200;
const int SPL_HEAL_MEDIUMHEAL = 400;
const int SPL_HEAL_FULLHEAL = 800;
instance SPELL_HEAL(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    SPELLTYPE = SPELL_NEUTRAL;
    TARGETCOLLECTALGO = TARGET_COLLECT_CASTER;
    CANTURNDURINGINVEST = 0;
}

instance SPELL_PALHEAL(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    SPELLTYPE = SPELL_NEUTRAL;
    TARGETCOLLECTALGO = TARGET_COLLECT_CASTER;
    CANTURNDURINGINVEST = 0;
}

func int SPELL_LOGIC_PALLIGHTHEAL(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_PALLIGHTHEAL)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_PALMEDIUMHEAL(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_PALMEDIUMHEAL)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_PALFULLHEAL(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_PALFULLHEAL)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_LIGHTHEAL(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= ((SELF.ATTRIBUTE[3]) / (5)))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= ((SELF.ATTRIBUTE[3]) / (5))) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_MEDIUMHEAL(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= ((SELF.ATTRIBUTE[3]) / (5)))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= ((SELF.ATTRIBUTE[3]) / (5))) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func int SPELL_LOGIC_FULLHEAL(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= ((SELF.ATTRIBUTE[3]) / (5)))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= ((SELF.ATTRIBUTE[3]) / (5))) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func void SPELL_CAST_HEAL() {
    if ((NPC_GETACTIVESPELL(SELF)) == (SPL_LIGHTHEAL)) {
        if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - ((SELF.ATTRIBUTE[3]) / (5));
        } else {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - ((SELF.ATTRIBUTE[3]) / (5));
        } else {
            SPELL_HEALBYMANA_SMALL = (SELF.ATTRIBUTE[3]) * (15);
        } else {
            NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, +((SPELL_HEALBYMANA_SMALL) / (10)));
        } else {
            return;
        };
    };
    if ((NPC_GETACTIVESPELL(SELF)) == (SPL_MEDIUMHEAL)) {
        if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - ((SELF.ATTRIBUTE[3]) / (5));
        } else {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - ((SELF.ATTRIBUTE[3]) / (5));
        } else {
            SPELL_HEALBYMANA_MEDIUM = (SELF.ATTRIBUTE[3]) * (2);
        } else {
            NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, +(SPELL_HEALBYMANA_MEDIUM));
        } else {
            return;
        };
    };
    if ((NPC_GETACTIVESPELL(SELF)) == (SPL_FULLHEAL)) {
        if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - ((SELF.ATTRIBUTE[3]) / (5));
        } else {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - ((SELF.ATTRIBUTE[3]) / (5));
        } else {
            SPELL_HEALBYMANA_HIGH = (SELF.ATTRIBUTE[3]) * (25);
        } else {
            NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, (+(SPELL_HEALBYMANA_HIGH)) / (10));
        } else {
            return;
        };
    };
    SELF.AIVAR[20] += 1;
}

var int SPELL_CAST_HEAL.SPELL_HEALBYMANA_SMALL = 0;
var int SPELL_CAST_HEAL.SPELL_HEALBYMANA_MEDIUM = 0;
var int SPELL_CAST_HEAL.SPELL_HEALBYMANA_HIGH = 0;
func void SPELL_CAST_PALHEAL() {
    if ((NPC_GETACTIVESPELL(SELF)) == (SPL_PALLIGHTHEAL)) {
        if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL);
        } else {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_PALLIGHTHEAL);
        } else {
            NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, +(SPL_HEAL_PALLIGHTHEAL));
        } else {
            return;
        };
    };
    if ((NPC_GETACTIVESPELL(SELF)) == (SPL_PALMEDIUMHEAL)) {
        if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL);
        } else {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_PALMEDIUMHEAL);
        } else {
            NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, +(SPL_HEAL_PALMEDIUMHEAL));
        } else {
            return;
        };
    };
    if ((NPC_GETACTIVESPELL(SELF)) == (SPL_PALFULLHEAL)) {
        if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL);
        } else {
            SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_PALFULLHEAL);
        } else {
            NPC_CHANGEATTRIBUTE(SELF, ATR_HITPOINTS, +(SPL_HEAL_PALFULLHEAL));
        } else {
            return;
        };
    };
    SELF.AIVAR[20] += 1;
}

