func void B_ADDFIGHTSKILL(var C_NPC SLF, var int TALENT, var int PERCENT) {
    if ((TALENT) == (NPC_TALENT_1H)) {
        SLF.HITCHANCE[1] = (SLF.HITCHANCE[1]) + (PERCENT);
        if ((SLF.HITCHANCE[1]) >= (0)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_1H, 0);
        };
        if ((SLF.HITCHANCE[1]) >= (30)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_1H, 1);
        };
        if ((SLF.HITCHANCE[1]) >= (60)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_1H, 2);
        };
    };
    if ((TALENT) == (NPC_TALENT_2H)) {
        SLF.HITCHANCE[2] = (SLF.HITCHANCE[2]) + (PERCENT);
        if ((SLF.HITCHANCE[1]) >= (0)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_2H, 0);
        };
        if ((SLF.HITCHANCE[2]) >= (30)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_2H, 1);
        };
        if ((SLF.HITCHANCE[2]) >= (60)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_2H, 2);
        };
    };
    if ((TALENT) == (NPC_TALENT_BOW)) {
        SLF.HITCHANCE[3] = (SLF.HITCHANCE[3]) + (PERCENT);
        if ((SLF.HITCHANCE[3]) >= (0)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_BOW, 0);
        };
        if ((SLF.HITCHANCE[3]) >= (30)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_BOW, 1);
        };
        if ((SLF.HITCHANCE[3]) >= (60)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_BOW, 2);
        };
    };
    if ((TALENT) == (NPC_TALENT_CROSSBOW)) {
        SLF.HITCHANCE[4] = (SLF.HITCHANCE[4]) + (PERCENT);
        if ((SLF.HITCHANCE[4]) >= (0)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_CROSSBOW, 0);
        };
        if ((SLF.HITCHANCE[4]) >= (30)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_CROSSBOW, 1);
        };
        if ((SLF.HITCHANCE[4]) >= (60)) {
            NPC_SETTALENTSKILL(SLF, NPC_TALENT_CROSSBOW, 2);
        };
    };
}

