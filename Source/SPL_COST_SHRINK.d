const int SPL_COST_SHRINK = 300;
instance SPELL_SHRINK(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    SPELLTYPE = SPELL_NEUTRAL;
    TARGETCOLLECTALGO = TARGET_COLLECT_FOCUS;
    TARGETCOLLECTRANGE = 1000;
}

func int SPELL_LOGIC_SHRINK(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SHRINK)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func void SPELL_CAST_SHRINK() {
    if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL);
    };
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SHRINK);
    if (((((OTHER.FLAGS) != (NPC_FLAG_IMMORTAL)) && (!(C_NPCISUNDEAD(OTHER)))) && ((OTHER.GUILD) > (GIL_SEPERATOR_HUM))) && ((OTHER.AIVAR[42]) == (0))) {
        NPC_CLEARAIQUEUE(OTHER);
        B_CLEARPERCEPTIONS(OTHER);
        AI_STARTSTATE(OTHER, 43864, 0, "");
    };
    SELF.AIVAR[20] += 1;
}

