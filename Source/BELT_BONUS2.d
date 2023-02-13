const int BELT_BONUS2 = 2;
const int BELT_BONUS3 = 3;
const int BELT_BONUS4 = 4;
const int BELT_BONUS5 = 5;
const int BELT_BONUS6 = 6;
const int BELT_BONUS7 = 7;
const int BELT_BONUS8 = 8;
const int BELT_BONUS10 = 10;
const int BELT_BONUS15 = 15;
const int BELT_BONUS20 = 20;
const int BELTBONUS_HUNTER_DEX_02 = 3;
const int BELTBONUS_CHAIN_STR_02 = 3;
const int BELTBONUS_WON_PROTMAGIC = 20;
const int BELTBONUS_WON_PROTEDGE = 10;
const int BELTBONUS_WON_STR01 = 5;
const int BELTBONUS_STH_HP_02 = 30;
var int BETTERALCHEMY_HEALER;
var int SETBONUS_HUNTERARMOR_COUNT;
var int SETBONUS_HUNTERARMOR_READY;
func void SETBONUS_HUNTERARMOR_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_HUNTERARMOR_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_HUNTERARMOR_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS5;
            SELF.PROTECTION[1] += BELT_BONUS5;
            SELF.PROTECTION[6] += BELT_BONUS5;
            SELF.PROTECTION[3] += BELT_BONUS5;
            SELF.PROTECTION[5] += BELT_BONUS5;
        };
    };
}

func void SETBONUS_HUNTERARMOR_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_HUNTERARMOR_READY) == (TRUE)) {
            if ((SETBONUS_HUNTERARMOR_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_HUNTERARMOR_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS5;
                SELF.PROTECTION[1] -= BELT_BONUS5;
                SELF.PROTECTION[6] -= BELT_BONUS5;
                SELF.PROTECTION[3] -= BELT_BONUS5;
                SELF.PROTECTION[5] -= BELT_BONUS5;
            };
        };
    };
}

var int SETBONUS_HUNTERARMOR_02_COUNT;
var int SETBONUS_HUNTERARMOR_02_READY;
func void SETBONUS_HUNTERARMOR_02_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_HUNTERARMOR_02_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_HUNTERARMOR_02_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS7;
            SELF.PROTECTION[1] += BELT_BONUS7;
            SELF.PROTECTION[6] += BELT_BONUS7;
            SELF.PROTECTION[3] += BELT_BONUS7;
            SELF.PROTECTION[5] += BELT_BONUS7;
        };
    };
}

func void SETBONUS_HUNTERARMOR_02_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_HUNTERARMOR_02_READY) == (TRUE)) {
            if ((SETBONUS_HUNTERARMOR_02_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_HUNTERARMOR_02_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS7;
                SELF.PROTECTION[1] -= BELT_BONUS7;
                SELF.PROTECTION[6] -= BELT_BONUS7;
                SELF.PROTECTION[3] -= BELT_BONUS7;
                SELF.PROTECTION[5] -= BELT_BONUS7;
            };
        };
    };
}

var int SETBONUS_LEATHERARMOR_COUNT;
var int SETBONUS_LEATHERARMOR_READY;
func void SETBONUS_LEATHERARMOR_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_LEATHERARMOR_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_LEATHERARMOR_READY = TRUE;
            SELF.PROTECTION[1] += BELT_BONUS5;
            SELF.PROTECTION[6] += BELT_BONUS5;
        };
    };
}

func void SETBONUS_LEATHERARMOR_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_LEATHERARMOR_READY) == (TRUE)) {
            if ((SETBONUS_LEATHERARMOR_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_LEATHERARMOR_READY = FALSE;
                SELF.PROTECTION[1] -= BELT_BONUS5;
                SELF.PROTECTION[6] -= BELT_BONUS5;
            };
        };
    };
}

var int SETBONUS_CHAINARMOR_COUNT;
var int SETBONUS_CHAINARMOR_READY;
func void SETBONUS_CHAINARMOR_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_CHAINARMOR_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_CHAINARMOR_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS5;
            SELF.PROTECTION[1] += BELT_BONUS5;
            SELF.PROTECTION[6] += BELT_BONUS5;
            SELF.PROTECTION[3] += BELT_BONUS5;
            SELF.PROTECTION[5] += BELT_BONUS5;
        };
    };
}

func void SETBONUS_CHAINARMOR_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_CHAINARMOR_READY) == (TRUE)) {
            if ((SETBONUS_CHAINARMOR_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_CHAINARMOR_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS5;
                SELF.PROTECTION[1] -= BELT_BONUS5;
                SELF.PROTECTION[6] -= BELT_BONUS5;
                SELF.PROTECTION[3] -= BELT_BONUS5;
                SELF.PROTECTION[5] -= BELT_BONUS5;
            };
        };
    };
}

