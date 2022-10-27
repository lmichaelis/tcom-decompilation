func void TEACHER_LOGENTRY_PAULUS() {
    if ((TEACHER_LOGENTRY_SILBACH_PAULUS) == (FALSE)) {
        TEACHER_LOGENTRY_SILBACH_PAULUS = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTEACHER, LOG_TEACHER_SILBACH_PAULUS);
    };
}

func void TEACHER_LOGENTRY_FOLKARD() {
    if ((TEACHER_LOGENTRY_SILBACH_FOLKARD) == (FALSE)) {
        TEACHER_LOGENTRY_SILBACH_FOLKARD = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTEACHER, LOG_TEACHER_SILBACH_FOLKARD);
    };
}

func void TEACHER_LOGENTRY_MARKUS() {
    if ((TEACHER_LOGENTRY_SILBACH_MARKUS) == (FALSE)) {
        TEACHER_LOGENTRY_SILBACH_MARKUS = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTEACHER, LOG_TEACHER_SILBACH_MARKUS);
    };
}

func void TEACHER_LOGENTRY_KIPPER() {
    if ((TEACHER_LOGENTRY_SILBACH_KIPPER) == (FALSE)) {
        TEACHER_LOGENTRY_SILBACH_KIPPER = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTEACHER, LOG_TEACHER_SILBACH_KIPPER);
    };
}

func void TEACHER_LOGENTRY_STONE() {
    if ((TEACHER_LOGENTRY_SILBACH_STONE) == (FALSE)) {
        TEACHER_LOGENTRY_SILBACH_STONE = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTEACHER, LOG_TEACHER_SILBACH_STONE);
    };
}

func void TRADER_LOGENTRY_BASTIAN() {
    if ((TRADER_LOGENTRY_SILBACH_BASTIAN) == (FALSE)) {
        TRADER_LOGENTRY_SILBACH_BASTIAN = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTRADER, LOG_TRADER_SILBACH_BASTIAN);
    };
}

func void TRADER_LOGENTRY_THORSTEN() {
    if ((TRADER_LOGENTRY_SILBACH_THORSTEN) == (FALSE)) {
        TRADER_LOGENTRY_SILBACH_THORSTEN = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTRADER, LOG_TRADER_SILBACH_THORSTEN);
    };
}

func void TRADER_LOGENTRY_MARKUS() {
    if ((TRADER_LOGENTRY_SILBACH_MARKUS) == (FALSE)) {
        TRADER_LOGENTRY_SILBACH_MARKUS = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTRADER, LOG_TRADER_SILBACH_MARKUS);
    };
}

func void TRADER_LOGENTRY_LOKVAR() {
    if ((TRADER_LOGENTRY_SILBACH_LOKVAR) == (FALSE)) {
        TRADER_LOGENTRY_SILBACH_LOKVAR = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTRADER, LOG_TRADER_SILBACH_LOKVAR);
    };
}

func void TRADER_LOGENTRY_REMY() {
    if ((TRADER_LOGENTRY_SILBACH_REMY) == (FALSE)) {
        TRADER_LOGENTRY_SILBACH_REMY = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTRADER, LOG_TRADER_SILBACH_REMY);
    };
}

func void TRADER_LOGENTRY_PAOLA() {
    if ((TRADER_LOGENTRY_SILBACH_PAOLA) == (FALSE)) {
        TRADER_LOGENTRY_SILBACH_PAOLA = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTRADER, LOG_TRADER_SILBACH_PAOLA);
    };
}

func void TRADER_LOGENTRY_CARDEN() {
    if ((TRADER_LOGENTRY_SILBACH_CARDEN) == (FALSE)) {
        TRADER_LOGENTRY_SILBACH_CARDEN = TRUE;
        LOG_CREATETOPIC(TOPIC_SILBACHTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_SILBACHTRADER, LOG_TRADER_SILBACH_CARDEN);
    };
}

func void TEACHER_SILBACH_LOGENTRY_TRADE() {
    TRADER_LOGENTRY_BASTIAN();
    TRADER_LOGENTRY_THORSTEN();
    TRADER_LOGENTRY_MARKUS();
    TRADER_LOGENTRY_LOKVAR();
    TRADER_LOGENTRY_REMY();
    TRADER_LOGENTRY_PAOLA();
    TRADER_LOGENTRY_CARDEN();
}

