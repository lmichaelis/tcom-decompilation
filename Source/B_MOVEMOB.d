func void B_MOVEMOB() {
    var string DOOR;
    DOOR = NPC_GETDETECTEDMOB(SELF);
    if (HLP_STRCMP(DOOR, "DOOR")) {
        if ((WLD_GETMOBSTATE(SELF, DOOR)) == (0)) {
            NPC_CLEARAIQUEUE(SELF);
            AI_USEMOB(SELF, DOOR, 1);
            AI_USEMOB(SELF, DOOR, -(1));
        };
    };
}