var int SETBONUS_CHAINARMOR_02_COUNT;
var int SETBONUS_CHAINARMOR_02_READY;
func void SETBONUS_CHAINARMOR_02_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_CHAINARMOR_02_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_CHAINARMOR_02_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS7;
            SELF.PROTECTION[1] += BELT_BONUS7;
            SELF.PROTECTION[6] += BELT_BONUS7;
            SELF.PROTECTION[3] += BELT_BONUS7;
            SELF.PROTECTION[5] += BELT_BONUS7;
        };
    };
}

func void SETBONUS_CHAINARMOR_02_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_CHAINARMOR_02_READY) == (TRUE)) {
            if ((SETBONUS_CHAINARMOR_02_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_CHAINARMOR_02_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS7;
                SELF.PROTECTION[1] -= BELT_BONUS7;
                SELF.PROTECTION[6] -= BELT_BONUS7;
                SELF.PROTECTION[3] -= BELT_BONUS7;
                SELF.PROTECTION[5] -= BELT_BONUS7;
            };
        };
    };
}

var int SETBONUS_SOUTHENERARMOR_COUNT;
var int SETBONUS_SOUTHENERARMOR_READY;
func void SETBONUS_SOUTHENERARMOR_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_SOUTHENERARMOR_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_SOUTHENERARMOR_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS10;
            SELF.PROTECTION[1] += BELT_BONUS10;
            SELF.PROTECTION[6] += BELT_BONUS10;
            SELF.PROTECTION[3] += BELT_BONUS10;
            SELF.PROTECTION[5] += BELT_BONUS10;
        };
    };
}

func void SETBONUS_SOUTHENERARMOR_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_SOUTHENERARMOR_READY) == (TRUE)) {
            if ((SETBONUS_SOUTHENERARMOR_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_SOUTHENERARMOR_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS10;
                SELF.PROTECTION[1] -= BELT_BONUS10;
                SELF.PROTECTION[6] -= BELT_BONUS10;
                SELF.PROTECTION[3] -= BELT_BONUS10;
                SELF.PROTECTION[5] -= BELT_BONUS10;
            };
        };
    };
}

var int SETBONUS_SOUTHENERARMOR_02_COUNT;
var int SETBONUS_SOUTHENERARMOR_02_READY;
func void SETBONUS_SOUTHENERARMOR_02_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_SOUTHENERARMOR_02_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_SOUTHENERARMOR_02_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS20;
            SELF.PROTECTION[1] += BELT_BONUS20;
            SELF.PROTECTION[6] += BELT_BONUS20;
            SELF.PROTECTION[3] += BELT_BONUS20;
            SELF.PROTECTION[5] += BELT_BONUS20;
        };
    };
}

func void SETBONUS_SOUTHENERARMOR_02_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_SOUTHENERARMOR_02_READY) == (TRUE)) {
            if ((SETBONUS_SOUTHENERARMOR_02_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_SOUTHENERARMOR_02_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS20;
                SELF.PROTECTION[1] -= BELT_BONUS20;
                SELF.PROTECTION[6] -= BELT_BONUS20;
                SELF.PROTECTION[3] -= BELT_BONUS20;
                SELF.PROTECTION[5] -= BELT_BONUS20;
            };
        };
    };
}

var int SETBONUS_WOLFSON_COUNT;
var int SETBONUS_WOLFSON_READY;
func void SETBONUS_WOLFSON_COUNT_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_WOLFSON_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_WOLFSON_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS10;
            SELF.PROTECTION[1] += BELT_BONUS10;
            SELF.PROTECTION[6] += BELT_BONUS10;
            SELF.PROTECTION[3] += BELT_BONUS10;
            SELF.PROTECTION[5] += BELT_BONUS10;
        };
    };
}

func void SETBONUS_WOLFSON_COUNT_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_WOLFSON_READY) == (TRUE)) {
            if ((SETBONUS_WOLFSON_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_WOLFSON_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS10;
                SELF.PROTECTION[1] -= BELT_BONUS10;
                SELF.PROTECTION[6] -= BELT_BONUS10;
                SELF.PROTECTION[3] -= BELT_BONUS10;
                SELF.PROTECTION[5] -= BELT_BONUS10;
            };
        };
    };
}

var int SETBONUS_MILITIA_NORMAL_COUNT;
var int SETBONUS_MILITIA_NORMAL_READY;
func void SETBONUS_MILITIA_NORMAL_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_NORMAL_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_MILITIA_NORMAL_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS5;
            SELF.PROTECTION[1] += BELT_BONUS5;
            SELF.PROTECTION[6] += BELT_BONUS5;
            SELF.PROTECTION[3] += BELT_BONUS5;
            SELF.PROTECTION[5] += BELT_BONUS5;
        };
    };
}

