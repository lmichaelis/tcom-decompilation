func void B_ASSESSWARN() {
    if (ISHEROINVISIBLE()) {
        return;
    };
    if ((HLP_GETINSTANCEID(VICTIM)) == (HLP_GETINSTANCEID(SELF))) {
        return;
    };
    if ((NPC_ISINSTATE(SELF, 61594)) || (NPC_ISINSTATE(SELF, 61582))) {
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
    AI_STARTSTATE(SELF, 61582, 0, "");
}