func void TEACHER_LOGENTRY_NORMAN() {
    if ((TEACHER_LOGENTRY_CITY_NORMAN) == (FALSE)) {
        TEACHER_LOGENTRY_CITY_NORMAN = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTEACHER, LOG_TEACHER_CITY_NORMAN);
    };
}

func void TEACHER_LOGENTRY_ODGAR() {
    if ((TEACHER_LOGENTRY_CITY_ODGAR) == (FALSE)) {
        TEACHER_LOGENTRY_CITY_ODGAR = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTEACHER, LOG_TEACHER_CITY_ODGAR);
    };
}

func void TEACHER_LOGENTRY_ALLAN() {
    if ((TEACHER_LOGENTRY_CITY_ALLAN) == (FALSE)) {
        TEACHER_LOGENTRY_CITY_ALLAN = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTEACHER, LOG_CITYTEACHER_ALLAN);
    };
}

func void TEACHER_LOGENTRY_NIRKA() {
    if ((TEACHER_LOGENTRY_CITY_NIRKA) == (FALSE)) {
        TEACHER_LOGENTRY_CITY_NIRKA = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTEACHER, LOG_CITYTEACHER_NIRKA);
    };
}

func void TEACHER_LOGENTRY_DACK() {
    if ((TEACHER_LOGENTRY_CITY_DACK) == (FALSE)) {
        TEACHER_LOGENTRY_CITY_DACK = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTEACHER, LOG_TEACHCITY_DACK);
    };
}

func void TEACHER_LOGENTRY_PATRACJAN() {
    if ((TEACHER_LOGENTRY_CITY_PATRACJAN) == (FALSE)) {
        TEACHER_LOGENTRY_CITY_PATRACJAN = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTEACHER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTEACHER, LOG_CITYTEACHER_PATRACJAN);
    };
}

func void TEACHER_LOGENTRY_MUSEUM() {
    if ((TEACHER_LOGENTRY_CITY_MUSEUM) == (FALSE)) {
        TEACHER_LOGENTRY_CITY_MUSEUM = TRUE;
        LOG_CREATETOPIC(TOPIC_BARTER, LOG_NOTE);
        B_LOGENTRY(TOPIC_BARTER, LOG_CITYBARTER_MIRON);
    };
}

func void TRADER_LOGENTRY_FRIDA() {
    if ((TRADER_LOGENTRY_CITY_FRIDA) == (FALSE)) {
        TRADER_LOGENTRY_CITY_FRIDA = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_FRIDA);
    };
}

func void TRADER_LOGENTRY_THOMAS() {
    if ((TRADER_LOGENTRY_CITY_THOMAS) == (FALSE)) {
        TRADER_LOGENTRY_CITY_THOMAS = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_THOMAS);
    };
}

func void TRADER_LOGENTRY_HERSHLIK() {
    if ((TRADER_LOGENTRY_CITY_HERSHLIK) == (FALSE)) {
        TRADER_LOGENTRY_CITY_HERSHLIK = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_HERSHLIK);
    };
}

func void TRADER_LOGENTRY_TAILOR() {
    if ((TRADER_LOGENTRY_CITY_TAILOR) == (FALSE)) {
        TRADER_LOGENTRY_CITY_TAILOR = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_TAILOR);
    };
}

func void TRADER_LOGENTRY_ODGAR() {
    if ((TRADER_LOGENTRY_CITY_ODGAR) == (FALSE)) {
        TRADER_LOGENTRY_CITY_ODGAR = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_ODGAR);
    };
}

func void TRADER_LOGENTRY_ARMORSELLER() {
    if ((TRADER_LOGENTRY_CITY_ARMORSELLER) == (FALSE)) {
        TRADER_LOGENTRY_CITY_ARMORSELLER = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_ARMORSELLER);
    };
}

func void TRADER_LOGENTRY_DAVIS() {
    if ((TRADER_LOGENTRY_CITY_DAVIS) == (FALSE)) {
        TRADER_LOGENTRY_CITY_DAVIS = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_DAVIS);
    };
}