func void SETBONUS_MILITIA_NORMAL_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_NORMAL_READY) == (TRUE)) {
            if ((SETBONUS_MILITIA_NORMAL_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_MILITIA_NORMAL_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS5;
                SELF.PROTECTION[1] -= BELT_BONUS5;
                SELF.PROTECTION[6] -= BELT_BONUS5;
                SELF.PROTECTION[3] -= BELT_BONUS5;
                SELF.PROTECTION[5] -= BELT_BONUS5;
            };
        };
    };
}

var int SETBONUS_MILITIA_CROSSBOW_01_COUNT;
var int SETBONUS_MILITIA_CROSSBOW_01_READY;
func void SETBONUS_MILITIA_CROSSBOW_01_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_CROSSBOW_01_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_MILITIA_CROSSBOW_01_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS5;
            SELF.PROTECTION[1] += BELT_BONUS5;
            SELF.PROTECTION[6] += BELT_BONUS5;
            SELF.PROTECTION[3] += BELT_BONUS5;
            SELF.PROTECTION[5] += BELT_BONUS5;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, BELT_BONUS3);
        };
    };
}

func void SETBONUS_MILITIA_CROSSBOW_01_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_CROSSBOW_01_READY) == (TRUE)) {
            if ((SETBONUS_MILITIA_CROSSBOW_01_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_MILITIA_CROSSBOW_01_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS5;
                SELF.PROTECTION[1] -= BELT_BONUS5;
                SELF.PROTECTION[6] -= BELT_BONUS5;
                SELF.PROTECTION[3] -= BELT_BONUS5;
                SELF.PROTECTION[5] -= BELT_BONUS5;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, -(BELT_BONUS3));
            };
        };
    };
}

var int SETBONUS_MILITIA_CROSSBOW_02_COUNT;
var int SETBONUS_MILITIA_CROSSBOW_02_READY;
func void SETBONUS_MILITIA_CROSSBOW_02_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_CROSSBOW_02_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_MILITIA_CROSSBOW_02_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS10;
            SELF.PROTECTION[1] += BELT_BONUS10;
            SELF.PROTECTION[6] += BELT_BONUS10;
            SELF.PROTECTION[3] += BELT_BONUS10;
            SELF.PROTECTION[5] += BELT_BONUS10;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, BELT_BONUS5);
        };
    };
}

func void SETBONUS_MILITIA_CROSSBOW_02_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_CROSSBOW_02_READY) == (TRUE)) {
            if ((SETBONUS_MILITIA_CROSSBOW_02_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_MILITIA_CROSSBOW_02_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS10;
                SELF.PROTECTION[1] -= BELT_BONUS10;
                SELF.PROTECTION[6] -= BELT_BONUS10;
                SELF.PROTECTION[3] -= BELT_BONUS10;
                SELF.PROTECTION[5] -= BELT_BONUS10;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, -(BELT_BONUS5));
            };
        };
    };
}

var int SETBONUS_MILITIA_WARRIOR_01_COUNT;
var int SETBONUS_MILITIA_WARRIOR_01_READY;
func void SETBONUS_MILITIA_WARRIOR_01_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_WARRIOR_01_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_MILITIA_WARRIOR_01_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS5;
            SELF.PROTECTION[1] += BELT_BONUS5;
            SELF.PROTECTION[6] += BELT_BONUS5;
            SELF.PROTECTION[3] += BELT_BONUS5;
            SELF.PROTECTION[5] += BELT_BONUS5;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, BELT_BONUS3);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, BELT_BONUS3);
        };
    };
}

func void SETBONUS_MILITIA_WARRIOR_01_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_WARRIOR_01_READY) == (TRUE)) {
            if ((SETBONUS_MILITIA_WARRIOR_01_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_MILITIA_WARRIOR_01_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS5;
                SELF.PROTECTION[1] -= BELT_BONUS5;
                SELF.PROTECTION[6] -= BELT_BONUS5;
                SELF.PROTECTION[3] -= BELT_BONUS5;
                SELF.PROTECTION[5] -= BELT_BONUS5;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(BELT_BONUS3));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(BELT_BONUS3));
            };
        };
    };
}

var int SETBONUS_MILITIA_WARRIOR_02_COUNT;
var int SETBONUS_MILITIA_WARRIOR_02_READY;
func void SETBONUS_MILITIA_WARRIOR_02_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_WARRIOR_02_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_MILITIA_WARRIOR_02_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS10;
            SELF.PROTECTION[1] += BELT_BONUS10;
            SELF.PROTECTION[6] += BELT_BONUS10;
            SELF.PROTECTION[3] += BELT_BONUS10;
            SELF.PROTECTION[5] += BELT_BONUS10;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, BELT_BONUS5);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, BELT_BONUS5);
        };
    };
}

