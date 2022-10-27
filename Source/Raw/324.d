func void B_READYSPELL(var C_NPC SLF, var int SPELL, var int MANA) {
    if ((SLF.ATTRIBUTE[3]) < (MANA)) {
        NPC_CHANGEATTRIBUTE(SLF, ATR_MANA_MAX, MANA);
    };
    if ((SLF.ATTRIBUTE[2]) < (MANA)) {
        NPC_CHANGEATTRIBUTE(SLF, ATR_MANA, MANA);
    };
    if ((NPC_ISDRAWINGSPELL(SLF)) == (SPELL)) {
        return;
    };
    if ((NPC_GETACTIVESPELL(SLF)) == (SPELL)) {
        return;
    };
    if ((NPC_GETACTIVESPELL(SLF)) != (-(1))) {
        AI_REMOVEWEAPON(SLF);
    };
    AI_READYSPELL(SLF, SPELL, MANA);
}

