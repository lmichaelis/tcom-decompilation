func void B_ASSESSWARN() {
    if (ISHEROINVISIBLE()) {
        return;
    };
    if ((HLP_GETINSTANCEID(VICTIM)) == (HLP_GETINSTANCEID(SELF))) {
        return;
    };
    if ((NPC_ISINSTATE(SELF, 0xf09a)) || (NPC_ISINSTATE(SELF, 0xf08e))) {
        return;
    };
    if ((OTHER.GUILD) > (GIL_SEPERATOR_HUM)) {
        return;
    };
    if (C_NPCISGATEGUARD(SELF)) {
        return;
    };
    NPC_CLEARAIQUEUE(SELF);
    B_CLEARPERCEPTIONS(SELF);
    AI_STARTSTATE(SELF, 0xf08e, 0, "");
}

