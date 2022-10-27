func void EVENTSMANAGER_ACTIVATETRAPSWITHOUTDIALOGE() {
    if ((KAPITEL) >= (2)) {
        if ((RND_PROVOCATION_M2_CH2_ATTACK) == (FALSE)) {
            if ((RND_PROVOCATION_M2_CH2) == (5)) {
                if (((VLK_11078_HOBO.ATTRIBUTE[0]) != (VLK_11078_HOBO.ATTRIBUTE[1])) || ((VLK_11079_HOBO.ATTRIBUTE[0]) != (VLK_11079_HOBO.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(VLK_11078_HOBO))) {
                        NPC_REFRESH(VLK_11078_HOBO);
                        B_IMMEDIATEATTACKPLAYER(VLK_11078_HOBO, AR_KILL);
                        VLK_11078_HOBO.AIVAR[52] = TRUE;
                        VLK_11078_HOBO.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(VLK_11079_HOBO))) {
                        NPC_REFRESH(VLK_11079_HOBO);
                        B_IMMEDIATEATTACKPLAYER(VLK_11079_HOBO, AR_KILL);
                        VLK_11079_HOBO.AIVAR[52] = TRUE;
                        VLK_11079_HOBO.FLAGS = 0;
                    };
                    PRINTD("Prowokacja atakuje!");
                    RND_PROVOCATION_M2_CH2_ATTACK = TRUE;
                };
            };
        };
        if ((RND_PROVOCATION_M3_CH2_ATTACK) == (FALSE)) {
            if ((RND_PROVOCATION_M3_CH2) == (1)) {
                if (((VLK_11084_HOBO.ATTRIBUTE[0]) != (VLK_11084_HOBO.ATTRIBUTE[1])) || ((VLK_11085_HOBO.ATTRIBUTE[0]) != (VLK_11085_HOBO.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(VLK_11084_HOBO))) {
                        NPC_REFRESH(VLK_11084_HOBO);
                        B_IMMEDIATEATTACKPLAYER(VLK_11084_HOBO, AR_KILL);
                        VLK_11084_HOBO.AIVAR[52] = TRUE;
                        VLK_11084_HOBO.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(VLK_11085_HOBO))) {
                        NPC_REFRESH(VLK_11085_HOBO);
                        B_IMMEDIATEATTACKPLAYER(VLK_11085_HOBO, AR_KILL);
                        VLK_11085_HOBO.FLAGS = 0;
                        VLK_11085_HOBO.AIVAR[52] = TRUE;
                    };
                    PRINTD("Prowokacja atakuje!");
                    RND_PROVOCATION_M3_CH2_ATTACK = TRUE;
                };
            };
        };
        if ((TRAPSLUMS_ATTACK) == (FALSE)) {
            if (((NONE_14133_HOBO.ATTRIBUTE[0]) != (NONE_14133_HOBO.ATTRIBUTE[1])) || ((NONE_14132_HOBO.ATTRIBUTE[0]) != (NONE_14132_HOBO.ATTRIBUTE[1]))) {
                if (!(NPC_ISDEAD(NONE_14133_HOBO))) {
                    NPC_REFRESH(NONE_14133_HOBO);
                    B_IMMEDIATEATTACKPLAYER(NONE_14133_HOBO, AR_KILL);
                    NONE_14133_HOBO.FLAGS = 0;
                };
                if (!(NPC_ISDEAD(NONE_14132_HOBO))) {
                    NPC_REFRESH(NONE_14132_HOBO);
                    B_IMMEDIATEATTACKPLAYER(NONE_14132_HOBO, AR_KILL);
                    NONE_14132_HOBO.FLAGS = 0;
                };
                PRINTD("morderstwo atakuje!");
                TRAPSLUMS_ATTACK = TRUE;
            };
        };
        if ((TRAP01_ATTACK) == (FALSE)) {
            if ((TRAP01_SPAWNED) == (TRUE)) {
                if ((((NONE_11070_THUG.ATTRIBUTE[0]) != (NONE_11070_THUG.ATTRIBUTE[1])) || ((NONE_11071_THUG.ATTRIBUTE[0]) != (NONE_11071_THUG.ATTRIBUTE[1]))) || ((NONE_11072_THUG.ATTRIBUTE[0]) != (NONE_11072_THUG.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(NONE_11070_THUG))) {
                        NPC_REFRESH(NONE_11070_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11070_THUG, AR_KILL);
                        NONE_11070_THUG.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11071_THUG))) {
                        NPC_REFRESH(NONE_11071_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11071_THUG, AR_KILL);
                        NONE_11071_THUG.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11072_THUG))) {
                        NPC_REFRESH(NONE_11072_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11072_THUG, AR_KILL);
                        NONE_11072_THUG.FLAGS = 0;
                    };
                    PRINTD("Pu³apka pod mostem atakuje!");
                    TRAP01_ATTACK = TRUE;
                };
            };
        };
        if ((TRAP07_ATTACK) == (FALSE)) {
            if ((TRAP07_SPAWNED) == (TRUE)) {
                if ((((NONE_11115_REFUGEE.ATTRIBUTE[0]) != (NONE_11115_REFUGEE.ATTRIBUTE[1])) || ((NONE_11116_REFUGEE.ATTRIBUTE[0]) != (NONE_11116_REFUGEE.ATTRIBUTE[1]))) || ((NONE_11117_REFUGEE.ATTRIBUTE[0]) != (NONE_11117_REFUGEE.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(NONE_11115_REFUGEE))) {
                        NPC_REFRESH(NONE_11115_REFUGEE);
                        B_IMMEDIATEATTACKPLAYER(NONE_11115_REFUGEE, AR_KILL);
                        NONE_11115_REFUGEE.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11116_REFUGEE))) {
                        NPC_REFRESH(NONE_11116_REFUGEE);
                        B_IMMEDIATEATTACKPLAYER(NONE_11116_REFUGEE, AR_KILL);
                        NONE_11116_REFUGEE.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11117_REFUGEE))) {
                        NPC_REFRESH(NONE_11117_REFUGEE);
                        B_IMMEDIATEATTACKPLAYER(NONE_11117_REFUGEE, AR_KILL);
                        NONE_11117_REFUGEE.FLAGS = 0;
                    };
                    PRINTD("Pu³apka atakuje!");
                    TRAP07_ATTACK = TRUE;
                };
            };
        };
        if ((TRAP10_ATTACK) == (FALSE)) {
            if ((TRAP10_SPAWNED) == (TRUE)) {
                if ((((NONE_11153_THUG.ATTRIBUTE[0]) != (NONE_11153_THUG.ATTRIBUTE[1])) || ((NONE_11154_THUG.ATTRIBUTE[0]) != (NONE_11154_THUG.ATTRIBUTE[1]))) || ((NONE_11155_THUG.ATTRIBUTE[0]) != (NONE_11155_THUG.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(NONE_11153_THUG))) {
                        NPC_REFRESH(NONE_11153_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11153_THUG, AR_KILL);
                        NONE_11153_THUG.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11154_THUG))) {
                        NPC_REFRESH(NONE_11154_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11154_THUG, AR_KILL);
                        NONE_11154_THUG.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11155_THUG))) {
                        NPC_REFRESH(NONE_11155_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11155_THUG, AR_KILL);
                        NONE_11155_THUG.FLAGS = 0;
                    };
                    PRINTD("Pu³apka atakuje!");
                    TRAP10_ATTACK = TRUE;
                };
            };
        };
    };
    if ((KAPITEL) >= (3)) {
        if ((RND_PROVOCATION_M2_CH3_ATTACK) == (FALSE)) {
            if ((RND_PROVOCATION_M2_CH3) == (5)) {
                if (((NONE_11113_THUG.ATTRIBUTE[0]) != (NONE_11113_THUG.ATTRIBUTE[1])) || ((NONE_11114_THUG.ATTRIBUTE[0]) != (NONE_11114_THUG.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(NONE_11113_THUG))) {
                        NPC_REFRESH(NONE_11113_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11113_THUG, AR_KILL);
                        NONE_11113_THUG.AIVAR[52] = TRUE;
                        NONE_11113_THUG.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11114_THUG))) {
                        NPC_REFRESH(NONE_11114_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11114_THUG, AR_KILL);
                        NONE_11114_THUG.FLAGS = 0;
                        NONE_11114_THUG.AIVAR[52] = TRUE;
                    };
                    PRINTD("Prowokacja atakuje!");
                    RND_PROVOCATION_M2_CH3_ATTACK = TRUE;
                };
            };
        };
        if ((RND_PROVOCATION_M6_CH3_ATTACK) == (FALSE)) {
            if ((RND_PROVOCATION_M6_CH3) == (1)) {
                if (((NONE_11152_THUG.ATTRIBUTE[0]) != (NONE_11152_THUG.ATTRIBUTE[1])) || ((NONE_11151_THUG.ATTRIBUTE[0]) != (NONE_11151_THUG.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(NONE_11152_THUG))) {
                        NPC_REFRESH(NONE_11152_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11152_THUG, AR_KILL);
                        NONE_11152_THUG.AIVAR[52] = TRUE;
                        NONE_11152_THUG.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11151_THUG))) {
                        NPC_REFRESH(NONE_11151_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11151_THUG, AR_KILL);
                        NONE_11151_THUG.FLAGS = 0;
                        NONE_11151_THUG.AIVAR[52] = TRUE;
                    };
                    PRINTD("Prowokacja atakuje!");
                    RND_PROVOCATION_M6_CH3_ATTACK = TRUE;
                };
            };
        };
        if ((TRAP57_ATTACK) == (FALSE)) {
            if ((TRAP57_SPAWNED) == (TRUE)) {
                if (((VLK_13779_HOBO.ATTRIBUTE[0]) != (VLK_13779_HOBO.ATTRIBUTE[1])) || ((VLK_13780_HOBO.ATTRIBUTE[0]) != (VLK_13780_HOBO.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(VLK_13779_HOBO))) {
                        NPC_REFRESH(VLK_13779_HOBO);
                        B_IMMEDIATEATTACKPLAYER(VLK_13779_HOBO, AR_KILL);
                        VLK_13779_HOBO.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(VLK_13780_HOBO))) {
                        NPC_REFRESH(VLK_13780_HOBO);
                        B_IMMEDIATEATTACKPLAYER(VLK_13780_HOBO, AR_KILL);
                        VLK_13780_HOBO.FLAGS = 0;
                    };
                    PRINTD("Zbiry atakuj¹!");
                    TRAP57_ATTACK = TRUE;
                };
            };
        };
    };
    if ((KAPITEL) >= (4)) {
        if ((TRAP04_ATTACK) == (FALSE)) {
            if ((TRAP04_SPAWNED) == (TRUE)) {
                if (((NONE_11101_THUG.ATTRIBUTE[0]) != (NONE_11101_THUG.ATTRIBUTE[1])) || ((NONE_11102_THUG.ATTRIBUTE[0]) != (NONE_11102_THUG.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(NONE_11101_THUG))) {
                        NPC_REFRESH(NONE_11101_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11101_THUG, AR_KILL);
                        NONE_11101_THUG.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11102_THUG))) {
                        NPC_REFRESH(NONE_11102_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11102_THUG, AR_KILL);
                        NONE_11102_THUG.FLAGS = 0;
                    };
                    PRINTD("Zbiry atakuj¹!");
                    TRAP04_ATTACK = TRUE;
                };
            };
        };
        if ((TRAP05_ATTACK) == (FALSE)) {
            if ((TRAP05_SPAWNED) == (TRUE)) {
                if (((NONE_11103_THUG.ATTRIBUTE[0]) != (NONE_11103_THUG.ATTRIBUTE[1])) || ((NONE_11104_THUG.ATTRIBUTE[0]) != (NONE_11104_THUG.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(NONE_11103_THUG))) {
                        NPC_REFRESH(NONE_11103_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11103_THUG, AR_KILL);
                        NONE_11103_THUG.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_11104_THUG))) {
                        NPC_REFRESH(NONE_11104_THUG);
                        B_IMMEDIATEATTACKPLAYER(NONE_11104_THUG, AR_KILL);
                        NONE_11104_THUG.FLAGS = 0;
                    };
                    PRINTD("Zbiry atakuj¹!");
                    TRAP05_ATTACK = TRUE;
                };
            };
        };
    };
    if ((KAPITEL) >= (5)) {
        if ((TRAP26_ATTACK) == (FALSE)) {
            if ((TRAP26_SPAWNED) == (TRUE)) {
                if ((((NONE_13344_REFUGEE.ATTRIBUTE[0]) != (NONE_13344_REFUGEE.ATTRIBUTE[1])) || ((NONE_13345_REFUGEE.ATTRIBUTE[0]) != (NONE_13345_REFUGEE.ATTRIBUTE[1]))) || ((NONE_13346_REFUGEE.ATTRIBUTE[0]) != (NONE_13346_REFUGEE.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(NONE_13344_REFUGEE))) {
                        NPC_REFRESH(NONE_13344_REFUGEE);
                        B_IMMEDIATEATTACKPLAYER(NONE_13344_REFUGEE, AR_KILL);
                        NONE_13344_REFUGEE.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_13345_REFUGEE))) {
                        NPC_REFRESH(NONE_13345_REFUGEE);
                        B_IMMEDIATEATTACKPLAYER(NONE_13345_REFUGEE, AR_KILL);
                        NONE_13345_REFUGEE.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(NONE_13346_REFUGEE))) {
                        NPC_REFRESH(NONE_13346_REFUGEE);
                        B_IMMEDIATEATTACKPLAYER(NONE_13346_REFUGEE, AR_KILL);
                        NONE_13346_REFUGEE.FLAGS = 0;
                    };
                    PRINTD("Zbiry atakuj¹!");
                    TRAP26_ATTACK = TRUE;
                };
            };
        };
        if ((TRAP41_ATTACK) == (FALSE)) {
            if ((TRAP41_SPAWNED) == (TRUE)) {
                if ((((BDT_13485_MANHUNTER.ATTRIBUTE[0]) != (BDT_13485_MANHUNTER.ATTRIBUTE[1])) || ((BDT_13484_MANHUNTER.ATTRIBUTE[0]) != (BDT_13484_MANHUNTER.ATTRIBUTE[1]))) || ((BDT_13483_MANHUNTER.ATTRIBUTE[0]) != (BDT_13483_MANHUNTER.ATTRIBUTE[1]))) {
                    if (!(NPC_ISDEAD(BDT_13485_MANHUNTER))) {
                        NPC_REFRESH(BDT_13485_MANHUNTER);
                        BDT_13485_MANHUNTER.GUILD = GIL_DMT;
                        NPC_EXCHANGEROUTINE(BDT_13485_MANHUNTER, "END");
                        B_IMMEDIATEATTACKPLAYER(BDT_13485_MANHUNTER, AR_KILL);
                        BDT_13485_MANHUNTER.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(BDT_13484_MANHUNTER))) {
                        NPC_REFRESH(BDT_13484_MANHUNTER);
                        BDT_13484_MANHUNTER.GUILD = GIL_DMT;
                        B_IMMEDIATEATTACKPLAYER(BDT_13484_MANHUNTER, AR_KILL);
                        BDT_13484_MANHUNTER.FLAGS = 0;
                    };
                    if (!(NPC_ISDEAD(BDT_13483_MANHUNTER))) {
                        NPC_REFRESH(BDT_13483_MANHUNTER);
                        BDT_13483_MANHUNTER.GUILD = GIL_DMT;
                        B_IMMEDIATEATTACKPLAYER(BDT_13483_MANHUNTER, AR_KILL);
                        BDT_13483_MANHUNTER.FLAGS = 0;
                    };
                    PRINTD("Zbiry atakuj¹!");
                    TRAP41_ATTACK = TRUE;
                };
            };
        };
    };
}

