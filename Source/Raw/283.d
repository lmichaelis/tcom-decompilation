func void B_STANDUP() {
    if (C_BODYSTATECONTAINS(SELF, BS_SIT)) {
        AI_WAITTILLEND(OTHER, SELF);
        AI_WAITTILLEND(SELF, OTHER);
        AI_USEMOB(SELF, NPC_GETDETECTEDMOB(SELF), -(1));
        AI_STANDUP(SELF);
        AI_TURNTONPC(SELF, OTHER);
        AI_WAITTILLEND(OTHER, SELF);
        AI_TURNTONPC(OTHER, SELF);
    };
    AI_WAITTILLEND(OTHER, SELF);
    AI_WAITTILLEND(SELF, OTHER);
    AI_STANDUPQUICK(SELF);
    AI_TURNTONPC(SELF, OTHER);
    AI_WAITTILLEND(OTHER, SELF);
    AI_TURNTONPC(OTHER, SELF);
}

