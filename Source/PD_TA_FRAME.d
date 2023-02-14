const int PD_TA_FRAME = 1;
const int PD_TA_LOOP = 2;
const int PD_TA_CHECK = 3;
const int PD_TA_DETAIL = 4;
const int PD_ZS_FRAME = 6;
const int PD_ZS_LOOP = 7;
const int PD_ZS_CHECK = 8;
const int PD_ZS_DETAIL = 9;
const int PD_MST_FRAME = 11;
const int PD_MST_LOOP = 12;
const int PD_MST_CHECK = 13;
const int PD_MST_DETAIL = 14;
const int PD_ORC_FRAME = 16;
const int PD_ORC_LOOP = 17;
const int PD_ORC_CHECK = 18;
const int PD_ORC_DETAIL = 19;
const int PD_MISSION = 21;
const int PD_CUTSCENE = 22;
const int PD_SPELL = 23;
const int PD_ITEM_MOBSI = 24;
const int PD_MAGIC = 25;
func void PRINTDEBUGS(var string TXT) {
    PRINTDEBUG(SELF.NAME[0]);
    PRINTDEBUG(TXT);
}

func void PRINTDEBUGNPC(var int TYPE, var string TEXT) {
    var string PIPE;
    var string INST_ID;
    var int INSTANCE_ID;
    INSTANCE_ID = SELF.ID;
    INST_ID = INTTOSTRING(INSTANCE_ID);
    PIPE = CONCATSTRINGS("### ", SELF.NAME[0]);
    PIPE = CONCATSTRINGS(PIPE, "(");
    PIPE = CONCATSTRINGS(PIPE, INST_ID);
    PIPE = CONCATSTRINGS(PIPE, ")");
    PIPE = CONCATSTRINGS(PIPE, " ### -> ");
    PIPE = CONCATSTRINGS(PIPE, TEXT);
    PRINTDEBUGINSTCH(TYPE, PIPE);
}

func void PRINTGLOBALS(var int CHANNEL) {
    var string PIPE;
    PRINTDEBUGNPC(CHANNEL, "PrintGlobals");
    if (HLP_ISVALIDNPC(SELF)) {
        PIPE = CONCATSTRINGS("...self:   ", SELF.NAME[0]);
        PRINTDEBUGNPC(CHANNEL, PIPE);
    };
    if (HLP_ISVALIDNPC(OTHER)) {
        PIPE = CONCATSTRINGS("...other:  ", OTHER.NAME[0]);
        PRINTDEBUGNPC(CHANNEL, PIPE);
    };
    if (HLP_ISVALIDNPC(VICTIM)) {
        PIPE = CONCATSTRINGS("...victim: ", VICTIM.NAME[0]);
        PRINTDEBUGNPC(CHANNEL, PIPE);
    };
    if (HLP_ISVALIDNPC(HERO)) {
        PIPE = CONCATSTRINGS("...hero:   ", HERO.NAME[0]);
        PRINTDEBUGNPC(CHANNEL, PIPE);
    };
    if (HLP_ISVALIDITEM(ITEM)) {
        PIPE = CONCATSTRINGS("...item:   ", ITEM.NAME);
        PRINTDEBUGNPC(CHANNEL, PIPE);
    };
}

func void PRINTGUILD(var int CHANNEL, var int GUILD) {
    PRINTDEBUGNPC(CHANNEL, "PrintGuild");
}

func void PRINTATTITUDES(var int CHANNEL) {
    var int PERM_ATTITUDE;
    var int TEMP_ATTITUDE;
    PRINTDEBUGNPC(CHANNEL, "PrintAttitudes");
    TEMP_ATTITUDE = NPC_GETATTITUDE(SELF, HERO);
    PERM_ATTITUDE = NPC_GETPERMATTITUDE(SELF, HERO);
    if ((TEMP_ATTITUDE) == (ATT_HOSTILE)) {
        PRINTDEBUGNPC(CHANNEL, "TempAttitude == ATT_HOSTILE");
    };
    if ((TEMP_ATTITUDE) == (ATT_ANGRY)) {
        PRINTDEBUGNPC(CHANNEL, "TempAttitude == ATT_ANGRY");
    };
    if ((TEMP_ATTITUDE) == (ATT_NEUTRAL)) {
        PRINTDEBUGNPC(CHANNEL, "TempAttitude == ATT_NEUTRAL");
    };
    if ((TEMP_ATTITUDE) == (ATT_FRIENDLY)) {
        PRINTDEBUGNPC(CHANNEL, "TempAttitude == ATT_FRIENDLY");
    };
    if ((PERM_ATTITUDE) == (ATT_HOSTILE)) {
        PRINTDEBUGNPC(CHANNEL, "PermAttitude == ATT_HOSTILE");
    };
    if ((PERM_ATTITUDE) == (ATT_ANGRY)) {
        PRINTDEBUGNPC(CHANNEL, "PermAttitude == ATT_ANGRY");
    };
    if ((PERM_ATTITUDE) == (ATT_NEUTRAL)) {
        PRINTDEBUGNPC(CHANNEL, "PermAttitude == ATT_NEUTRAL");
    };
    if ((PERM_ATTITUDE) == (ATT_FRIENDLY)) {
        PRINTDEBUGNPC(CHANNEL, "PermAttitude == ATT_FRIENDLY");
    };
}

func void PRINTDEBUGINT(var int CHANNEL, var string PRETEXT, var int VALUE) {
    var string PRINTTEXT;
    PRINTTEXT = INTTOSTRING(VALUE);
    PRINTTEXT = CONCATSTRINGS(PRETEXT, PRINTTEXT);
    PRINTDEBUGNPC(CHANNEL, PRINTTEXT);
}

func void PRINTDEBUGSTRING(var int CHANNEL, var string PRETEXT, var string TEXT) {
    PRINTDEBUGNPC(CHANNEL, CONCATSTRINGS(PRETEXT, TEXT));
}

