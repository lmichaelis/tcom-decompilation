func void EVENTSMANAGER_RNG_VTERRIFICEVENTS() {
    if ((RND_VOLFZACKEHOUR) != (WLD_GETTIMEHOUR())) {
        RND_VOLFZACKEHOUR = WLD_GETTIMEHOUR();
        RNG_VHORROREVENT01 = HLP_RANDOM(RNG_CHANCE_LOW);
        RNG_VHORROREVENT02 = HLP_RANDOM(RNG_CHANCE_LOW);
        RNG_VHORROREVENT03 = HLP_RANDOM(RNG_CHANCE_LOW);
        RNG_VHORROREVENT04 = HLP_RANDOM(RNG_CHANCE_LOW);
        RNG_VHORROREVENT05 = HLP_RANDOM(RNG_CHANCE_LOW);
        RNG_VHORROREVENT06 = HLP_RANDOM(RNG_CHANCE_LOW);
        RNG_VSKELETONEVENT01 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        RNG_VSKELETONEVENT02 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        RNG_VSKELETONEVENT03 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        RNG_VSKELETONEVENT04 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        RNG_VSKELETONEVENT05 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        RNG_VSKELETONEVENT06 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        RNG_VSKELETONEVENT07 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        RNG_VSKELETONEVENT08 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        RNG_VSKELETONEVENT09 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        RNG_VSKELETONEVENT10 = HLP_RANDOM(RNG_CHANCE_MEDIUMSKELETON);
        PRINTD("Losowanie...");
    };
    if ((KAPITEL) == (5)) {
        if ((RND_NOSCARYEVENTS) == (FALSE)) {
            EVENTSMANAGER_RNG_VHORROREVENT01();
            EVENTSMANAGER_RNG_VHORROREVENT02();
            EVENTSMANAGER_RNG_VHORROREVENT03();
            EVENTSMANAGER_RNG_VHORROREVENT04();
            EVENTSMANAGER_RNG_VHORROREVENT05();
            EVENTSMANAGER_RNG_VHORROREVENT06();
            EVENTSMANAGER_RNG_VSKEEVENT01();
            EVENTSMANAGER_RNG_VSKEEVENT02();
            EVENTSMANAGER_RNG_VSKEEVENT03();
            EVENTSMANAGER_RNG_VSKEEVENT04();
            EVENTSMANAGER_RNG_VSKEEVENT05();
            EVENTSMANAGER_RNG_VSKEEVENT06();
            EVENTSMANAGER_RNG_VSKEEVENT07();
            EVENTSMANAGER_RNG_VSKEEVENT08();
            EVENTSMANAGER_RNG_VSKEEVENT09();
            EVENTSMANAGER_RNG_VSKEEVENT10();
        };
    };
}

