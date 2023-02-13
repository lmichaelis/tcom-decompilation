func int B_GETBESTPLAYERMAP() {
    return 0;
}

func int B_GETANYPLAYERMAP() {
    return 0;
}

func int PLAYER_HOTKEY_SCREEN_MAP() {
    var int NEWINSTANCE;
    var int OLDINSTANCE;
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

func void B_LAMESCHLORK() {
    SND_PLAY("DRINKBOTTLE");
}

func void PLAYER_HOTKEY_LAME_POTION() {
    if ((NPC_ISINSTATE(HERO, 61572)) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 34344)) && (((HERO.ATTRIBUTE[3]) - (HERO.ATTRIBUTE[2])) >= (MANA_ELIXIER))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_ELIXIER);
            NPC_REMOVEINVITEM(HERO, 34344);
            B_LAMESCHLORK();
        } else if ((NPC_HASITEMS(HERO, 34339)) && (((HERO.ATTRIBUTE[3]) - (HERO.ATTRIBUTE[2])) >= (MANA_EXTRAKT))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_EXTRAKT);
            NPC_REMOVEINVITEM(HERO, 34339);
            B_LAMESCHLORK();
        } else if ((NPC_HASITEMS(HERO, 34334)) && (((HERO.ATTRIBUTE[3]) - (HERO.ATTRIBUTE[2])) >= (MANA_ESSENZ))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_ESSENZ);
            NPC_REMOVEINVITEM(HERO, 34334);
            B_LAMESCHLORK();
        } else if ((HERO.ATTRIBUTE[3]) != (HERO.ATTRIBUTE[2])) {
            if (NPC_HASITEMS(HERO, 34334)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_ESSENZ);
                NPC_REMOVEINVITEM(HERO, 34334);
                B_LAMESCHLORK();
            } else if (NPC_HASITEMS(HERO, 34339)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_EXTRAKT);
                NPC_REMOVEINVITEM(HERO, 34339);
                B_LAMESCHLORK();
            } else if (NPC_HASITEMS(HERO, 34344)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_MANA, MANA_ELIXIER);
                NPC_REMOVEINVITEM(HERO, 34344);
                B_LAMESCHLORK();
            } else {
                PRINT("No mana potions available!");
            };
        } else {
            PRINT("Max. mana already reached!");
        };
    };
}

func void PLAYER_HOTKEY_LAME_HEAL() {
    if ((NPC_ISINSTATE(HERO, 61572)) == (FALSE)) {
        if ((NPC_HASITEMS(HERO, 34357)) && (((HERO.ATTRIBUTE[1]) - (HERO.ATTRIBUTE[0])) >= (HP_ELIXIER))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_ELIXIER);
            NPC_REMOVEINVITEM(HERO, 34357);
            B_LAMESCHLORK();
        } else if ((NPC_HASITEMS(HERO, 34354)) && (((HERO.ATTRIBUTE[1]) - (HERO.ATTRIBUTE[0])) >= (HP_EXTRAKT))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_EXTRAKT);
            NPC_REMOVEINVITEM(HERO, 34354);
            B_LAMESCHLORK();
        } else if ((NPC_HASITEMS(HERO, 34352)) && (((HERO.ATTRIBUTE[1]) - (HERO.ATTRIBUTE[0])) >= (HP_ESSENZ))) {
            NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_ESSENZ);
            NPC_REMOVEINVITEM(HERO, 34352);
            B_LAMESCHLORK();
        } else if ((HERO.ATTRIBUTE[1]) != (HERO.ATTRIBUTE[0])) {
            if (NPC_HASITEMS(HERO, 34352)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_ESSENZ);
                NPC_REMOVEINVITEM(HERO, 34352);
                B_LAMESCHLORK();
            } else if (NPC_HASITEMS(HERO, 34354)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_EXTRAKT);
                NPC_REMOVEINVITEM(HERO, 34354);
                B_LAMESCHLORK();
            } else if (NPC_HASITEMS(HERO, 34357)) {
                NPC_CHANGEATTRIBUTE(HERO, ATR_HITPOINTS, HP_ELIXIER);
                NPC_REMOVEINVITEM(HERO, 34357);
                B_LAMESCHLORK();
            } else {
                PRINT("Brak mikstur leczniczych!");
            };
        } else {
            PRINT("Maksymalna mo¿liwa liczba punktów trafieñ!");
        };
    };
}

