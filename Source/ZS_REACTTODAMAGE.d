func void ZS_REACTTODAMAGE() {
    if (ISHEROINVISIBLE()) {
        return;
    };
    PERCEPTION_SET_NORMAL();
    B_LOOKATNPC(SELF, OTHER);
    B_SELECTWEAPON(SELF, OTHER);
    B_TURNTONPC(SELF, OTHER);
    B_SAY(SELF, OTHER, "$WHATAREYOUDOING");
    SELF.AIVAR[68] = 0;
}

func int ZS_REACTTODAMAGE_LOOP() {
    if (ISHEROINVISIBLE()) {
        return LOOP_END;
    };
    if ((NPC_GETSTATETIME(SELF)) > (SELF.AIVAR[68])) {
        if (!(NPC_CANSEENPC(SELF, OTHER))) {
            AI_TURNTONPC(SELF, OTHER);
        };
        SELF.AIVAR[68] = (SELF.AIVAR[68]) + (1);
    };
    if ((NPC_GETSTATETIME(SELF)) > (10)) {
        return LOOP_END;
    };
    return LOOP_CONTINUE;
}

func void ZS_REACTTODAMAGE_END() {
    AI_REMOVEWEAPON(SELF);
    B_STOPLOOKAT(SELF);
}

