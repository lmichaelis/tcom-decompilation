func void EVT_QM305_THIEFCHECK() {
    if (NPC_KNOWSINFO(HERO, 86469)) {
        if ((QM305_CHECKTHIEF) == (FALSE)) {
            PRINTD("O ty z³odzieju...");
            QM305_CHECKTHIEF = TRUE;
            if ((QM305_GAMALINSEWERS) != (5)) {
                B_STARTOTHERROUTINE(DJG_13679_GAMAL_SEWERS, "QM305_FOLLOW");
                NPC_REFRESH(DJG_13679_GAMAL_SEWERS);
            };
        };
    };
}