func void TRADER_LOGENTRY_SLAGER() {
    if ((TRADER_LOGENTRY_CITY_SLAGER) == (FALSE)) {
        TRADER_LOGENTRY_CITY_SLAGER = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_SLAGER);
    };
}

func void TRADER_LOGENTRY_ARMOR() {
    if ((TRADER_LOGENTRY_CITY_ARMOR) == (FALSE)) {
        TRADER_LOGENTRY_CITY_ARMOR = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_ARMOR);
    };
}

func void TRADER_LOGENTRY_SISTERS() {
    if ((TRADER_LOGENTRY_CITY_SISTERS) == (FALSE)) {
        TRADER_LOGENTRY_CITY_SISTERS = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_SISTERS);
    };
}

func void TRADER_LOGENTRY_MUSEUM() {
    if ((TRADER_LOGENTRY_CITY_MUSEUM) == (FALSE)) {
        TRADER_LOGENTRY_CITY_MUSEUM = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_MUSEUM);
    };
}

func void TRADER_LOGENTRY_FIGARO() {
    if ((TRADER_LOGENTRY_CITY_FIGARO) == (FALSE)) {
        TRADER_LOGENTRY_CITY_FIGARO = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_FIGARO);
    };
}

func void TRADER_LOGENTRY_WENZEL() {
    if ((TRADER_LOGENTRY_CITY_WENZEL) == (FALSE)) {
        TRADER_LOGENTRY_CITY_WENZEL = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_CITY_WENZEL);
    };
}

func void TRADER_CITY_LOGENTRY_TRADE() {
    TRADER_LOGENTRY_FRIDA();
    TRADER_LOGENTRY_THOMAS();
    TRADER_LOGENTRY_HERSHLIK();
    TRADER_LOGENTRY_TAILOR();
    TRADER_LOGENTRY_ODGAR();
    TRADER_LOGENTRY_DAVIS();
    TRADER_LOGENTRY_SLAGER();
    TRADER_LOGENTRY_ARMOR();
    TRADER_LOGENTRY_SISTERS();
    TRADER_LOGENTRY_FIGARO();
    TRADER_LOGENTRY_WENZEL();
}

func void TRADER_LOGENTRY_DACK() {
    if ((TRADER_LOGENTRY_HARBOUR_DACK) == (FALSE)) {
        TRADER_LOGENTRY_HARBOUR_DACK = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_HARBOUR_DACK);
    };
}

func void TRADER_LOGENTRY_BOW() {
    if ((TRADER_LOGENTRY_HARBOUR_BOW) == (FALSE)) {
        TRADER_LOGENTRY_HARBOUR_BOW = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_HARBOUR_BOW);
    };
}

func void TRADER_LOGENTRY_ALICE() {
    if ((TRADER_LOGENTRY_HARBOUR_ALICE) == (FALSE)) {
        TRADER_LOGENTRY_HARBOUR_ALICE = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_HARBOUR_ALICE);
    };
}

func void TRADER_LOGENTRY_LUDWIG() {
    if ((TRADER_LOGENTRY_HARBOUR_LUDWIG) == (FALSE)) {
        TRADER_LOGENTRY_HARBOUR_LUDWIG = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_HARBOUR_LUDWIG);
    };
}

func void TRADER_LOGENTRY_WALTER() {
    if ((TRADER_LOGENTRY_HARBOUR_WALTER) == (FALSE)) {
        TRADER_LOGENTRY_HARBOUR_WALTER = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_HARBOUR_WALTER);
    };
}

func void TRADER_LOGENTRY_VLADA() {
    if ((TRADER_LOGENTRY_HARBOUR_VLADA) == (FALSE)) {
        TRADER_LOGENTRY_HARBOUR_VLADA = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_VLADA);
    };
}

func void TRADER_HARBOUR_LOGENTRY_TRADE() {
    TRADER_LOGENTRY_DACK();
    TRADER_LOGENTRY_BOW();
    TRADER_LOGENTRY_ALICE();
    TRADER_LOGENTRY_LUDWIG();
    TRADER_LOGENTRY_WALTER();
    TRADER_LOGENTRY_VLADA();
}