func void SETBONUS_MILITIA_WARRIOR_02_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MILITIA_WARRIOR_02_READY) == (TRUE)) {
            if ((SETBONUS_MILITIA_WARRIOR_02_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_MILITIA_WARRIOR_02_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS10;
                SELF.PROTECTION[1] -= BELT_BONUS10;
                SELF.PROTECTION[6] -= BELT_BONUS10;
                SELF.PROTECTION[3] -= BELT_BONUS10;
                SELF.PROTECTION[5] -= BELT_BONUS10;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(BELT_BONUS5));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(BELT_BONUS5));
            };
        };
    };
}

var int SETBONUS_ARAXOS_NORMAL_COUNT;
var int SETBONUS_ARAXOS_NORMAL_READY;
func void SETBONUS_ARAXOS_NORMAL_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_NORMAL_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_ARAXOS_NORMAL_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS5;
            SELF.PROTECTION[1] += BELT_BONUS5;
            SELF.PROTECTION[6] += BELT_BONUS5;
            SELF.PROTECTION[3] += BELT_BONUS5;
            SELF.PROTECTION[5] += BELT_BONUS5;
        };
    };
}

func void SETBONUS_ARAXOS_NORMAL_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_NORMAL_READY) == (TRUE)) {
            if ((SETBONUS_ARAXOS_NORMAL_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_ARAXOS_NORMAL_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS5;
                SELF.PROTECTION[1] -= BELT_BONUS5;
                SELF.PROTECTION[6] -= BELT_BONUS5;
                SELF.PROTECTION[3] -= BELT_BONUS5;
                SELF.PROTECTION[5] -= BELT_BONUS5;
            };
        };
    };
}

var int SETBONUS_ARAXOS_ARCHER_01_COUNT;
var int SETBONUS_ARAXOS_ARCHER_01_READY;
func void SETBONUS_ARAXOS_ARCHER_01_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_ARCHER_01_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_ARAXOS_ARCHER_01_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS5;
            SELF.PROTECTION[1] += BELT_BONUS5;
            SELF.PROTECTION[6] += BELT_BONUS5;
            SELF.PROTECTION[3] += BELT_BONUS5;
            SELF.PROTECTION[5] += BELT_BONUS5;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, BELT_BONUS3);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, BELT_BONUS3);
        };
    };
}

func void SETBONUS_ARAXOS_ARCHER_01_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_ARCHER_01_READY) == (TRUE)) {
            if ((SETBONUS_ARAXOS_ARCHER_01_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_ARAXOS_ARCHER_01_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS5;
                SELF.PROTECTION[1] -= BELT_BONUS5;
                SELF.PROTECTION[6] -= BELT_BONUS5;
                SELF.PROTECTION[3] -= BELT_BONUS5;
                SELF.PROTECTION[5] -= BELT_BONUS5;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, -(BELT_BONUS3));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, -(BELT_BONUS3));
            };
        };
    };
}

var int SETBONUS_ARAXOS_ARCHER_02_COUNT;
var int SETBONUS_ARAXOS_ARCHER_02_READY;
func void SETBONUS_ARAXOS_ARCHER_02_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_ARCHER_02_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_ARAXOS_ARCHER_02_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS10;
            SELF.PROTECTION[1] += BELT_BONUS10;
            SELF.PROTECTION[6] += BELT_BONUS10;
            SELF.PROTECTION[3] += BELT_BONUS10;
            SELF.PROTECTION[5] += BELT_BONUS10;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, BELT_BONUS5);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, BELT_BONUS5);
        };
    };
}

func void SETBONUS_ARAXOS_ARCHER_02_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_ARCHER_02_READY) == (TRUE)) {
            if ((SETBONUS_ARAXOS_ARCHER_02_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_ARAXOS_ARCHER_02_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS10;
                SELF.PROTECTION[1] -= BELT_BONUS10;
                SELF.PROTECTION[6] -= BELT_BONUS10;
                SELF.PROTECTION[3] -= BELT_BONUS10;
                SELF.PROTECTION[5] -= BELT_BONUS10;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, -(BELT_BONUS5));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, -(BELT_BONUS5));
            };
        };
    };
}

var int SETBONUS_ARAXOS_WARRIOR_01_COUNT;
var int SETBONUS_ARAXOS_WARRIOR_01_READY;
func void SETBONUS_ARAXOS_WARRIOR_01_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_WARRIOR_01_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_ARAXOS_WARRIOR_01_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS5;
            SELF.PROTECTION[1] += BELT_BONUS5;
            SELF.PROTECTION[6] += BELT_BONUS5;
            SELF.PROTECTION[3] += BELT_BONUS5;
            SELF.PROTECTION[5] += BELT_BONUS5;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, BELT_BONUS3);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, BELT_BONUS3);
        };
    };
}

func void SETBONUS_ARAXOS_WARRIOR_01_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_WARRIOR_01_READY) == (TRUE)) {
            if ((SETBONUS_ARAXOS_WARRIOR_01_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_ARAXOS_WARRIOR_01_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS5;
                SELF.PROTECTION[1] -= BELT_BONUS5;
                SELF.PROTECTION[6] -= BELT_BONUS5;
                SELF.PROTECTION[3] -= BELT_BONUS5;
                SELF.PROTECTION[5] -= BELT_BONUS5;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(BELT_BONUS3));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(BELT_BONUS3));
            };
        };
    };
}

