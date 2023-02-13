func void ZS_HEALSELF() {
    PERCEPTION_SET_MINIMAL();
}

func int ZS_HEALSELF_LOOP() {
    if ((SELF.ATTRIBUTE[0]) == (SELF.ATTRIBUTE[1])) {
        NPC_CLEARAIQUEUE(SELF);
        return LOOP_END;
    };
    if ((NPC_HASITEMS(SELF, 34357)) > (0)) {
        AI_USEITEM(SELF, 34357);
        return LOOP_CONTINUE;
    };
    if ((NPC_HASITEMS(SELF, 34354)) > (0)) {
        AI_USEITEM(SELF, 34354);
        return LOOP_CONTINUE;
    };
    if ((NPC_HASITEMS(SELF, 34352)) > (0)) {
        AI_USEITEM(SELF, 34352);
        return LOOP_CONTINUE;
    };
    NPC_CLEARAIQUEUE(SELF);
    return LOOP_END;
}

func void ZS_HEALSELF_END() {
}

