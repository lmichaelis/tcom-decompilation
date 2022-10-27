const int SPL_COST_SCALE = 300;
instance SPELL_SCALE(C_SPELL_PROTO) {
    C_SPELL_PROTO();
    TIME_PER_MANA = 0;
    SPELLTYPE = SPELL_NEUTRAL;
    TARGETCOLLECTALGO = TARGET_COLLECT_FOCUS;
    TARGETCOLLECTRANGE = 1000;
}

func int SPELL_LOGIC_SCALE(var int MANAINVESTED) {
    if ((NPC_GETACTIVESPELLISSCROLL(SELF)) && ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCROLL2))) {
        return SPL_SENDCAST;
    };
    if ((SELF.ATTRIBUTE[2]) >= (SPL_COST_SCALE)) {
        return SPL_SENDCAST;
    };
    return SPL_SENDSTOP;
}

func void SPELL_CAST_SCALE() {
    if (NPC_GETACTIVESPELLISSCROLL(SELF)) {
        SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCROLL2);
    };
    SELF.ATTRIBUTE[2] = (SELF.ATTRIBUTE[2]) - (SPL_COST_SCALE);
    if (((((OTHER.FLAGS) != (NPC_FLAG_IMMORTAL)) && (!(C_NPCISUNDEAD(OTHER)))) && ((OTHER.GUILD) > (GIL_SEPERATOR_HUM))) && ((OTHER.AIVAR[42]) == (0))) {
        NPC_CLEARAIQUEUE(OTHER);
        B_CLEARPERCEPTIONS(OTHER);
        AI_STARTSTATE(OTHER, 0xab5e, 0, "");
    };
    SELF.AIVAR[20] += 1;
}

