func void FAQ003_EVERYONEGOTOMARVIN() {
    B_STARTOTHERROUTINE(VLK_3020_TOM, FOLLOW);
    NPC_REFRESH(VLK_3020_TOM);
    B_STARTOTHERROUTINE(VLK_3021_MIKKEL, FOLLOW);
    NPC_REFRESH(VLK_3021_MIKKEL);
    NPC_EXCHANGEROUTINE(VLK_3019_ARNOLD, FOLLOW);
}

func void FAQ003_BRINGBACKRTN() {
    B_STARTOTHERROUTINE(VLK_3020_TOM, START);
    NPC_REFRESH(VLK_3020_TOM);
    B_STARTOTHERROUTINE(VLK_3021_MIKKEL, START);
    NPC_REFRESH(VLK_3021_MIKKEL);
    NPC_EXCHANGEROUTINE(VLK_3019_ARNOLD, START);
}

func void FAQ003_EVERYONEDRINKS() {
    AI_WAIT(VLK_3021_MIKKEL, 1045220557);
    AI_STOPLOOKAT(VLK_3021_MIKKEL);
    CREATEINVITEMS(VLK_3021_MIKKEL, 37152, 1);
    AI_USEITEM(VLK_3021_MIKKEL, 37152);
    AI_WAIT(VLK_3020_TOM, 1053609165);
    AI_STOPLOOKAT(VLK_3020_TOM);
    CREATEINVITEMS(VLK_3020_TOM, 37152, 1);
    AI_USEITEM(VLK_3020_TOM, 37152);
    AI_STOPLOOKAT(VLK_3019_ARNOLD);
    CREATEINVITEMS(VLK_3019_ARNOLD, 37152, 1);
    AI_USEITEM(VLK_3019_ARNOLD, 37152);
}

func void FAQ003_ARNOLDLEAVEINN() {
    PRINTD("Id� sobie");
    NPC_EXCHANGEROUTINE(VLK_3019_ARNOLD, "AfterFAQ003");
    B_STARTOTHERROUTINE(VLK_3020_TOM, "AfterFAQ003");
    NPC_REFRESH(VLK_3020_TOM);
    B_STARTOTHERROUTINE(VLK_3021_MIKKEL, "AfterFAQ003");
    NPC_REFRESH(VLK_3021_MIKKEL);
}

func void FAQ003_ARNOLDLEAVEINN_MDS_TIRED() {
    PRINTD("Smutni :(");
    MDL_APPLYOVERLAYMDSTIMED(VLK_3019_ARNOLD, HUMANSTIREDMDS, 300000);
    MDL_APPLYOVERLAYMDSTIMED(VLK_3020_TOM, HUMANSTIREDMDS, 300000);
    MDL_APPLYOVERLAYMDSTIMED(VLK_3021_MIKKEL, HUMANSTIREDMDS, 300000);
}

func void FAQ003_ARNOLDLEAVEINN_MDS_DRUNK() {
    PRINTD("Pijani :)");
    MDL_APPLYOVERLAYMDSTIMED(VLK_3019_ARNOLD, HUMANSDRUNKENMDS, 900000);
    MDL_APPLYOVERLAYMDSTIMED(VLK_3020_TOM, HUMANSDRUNKENMDS, 900000);
    MDL_APPLYOVERLAYMDSTIMED(VLK_3021_MIKKEL, HUMANSDRUNKENMDS, 900000);
}

func void FQ003_LAUGHTERSOUND() {
    WLD_SENDTRIGGER("FAQ003_LAUGH");
}

func void FAQ003_FLEETAVERN() {
    B_STARTOTHERROUTINE(VLK_3020_TOM, FLEE);
    NPC_REFRESH(VLK_3020_TOM);
    B_STARTOTHERROUTINE(VLK_3021_MIKKEL, FLEE);
    NPC_REFRESH(VLK_3021_MIKKEL);
}

