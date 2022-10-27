func void ZS_SQ416_OUTOFBATTLE() {
    PERCEPTION_SET_NONE();
    AI_SETWALKMODE(SELF, NPC_RUN);
    SELF.AIVAR[19] = NOTINPOS;
}

func int ZS_SQ416_OUTOFBATTLE_LOOP() {
    if ((SELF.AIVAR[19]) == (NOTINPOS)) {
        AI_PLAYANI(SELF, "T_RAZORFIGHT_LONG");
        SELF.AIVAR[19] = ISINPOS;
    };
    return LOOP_CONTINUE;
}

func void ZS_SQ416_OUTOFBATTLE_END() {
}

