func int B_SELECTSPELL(var C_NPC SLF, var C_NPC OTH) {
    if ((SLF.AIVAR[51]) == (MAGIC_ALWAYS)) {
        STONEGUARDIAN_01 = HLP_GETNPC(0xe46a);
        STONEGUARDIAN_02 = HLP_GETNPC(0xe46c);
        STONEGUARDIAN_03 = HLP_GETNPC(0xe46e);
        STONEGUARDIAN_04 = HLP_GETNPC(0xe470);
        STONEGUARDIAN_05 = HLP_GETNPC(0xe472);
        STONEGUARDIAN_06 = HLP_GETNPC(0xe474);
        STONEGUARDIAN_07 = HLP_GETNPC(0xe476);
        WANTEDPOSTER_PROPHET = HLP_GETNPC(0xe6ab);
        WANTEDPOSTER_NOVIZE = HLP_GETNPC(0xe6a0);
        if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(STONEGUARDIAN_01))) {
            if ((NPC_HASITEMS(SLF, 0x8732)) == (0)) {
                CREATEINVITEMS(SLF, 0x8732, 1);
            };
            if ((NPC_HASITEMS(SLF, 0x8729)) == (0)) {
                CREATEINVITEMS(SLF, 0x8729, 1);
            };
            if ((SLF.AIVAR[20]) >= (12)) {
                SLF.AIVAR[20] = 0;
            };
            if ((SLF.AIVAR[20]) == (0)) {
                B_READYSPELL(SLF, SPL_ICECUBE, SPL_COST_ICECUBE);
                return TRUE;
            };
            B_READYSPELL(SLF, SPL_ICEBOLT, SPL_COST_ICEBOLT);
            return TRUE;
        };
        if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(STONEGUARDIAN_02))) {
            if ((NPC_HASITEMS(SLF, 0x8728)) == (0)) {
                CREATEINVITEMS(SLF, 0x8728, 1);
            };
            if ((SLF.AIVAR[20]) >= (0)) {
                B_READYSPELL(SLF, SPL_INSTANTFIREBALL, SPL_COST_INSTANTFIREBALL);
                return TRUE;
            };
        } else if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(STONEGUARDIAN_03))) {
            if ((NPC_HASITEMS(SLF, 0x872b)) == (0)) {
                CREATEINVITEMS(SLF, 0x872b, 1);
            };
            if ((SLF.AIVAR[20]) >= (0)) {
                B_READYSPELL(SLF, SPL_WINDFIST, SPL_COST_WINDFIST);
                return TRUE;
            };
        } else if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(STONEGUARDIAN_04))) {
            if ((NPC_HASITEMS(SLF, 0x83a4)) == (0)) {
                CREATEINVITEMS(SLF, 0x83a4, 1);
            };
            if ((SLF.AIVAR[20]) >= (0)) {
                B_READYSPELL(SLF, SPL_ICELANCE, SPL_COST_ICELANCE);
                return TRUE;
            };
        } else if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(STONEGUARDIAN_05))) {
            if ((NPC_HASITEMS(SLF, 0x83a1)) == (0)) {
                CREATEINVITEMS(SLF, 0x83a1, 1);
            };
            if ((NPC_HASITEMS(SLF, 0x8729)) == (0)) {
                CREATEINVITEMS(SLF, 0x8729, 1);
            };
            if ((SLF.AIVAR[20]) >= (4)) {
                SLF.AIVAR[20] = 0;
            };
            if ((SLF.AIVAR[20]) == (0)) {
                B_READYSPELL(SLF, SPL_WHIRLWIND, SPL_COST_WHIRLWIND);
                return TRUE;
            };
            B_READYSPELL(SLF, SPL_ICEBOLT, SPL_COST_ICEBOLT);
            return TRUE;
        };
        if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(STONEGUARDIAN_06))) {
            if ((NPC_HASITEMS(SLF, 0x83a1)) == (0)) {
                CREATEINVITEMS(SLF, 0x83a1, 1);
            };
            if ((NPC_HASITEMS(SLF, 0x8729)) == (0)) {
                CREATEINVITEMS(SLF, 0x8729, 1);
            };
            if ((SLF.AIVAR[20]) >= (4)) {
                SLF.AIVAR[20] = 0;
            };
            if ((SLF.AIVAR[20]) == (0)) {
                B_READYSPELL(SLF, SPL_WHIRLWIND, SPL_COST_WHIRLWIND);
                return TRUE;
            };
            B_READYSPELL(SLF, SPL_ICEBOLT, SPL_COST_ICEBOLT);
            return TRUE;
        };
        if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(STONEGUARDIAN_07))) {
            if ((NPC_HASITEMS(SLF, 0x83a4)) == (0)) {
                CREATEINVITEMS(SLF, 0x83a4, 1);
            };
            if ((SLF.AIVAR[20]) >= (0)) {
                B_READYSPELL(SLF, SPL_ICELANCE, SPL_COST_ICELANCE);
                return TRUE;
            };
        } else if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WANTEDPOSTER_PROPHET))) {
            if ((NPC_HASITEMS(SLF, 0x8791)) == (0)) {
                CREATEINVITEMS(SLF, 0x8791, 5);
            };
            if ((NPC_HASITEMS(SLF, 0x83b6)) == (0)) {
                CREATEINVITEMS(SLF, 0x83b6, 1);
            };
            if ((SLF.AIVAR[20]) >= (6)) {
                SLF.AIVAR[20] = 1;
            };
            if ((SLF.AIVAR[20]) == (0)) {
                B_READYSPELL(SLF, SPL_WHIRLWIND, SPL_COST_WHIRLWIND);
                return TRUE;
            };
            B_READYSPELL(SLF, SPL_PYROKINESIS, SPL_COST_FIRESTORM);
            return TRUE;
        };
        if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(WANTEDPOSTER_NOVIZE))) {
            if ((NPC_HASITEMS(SLF, 0x8792)) == (0)) {
                CREATEINVITEMS(SLF, 0x8792, 4);
            };
            if ((NPC_HASITEMS(SLF, 0x9527)) == (0)) {
                CREATEINVITEMS(SLF, 0x9527, 1);
            };
            if ((NPC_HASITEMS(SLF, 0x8786)) == (0)) {
                CREATEINVITEMS(SLF, 0x8786, 1);
            };
            if ((SLF.AIVAR[20]) >= (6)) {
                SLF.AIVAR[20] = 1;
            };
            if ((SLF.AIVAR[20]) == (0)) {
                B_READYSPELL(SLF, SPL_SLOWDOWN, SPL_COST_SLOWDOWN);
                return TRUE;
            };
            if ((SLF.AIVAR[20]) == (1)) {
                B_READYSPELL(SLF, SPL_WINDFIST, SPL_COST_WINDFIST);
                return TRUE;
            };
            B_READYSPELL(SLF, SPL_FIRESTORM, SPL_COST_FIRESTORM);
            return TRUE;
        };
    };
    if ((((SLF.NPCTYPE) == (NPCTYPE_FRIEND)) && (NPC_ISPLAYER(OTH))) && ((OTH.GUILD) < (GIL_SEPERATOR_HUM))) {
        if (((SLF.GUILD) == (GIL_KDF)) || ((SLF.AIVAR[51]) == (MAGIC_ALWAYS))) {
            if ((Q509_FANEVOLFZACKE) == (3)) {
                if ((NPC_HASITEMS(SLF, 0x8735)) == (0)) {
                    CREATEINVITEMS(SLF, 0x8735, 1);
                };
                B_READYSPELL(SLF, SPL_DESTROYUNDEAD, SPL_COST_DESTROYUNDEAD);
                return TRUE;
            };
            if ((NPC_HASITEMS(SLF, 0x872c)) == (0)) {
                CREATEINVITEMS(SLF, 0x872c, 1);
            };
            B_READYSPELL(SLF, SPL_SLEEP, SPL_COST_SLEEP);
            return TRUE;
        };
        return FALSE;
    };
    if ((((SLF.GUILD) == (GIL_KDF)) || ((SLF.GUILD) == (GIL_KDW))) || ((SLF.AIVAR[51]) == (MAGIC_ALWAYS))) {
        if ((NPC_HASITEMS(SLF, 0x8743)) == (0)) {
            CREATEINVITEMS(SLF, 0x8743, 1);
        };
        if ((NPC_HASITEMS(SLF, 0x873a)) == (0)) {
            CREATEINVITEMS(SLF, 0x873a, 1);
        };
        if ((NPC_HASITEMS(SLF, 0x8742)) == (0)) {
            CREATEINVITEMS(SLF, 0x8742, 1);
        };
        if ((SLF.GUILD) == (GIL_KDW)) {
            if ((NPC_HASITEMS(SLF, 0x83a4)) == (0)) {
                CREATEINVITEMS(SLF, 0x83a4, 1);
            };
        } else if ((NPC_HASITEMS(SLF, 0x8728)) == (0)) {
            CREATEINVITEMS(SLF, 0x8728, 1);
        };
        if ((SELF.ATTRIBUTE[0]) < (100)) {
            B_READYSPELL(SLF, SPL_FULLHEAL, SPL_COST_FULLHEAL);
            return TRUE;
        };
        if (C_NPCHASATTACKREASONTOKILL(SELF)) {
            if ((SELF.FLAGS) == (NPC_FLAG_IMMORTAL)) {
                B_READYSPELL(SLF, SPL_DEATHBALL, SPL_COST_DEATHBALL);
            } else if ((SLF.GUILD) == (GIL_KDW)) {
                B_READYSPELL(SLF, SPL_ICELANCE, SPL_COST_ICELANCE);
            } else {
                B_READYSPELL(SLF, SPL_INSTANTFIREBALL, SPL_COST_INSTANTFIREBALL);
            } else {
                return TRUE;
            } else {
                /* set_instance(0) */;
            };
        };
        B_READYSPELL(SLF, SPL_CONCUSSIONBOLT, SPL_COST_CONCUSSIONBOLT);
        return TRUE;
    };
    if ((SLF.GUILD) == (GIL_PAL)) {
        if ((SLF.FIGHT_TACTIC) == (FAI_NAILED)) {
            return FALSE;
        };
        if ((NPC_HASITEMS(SLF, 0x871e)) == (0)) {
            CREATEINVITEMS(SLF, 0x871e, 1);
        };
        if (((NPC_GETDISTTONPC(SLF, OTH)) > (FIGHT_DIST_MELEE)) && (C_NPCISEVIL(OTH))) {
            B_READYSPELL(SLF, SPL_PALHOLYBOLT, SPL_COST_PALHOLYBOLT);
            return TRUE;
        };
        return FALSE;
    };
    if ((SLF.GUILD) == (GIL_SKELETON_MAGE)) {
        VOLFBOSSMAGE = HLP_GETNPC(0xc6b8);
        if ((HLP_GETINSTANCEID(SLF)) == (HLP_GETINSTANCEID(VOLFBOSSMAGE))) {
            if ((NPC_HASITEMS(SLF, 0x8728)) == (0)) {
                CREATEINVITEMS(SLF, 0x8728, 1);
            };
            if ((NPC_HASITEMS(SLF, 0x8737)) == (0)) {
                CREATEINVITEMS(SLF, 0x8737, 1);
            };
            if ((NPC_HASITEMS(SLF, 0x872f)) == (0)) {
                CREATEINVITEMS(SLF, 0x872f, 1);
            };
            if ((SLF.AIVAR[20]) >= (6)) {
                SLF.AIVAR[20] = 1;
            };
            if ((SLF.AIVAR[20]) == (0)) {
                if (((HERO.PROTECTION[5]) >= (0)) && ((HERO.PROTECTION[5]) <= ((SPL_DAMAGE_INSTANTFIREBALL) - (VOLFBOSSMAGE_DAMAGE)))) {
                    B_READYSPELL(SLF, SPL_INSTANTFIREBALL, SPL_COST_INSTANTFIREBALL);
                    return TRUE;
                };
                if (((HERO.PROTECTION[5]) > ((SPL_DAMAGE_INSTANTFIREBALL) - (VOLFBOSSMAGE_DAMAGE))) && ((HERO.PROTECTION[5]) <= ((SPL_DAMAGE_INSTANTFIRESTORM) - (VOLFBOSSMAGE_DAMAGE)))) {
                    B_READYSPELL(SLF, SPL_FIRESTORM, SPL_COST_FIRESTORM);
                    return TRUE;
                };
                if ((HERO.PROTECTION[5]) > ((SPL_DAMAGE_INSTANTFIRESTORM) - (VOLFBOSSMAGE_DAMAGE))) {
                    B_READYSPELL(SLF, SPL_CHARGEFIREBALL, SPL_COST_CHARGEFIREBALL);
                    return TRUE;
                };
                B_READYSPELL(SLF, SPL_FIRESTORM, SPL_COST_FIRESTORM);
                return TRUE;
            };
            if (((HERO.PROTECTION[5]) >= (0)) && ((HERO.PROTECTION[5]) <= ((SPL_DAMAGE_INSTANTFIREBALL) - (VOLFBOSSMAGE_DAMAGE)))) {
                B_READYSPELL(SLF, SPL_INSTANTFIREBALL, SPL_COST_INSTANTFIREBALL);
                return TRUE;
            };
            if (((HERO.PROTECTION[5]) > ((SPL_DAMAGE_INSTANTFIREBALL) - (VOLFBOSSMAGE_DAMAGE))) && ((HERO.PROTECTION[5]) <= ((SPL_DAMAGE_INSTANTFIRESTORM) - (VOLFBOSSMAGE_DAMAGE)))) {
                B_READYSPELL(SLF, SPL_FIRESTORM, SPL_COST_FIRESTORM);
                return TRUE;
            };
            if ((HERO.PROTECTION[5]) > ((SPL_DAMAGE_INSTANTFIRESTORM) - (VOLFBOSSMAGE_DAMAGE))) {
                B_READYSPELL(SLF, SPL_CHARGEFIREBALL, SPL_COST_CHARGEFIREBALL);
                return TRUE;
            };
            B_READYSPELL(SLF, SPL_FIRESTORM, SPL_COST_FIRESTORM);
            return TRUE;
        };
        if ((NPC_HASITEMS(SLF, 0x8730)) == (0)) {
            CREATEINVITEMS(SLF, 0x8730, 1);
        };
        if ((NPC_HASITEMS(SLF, 0x83a5)) == (0)) {
            CREATEINVITEMS(SLF, 0x83a5, 1);
        };
        if ((SLF.AIVAR[20]) >= (7)) {
            SLF.AIVAR[20] = 1;
        };
        if ((SLF.AIVAR[20]) == (0)) {
            B_READYSPELL(SLF, SPL_ENERGYBALL, SPL_COST_ENERGYBALL);
            return TRUE;
        };
        if ((SLF.AIVAR[20]) == (1)) {
            B_READYSPELL(SLF, SPL_SUMMONSKELETON, SPL_COST_SUMMONSKELETON);
            return TRUE;
        };
        B_READYSPELL(SLF, SPL_ENERGYBALL, SPL_COST_ENERGYBALL);
        return TRUE;
    };
    if ((SLF.GUILD) == (GIL_ICEGOLEM)) {
        if ((NPC_HASITEMS(SLF, 0x8732)) == (0)) {
            CREATEINVITEMS(SLF, 0x8732, 1);
        };
        if (((NPC_GETDISTTONPC(SLF, OTH)) < (FIGHT_DIST_MELEE)) || (NPC_ISINSTATE(OTH, 0xab50))) {
            return FALSE;
        };
        B_READYSPELL(SLF, SPL_ICECUBE, SPL_COST_ICECUBE);
        return TRUE;
    };
    if ((SLF.GUILD) == (GIL_FIREGOLEM)) {
        if ((NPC_HASITEMS(SLF, 0x8728)) == (0)) {
            CREATEINVITEMS(SLF, 0x8728, 1);
        };
        if ((NPC_GETDISTTONPC(SLF, OTH)) > (FIGHT_DIST_MELEE)) {
            B_READYSPELL(SLF, SPL_INSTANTFIREBALL, SPL_COST_INSTANTFIREBALL);
            return TRUE;
        };
        return FALSE;
    };
    if ((SLF.GUILD) == (GIL_MINECRAWLER_RUNE)) {
        if ((NPC_HASITEMS(SLF, 0x94ad)) == (0)) {
            CREATEINVITEMS(SLF, 0x94ad, 1);
        };
        if ((NPC_GETDISTTONPC(SLF, OTH)) > (FIGHT_DIST_MELEE)) {
            B_READYSPELL(SLF, SPL_ACID, SPL_COST_ACID);
            return TRUE;
        };
        return FALSE;
    };
    if ((SLF.GUILD) == (GIL_BLOODFLY_RUNE)) {
        if ((NPC_HASITEMS(SLF, 0x94ad)) == (0)) {
            CREATEINVITEMS(SLF, 0x94ad, 1);
        };
        if ((NPC_GETDISTTONPC(SLF, OTH)) > (FIGHT_DIST_MELEE)) {
            B_READYSPELL(SLF, SPL_ACID, SPL_COST_ACID);
            return TRUE;
        };
        return FALSE;
    };
    if ((SLF.AIVAR[43]) == (ID_ORCSHAMAN)) {
        if ((NPC_HASITEMS(SLF, 0x8728)) == (0)) {
            CREATEINVITEMS(SLF, 0x8728, 1);
        };
        if ((NPC_GETDISTTONPC(SLF, OTH)) > (FIGHT_DIST_MELEE)) {
            B_READYSPELL(SLF, SPL_INSTANTFIREBALL, SPL_COST_INSTANTFIREBALL);
            return TRUE;
        };
        return FALSE;
    };
    return FALSE;
}

instance B_SELECTSPELL.STONEGUARDIAN_01(C_NPC)
instance B_SELECTSPELL.STONEGUARDIAN_02(C_NPC)
instance B_SELECTSPELL.STONEGUARDIAN_03(C_NPC)
instance B_SELECTSPELL.STONEGUARDIAN_04(C_NPC)
instance B_SELECTSPELL.STONEGUARDIAN_05(C_NPC)
instance B_SELECTSPELL.STONEGUARDIAN_06(C_NPC)
instance B_SELECTSPELL.STONEGUARDIAN_07(C_NPC)
instance B_SELECTSPELL.WANTEDPOSTER_PROPHET(C_NPC)
instance B_SELECTSPELL.WANTEDPOSTER_NOVIZE(C_NPC)
instance B_SELECTSPELL.VOLFBOSSMAGE(C_NPC)
const int B_SELECTSPELL.VOLFBOSSMAGE_DAMAGE = 25;
