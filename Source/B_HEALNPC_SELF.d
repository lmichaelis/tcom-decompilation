func void B_HEALNPC_SELF() {
    if ((SELF.ATTRIBUTE[0]) != (SELF.ATTRIBUTE[1])) {
        SELF.ATTRIBUTE[0] = SELF.ATTRIBUTE[1];
    };
}

func void B_HEALNPC_OTHER() {
    if ((OTHER.ATTRIBUTE[0]) != (OTHER.ATTRIBUTE[1])) {
        OTHER.ATTRIBUTE[0] = OTHER.ATTRIBUTE[1];
    };
}

