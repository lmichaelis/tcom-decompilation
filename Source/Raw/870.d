func int B_GETBESTPLAYERMAP() {
    return 0;
}

func int B_GETANYPLAYERMAP() {
    return 0;
}

func int PLAYER_HOTKEY_SCREEN_MAP() {
    OLDINSTANCE = B_GETPLAYERMAP();
    if (((OLDINSTANCE) > (0)) && ((NPC_HASITEMS(HERO, OLDINSTANCE)) < (1))) {
        OLDINSTANCE = 0;
    };
    B_SETPLAYERMAP(OLDINSTANCE);
    NEWINSTANCE = OLDINSTANCE;
    if ((NEWINSTANCE) <= (0)) {
        NEWINSTANCE = B_GETBESTPLAYERMAP();
    };
    if (((NEWINSTANCE) <= (0)) && ((OLDINSTANCE) <= (0))) {
        NEWINSTANCE = B_GETANYPLAYERMAP();
    };
    if ((NEWINSTANCE) > (0)) {
        B_SETPLAYERMAP(NEWINSTANCE);
        return NEWINSTANCE;
    };
    return OLDINSTANCE;
}

var int PLAYER_HOTKEY_SCREEN_MAP.OLDINSTANCE = 0;
var int PLAYER_HOTKEY_SCREEN_MAP.NEWINSTANCE = 0;
func void B_LAMESCHLORK() {
    SND_PLAY("DRINKBOTTLE");
}

func void PLAYER_HOTKEY_LAME_POTION() {
    if ((NPC_ISINSTATE(HERO, 0xf084)) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x8628)) && (((HERO.ATTRIBUTE[3]) - (HERO.ATTRIBUTE[2])) >= (MANA_ELIXIER))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_ELIXIER);
            NPC_REMOVEINVITEM(HERO, 0x8628);
            B_LAMESCHLORK();
        } else if ((NPC_HASITEMS(HERO, 0x8623)) && (((HERO.ATTRIBUTE[3]) - (HERO.ATTRIBUTE[2])) >= (MANA_EXTRAKT))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_EXTRAKT);
            NPC_REMOVEINVITEM(HERO, 0x8623);
            B_LAMESCHLORK();
        } else if ((NPC_HASITEMS(HERO, 0x861e)) && (((HERO.ATTRIBUTE[3]) - (HERO.ATTRIBUTE[2])) >= (MANA_ESSENZ))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_ESSENZ);
            NPC_REMOVEINVITEM(HERO, 0x861e);
            B_LAMESCHLORK();
        } else if ((HERO.ATTRIBUTE[3]) != (HERO.ATTRIBUTE[2])) {
            if (NPC_HASITEMS(HERO, 0x861e)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_ESSENZ);
                NPC_REMOVEINVITEM(HERO, 0x861e);
                B_LAMESCHLORK();
            } else if (NPC_HASITEMS(HERO, 0x8623)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_EXTRAKT);
                NPC_REMOVEINVITEM(HERO, 0x8623);
                B_LAMESCHLORK();
            } else if (NPC_HASITEMS(HERO, 0x8628)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_ELIXIER);
                NPC_REMOVEINVITEM(HERO, 0x8628);
                B_LAMESCHLORK();
            } else {
                PRINT("No mana potions available!");
            } else {
                /* set_instance(0) */;
            };
        };
        PRINT("Max. mana already reached!");
    };
}

func void PLAYER_HOTKEY_LAME_HEAL() {
    if ((NPC_ISINSTATE(HERO, 0xf084)) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 0x8635)) && (((HERO.ATTRIBUTE[1]) - (HERO.ATTRIBUTE[0])) >= (HP_ELIXIER))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_ELIXIER);
            NPC_REMOVEINVITEM(HERO, 0x8635);
            B_LAMESCHLORK();
        } else if ((NPC_HASITEMS(HERO, 0x8632)) && (((HERO.ATTRIBUTE[1]) - (HERO.ATTRIBUTE[0])) >= (HP_EXTRAKT))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_EXTRAKT);
            NPC_REMOVEINVITEM(HERO, 0x8632);
            B_LAMESCHLORK();
        } else if ((NPC_HASITEMS(HERO, 0x8630)) && (((HERO.ATTRIBUTE[1]) - (HERO.ATTRIBUTE[0])) >= (HP_ESSENZ))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_ESSENZ);
            NPC_REMOVEINVITEM(HERO, 0x8630);
            B_LAMESCHLORK();
        } else if ((HERO.ATTRIBUTE[1]) != (HERO.ATTRIBUTE[0])) {
            if (NPC_HASITEMS(HERO, 0x8630)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_ESSENZ);
                NPC_REMOVEINVITEM(HERO, 0x8630);
                B_LAMESCHLORK();
            } else if (NPC_HASITEMS(HERO, 0x8632)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_EXTRAKT);
                NPC_REMOVEINVITEM(HERO, 0x8632);
                B_LAMESCHLORK();
            } else if (NPC_HASITEMS(HERO, 0x8635)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_ELIXIER);
                NPC_REMOVEINVITEM(HERO, 0x8635);
                B_LAMESCHLORK();
            } else {
                PRINT("Brak mikstur leczniczych!");
            } else {
                /* set_instance(0) */;
            };
        };
        PRINT("Maksymalna mo¿liwa liczba punktów trafieñ!");
    };
}

