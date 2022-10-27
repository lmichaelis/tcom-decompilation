func void _AI_FUNCTION(var C_NPC SLF, var string FNC) {
    if (!(HLP_ISVALIDNPC(SLF))) {
        SYM = _^(MEM_READINTARRAY(CONTENTSYMBOLTABLEADDRESS, STR_TOINT(FNC)));
        MEM_WARN(CONCATSTRINGS("_AI_Function: Invalid npc. func: ", SYM.NAME));
        return;
    };
    AI_PLAYANI(SLF, CONCATSTRINGS("CALL ", FNC));
}

instance _AI_FUNCTION.SYM(ZCPAR_SYMBOL)
func void AI_FUNCTION(var C_NPC SLF, var func FUNCTION) {
    _AI_FUNCTION(SLF, INTTOSTRING(MEM_GETFUNCID(0x2b04)));
}

func void AI_FUNCTION_I(var C_NPC SLF, var func FUNCTION, var int PARAM) {
    S = SB_NEW();
    SB("I ");
    SBI(PARAM);
    SB(" ");
    SBI(MEM_GETFUNCID(0x2b07));
    _AI_FUNCTION(SLF, SB_TOSTRING());
    SB_DESTROY();
}

var int AI_FUNCTION_I.S = 0;
func void AI_FUNCTION_II(var C_NPC SLF, var func FUNCTION, var int PARAM1, var int PARAM2) {
    S = SB_NEW();
    SB("II ");
    SBI(PARAM1);
    SB(" ");
    SBI(PARAM2);
    SB(" ");
    SBI(MEM_GETFUNCID(0x2b0c));
    _AI_FUNCTION(SLF, SB_TOSTRING());
    SB_DESTROY();
}

var int AI_FUNCTION_II.S = 0;
func void AI_FUNCTION_S(var C_NPC SLF, var func FUNCTION, var string PARAM) {
    S = SB_NEW();
    SB("S ");
    SB(STR_ESCAPE(PARAM));
    SB(" ");
    SBI(MEM_GETFUNCID(0x2b12));
    _AI_FUNCTION(SLF, SB_TOSTRING());
    SB_DESTROY();
}

var int AI_FUNCTION_S.S = 0;
func void AI_FUNCTION_SS(var C_NPC SLF, var func FUNCTION, var string PARAM1, var string PARAM2) {
    S = SB_NEW();
    SB("SS ");
    SB(STR_ESCAPE(PARAM1));
    SB(" ");
    SB(STR_ESCAPE(PARAM2));
    SB(" ");
    SBI(MEM_GETFUNCID(0x2b17));
    _AI_FUNCTION(SLF, SB_TOSTRING());
    SB_DESTROY();
}

var int AI_FUNCTION_SS.S = 0;
func void AI_FUNCTION_SI(var C_NPC SLF, var func FUNCTION, var string PARAM1, var int PARAM2) {
    S = SB_NEW();
    SB("SI ");
    SB(STR_ESCAPE(PARAM1));
    SB(" ");
    SBI(PARAM2);
    SB(" ");
    SBI(MEM_GETFUNCID(0x2b1d));
    _AI_FUNCTION(SLF, SB_TOSTRING());
    SB_DESTROY();
}

var int AI_FUNCTION_SI.S = 0;
func void AI_FUNCTION_IS(var C_NPC SLF, var func FUNCTION, var int PARAM1, var string PARAM2) {
    S = SB_NEW();
    SB("IS ");
    SBI(PARAM1);
    SB(" ");
    SB(STR_ESCAPE(PARAM2));
    SB(" ");
    SBI(MEM_GETFUNCID(0x2b23));
    _AI_FUNCTION(SLF, SB_TOSTRING());
    SB_DESTROY();
}

var int AI_FUNCTION_IS.S = 0;
func void AI_FUNCTION_NSII(var C_NPC SLF, var func FUNCTION, var int PARAM1, var string PARAM2, var int PARAM3, var int PARAM4) {
    S = SB_NEW();
    SB("NSII ");
    SBI(PARAM1);
    SB(" ");
    SB(STR_ESCAPE(PARAM2));
    SB(" ");
    SBI(PARAM3);
    SB(" ");
    SBI(PARAM4);
    SB(" ");
    SBI(MEM_GETFUNCID(0x2b29));
    _AI_FUNCTION(SLF, SB_TOSTRING());
    SB_DESTROY();
}

