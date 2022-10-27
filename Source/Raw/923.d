func void SQ311_OGISCORPSE_S0() {
    if ((SQ311_SPAWNOGISKEY) == (2)) {
        if ((MOB_HASITEMS("SQ311_OGIS", 0x9176)) == (FALSE)) {
            if ((SQ311_SHOEMOVER) == (0)) {
                SQ311_SHOEMOVER = 1;
                WLD_SENDTRIGGER("SQ311_MOVER_SHOE");
                if ((NPC_KNOWSINFO(HERO, 0x13baa)) && ((SQ311_MILITIATRAP) == (0))) {
                    PRINTD("Spawn");
                    NPC_CLEARAIQUEUE(MIL_11142_MILITIA);
                    B_STARTOTHERROUTINE(MIL_11142_MILITIA, "SQ311_FIGHT");
                    TELEPORTNPCTOWP(0xdf59, MIL_11142_MILITIA.WP);
                    SQ311_MILITIATRAP = 1;
                };
            };
        } else if ((SQ311_SHOEMOVER) == (1)) {
            SQ311_SHOEMOVER = 0;
            WLD_SENDTRIGGER("SQ311_MOVER_SHOE");
        };
    };
    HERO.AIVAR[4] = FALSE;
}

var int SQ311_OGISCORPSE_S0.SQ311_SHOEMOVER = 0;
