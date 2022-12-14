func void Q208_PREPARESCENE() {
    REMOVEHODINSERTORC();
}

func void Q208_PREPAREYANNICK() {
    Q208_MILITIABEACH = TRUE;
    WLD_INSERTNPC(0xda30, "PART4_FISHERMAN_MIL_SMALLTALK_02");
    WLD_INSERTNPC(0xda39, "PART4_FISHERMAN_MIL_SMALLTALK_01");
    B_STARTOTHERROUTINE(BAU_6348_YANNICK, CUTSCENERTN);
    B_STARTOTHERROUTINE(NONE_6351_ROY, CUTSCENERTN);
}

func void Q208_MILITIAGOAWAY() {
    PRINTD("Id? do miasta");
    NPC_EXCHANGEROUTINE(MIL_6352_RANDHAL, "CITY");
    NPC_EXCHANGEROUTINE(MIL_6353_MILITIA, "CITY");
}

func void Q208_ROYFISHCHEST() {
    Q208_ROYJOINTPACK = TRUE;
    MOB_CREATEITEMS("Q208_ROYFISHCHEST_01", 0x911c, 1);
    MOB_CHANGEFOCUSNAME("Q208_ROYFISHCHEST_02", "MOBNAME_FISHCHEST");
}

func void Q208_REMOVENPC() {
    Q208_ROYJOINTPACK = FALSE;
    MOB_CHANGEFOCUSNAME("Q208_ROYFISHCHEST_02", "MOBNAME_NOTHING");
    B_STARTOTHERROUTINE(BAU_6348_YANNICK, START);
    MOB_CHANGEFOCUSNAME("Q208_ROYFISHCHEST_01", "MOBNAME_NOTHING");
    WLD_SENDTRIGGER("Q208_YANNICKBOAT");
    B_REMOVENPC(0xda30);
    B_REMOVENPC(0xda39);
}

