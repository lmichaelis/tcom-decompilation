func void ZS_HEALSELF() {
    PERCEPTION_SET_MINIMAL();
}

func int ZS_HEALSELF_LOOP() {
    if ((SELF.ATTRIBUTE[0]) == (SELF.ATTRIBUTE[1])) {
        NPC_CLEARAIQUEUE(SELF);
        return LOOP_END;
    };
    if ((NPC_HASITEMS(SELF, 0x8635)) > (0)) {
        AI_USEITEM(SELF, 0x8635);
        return LOOP_CONTINUE;
    };
    if ((NPC_HASITEMS(SELF, 0x8632)) > (0)) {
        AI_USEITEM(SELF, 0x8632);
        return LOOP_CONTINUE;
    };
    if ((NPC_HASITEMS(SELF, 0x8630)) > (0)) {
        AI_USEITEM(SELF, 0x8630);
        return LOOP_CONTINUE;
    };
    NPC_CLEARAIQUEUE(SELF);
    return LOOP_END;
}

func void ZS_HEALSELF_END() {
}

