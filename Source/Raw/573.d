func void ZS_CIRCLE() {
    PERCEPTION_SET_NORMAL();
    B_RESETALL(SELF);
    NPC_SETPERCTIME(SELF, 0x3e99999a);
    AI_STANDUP(SELF);
    AI_SETWALKMODE(SELF, NPC_WALK);
    AI_GOTOWP(SELF, SELF.WP);
    AI_ALIGNTOWP(SELF);
}

func int ZS_CIRCLE_LOOP() {
    if ((SELF.GUILD) == (GIL_DMT)) {
        RANDY = HLP_RANDOM(0xbb8);
        if ((NPC_GETSTATETIME(SELF)) > (RANDY)) {
            WLD_PLAYEFFECT("FX_EarthQuake", SELF, SELF, 0, 0, 0, FALSE);
            NPC_SETSTATETIME(SELF, 0);
            WLD_PLAYEFFECT("spellFX_INCOVATION_RED", SELF, SELF, 0, 0, 0, FALSE);
            AI_PLAYANI(SELF, "T_PRACTICEMAGIC5");
        };
    };
    return LOOP_CONTINUE;
}

var int ZS_CIRCLE_LOOP.RANDY = 0;
var int ZS_CIRCLE_LOOP.RANDYKDW = 0;
var int ZS_CIRCLE_LOOP.RANDYKDW_LIGHTSTAR = 0;
func void ZS_CIRCLE_END() {
}

