func void SQ311_OGISCORPSE_S0() {
    var int SQ311_SHOEMOVER;
    if ((SQ311_SPAWNOGISKEY) == (2)) {
        if ((MOB_HASITEMS("SQ311_OGIS", 37238)) == (FALSE)) {
            if ((SQ311_SHOEMOVER) == (0)) {
                SQ311_SHOEMOVER = 1;
                WLD_SENDTRIGGER("SQ311_MOVER_SHOE");
                if ((NPC_KNOWSINFO(HERO, 80810)) && ((SQ311_MILITIATRAP) == (0))) {
                    PRINTD("Spawn");
                    NPC_CLEARAIQUEUE(MIL_11142_MILITIA);
                    B_STARTOTHERROUTINE(MIL_11142_MILITIA, "SQ311_FIGHT");
                    TELEPORTNPCTOWP(57177, MIL_11142_MILITIA.WP);
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