var int SETBONUS_ARAXOS_WARRIOR_02_COUNT;
var int SETBONUS_ARAXOS_WARRIOR_02_READY;
func void SETBONUS_ARAXOS_WARRIOR_02_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_WARRIOR_02_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_ARAXOS_WARRIOR_02_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS10;
            SELF.PROTECTION[1] += BELT_BONUS10;
            SELF.PROTECTION[6] += BELT_BONUS10;
            SELF.PROTECTION[3] += BELT_BONUS10;
            SELF.PROTECTION[5] += BELT_BONUS10;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, BELT_BONUS5);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, BELT_BONUS5);
        };
    };
}

func void SETBONUS_ARAXOS_WARRIOR_02_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARAXOS_WARRIOR_02_READY) == (TRUE)) {
            if ((SETBONUS_ARAXOS_WARRIOR_02_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_ARAXOS_WARRIOR_02_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS10;
                SELF.PROTECTION[1] -= BELT_BONUS10;
                SELF.PROTECTION[6] -= BELT_BONUS10;
                SELF.PROTECTION[3] -= BELT_BONUS10;
                SELF.PROTECTION[5] -= BELT_BONUS10;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(BELT_BONUS5));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(BELT_BONUS5));
            };
        };
    };
}

var int SETBONUS_NORDMAR_COUNT;
var int SETBONUS_NORDMAR_READY;
func void SETBONUS_NORDMAR_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_NORDMAR_COUNT) == (2)) {
            PRINTD("Bonusy dodane!");
            SETBONUS_NORDMAR_READY = TRUE;
            SELF.PROTECTION[2] += BELT_BONUS15;
            SELF.PROTECTION[1] += BELT_BONUS15;
            SELF.PROTECTION[6] += BELT_BONUS15;
            SELF.PROTECTION[3] += BELT_BONUS15;
            SELF.PROTECTION[5] += BELT_BONUS15;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, BELT_BONUS10);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, BELT_BONUS10);
        };
    };
}

func void SETBONUS_NORDMAR_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_NORDMAR_READY) == (TRUE)) {
            if ((SETBONUS_NORDMAR_COUNT) != (2)) {
                PRINTD("Bonusy zdjête!");
                SETBONUS_NORDMAR_READY = FALSE;
                SELF.PROTECTION[2] -= BELT_BONUS15;
                SELF.PROTECTION[1] -= BELT_BONUS15;
                SELF.PROTECTION[6] -= BELT_BONUS15;
                SELF.PROTECTION[3] -= BELT_BONUS15;
                SELF.PROTECTION[5] -= BELT_BONUS15;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(BELT_BONUS10));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(BELT_BONUS10));
            };
        };
    };
}

var int SETBONUS_WOLFSONRINGS_COUNT;
var int SETBONUS_WOLFSONRINGS_READY_01;
var int SETBONUS_WOLFSONRINGS_READY_02;
func void SETBONUS_WOLFSONRINGS_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_WOLFSONRINGS_COUNT) == (2)) {
            PRINTD("Bonusy dodane! - 01");
            SETBONUS_WOLFSONRINGS_READY_01 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, WOLFSONSET_2H);
        };
        if ((SETBONUS_WOLFSONRINGS_COUNT) == (3)) {
            PRINTD("Bonusy dodane! - 02");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_WOLFSONRINGS_READY_02 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, WOLFSONSET_2H);
        };
    };
}

func void SETBONUS_WOLFSONRINGS_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_WOLFSONRINGS_READY_01) == (TRUE)) {
            if ((SETBONUS_WOLFSONRINGS_COUNT) != (2)) {
                PRINTD("Bonusy zdjête! - 01");
                SETBONUS_WOLFSONRINGS_READY_01 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(WOLFSONSET_2H));
            };
        };
        if ((SETBONUS_WOLFSONRINGS_READY_02) == (TRUE)) {
            if ((SETBONUS_WOLFSONRINGS_COUNT) != (3)) {
                PRINTD("Bonusy zdjête! - 02");
                SETBONUS_WOLFSONRINGS_READY_02 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(WOLFSONSET_2H));
            };
        };
    };
}

var int SETBONUS_SOUTHERNERRINGS_COUNT;
var int SETBONUS_SOUTHERNERRINGS_READY_01;
var int SETBONUS_SOUTHERNERRINGS_READY_02;
func void SETBONUS_SOUTHERNERRINGS_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_SOUTHERNERRINGS_COUNT) == (2)) {
            PRINTD("Bonusy dodane! - 01");
            SETBONUS_SOUTHERNERRINGS_READY_01 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, SOUTHERNERSET_2H);
        };
        if ((SETBONUS_SOUTHERNERRINGS_COUNT) == (3)) {
            PRINTD("Bonusy dodane! - 02");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_SOUTHERNERRINGS_READY_02 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, SOUTHERNERSET_2H);
        };
    };
}