func void TRADER_LOGENTRY_SUSANNE() {
    if ((TRADER_LOGENTRY_OLDCITY_SUSANNE) == (FALSE)) {
        TRADER_LOGENTRY_OLDCITY_SUSANNE = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_OLDCITY_SUSANNE);
    };
}

func void TRADER_LOGENTRY_NIKOLAS() {
    if ((TRADER_LOGENTRY_OLDCITY_NIKOLAS) == (FALSE)) {
        TRADER_LOGENTRY_OLDCITY_NIKOLAS = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_OLDCITY_NIKOLAS);
    };
}

func void TRADER_LOGENTRY_ERNESTO() {
    if ((TRADER_LOGENTRY_OLDCITY_ERNESTO) == (FALSE)) {
        TRADER_LOGENTRY_OLDCITY_ERNESTO = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_OLDCITY_ERNESTO);
    };
}

func void TRADER_LOGENTRY_KATRINA() {
    if ((TRADER_LOGENTRY_OLDCITY_KATRINA) == (FALSE)) {
        TRADER_LOGENTRY_OLDCITY_KATRINA = TRUE;
        LOG_CREATETOPIC(TOPIC_CITYTRADER, LOG_NOTE);
        B_LOGENTRY(TOPIC_CITYTRADER, LOG_TRADER_OLDCITY_KATRINA);
    };
}

func void TRADER_OLDCITY_LOGENTRY_TRADE() {
    TRADER_LOGENTRY_SUSANNE();
    TRADER_LOGENTRY_NIKOLAS();
    TRADER_LOGENTRY_KATRINA();
}

func void EXTRACTION_TEACHSOMEMORE_LOGENTRY() {
    if ((EXTRACTION_TEACHSOMEMORE_LOGENTRY_CHECK) == (FALSE)) {
        EXTRACTION_TEACHSOMEMORE_LOGENTRY_CHECK = TRUE;
        LOG_CREATETOPIC(TOPIC_EXTRACTION, LOG_NOTE);
        B_LOGENTRY(TOPIC_EXTRACTION, LOG_EXTRACTION_TEACHSOMEMORE);
    };
}

var int EXTRACTION_TEACHSOMEMORE_LOGENTRY.EXTRACTION_TEACHSOMEMORE_LOGENTRY_CHECK = 0;
func void FASTTRAVEL_CITYGUIDES_LOGENTRY() {
    if ((FASTTRAVEL_CITYGUIDES_LOGENTRY_CHECK) == (FALSE)) {
        FASTTRAVEL_CITYGUIDES_LOGENTRY_CHECK = TRUE;
        LOG_CREATETOPIC(TOPIC_FASTTRAVEL, LOG_NOTE);
        B_LOGENTRY(TOPIC_FASTTRAVEL, LOG_FASTTRAVEL_CITYGUIDE);
    };
}

var int FASTTRAVEL_CITYGUIDES_LOGENTRY.FASTTRAVEL_CITYGUIDES_LOGENTRY_CHECK = 0;
func void FASTTRAVEL_ARAXOS_LOGENTRY() {
    if ((FASTTRAVEL_ARAXOS_LOGENTRY_CHECK) == (FALSE)) {
        FASTTRAVEL_ARAXOS_LOGENTRY_CHECK = TRUE;
        LOG_CREATETOPIC(TOPIC_FASTTRAVEL, LOG_NOTE);
        B_LOGENTRY(TOPIC_FASTTRAVEL, LOG_FASTTRAVEL_ARAXOS);
    };
}

func void FASTTRAVEL_FISHERMAN_LOGENTRY() {
    if ((FASTTRAVEL_FISHERMAN_LOGENTRY_CHECK) == (FALSE)) {
        FASTTRAVEL_FISHERMAN_LOGENTRY_CHECK = TRUE;
        LOG_CREATETOPIC(TOPIC_FASTTRAVEL, LOG_NOTE);
        B_LOGENTRY(TOPIC_FASTTRAVEL, LOG_FASTTRAVEL_FISHERS);
    };
}

var int FASTTRAVEL_FISHERMAN_LOGENTRY.FASTTRAVEL_FISHERMAN_LOGENTRY_CHECK = 0;
