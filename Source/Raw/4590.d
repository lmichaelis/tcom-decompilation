instance Q514_LEAVECUTSCENE(CUTSCENE) {
    ONSTART = FUNCTION(0x169f9);
}

func void Q514_LEAVECUTSCENE_WAIT() {
    AI_WAITTILLEND(HERO, SLD_13784_VARIN_VZ);
    AI_WAITTILLEND(SLD_13784_VARIN_VZ, HERO);
}

func void Q514_LEAVECUTSCENE_START() {
    CHANGEVOBCOLLISION("VZ_AFTER_05", FALSE, FALSE, FALSE, TRUE);
    WLD_SENDTRIGGER("Q514_MOVER_ALPHA_NOBRIDGE");
    WLD_SENDTRIGGER("VZ_LEAVE_CAMERA_01");
    TELEPORTNPCTOWP(0x71b, "VOLFZACKE_LEAVE_CUTSCENE_HERO_START");
    TELEPORTNPCTOWP(0xe7d0, "VOLFZACK_13");
    AI_SETWALKMODE(HERO, NPC_WALK);
    AI_GOTOWP(HERO, "VOLFZACKE_BARRELS_CUTSCENE_HERO");
    AI_PLAYANI(HERO, T_PLUNDER);
    AI_FUNCTION(HERO, 0x169fa);
    Q514_LEAVECUTSCENE_WAIT();
    AI_TURNTONPC(SLD_13784_VARIN_VZ, HERO);
    AI_UNEQUIPWEAPONS(HERO);
    AI_EQUIPBESTMELEEWEAPON(HERO);
    AI_DRAWWEAPON(HERO);
    AI_TURNAWAY(HERO, SLD_13784_VARIN_VZ);
    AI_GOTOWP(HERO, "VOLFZACKE_BRIDGE_REPAIR_END");
    AI_FUNCTION(HERO, 0x169fb);
    AI_TURNTONPC(HERO, SLD_13784_VARIN_VZ);
    AI_OUTPUT(HERO, HERO, "DIA_Marvin_LeaveVolfzacke_15_01");
    AI_FUNCTION(HERO, 0x169fc);
    AI_OUTPUT(HERO, HERO, "DIA_Marvin_LeaveVolfzacke_15_02");
    AI_FUNCTION(HERO, 0x169fd);
    Q514_LEAVECUTSCENE_WAIT();
    AI_REMOVEWEAPON(HERO);
    AI_PLAYANI(SLD_13784_VARIN_VZ, "T_IGETYOU");
    AI_FUNCTION(SLD_13784_VARIN_VZ, 0x169fe);
}

func void Q514_LEAVECUTSCENE_CAMERACHANGE_01() {
    WLD_SENDTRIGGER("VZ_AFTER_01");
    CREATEINVITEMS(HERO, 0x8cf4, 1);
    MDL_APPLYOVERLAYMDS(HERO, "HUMANS_BARREL.mds");
    TELEPORTNPCTOWP(0x71b, "VOLFZACK_12");
    WLD_SENDTRIGGER("VZ_LEAVE_CAMERA_02");
    WLD_SENDUNTRIGGER("VZ_LEAVE_CAMERA_01");
}

func void Q514_LEAVECUTSCENE_CAMERACHANGE_02() {
    TELEPORTNPCTOWP(0x71b, "VOLFZACKE_BRIDGE_REPAIR_END");
    TELEPORTNPCTOWP(0xe7d0, "VOLFZACK_12");
    WLD_SENDTRIGGER("VZ_LEAVE_CAMERA_04");
    WLD_SENDUNTRIGGER("VZ_LEAVE_CAMERA_02");
}

func void Q514_LEAVECUTSCENE_CAMERACHANGE_03() {
    WLD_SENDTRIGGER("VZ_LEAVE_CAMERA_03");
    WLD_SENDUNTRIGGER("VZ_LEAVE_CAMERA_04");
}

func void Q514_LEAVECUTSCENE_CAMERACHANGE_04() {
    WLD_SENDTRIGGER("VZ_LEAVE_CAMERA_05");
    WLD_SENDUNTRIGGER("VZ_LEAVE_CAMERA_03");
}

func void Q514_LEAVECUTSCENE_FADE() {
    FADESCREENTOBLACKF(2, 0x169ff, 1000);
}

func void Q514_LEAVECUTSCENE_END() {
    WLD_SENDTRIGGER("Q514_MOVER_ALPHA_NOBRIDGE");
    WLD_SENDTRIGGER("Q514_MOVER_LIGHT");
    Q514_FINISHVOLFZACKE = 1;
    Q514_FAKECAMP();
    Q514_PREPARECAMP_BEFOREBRIDGE();
    Q514_FRIENDS_BRIDGERTN();
    WLD_SENDTRIGGER("VZ_BLOCKESCAPE");
    B_STARTOTHERROUTINE(KDW_203_RIORDIAN_VZ, "LEAVE");
    NPC_REFRESH(KDW_203_RIORDIAN_VZ);
    TELEPORTNPCTOWP(0xe700, KDW_203_RIORDIAN_VZ.WP);
    B_STARTOTHERROUTINE(SLD_13784_VARIN_VZ, "LEAVE");
    NPC_REFRESH(SLD_13784_VARIN_VZ);
    TELEPORTNPCTOWP(0xe7d0, SLD_13784_VARIN_VZ.WP);
    WLD_SENDUNTRIGGER("VZ_LEAVE_CAMERA_05");
    NPC_REMOVEINVITEMS(HERO, 0x8cf4, 1);
    MDL_REMOVEOVERLAYMDS(HERO, "HUMANS_BARREL.mds");
    HERO.AIVAR[4] = FALSE;
    FADESCREENFROMBLACK(3);
}