func void SETBONUS_SOUTHERNERRINGS_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_SOUTHERNERRINGS_READY_01) == (TRUE)) {
            if ((SETBONUS_SOUTHERNERRINGS_COUNT) != (2)) {
                PRINTD("Bonusy zdjête! - 01");
                SETBONUS_SOUTHERNERRINGS_READY_01 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(SOUTHERNERSET_2H));
            };
        };
        if ((SETBONUS_SOUTHERNERRINGS_READY_02) == (TRUE)) {
            if ((SETBONUS_SOUTHERNERRINGS_COUNT) != (3)) {
                PRINTD("Bonusy zdjête! - 02");
                SETBONUS_SOUTHERNERRINGS_READY_02 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(SOUTHERNERSET_2H));
            };
        };
    };
}

var int SETBONUS_WATERMAGESET_COUNT;
var int SETBONUS_WATERMAGESET_READY_01;
var int SETBONUS_WATERMAGESET_READY_02;
func void SETBONUS_WATERMAGESET_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_WATERMAGESET_COUNT) == (2)) {
            PRINTD("Bonusy dodane! - 01");
            SETBONUS_WATERMAGESET_READY_01 = TRUE;
            BUFF_APPLYORREFRESH(HERO, 32566);
        };
        if ((SETBONUS_WATERMAGESET_COUNT) == (3)) {
            PRINTD("Bonusy dodane! - 02");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_WATERMAGESET_READY_02 = TRUE;
            BUFF_APPLYORREFRESH(HERO, 32566);
        };
    };
}

func void SETBONUS_WATERMAGESET_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_WATERMAGESET_READY_01) == (TRUE)) {
            if ((SETBONUS_WATERMAGESET_COUNT) != (2)) {
                PRINTD("Bonusy zdjête! - 01");
                SETBONUS_WATERMAGESET_READY_01 = FALSE;
            };
        };
        if ((SETBONUS_WATERMAGESET_READY_02) == (TRUE)) {
            if ((SETBONUS_WATERMAGESET_COUNT) != (3)) {
                PRINTD("Bonusy zdjête! - 02");
                SETBONUS_WATERMAGESET_READY_02 = FALSE;
            };
        };
    };
}

var int SETBONUS_WATERCIRCLERINGS_COUNT;
var int SETBONUS_WATERCIRCLERINGS_READY_01;
var int SETBONUS_WATERCIRCLERINGS_READY_02;
func void SETBONUS_WATERCIRCLERINGS_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_WATERCIRCLERINGS_COUNT) == (2)) {
            PRINTD("Bonusy dodane! - 01");
            SETBONUS_WATERCIRCLERINGS_READY_01 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, WATERCIRCLESET_ALLWEAPON);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, WATERCIRCLESET_ALLWEAPON);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, WATERCIRCLESET_ALLWEAPON);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, WATERCIRCLESET_ALLWEAPON);
        };
        if ((SETBONUS_WATERCIRCLERINGS_COUNT) == (3)) {
            PRINTD("Bonusy dodane! - 02");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_WATERCIRCLERINGS_READY_02 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, WATERCIRCLESET_ALLWEAPON);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, WATERCIRCLESET_ALLWEAPON);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, WATERCIRCLESET_ALLWEAPON);
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, WATERCIRCLESET_ALLWEAPON);
        };
    };
}

func void SETBONUS_WATERCIRCLERINGS_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_WATERCIRCLERINGS_READY_01) == (TRUE)) {
            if ((SETBONUS_WATERCIRCLERINGS_COUNT) != (2)) {
                PRINTD("Bonusy zdjête! - 01");
                SETBONUS_WATERCIRCLERINGS_READY_01 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(WATERCIRCLESET_ALLWEAPON));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(WATERCIRCLESET_ALLWEAPON));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, -(WATERCIRCLESET_ALLWEAPON));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, -(WATERCIRCLESET_ALLWEAPON));
            };
        };
        if ((SETBONUS_WATERCIRCLERINGS_READY_02) == (TRUE)) {
            if ((SETBONUS_WATERCIRCLERINGS_COUNT) != (3)) {
                PRINTD("Bonusy zdjête! - 02");
                SETBONUS_WATERCIRCLERINGS_READY_02 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(WATERCIRCLESET_ALLWEAPON));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_2H, -(WATERCIRCLESET_ALLWEAPON));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, -(WATERCIRCLESET_ALLWEAPON));
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, -(WATERCIRCLESET_ALLWEAPON));
            };
        };
    };
}

