func void B_FINISHINGMOVE(var C_NPC SLF, var C_NPC OTH) {
    if (!(NPC_ISINFIGHTMODE(SLF, FMODE_MELEE))) {
        NPC_SETTOFIGHTMODE(SLF, 0x84e0);
    };
    AI_FINISHINGMOVE(SLF, OTH);
}

func void EV_FINISHINGMOVE_HOOK() {
    OC_SLF = MEM_PTRTOINST(ECX);
    SLF = HLP_GETNPC(0xa29b);
    if (NPC_ISPLAYER(SLF)) {
        if ((ANIISACTIVE(SLF, "T_1HSFINISH")) || (ANIISACTIVE(SLF, "T_2HSFINISH"))) {
            if ((FINISHANIM) == (FALSE)) {
                FINISHANIM = TRUE;
            };
            return;
        };
        if ((FINISHANIM) == (TRUE)) {
            FINISHANIM = FALSE;
            return;
        };
        if ((FINISHANIM) == (FALSE)) {
            if (HLP_IS_OCNPC(OC_SLF.FOCUS_VOB)) {
                OTH = MEM_PTRTOINST(OC_SLF.FOCUS_VOB);
                if (HLP_ISVALIDNPC(OTH)) {
                    if ((!(NPC_ISDEAD(OTH))) && (NPC_ISINSTATE(OTH, 0xf0a3))) {
                        if ((OTH.FLAGS) & (NPC_FLAG_IMPORTANT)) {
                            PRINTD("finish block");
                            AI_PLAYANI(SLF, T_NO);
                            NPC_SETSTATETIME(OTH, (NPC_GETSTATETIME(OTH)) + (0x859));
                        };
                    };
                };
            };
        };
    };
}

instance EV_FINISHINGMOVE_HOOK.OC_SLF(OCNPC)
instance EV_FINISHINGMOVE_HOOK.SLF(C_NPC)
instance EV_FINISHINGMOVE_HOOK.OTH(C_NPC)
