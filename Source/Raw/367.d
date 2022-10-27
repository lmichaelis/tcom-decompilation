func void B_GIVEANYPOTION() {
    if ((NPC_HASITEMS(OTHER, 0x8630)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x8632)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x8635)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x838e)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x8639)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x863c)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x863f)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x8641)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x9362)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x9362, 1);
    };
}

func void B_GIVEANYPOTION_USEIT() {
    AI_STOPLOOKAT(SELF);
    if ((NPC_HASITEMS(OTHER, 0x8630)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8630, 1);
        AI_USEITEM(SELF, 0x8630);
    };
    if ((NPC_HASITEMS(OTHER, 0x8632)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8632, 1);
        AI_USEITEM(SELF, 0x8632);
    };
    if ((NPC_HASITEMS(OTHER, 0x8635)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8635, 1);
        AI_USEITEM(SELF, 0x8635);
    };
    if ((NPC_HASITEMS(OTHER, 0x838e)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x838e, 1);
        AI_USEITEM(SELF, 0x838e);
    };
    if ((NPC_HASITEMS(OTHER, 0x8639)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8639, 1);
        AI_USEITEM(SELF, 0x8639);
    };
    if ((NPC_HASITEMS(OTHER, 0x863c)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x863c, 1);
        AI_USEITEM(SELF, 0x863c);
    };
    if ((NPC_HASITEMS(OTHER, 0x863f)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x863f, 1);
        AI_USEITEM(SELF, 0x863f);
    };
    if ((NPC_HASITEMS(OTHER, 0x8641)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8641, 1);
        AI_USEITEM(SELF, 0x8641);
    };
    if ((NPC_HASITEMS(OTHER, 0x9362)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x9362, 1);
        AI_USEITEM(SELF, 0x9362);
    };
}

func void B_GIVEANYBEER() {
    if ((NPC_HASITEMS(OTHER, 0x84c0)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x8e0b)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x8e10)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x8e17)) >= (1)) {
    };
    if ((NPC_HASITEMS(OTHER, 0x8e0c)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e0c, 1);
    };
}

func void B_GIVEANYBEER_USEIT() {
    AI_STOPLOOKAT(SELF);
    if ((NPC_HASITEMS(OTHER, 0x84c0)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x84c0, 1);
        AI_USEITEM(SELF, 0x84c0);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e0b)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e0b, 1);
        AI_USEITEM(SELF, 0x8e0b);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e10)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e10, 1);
        AI_USEITEM(SELF, 0x8e10);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e17)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e17, 1);
        AI_USEITEM(SELF, 0x8e17);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e0c)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e0c, 1);
        AI_USEITEM(SELF, 0x8e0c);
    };
}

func void B_USEANYBEER() {
    AI_STOPLOOKAT(SELF);
    if ((NPC_HASITEMS(SELF, 0x84c0)) >= (1)) {
        AI_USEITEM(SELF, 0x84c0);
    };
    if ((NPC_HASITEMS(SELF, 0x8e0b)) >= (1)) {
        AI_USEITEM(SELF, 0x84c0);
    };
    if ((NPC_HASITEMS(SELF, 0x8e10)) >= (1)) {
        AI_USEITEM(SELF, 0x84c0);
    };
    if ((NPC_HASITEMS(SELF, 0x8e17)) >= (1)) {
        AI_USEITEM(SELF, 0x84c0);
    };
    if ((NPC_HASITEMS(SELF, 0x8e0c)) >= (1)) {
        AI_USEITEM(SELF, 0x84c0);
    };
}

func void B_GIVEANYMEAT_EATABLE_USEIT() {
    AI_STOPLOOKAT(SELF);
    if ((NPC_HASITEMS(OTHER, 0x8435)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8435, 1);
        AI_USEITEM(SELF, 0x8435);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e35)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e35, 1);
        AI_USEITEM(SELF, 0x8e35);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e41)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e41, 1);
        AI_USEITEM(SELF, 0x8e41);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e4d)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e4d, 1);
        AI_USEITEM(SELF, 0x8e4d);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e45)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e45, 1);
        AI_USEITEM(SELF, 0x8e45);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e59)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e59, 1);
        AI_USEITEM(SELF, 0x8e59);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e3d)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e3d, 1);
        AI_USEITEM(SELF, 0x8e3d);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e39)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e39, 1);
        AI_USEITEM(SELF, 0x8e39);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e55)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e55, 1);
        AI_USEITEM(SELF, 0x8e55);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e49)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e49, 1);
        AI_USEITEM(SELF, 0x8e49);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e51)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e51, 1);
        AI_USEITEM(SELF, 0x8e51);
    };
}

func void B_GIVEANYWINE_USEIT() {
    AI_STOPLOOKAT(SELF);
    if ((NPC_HASITEMS(OTHER, 0x84c4)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x84c4, 1);
        AI_USEITEM(SELF, 0x84c4);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e14)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e14, 1);
        AI_USEITEM(SELF, 0x8e14);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e12)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e12, 1);
        AI_USEITEM(SELF, 0x8e12);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e23)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e23, 1);
        AI_USEITEM(SELF, 0x8e23);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e15)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e15, 1);
        AI_USEITEM(SELF, 0x8e15);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e27)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e27, 1);
        AI_USEITEM(SELF, 0x8e27);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e29)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e29, 1);
        AI_USEITEM(SELF, 0x8e29);
    };
    if ((NPC_HASITEMS(OTHER, 0x8e5d)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8e5d, 1);
        AI_USEITEM(SELF, 0x8e5d);
    };
}