var int SETBONUS_PIRATERINGS_COUNT;
var int SETBONUS_PIRATERINGS_READY_01;
var int SETBONUS_PIRATERINGS_READY_02;
func void SETBONUS_PIRATERINGS_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_PIRATERINGS_COUNT) == (2)) {
            PRINTD("Bonusy dodane! - 01");
            SETBONUS_PIRATERINGS_READY_01 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, PIRATESET_1H);
        };
        if ((SETBONUS_PIRATERINGS_COUNT) == (3)) {
            PRINTD("Bonusy dodane! - 02");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_PIRATERINGS_READY_02 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, PIRATESET_1H);
        };
    };
}

func void SETBONUS_PIRATERINGS_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_PIRATERINGS_READY_01) == (TRUE)) {
            if ((SETBONUS_PIRATERINGS_COUNT) != (2)) {
                PRINTD("Bonusy zdjête! - 01");
                SETBONUS_PIRATERINGS_READY_01 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(PIRATESET_1H));
            };
        };
        if ((SETBONUS_PIRATERINGS_READY_02) == (TRUE)) {
            if ((SETBONUS_PIRATERINGS_COUNT) != (3)) {
                PRINTD("Bonusy zdjête! - 02");
                SETBONUS_PIRATERINGS_READY_02 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(PIRATESET_1H));
            };
        };
    };
}

var int SETBONUS_NORDMARRINGS_COUNT;
var int SETBONUS_NORDMARRINGS_READY_01;
var int SETBONUS_NORDMARRINGS_READY_02;
func void SETBONUS_NORDMARRINGS_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_NORDMARRINGS_COUNT) == (2)) {
            PRINTD("Bonusy dodane! - 01");
            SETBONUS_NORDMARRINGS_READY_01 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, NORDMARSET_1H);
        };
        if ((SETBONUS_NORDMARRINGS_COUNT) == (3)) {
            PRINTD("Bonusy dodane! - 02");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_NORDMARRINGS_READY_02 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, NORDMARSET_1H);
        };
    };
}

func void SETBONUS_NORDMARRINGS_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_NORDMARRINGS_READY_01) == (TRUE)) {
            if ((SETBONUS_NORDMARRINGS_COUNT) != (2)) {
                PRINTD("Bonusy zdjête! - 01");
                SETBONUS_NORDMARRINGS_READY_01 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(NORDMARSET_1H));
            };
        };
        if ((SETBONUS_NORDMARRINGS_READY_02) == (TRUE)) {
            if ((SETBONUS_NORDMARRINGS_COUNT) != (3)) {
                PRINTD("Bonusy zdjête! - 02");
                SETBONUS_NORDMARRINGS_READY_02 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_1H, -(NORDMARSET_1H));
            };
        };
    };
}

var int SETBONUS_ARCHOLOSRINGS_COUNT;
var int SETBONUS_ARCHOLOSRINGS_READY_01;
var int SETBONUS_ARCHOLOSRINGS_READY_02;
func void SETBONUS_ARCHOLOSRINGS_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARCHOLOSRINGS_COUNT) == (2)) {
            PRINTD("Bonusy dodane! - 01");
            SETBONUS_ARCHOLOSRINGS_READY_01 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, ARCHOLOSSET_CROSSBOW);
        };
        if ((SETBONUS_ARCHOLOSRINGS_COUNT) == (3)) {
            PRINTD("Bonusy dodane! - 02");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_ARCHOLOSRINGS_READY_02 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, ARCHOLOSSET_CROSSBOW);
        };
    };
}

func void SETBONUS_ARCHOLOSRINGS_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_ARCHOLOSRINGS_READY_01) == (TRUE)) {
            if ((SETBONUS_ARCHOLOSRINGS_COUNT) != (2)) {
                PRINTD("Bonusy zdjête! - 01");
                SETBONUS_ARCHOLOSRINGS_READY_01 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, -(ARCHOLOSSET_CROSSBOW));
            };
        };
        if ((SETBONUS_ARCHOLOSRINGS_READY_02) == (TRUE)) {
            if ((SETBONUS_ARCHOLOSRINGS_COUNT) != (3)) {
                PRINTD("Bonusy zdjête! - 02");
                SETBONUS_ARCHOLOSRINGS_READY_02 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_CROSSBOW, -(ARCHOLOSSET_CROSSBOW));
            };
        };
    };
}

var int SETBONUS_MYRTANARINGS_COUNT;
var int SETBONUS_MYRTANARINGS_READY_01;
var int SETBONUS_MYRTANARINGS_READY_02;
func void SETBONUS_MYRTANARINGS_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MYRTANARINGS_COUNT) == (2)) {
            PRINTD("Bonusy dodane! - 01");
            SETBONUS_MYRTANARINGS_READY_01 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, MYRTANASET_BOW);
        };
        if ((SETBONUS_MYRTANARINGS_COUNT) == (3)) {
            PRINTD("Bonusy dodane! - 02");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_MYRTANARINGS_READY_02 = TRUE;
            B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, MYRTANASET_BOW);
        };
    };
}

