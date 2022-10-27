func void NATHANIEL_ATTACK() {
    SQ305_NATHANIELATTACKHERO = 1;
    B_IMMEDIATEATTACKPLAYER(VLK_6409_NATHANIEL, AR_KILL);
}

func void JORNHOUSE_OPEN() {
    if ((Q405_LEVER) == (0)) {
        Q405_LEVER = 1;
        PRINTD("Mo¿na uciec");
    };
}

func void JORNHOUSE_CLOSE() {
    if ((Q405_LEVER) == (1)) {
        Q405_LEVER = 0;
        PRINTD("Nie mo¿na uciec");
    };
}

func void LEVER_S1() {
    HER = HLP_GETNPC(0xc3ab);
    if ((HLP_GETINSTANCEID(SELF)) == (HLP_GETINSTANCEID(HER))) {
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "KM_NATHANIEL_HOUSE_27")) {
            if ((((NPC_ISDEAD(VLK_6409_NATHANIEL)) == (FALSE)) && ((KAPITEL) >= (3))) && ((SQ305_MARVINCANUSEBLAKELEVER) != (2))) {
                B_STARTOTHERROUTINE(VLK_6409_NATHANIEL, FOLLOW);
                NPC_REFRESH(VLK_6409_NATHANIEL);
                NATHANIEL_ATTACK();
            };
        };
        if (HLP_STRCMP(NPC_GETNEARESTWP(HERO), "SLUMS_HOUSE17_LEVER")) {
            if ((Q405_LEVER) == (0)) {
                JORNHOUSE_OPEN();
            } else {
                JORNHOUSE_CLOSE();
            };
        };
    };
}

instance LEVER_S1.HER(C_NPC)
func void LEVER_S0() {
    HERO.AIVAR[4] = FALSE;
    B_ENDPRODUCTIONDIALOG();
}

