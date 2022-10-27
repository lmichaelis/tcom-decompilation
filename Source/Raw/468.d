const int COLL_DONOTHING = 0;
const int COLL_DOEVERYTHING = 1;
const int COLL_APPLYDAMAGE = 2;
const int COLL_APPLYHALVEDAMAGE = 4;
const int COLL_APPLYDOUBLEDAMAGE = 8;
const int COLL_APPLYVICTIMSTATE = 16;
const int COLL_DONTKILL = 32;
func int C_CANNPCCOLLIDEWITHSPELL(var int SPELLTYPE) {
    FANE = HLP_GETNPC(0xdfc7);
    if ((SPELLTYPE) == (SPL_WHIRLWIND)) {
        if (((((((((((((((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) || ((SELF.GUILD) == (GIL_STONEGOLEM))) || ((SELF.GUILD) == (GIL_ICEGOLEM))) || ((SELF.GUILD) == (GIL_FIREGOLEM))) || ((SELF.GUILD) == (GIL_SUMMONED_GOLEM))) || ((SELF.GUILD) == (GIL_DEMON))) || ((SELF.GUILD) == (GIL_SUMMONED_DEMON))) || ((SELF.GUILD) == (GIL_TROLL))) || ((SELF.GUILD) == (GIL_SUMMONED_GOLEM))) || ((SELF.GUILD) == (GIL_DRAGON))) || ((SELF.GUILD) == (GIL_YOUNGTROLL))) || ((SELF.FLAGS) == (NPC_FLAG_IMMORTAL))) || ((SELF.GUILD) == (GIL_SHADOWBEAST))) {
            return COLL_DONOTHING;
        };
        if ((C_NPCISGATEGUARD(SELF)) == (TRUE)) {
            return COLL_APPLYDAMAGE;
        };
        return COLL_DOEVERYTHING;
    };
    if (((((SPELLTYPE) == (SPL_GEYSER)) || ((SPELLTYPE) == (SPL_WATERFIST))) || ((SPELLTYPE) == (SPL_ICEBOLT))) || ((SPELLTYPE) == (SPL_ICELANCE))) {
        if (((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) {
            return COLL_DONOTHING;
        };
        if ((((((SELF.AIVAR[43]) == (ID_FIREWARAN)) || ((SELF.GUILD) == (GIL_FIREGOLEM))) || ((SELF.GUILD) == (GIL_STONEGOLEM))) || ((SELF.AIVAR[43]) == (ID_GOLEMCMENTARY))) || ((SELF.AIVAR[43]) == (ID_GOLEMNATURE))) {
            PRINTD("x2 dmg water spell");
            return COLL_APPLYDOUBLEDAMAGE;
        };
        return COLL_APPLYDAMAGE;
    };
    if (((SPELLTYPE) == (SPL_ICECUBE)) || ((SPELLTYPE) == (SPL_ICEWAVE))) {
        if (((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) {
            return COLL_DONOTHING;
        };
        if ((((((SELF.AIVAR[43]) == (ID_FIREWARAN)) || ((SELF.GUILD) == (GIL_FIREGOLEM))) || ((SELF.GUILD) == (GIL_STONEGOLEM))) || ((SELF.AIVAR[43]) == (ID_GOLEMCMENTARY))) || ((SELF.AIVAR[43]) == (ID_GOLEMNATURE))) {
            return COLL_APPLYDOUBLEDAMAGE;
        };
        if ((((SELF.GUILD) == (GIL_ICEGOLEM)) || ((SELF.AIVAR[43]) == (ID_DRAGON_ICE))) || ((SELF.AIVAR[43]) == (ID_ICEWOLF))) {
            return COLL_APPLYHALVEDAMAGE;
        };
        if (((((((SELF.GUILD) == (GIL_STONEGOLEM)) || ((SELF.GUILD) == (GIL_SUMMONED_GOLEM))) || ((SELF.GUILD) == (GIL_DEMON))) || ((SELF.GUILD) == (GIL_SUMMONED_DEMON))) || ((SELF.GUILD) == (GIL_TROLL))) || ((SELF.GUILD) == (GIL_DRAGON))) {
            return COLL_APPLYDAMAGE;
        };
        return COLL_DOEVERYTHING;
    };
    if ((SPELLTYPE) == (SPL_ENERGYBALL)) {
        if (((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) {
            return COLL_DONOTHING;
        };
        if (C_NPCISUNDEAD(SELF)) {
            return COLL_APPLYHALVEDAMAGE;
        };
        return COLL_DOEVERYTHING;
    };
    if ((SPELLTYPE) == (SPL_SUCKENERGY)) {
        if (((((((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) || ((SELF.GUILD) > (GIL_SEPERATOR_HUM))) || ((SELF.FLAGS) == (NPC_FLAG_IMMORTAL))) || ((NPC_GETDISTTONPC(SELF, OTHER)) > (1000))) || ((SELF.GUILD) == (GIL_DMT))) {
            return COLL_DONOTHING;
        };
        return COLL_DOEVERYTHING;
    };
    if ((SPELLTYPE) == (SPL_GREENTENTACLE)) {
        if ((((((((((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) || ((C_NPCISGATEGUARD(SELF)) == (TRUE))) || ((SELF.GUILD) == (GIL_BLOODFLY))) || ((SELF.GUILD) == (GIL_DEMON))) || ((SELF.GUILD) == (GIL_TROLL))) || ((SELF.GUILD) == (GIL_DRAGON))) || ((SELF.GUILD) == (GIL_HARPY))) || ((SELF.AIVAR[43]) == (ID_SKELETON_MAGE))) {
            return COLL_DONOTHING;
        };
        return COLL_DOEVERYTHING;
    };
    if ((SPELLTYPE) == (SPL_SWARM)) {
        if (((((((((((((((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) || ((SELF.GUILD) == (GIL_STONEGOLEM))) || ((SELF.GUILD) == (GIL_ICEGOLEM))) || ((SELF.GUILD) == (GIL_FIREGOLEM))) || ((SELF.GUILD) == (GIL_SUMMONED_GOLEM))) || ((SELF.GUILD) == (GIL_DEMON))) || ((SELF.GUILD) == (GIL_SUMMONED_DEMON))) || ((SELF.GUILD) == (GIL_TROLL))) || ((SELF.GUILD) == (GIL_BLOODFLY))) || ((SELF.GUILD) == (GIL_DRAGON))) || ((SELF.GUILD) == (GIL_DMT))) || ((SELF.GUILD) == (GIL_YOUNGTROLL))) || ((C_NPCISUNDEAD(SELF)) == (TRUE))) {
            return COLL_DONOTHING;
        };
        if (((SELF.GUILD) > (GIL_SEPERATOR_HUM)) || ((C_NPCISGATEGUARD(SELF)) == (TRUE))) {
            return COLL_APPLYDAMAGE;
        };
        return COLL_DOEVERYTHING;
    };
    if ((SPELLTYPE) == (SPL_WINDFIST)) {
        if ((NPC_GETDISTTONPC(OTHER, SELF)) >= (1000)) {
            return COLL_DONOTHING;
        };
        return COLL_DOEVERYTHING;
    };
    if ((((((SPELLTYPE) == (SPL_THUNDERSTORM)) || ((SPELLTYPE) == (SPL_LIGHTNINGFLASH))) || ((SPELLTYPE) == (SPL_ZAP))) || ((SPELLTYPE) == (SPL_CHARGEZAP))) || ((SPELLTYPE) == (SPL_SKULL))) {
        if (((((C_NPCISDOWN(SELF)) || ((SELF.GUILD) == (GIL_FIREGOLEM))) || ((SELF.GUILD) == (GIL_STONEGOLEM))) || ((SELF.AIVAR[43]) == (ID_GOLEMCMENTARY))) || ((SELF.AIVAR[43]) == (ID_GOLEMNATURE))) {
            PRINTD("x0 dmg electro spell");
            return COLL_DONOTHING;
        };
        if ((((((C_BODYSTATECONTAINS(SELF, BS_SWIM)) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) || (WLD_ISRAINING())) || ((SELF.GUILD) == (GIL_BLOODFLY))) || ((SELF.GUILD) == (GIL_BLOODFLY_RUNE))) || ((SELF.GUILD) == (GIL_HARPY))) {
            PRINTD("x2 dmg electro spell");
            return COLL_APPLYDOUBLEDAMAGE;
        };
        return COLL_APPLYDAMAGE;
    };
    if ((SPELLTYPE) == (SPL_CONCUSSIONBOLT)) {
        if (((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) {
            return COLL_DONOTHING;
        };
        return (COLL_APPLYDAMAGE) | (COLL_DONTKILL);
    };
    if ((((((((((SPELLTYPE) == (SPL_CHARGEFIREBALL)) || ((SPELLTYPE) == (SPL_INSTANTFIREBALL))) || ((SPELLTYPE) == (SPL_FIRERAIN))) || ((SPELLTYPE) == (SPL_FIREBOLT))) || ((SPELLTYPE) == (SPL_FIRESTORM))) || ((SPELLTYPE) == (SPL_FIREWAVE))) || ((SPELLTYPE) == (SPL_PYROKINESIS))) || ((SPELLTYPE) == (SPL_DEATHBOLT))) || ((SPELLTYPE) == (SPL_DEATHBALL))) {
        if (((((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) || ((SELF.AIVAR[43]) == (ID_SCAVENGER_FIRE))) || ((SELF.AIVAR[43]) == (ID_FIREWARAN))) {
            PRINTD("0x dmg fire spell");
            return COLL_DONOTHING;
        };
        if (((((((((SELF.AIVAR[43]) == (ID_TURTLE)) || (WLD_ISRAINING())) || ((SELF.GUILD) == (GIL_LURKER))) || ((SELF.GUILD) == (GIL_ALLIGATOR))) || ((SELF.GUILD) == (GIL_SWAMPSHARK))) || ((SELF.GUILD) == (GIL_KM_GARGOYLE))) || ((SELF.GUILD) == (GIL_FIREGOLEM))) || ((SELF.GUILD) == (GIL_STONEGOLEM))) {
            PRINTD("1/2 dmg fire spell");
            return COLL_APPLYHALVEDAMAGE;
        };
        if ((((((((((((SELF.GUILD) == (GIL_ICEGOLEM)) || ((SELF.GUILD) == (GIL_MOLERAT))) || ((SELF.GUILD) == (GIL_SKELETON))) || ((SELF.GUILD) == (GIL_ZOMBIE))) || ((SELF.GUILD) == (GIL_SKELETON_MAGE))) || ((SELF.AIVAR[43]) == (ID_ICEWOLF))) || ((SELF.GUILD) == (GIL_TROLL))) || ((SELF.GUILD) == (GIL_YOUNGTROLL))) || ((SELF.AIVAR[43]) == (ID_FROG))) || ((SELF.GUILD) == (GIL_SWAMPGOLEM))) || ((SELF.AIVAR[43]) == (ID_RAZORARMORED))) {
            PRINTD("2x dmg fire spell");
            return COLL_APPLYDOUBLEDAMAGE;
        };
        return COLL_DOEVERYTHING;
    };
    if ((SPELLTYPE) == (SPL_DESTROYUNDEAD)) {
        if ((C_NPCISUNDEAD(SELF)) && ((SELF.ATTRIBUTE[1]) <= (SPL_DAMAGE_DESTROYUNDEAD))) {
            return COLL_DOEVERYTHING;
        };
        if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(FANE))) {
            B_KILLNPC(0xdfc7);
            PRINTD("Trafi這 Fane'a");
            SQ113_FANEISIMMORTALTRUE = TRUE;
            return COLL_DOEVERYTHING;
        };
        return COLL_DONOTHING;
    };
    if ((SPELLTYPE) == (SPL_BREATHOFDEATH)) {
        if (((NPC_GETDISTTONPC(OTHER, SELF)) < (1000)) && (!(C_NPCISUNDEAD(SELF)))) {
            if (((SELF.GUILD) == (GIL_DRAGON)) || ((HLP_GETINSTANCEID(SELF)) != (HLP_GETINSTANCEID(HERO)))) {
                return COLL_APPLYHALVEDAMAGE;
            };
            return COLL_DOEVERYTHING;
        };
        return COLL_DONOTHING;
    };
    if ((SPELLTYPE) == (SPL_MASSDEATH)) {
        if (!(C_NPCISUNDEAD(SELF))) {
            if ((SELF.GUILD) == (GIL_DRAGON)) {
                return COLL_APPLYHALVEDAMAGE;
            };
            return COLL_DOEVERYTHING;
        };
        return COLL_DONOTHING;
    };
    if ((SPELLTYPE) == (SPL_MASTEROFDISASTER)) {
        if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(FANE))) {
            B_KILLNPC(0xdfc7);
            PRINTD("Trafi這 Fane'a");
            SQ113_FANEISIMMORTALTRUE = TRUE;
            return COLL_DOEVERYTHING;
        };
        if ((((!(C_NPCISDOWN(SELF))) && (!(C_BODYSTATECONTAINS(SELF, BS_SWIM)))) && (!(C_BODYSTATECONTAINS(SELF, BS_DIVE)))) && (C_NPCISEVIL(SELF))) {
            return COLL_DOEVERYTHING;
        };
        return COLL_DONOTHING;
    };
    if ((SPELLTYPE) == (SPL_SHRINK)) {
        if ((((C_NPCISDOWN(SELF)) || (C_BODYSTATECONTAINS(SELF, BS_SWIM))) || (C_BODYSTATECONTAINS(SELF, BS_DIVE))) || ((SELF.GUILD) == (GIL_DRAGON))) {
            return COLL_DONOTHING;
        };
        return COLL_DOEVERYTHING;
    };
    if ((SPELLTYPE) == (SPL_PALHOLYBOLT)) {
        if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(FANE))) {
            B_KILLNPC(0xdfc7);
            PRINTD("Trafi這 Fane'a");
            SQ113_FANEISIMMORTALTRUE = TRUE;
            return COLL_DOEVERYTHING;
        };
        if (C_NPCISEVIL(SELF)) {
            return COLL_DOEVERYTHING;
        };
        return COLL_DONOTHING;
    };
    if ((SPELLTYPE) == (SPL_PALREPELEVIL)) {
        if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(FANE))) {
            B_KILLNPC(0xdfc7);
            PRINTD("Trafi這 Fane'a");
            SQ113_FANEISIMMORTALTRUE = TRUE;
            return COLL_DOEVERYTHING;
        };
        if (C_NPCISEVIL(SELF)) {
            PRINTD("2x holy damage");
            if ((SELF.ATTRIBUTE[1]) <= (SPL_DAMAGE_PALREPELEVIL)) {
                return COLL_APPLYDOUBLEDAMAGE;
            };
            return COLL_APPLYDAMAGE;
        };
        return COLL_DONOTHING;
    };
    if ((SPELLTYPE) == (SPL_PALDESTROYEVIL)) {
        if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(FANE))) {
            B_KILLNPC(0xdfc7);
            PRINTD("Trafi這 Fane'a");
            SQ113_FANEISIMMORTALTRUE = TRUE;
            return COLL_DOEVERYTHING;
        };
        if (C_NPCISEVIL(SELF)) {
            PRINTD("2x holy damage");
            if ((SELF.ATTRIBUTE[1]) <= (SPL_PALDESTROYEVIL)) {
                return COLL_APPLYDOUBLEDAMAGE;
            };
            return COLL_APPLYDAMAGE;
        };
        return COLL_DONOTHING;
    };
    if ((SPELLTYPE) == (SPL_ACID)) {
        if ((((SELF.GUILD) == (GIL_MINECRAWLER_RUNE)) || ((SELF.GUILD) == (GIL_MINECRAWLER))) || ((SELF.GUILD) == (GIL_BLOODFLY_RUNE))) {
            return COLL_DONOTHING;
        };
    };
    return COLL_DOEVERYTHING;
}

instance C_CANNPCCOLLIDEWITHSPELL.FANE(C_NPC)
