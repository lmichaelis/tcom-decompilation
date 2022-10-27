func void B_SAY_ATTACKREASON() {
    if (((WLD_GETGUILDATTITUDE(SELF.GUILD, OTHER.GUILD)) != (ATT_HOSTILE)) && ((NPC_GETATTITUDE(SELF, OTHER)) == (ATT_HOSTILE))) {
        if ((SELF.AIVAR[9]) == (AR_KILL)) {
            return;
        };
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$IGETYOUSTILL");
        };
        return;
    };
    if ((SELF.GUILD) == (GIL_DMT)) {
        RND = HLP_RANDOM(100);
        ARMOR = NPC_GETEQUIPPEDARMOR(OTHER);
        if (((HLP_ISITEM(ARMOR, 0x8a97)) || (HLP_ISITEM(ARMOR, 0x8a98))) || (HLP_ISITEM(ARMOR, 0x8a99))) {
            if ((RND) > (50)) {
                B_SAY_OVERLAY(SELF, OTHER, "$VolkerGuard_DieEnemyArmor01");
            } else {
                B_SAY_OVERLAY(SELF, OTHER, "$VolkerGuard_DieEnemyArmor02");
            } else {
                /* set_instance(0) */;
            };
        };
        if ((RND) > (50)) {
            B_SAY_OVERLAY(SELF, OTHER, "$VolkerGuard_DieEnemy01");
        } else {
            B_SAY_OVERLAY(SELF, OTHER, "$VolkerGuard_DieEnemy02");
        };
    };
    if ((SELF.AIVAR[9]) == (AR_GUILDENEMY)) {
        if ((SELF.AIVAR[15]) == (TRUE)) {
            RND = HLP_RANDOM(100);
            if ((RND) > (15)) {
                return;
            };
        };
        if ((OTHER.GUILD) < (GIL_SEPERATOR_HUM)) {
            if ((SELF.GUILD) != (GIL_DMT)) {
                B_SAY_OVERLAY(SELF, OTHER, "$DIEENEMY");
            };
            NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
        } else if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$DIEMONSTER");
        };
        NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_THEFT)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$DIRTYTHIEF");
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_USEMOB)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$HANDSOFF");
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_SHEEPKILLER)) {
        if ((OTHER.GUILD) < (GIL_SEPERATOR_HUM)) {
            if ((SELF.GUILD) != (GIL_DMT)) {
                B_SAY_OVERLAY(SELF, OTHER, "$SHEEPKILLER");
            };
        } else if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$SHEEPKILLERMONSTER");
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_HUMANMURDEREDHUMAN)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$YOUMURDERER");
        };
        NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_MONSTERMURDEREDHUMAN)) {
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_MONSTERVSHUMAN)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$DIEMONSTER");
        };
        NPC_SENDPASSIVEPERC(SELF, PERC_ASSESSFIGHTSOUND, SELF, OTHER);
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_MONSTERCLOSETOGATE)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$DIESTUPIDBEAST");
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_REACTTODAMAGE)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            if ((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) {
                B_SAY_OVERLAY(SELF, OTHER, "$YOUASKEDFORIT");
                return;
            };
            B_SAY_OVERLAY(SELF, OTHER, "$YOUDAREHITME");
            return;
        };
    };
    if ((SELF.AIVAR[9]) == (AR_REACTTOWEAPON)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$YOUASKEDFORIT");
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_CLEARROOM)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$THENIBEATYOUOUTOFHERE");
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_LEFTPORTALROOM)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$WHATDIDYOUDOINTHERE");
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_GUARDSTOPSFIGHT)) {
        if ((SELF.GUILD) != (GIL_DMT)) {
            B_SAY_OVERLAY(SELF, OTHER, "$WILLYOUSTOPFIGHTING");
        };
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_GUARDCALLEDTOTHIEF)) {
        return;
    };
    if ((SELF.AIVAR[9]) == (AR_GUARDCALLEDTOROOM)) {
        return;
    };
}

var int B_SAY_ATTACKREASON.RND = 0;
instance B_SAY_ATTACKREASON.ARMOR(C_ITEM)