var int AI_FUNCTION_NSII.S = 0;
func void _AI_FUNCTION_EVENT() {
    PTR = (EBP) + (88);
    MEMINT_STACKPUSHVAR(PTR);
    ANINAME = MEMINT_POPSTRING();
    if (!(STR_STARTSWITH(ANINAME, "CALL "))) {
        return;
    };
    ARGC = STR_SPLIT(ANINAME, " ", 1);
    if (HLP_STRCMP(ARGC, "I")) {
        I0 = STR_TOINT(STR_SPLIT(ANINAME, " ", 2));
        FNC = STR_TOINT(STR_SPLIT(ANINAME, " ", 3));
        MEM_PUSHINTPARAM(I0);
    };
    if (HLP_STRCMP(ARGC, "S")) {
        S0 = STR_UNESCAPE(STR_SPLIT(ANINAME, " ", 2));
        FNC = STR_TOINT(STR_SPLIT(ANINAME, " ", 3));
        MEM_PUSHSTRINGPARAM(S0);
    };
    if (HLP_STRCMP(ARGC, "II")) {
        I0 = STR_TOINT(STR_SPLIT(ANINAME, " ", 2));
        I1 = STR_TOINT(STR_SPLIT(ANINAME, " ", 3));
        FNC = STR_TOINT(STR_SPLIT(ANINAME, " ", 4));
        MEM_PUSHINTPARAM(I0);
        MEM_PUSHINTPARAM(I1);
    };
    if (HLP_STRCMP(ARGC, "SS")) {
        S0 = STR_UNESCAPE(STR_SPLIT(ANINAME, " ", 2));
        S1 = STR_UNESCAPE(STR_SPLIT(ANINAME, " ", 3));
        FNC = STR_TOINT(STR_SPLIT(ANINAME, " ", 4));
        MEM_PUSHSTRINGPARAM(S0);
        MEM_PUSHSTRINGPARAM(S1);
    };
    if (HLP_STRCMP(ARGC, "SI")) {
        S0 = STR_UNESCAPE(STR_SPLIT(ANINAME, " ", 2));
        I1 = STR_TOINT(STR_SPLIT(ANINAME, " ", 3));
        FNC = STR_TOINT(STR_SPLIT(ANINAME, " ", 4));
        MEM_PUSHSTRINGPARAM(S0);
        MEM_PUSHINTPARAM(I1);
    };
    if (HLP_STRCMP(ARGC, "IS")) {
        I0 = STR_TOINT(STR_SPLIT(ANINAME, " ", 2));
        S1 = STR_UNESCAPE(STR_SPLIT(ANINAME, " ", 3));
        FNC = STR_TOINT(STR_SPLIT(ANINAME, " ", 4));
        MEM_PUSHINTPARAM(I0);
        MEM_PUSHSTRINGPARAM(S1);
    };
    if (HLP_STRCMP(ARGC, "NSII")) {
        I0 = STR_TOINT(STR_SPLIT(ANINAME, " ", 2));
        S1 = STR_UNESCAPE(STR_SPLIT(ANINAME, " ", 3));
        I1 = STR_TOINT(STR_SPLIT(ANINAME, " ", 4));
        I2 = STR_TOINT(STR_SPLIT(ANINAME, " ", 5));
        FNC = STR_TOINT(STR_SPLIT(ANINAME, " ", 6));
        NPC = HLP_GETNPC(I0);
        INTENSITY = 0;
        HOLDTIME = 0;
        MDL_STARTFACEANI(NPC, S1, INTENSITY, HOLDTIME);
        return;
    };
    FNC = STR_TOINT(ARGC);
    MEM_CALLBYID(FNC);
}

var string _AI_FUNCTION_EVENT.S0 = "";
var string _AI_FUNCTION_EVENT.S1 = "";
var int _AI_FUNCTION_EVENT.I0 = 0;
var int _AI_FUNCTION_EVENT.I1 = 0;
var int _AI_FUNCTION_EVENT.I2 = 0;
var int _AI_FUNCTION_EVENT.FNC = 0;
var int _AI_FUNCTION_EVENT.PTR = 0;
var string _AI_FUNCTION_EVENT.ANINAME = "";
var string _AI_FUNCTION_EVENT.ARGC = "";
instance _AI_FUNCTION_EVENT.NPC(C_NPC)
var float _AI_FUNCTION_EVENT.INTENSITY = 0;
var float _AI_FUNCTION_EVENT.HOLDTIME = 0;