func void B_GIVEANYMEAL_USEIT() {
    AI_STOPLOOKAT(SELF);
    if ((NPC_HASITEMS(OTHER, 0x8efc)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8efc, 1);
        AI_USEITEM(SELF, 0x8efc);
    };
    if ((NPC_HASITEMS(OTHER, 0x8efe)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8efe, 1);
        AI_USEITEM(SELF, 0x8efe);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f00)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f00, 1);
        AI_USEITEM(SELF, 0x8f00);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f02)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f02, 1);
        AI_USEITEM(SELF, 0x8f02);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f04)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f04, 1);
        AI_USEITEM(SELF, 0x8f04);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f06)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f06, 1);
        AI_USEITEM(SELF, 0x8f06);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f08)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f08, 1);
        AI_USEITEM(SELF, 0x8f08);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f0a)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f0a, 1);
        AI_USEITEM(SELF, 0x8f0a);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f0e)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f0e, 1);
        AI_USEITEM(SELF, 0x8f0e);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f10)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f10, 1);
        AI_USEITEM(SELF, 0x8f10);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f12)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f12, 1);
        AI_USEITEM(SELF, 0x8f12);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f17)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f17, 1);
        AI_USEITEM(SELF, 0x8f17);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f19)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f19, 1);
        AI_USEITEM(SELF, 0x8f19);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f1b)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f1b, 1);
        AI_USEITEM(SELF, 0x8f1b);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f1d)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f1d, 1);
        AI_USEITEM(SELF, 0x8f1d);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f1f)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f1f, 1);
        AI_USEITEM(SELF, 0x8f1f);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f21)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f21, 1);
        AI_USEITEM(SELF, 0x8f21);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f23)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f23, 1);
        AI_USEITEM(SELF, 0x8f23);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f25)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f25, 1);
        AI_USEITEM(SELF, 0x8f25);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f27)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f27, 1);
        AI_USEITEM(SELF, 0x8f27);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f2c)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f2c, 1);
        AI_USEITEM(SELF, 0x8f2c);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f2e)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f2e, 1);
        AI_USEITEM(SELF, 0x8f2e);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f30)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f30, 1);
        AI_USEITEM(SELF, 0x8f30);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f32)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f32, 1);
        AI_USEITEM(SELF, 0x8f32);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f34)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f34, 1);
        AI_USEITEM(SELF, 0x8f34);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f36)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f36, 1);
        AI_USEITEM(SELF, 0x8f36);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f38)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f38, 1);
        AI_USEITEM(SELF, 0x8f38);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f3a)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f3a, 1);
        AI_USEITEM(SELF, 0x8f3a);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f3c)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f3c, 1);
        AI_USEITEM(SELF, 0x8f3c);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f3e)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f3e, 1);
        AI_USEITEM(SELF, 0x8f3e);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f40)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f40, 1);
        AI_USEITEM(SELF, 0x8f40);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f42)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f42, 1);
        AI_USEITEM(SELF, 0x8f42);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f44)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f44, 1);
        AI_USEITEM(SELF, 0x8f44);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f46)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f46, 1);
        AI_USEITEM(SELF, 0x8f46);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f48)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f48, 1);
        AI_USEITEM(SELF, 0x8f48);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f4a)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f4a, 1);
        AI_USEITEM(SELF, 0x8f4a);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f4c)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f4c, 1);
        AI_USEITEM(SELF, 0x8f4c);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f4e)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f4e, 1);
        AI_USEITEM(SELF, 0x8f4e);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f50)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f50, 1);
        AI_USEITEM(SELF, 0x8f50);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f52)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f52, 1);
        AI_USEITEM(SELF, 0x8f52);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f54)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f54, 1);
        AI_USEITEM(SELF, 0x8f54);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f56)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f56, 1);
        AI_USEITEM(SELF, 0x8f56);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f58)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f58, 1);
        AI_USEITEM(SELF, 0x8f58);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f5e)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f5e, 1);
        AI_USEITEM(SELF, 0x8f5e);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f60)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f60, 1);
        AI_USEITEM(SELF, 0x8f60);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f62)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f62, 1);
        AI_USEITEM(SELF, 0x8f62);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f64)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f64, 1);
        AI_USEITEM(SELF, 0x8f64);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f66)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f66, 1);
        AI_USEITEM(SELF, 0x8f66);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f68)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f68, 1);
        AI_USEITEM(SELF, 0x8f68);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f6a)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f6a, 1);
        AI_USEITEM(SELF, 0x8f6a);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f6c)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f6c, 1);
        AI_USEITEM(SELF, 0x8f6c);
    };
    if ((NPC_HASITEMS(OTHER, 0x8f6e)) >= (1)) {
        B_GIVEINVITEMS(OTHER, SELF, 0x8f6e, 1);
        AI_USEITEM(SELF, 0x8f6e);
    };
}

