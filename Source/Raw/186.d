func int B_GETLEARNCOSTTALENT(var C_NPC OTH, var int TALENT, var int SKILL) {
    KOSTEN = 0;
    if ((TALENT) == (NPC_TALENT_MAGE)) {
        if ((SKILL) == (1)) {
            KOSTEN = 20;
        } else if ((SKILL) == (2)) {
            KOSTEN = 30;
        } else if ((SKILL) == (3)) {
            KOSTEN = 40;
        } else if ((SKILL) == (4)) {
            KOSTEN = 50;
        } else {
            KOSTEN = 0;
        };
    };
    if ((TALENT) == (NPC_TALENT_1H)) {
        if ((OTH.AIVAR[84]) >= (120)) {
            KOSTEN = (5) * (SKILL);
        } else if (((OTH.AIVAR[84]) + (SKILL)) >= (120)) {
            KOSTEN += (4) * ((120) - (OTH.AIVAR[84]));
            KOSTEN += (5) * ((SKILL) - ((120) - (OTH.AIVAR[84])));
        } else if ((OTH.AIVAR[84]) >= (90)) {
            KOSTEN = (4) * (SKILL);
        } else if (((OTH.AIVAR[84]) + (SKILL)) >= (90)) {
            KOSTEN += (3) * ((90) - (OTH.AIVAR[84]));
            KOSTEN += (4) * ((SKILL) - ((90) - (OTH.AIVAR[84])));
        } else if ((OTH.AIVAR[84]) >= (60)) {
            KOSTEN = (3) * (SKILL);
        } else if (((OTH.AIVAR[84]) + (SKILL)) >= (60)) {
            KOSTEN += (2) * ((60) - (OTH.AIVAR[84]));
            KOSTEN += (3) * ((SKILL) - ((60) - (OTH.AIVAR[84])));
        } else if ((OTH.AIVAR[84]) >= (30)) {
            KOSTEN = (2) * (SKILL);
        } else if (((OTH.AIVAR[84]) + (SKILL)) >= (30)) {
            KOSTEN += (1) * ((30) - (OTH.AIVAR[84]));
            KOSTEN += (2) * ((SKILL) - ((30) - (OTH.AIVAR[84])));
        } else {
            KOSTEN = (1) * (SKILL);
        };
    };
    if ((TALENT) == (NPC_TALENT_2H)) {
        if ((OTH.AIVAR[85]) >= (120)) {
            KOSTEN = (5) * (SKILL);
        } else if (((OTH.AIVAR[85]) + (SKILL)) >= (120)) {
            KOSTEN += (4) * ((120) - (OTH.AIVAR[85]));
            KOSTEN += (5) * ((SKILL) - ((120) - (OTH.AIVAR[85])));
        } else if ((OTH.AIVAR[85]) >= (90)) {
            KOSTEN = (4) * (SKILL);
        } else if (((OTH.AIVAR[85]) + (SKILL)) >= (90)) {
            KOSTEN += (3) * ((90) - (OTH.AIVAR[85]));
            KOSTEN += (4) * ((SKILL) - ((90) - (OTH.AIVAR[85])));
        } else if ((OTH.AIVAR[85]) >= (60)) {
            KOSTEN = (3) * (SKILL);
        } else if (((OTH.AIVAR[85]) + (SKILL)) >= (60)) {
            KOSTEN += (2) * ((60) - (OTH.AIVAR[85]));
            KOSTEN += (3) * ((SKILL) - ((60) - (OTH.AIVAR[85])));
        } else if ((OTH.AIVAR[85]) >= (30)) {
            KOSTEN = (2) * (SKILL);
        } else if (((OTH.AIVAR[85]) + (SKILL)) >= (30)) {
            KOSTEN += (1) * ((30) - (OTH.AIVAR[85]));
            KOSTEN += (2) * ((SKILL) - ((30) - (OTH.AIVAR[85])));
        } else {
            KOSTEN = (1) * (SKILL);
        };
    };
    if ((TALENT) == (NPC_TALENT_BOW)) {
        if ((OTH.AIVAR[86]) >= (120)) {
            KOSTEN = (5) * (SKILL);
        } else if (((OTH.AIVAR[86]) + (SKILL)) >= (120)) {
            KOSTEN += (4) * ((120) - (OTH.AIVAR[86]));
            KOSTEN += (5) * ((SKILL) - ((120) - (OTH.AIVAR[86])));
        } else if ((OTH.AIVAR[86]) >= (90)) {
            KOSTEN = (4) * (SKILL);
        } else if (((OTH.AIVAR[86]) + (SKILL)) >= (90)) {
            KOSTEN += (3) * ((90) - (OTH.AIVAR[86]));
            KOSTEN += (4) * ((SKILL) - ((90) - (OTH.AIVAR[86])));
        } else if ((OTH.AIVAR[86]) >= (60)) {
            KOSTEN = (3) * (SKILL);
        } else if (((OTH.AIVAR[86]) + (SKILL)) >= (60)) {
            KOSTEN += (2) * ((60) - (OTH.AIVAR[86]));
            KOSTEN += (3) * ((SKILL) - ((60) - (OTH.AIVAR[86])));
        } else if ((OTH.AIVAR[86]) >= (30)) {
            KOSTEN = (2) * (SKILL);
        } else if (((OTH.AIVAR[86]) + (SKILL)) >= (30)) {
            KOSTEN += (1) * ((30) - (OTH.AIVAR[86]));
            KOSTEN += (2) * ((SKILL) - ((30) - (OTH.AIVAR[86])));
        } else {
            KOSTEN = (1) * (SKILL);
        };
    };
    if ((TALENT) == (NPC_TALENT_CROSSBOW)) {
        if ((OTH.AIVAR[87]) >= (120)) {
            KOSTEN = (5) * (SKILL);
        } else if (((OTH.AIVAR[87]) + (SKILL)) >= (120)) {
            KOSTEN += (4) * ((120) - (OTH.AIVAR[87]));
            KOSTEN += (5) * ((SKILL) - ((120) - (OTH.AIVAR[87])));
        } else if ((OTH.AIVAR[87]) >= (90)) {
            KOSTEN = (4) * (SKILL);
        } else if (((OTH.AIVAR[87]) + (SKILL)) >= (90)) {
            KOSTEN += (3) * ((90) - (OTH.AIVAR[87]));
            KOSTEN += (4) * ((SKILL) - ((90) - (OTH.AIVAR[87])));
        } else if ((OTH.AIVAR[87]) >= (60)) {
            KOSTEN = (3) * (SKILL);
        } else if (((OTH.AIVAR[87]) + (SKILL)) >= (60)) {
            KOSTEN += (2) * ((60) - (OTH.AIVAR[87]));
            KOSTEN += (3) * ((SKILL) - ((60) - (OTH.AIVAR[87])));
        } else if ((OTH.AIVAR[87]) >= (30)) {
            KOSTEN = (2) * (SKILL);
        } else if (((OTH.AIVAR[87]) + (SKILL)) >= (30)) {
            KOSTEN += (1) * ((30) - (OTH.AIVAR[87]));
            KOSTEN += (2) * ((SKILL) - ((30) - (OTH.AIVAR[87])));
        } else {
            KOSTEN = (1) * (SKILL);
        };
    };
    if ((TALENT) == (NPC_TALENT_PICKLOCK)) {
        if ((SKILL) == (2)) {
            KOSTEN = 0;
        } else if ((SKILL) == (3)) {
            KOSTEN = 0;
        };
    };
    if ((TALENT) == (NPC_TALENT_PICKPOCKET)) {
        if ((SKILL) == (1)) {
            KOSTEN = 5;
        } else if ((SKILL) == (2)) {
            KOSTEN = 5;
        } else if ((SKILL) == (3)) {
            KOSTEN = 10;
        };
    };
    if ((TALENT) == (NPC_TALENT_SNEAK)) {
        KOSTEN = 0;
    };
    if ((TALENT) == (NPC_TALENT_ACROBAT)) {
        KOSTEN = 2;
    };
    if ((TALENT) == (NPC_TALENT_SMITH)) {
        if ((SKILL) == (1)) {
            KOSTEN = 5;
        } else if ((SKILL) == (2)) {
            KOSTEN = 10;
        } else if ((SKILL) == (3)) {
            KOSTEN = 20;
        } else {
            KOSTEN = 0;
        };
    };
    if ((TALENT) == (NPC_TALENT_FLETCHERY)) {
        if ((SKILL) == (1)) {
            KOSTEN = 5;
        } else if ((SKILL) == (2)) {
            KOSTEN = 10;
        } else if ((SKILL) == (3)) {
            KOSTEN = 20;
        } else {
            KOSTEN = 0;
        };
    };
    if ((TALENT) == (NPC_TALENT_ALCHEMY)) {
        if ((SKILL) == (1)) {
            KOSTEN = 10;
        } else if ((SKILL) == (2)) {
            KOSTEN = 20;
        } else if ((SKILL) == (3)) {
            KOSTEN = 30;
        } else {
            KOSTEN = 0;
        };
    };
    if ((TALENT) == (NPC_TALENT_TAKEANIMALTROPHY)) {
        if ((SKILL) == (TROPHY_TEETH)) {
            KOSTEN = 3;
        } else if ((SKILL) == (TROPHY_CLAWS)) {
            KOSTEN = 3;
        } else if ((SKILL) == (TROPHY_FUR)) {
            KOSTEN = 10;
        } else if ((SKILL) == (TROPHY_HEART)) {
            KOSTEN = 1;
        } else if ((SKILL) == (TROPHY_SHADOWHORN)) {
            KOSTEN = 1;
        } else if ((SKILL) == (TROPHY_FIRETONGUE)) {
            KOSTEN = 1;
        } else if ((SKILL) == (TROPHY_BFWING)) {
            KOSTEN = 1;
        } else if ((SKILL) == (TROPHY_BFSTING)) {
            KOSTEN = 1;
        } else if ((SKILL) == (TROPHY_MANDIBLES)) {
            KOSTEN = 1;
        } else if ((SKILL) == (TROPHY_CRAWLERPLATE)) {
            KOSTEN = 1;
        } else if ((SKILL) == (TROPHY_DRGSNAPPERHORN)) {
            KOSTEN = 1;
        } else if ((SKILL) == (TROPHY_DRAGONSCALE)) {
            KOSTEN = 3;
        } else if ((SKILL) == (TROPHY_DRAGONBLOOD)) {
            KOSTEN = 3;
        } else if ((SKILL) == (TROPHY_REPTILESKIN)) {
            KOSTEN = 3;
        } else if ((SKILL) == (TROPHY_FATS)) {
            KOSTEN = 1;
        } else if ((SKILL) == (TROPHY_SHELLS)) {
            KOSTEN = 1;
        };
    };
    if ((TALENT) == (NPC_TALENT_SCROLLWRITING)) {
        KOSTEN = 5;
    };
    if ((TALENT) == (NPC_TALENT_RUNES)) {
        if ((SKILL) == (SPL_PALLIGHT)) {
            KOSTEN = 1;
        } else if ((SKILL) == (SPL_PALLIGHTHEAL)) {
            KOSTEN = 3;
        } else if ((SKILL) == (SPL_PALHOLYBOLT)) {
            KOSTEN = 3;
        } else if ((SKILL) == (SPL_PALMEDIUMHEAL)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_PALREPELEVIL)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_PALFULLHEAL)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_PALDESTROYEVIL)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_PALTELEPORTSECRET)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_LIGHT)) {
            KOSTEN = 1;
        } else if ((SKILL) == (SPL_FIREBOLT)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_LIGHTHEAL)) {
            KOSTEN = 3;
        } else if ((SKILL) == (SPL_SUMMONGOBLINSKELETON)) {
            KOSTEN = 3;
        } else if ((SKILL) == (SPL_ZAP)) {
            KOSTEN = 3;
        } else if ((SKILL) == (SPL_ICEBOLT)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_INSTANTFIREBALL)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_SUMMONWOLF)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_WINDFIST)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_SLEEP)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_ICELANCE)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_WHIRLWIND)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_MEDIUMHEAL)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_LIGHTNINGFLASH)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_CHARGEFIREBALL)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_SUMMONSKELETON)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_FEAR)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_ICECUBE)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_THUNDERSTORM)) {
            KOSTEN = 5;
        } else if ((SKILL) == (SPL_GEYSER)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_CHARGEZAP)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_SUMMONGOLEM)) {
            KOSTEN = 15;
        } else if ((SKILL) == (SPL_DESTROYUNDEAD)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_PYROKINESIS)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_WATERFIST)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_FIRESTORM)) {
            KOSTEN = 15;
        } else if ((SKILL) == (SPL_ICEWAVE)) {
            KOSTEN = 20;
        } else if ((SKILL) == (SPL_SUMMONDEMON)) {
            KOSTEN = 20;
        } else if ((SKILL) == (SPL_FULLHEAL)) {
            KOSTEN = 10;
        } else if ((SKILL) == (SPL_MASTEROFDISASTER)) {
            KOSTEN = 15;
        } else if ((SKILL) == (SPL_FIRERAIN)) {
            KOSTEN = 20;
        } else if ((SKILL) == (SPL_BREATHOFDEATH)) {
            KOSTEN = 20;
        } else if ((SKILL) == (SPL_MASSDEATH)) {
            KOSTEN = 20;
        } else if ((SKILL) == (SPL_ARMYOFDARKNESS)) {
            KOSTEN = 20;
        } else if ((SKILL) == (SPL_SHRINK)) {
            KOSTEN = 20;
        } else {
            KOSTEN = 5;
        };
    };
    if ((TALENT) == (NPC_TALENT_WISPDETECTOR)) {
        if ((SKILL) == (WISPSKILL_NF)) {
            KOSTEN = 0;
        } else if ((SKILL) == (WISPSKILL_FF)) {
            KOSTEN = 1;
        } else if ((SKILL) == (WISPSKILL_NONE)) {
            KOSTEN = 2;
        } else if ((SKILL) == (WISPSKILL_RUNE)) {
            KOSTEN = 3;
        } else if ((SKILL) == (WISPSKILL_MAGIC)) {
            KOSTEN = 4;
        } else if ((SKILL) == (WISPSKILL_FOOD)) {
            KOSTEN = 5;
        } else if ((SKILL) == (WISPSKILL_POTIONS)) {
            KOSTEN = 5;
        };
    };
    return KOSTEN;
}

var int B_GETLEARNCOSTTALENT.KOSTEN = 0;
