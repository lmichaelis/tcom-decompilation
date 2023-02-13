func void AI_FUNCTION(var C_NPC SLF, var func FUNCTION) {
    _AI_FUNCTION(SLF, INTTOSTRING(MEM_GETFUNCID(11012)));
}

func void AI_FUNCTION_S(var C_NPC SLF, var func FUNCTION, var string PARAM) {
    var int S;
    S = SB_NEW();
    SB("S ");
    SB(STR_ESCAPE(PARAM));
    SB(" ");
    SBI(MEM_GETFUNCID(11026));
    _AI_FUNCTION(SLF, SB_TOSTRING());
    SB_DESTROY();
}

func void AI_FUNCTION_NSII(var C_NPC SLF, var func FUNCTION, var int PARAM1, var string PARAM2, var int PARAM3, var int PARAM4) {
    var int S;
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
    SBI(MEM_GETFUNCID(11049));
    _AI_FUNCTION(SLF, SB_TOSTRING());
    SB_DESTROY();
}