func void SETBONUS_MYRTANARINGS_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_MYRTANARINGS_READY_01) == (TRUE)) {
            if ((SETBONUS_MYRTANARINGS_COUNT) != (2)) {
                PRINTD("Bonusy zdjête! - 01");
                SETBONUS_MYRTANARINGS_READY_01 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, -(MYRTANASET_BOW));
            };
        };
        if ((SETBONUS_MYRTANARINGS_READY_02) == (TRUE)) {
            if ((SETBONUS_MYRTANARINGS_COUNT) != (3)) {
                PRINTD("Bonusy zdjête! - 02");
                SETBONUS_MYRTANARINGS_READY_02 = FALSE;
                B_ADDFIGHTSKILL(SELF, NPC_TALENT_BOW, -(MYRTANASET_BOW));
            };
        };
    };
}

var int SETBONUS_THIEF_COUNT;
var int SETBONUS_THIEF_READY_01;
var int SETBONUS_THIEF_READY_02;
var int SETBONUS_THIEF_READY_03;
func void SETBONUS_THIEF_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_THIEF_COUNT) == (1)) {
            PRINTSD("Bonusy dodane! - 01");
            SETBONUS_THIEF_READY_01 = TRUE;
        };
        if ((SETBONUS_THIEF_COUNT) == (2)) {
            PRINTSD("Bonusy dodane! - 02");
            SETBONUS_THIEF_READY_02 = TRUE;
        };
        if ((SETBONUS_THIEF_COUNT) == (3)) {
            PRINTSD("Bonusy dodane! - 03");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_THIEF_READY_03 = TRUE;
        };
        PICKLOCKBONUS = SETBONUS_THIEF_COUNT;
    };
}

func void SETBONUS_THIEF_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_THIEF_READY_01) == (TRUE)) {
            if ((SETBONUS_THIEF_COUNT) != (1)) {
                PRINTSD("Bonusy zdjête! - 01");
                SETBONUS_THIEF_READY_01 = FALSE;
            };
        };
        if ((SETBONUS_THIEF_READY_02) == (TRUE)) {
            if ((SETBONUS_THIEF_COUNT) != (2)) {
                PRINTSD("Bonusy zdjête! - 02");
                SETBONUS_THIEF_READY_02 = FALSE;
            };
        };
        if ((SETBONUS_THIEF_READY_03) == (TRUE)) {
            if ((SETBONUS_THIEF_COUNT) != (3)) {
                PRINTSD("Bonusy zdjête! - 03");
                SETBONUS_THIEF_READY_03 = FALSE;
            };
        };
        PICKLOCKBONUS = SETBONUS_THIEF_COUNT;
    };
}

var int SETBONUS_SUMMONERRINGS_COUNT;
var int SETBONUS_SUMMONERRINGS_READY_01;
var int SETBONUS_SUMMONERRINGS_READY_02;
func void SETBONUS_SUMMONERRINGS_EQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_SUMMONERRINGS_COUNT) == (2)) {
            PRINTD("Bonusy dodane! - 01");
            SETBONUS_SUMMONERRINGS_READY_01 = TRUE;
            SUMMONER_SETBONUS_DEF = (SUMMONER_SETBONUS_DEF) + (SUMMONERSET_DEF);
        };
        if ((SETBONUS_SUMMONERRINGS_COUNT) == (3)) {
            PRINTD("Bonusy dodane! - 02");
            GAMESERVICES_UNLOCKACHIEVEMENT(ACH_38);
            SETBONUS_SUMMONERRINGS_READY_02 = TRUE;
            SUMMONER_SETBONUS_DEF = (SUMMONER_SETBONUS_DEF) + (SUMMONERSET_DEF);
        };
    };
}

func void SETBONUS_SUMMONERRINGS_UNEQUIP() {
    if ((SELF.ID) == (0)) {
        if ((SETBONUS_SUMMONERRINGS_READY_01) == (TRUE)) {
            if ((SETBONUS_SUMMONERRINGS_COUNT) != (2)) {
                PRINTD("Bonusy zdjête! - 01");
                SETBONUS_SUMMONERRINGS_READY_01 = FALSE;
                SUMMONER_SETBONUS_DEF = (SUMMONER_SETBONUS_DEF) - (SUMMONERSET_DEF);
            };
        };
        if ((SETBONUS_SUMMONERRINGS_READY_02) == (TRUE)) {
            if ((SETBONUS_SUMMONERRINGS_COUNT) != (3)) {
                PRINTD("Bonusy zdjête! - 02");
                SETBONUS_SUMMONERRINGS_READY_02 = FALSE;
                SUMMONER_SETBONUS_DEF = (SUMMONER_SETBONUS_DEF) - (SUMMONERSET_DEF);
            };
        };
    };
}

