instance Q108_MEETING(CUTSCENE) {
    ONSTART = FUNCTION(92425);
}

func void Q108_MEETING_WAIT() {
    AI_WAITTILLEND(NONE_1_JORN, BAU_701_KURT);
    AI_WAITTILLEND(NONE_1_JORN, HERO);
    AI_WAITTILLEND(BAU_701_KURT, NONE_1_JORN);
    AI_WAITTILLEND(BAU_701_KURT, HERO);
    AI_WAITTILLEND(HERO, BAU_701_KURT);
    AI_WAITTILLEND(HERO, NONE_1_JORN);
}

func void Q108_MEETING_START() {
    DIACAM_DISABLE();
    WLD_SENDTRIGGER("Q108_MEETING_01");
    TELEPORTNPCTOWP(51439, "VILLAGE_Q108_JORN");
    TELEPORTNPCTOWP(57510, "VILLAGE_Q108_KURT");
    TELEPORTNPCTOWP(1819, "VILLAGE_Q108_HERO");
    NPC_CLEARAIQUEUE(NONE_1_JORN);
    NPC_CLEARAIQUEUE(HERO);
    NPC_CLEARAIQUEUE(BAU_701_KURT);
    AI_TURNTONPC(NONE_1_JORN, HERO);
    AI_TURNTONPC(BAU_701_KURT, HERO);
    AI_TURNTONPC(HERO, NONE_1_JORN);
    AI_LOOKATNPC(HERO, BAU_701_KURT);
    AI_OUTPUT(HERO, HERO, "Tria_Jorn_Q108_Tired_15_01");
    Q108_MEETING_WAIT();
    AI_OUTPUT(NONE_1_JORN, HERO, "Tria_Jorn_Q108_Tired_01_02");
    Q108_MEETING_WAIT();
    AI_TURNTONPC(NONE_1_JORN, BAU_701_KURT);
    AI_TURNTONPC(BAU_701_KURT, NONE_1_JORN);
    Q108_MEETING_WAIT();
    AI_OUTPUT(NONE_1_JORN, HERO, "Tria_Jorn_Q108_Tired_01_03");
    Q108_MEETING_WAIT();
    AI_OUTPUT(BAU_701_KURT, HERO, "Tria_Kurt_Q108_Tired_701_04");
    Q108_MEETING_WAIT();
    AI_FUNCTION(BAU_701_KURT, 92426);
    AI_OUTPUT(BAU_701_KURT, HERO, "Tria_Kurt_Q108_Tired_701_05");
    Q108_MEETING_WAIT();
    AI_OUTPUT(NONE_1_JORN, HERO, "Tria_Jorn_Q108_Tired_01_06");
    Q108_MEETING_WAIT();
    AI_OUTPUT(BAU_701_KURT, HERO, "Tria_Kurt_Q108_Tired_701_07");
    AI_TURNTONPC(BAU_701_KURT, HERO);
    AI_TURNTONPC(NONE_1_JORN, HERO);
    AI_TURNTONPC(HERO, BAU_701_KURT);
    AI_OUTPUT(BAU_701_KURT, HERO, "Tria_Kurt_Q108_Tired_701_08");
    Q108_MEETING_WAIT();
    AI_FUNCTION(NONE_1_JORN, 92427);
    AI_FUNCTION(NONE_1_JORN, 92428);
}

func void Q108_MEETING_CAMERA_01() {
    WLD_SENDTRIGGER("Q108_MEETING_02");
    WLD_SENDUNTRIGGER("Q108_MEETING_01");
}

func void Q108_MEETING_CAMERA_02() {
    WLD_SENDTRIGGER("Q108_MEETING_03");
    WLD_SENDUNTRIGGER("Q108_MEETING_02");
}

func void Q108_STARTDIALOGUE() {
    PRINTD("Dialog");
    Q108_STARTDIALOGUE_KURT = 1;
    HERO.AIVAR[4] = FALSE;
}
