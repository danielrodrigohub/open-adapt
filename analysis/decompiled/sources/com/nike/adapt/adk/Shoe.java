package com.nike.adapt.adk;

import j2.a;
import rd.h;
import w9.u1;

/* JADX INFO: compiled from: DeviceController.kt */
/* JADX INFO: loaded from: classes.dex */
public enum Shoe {
    LEFT,
    RIGHT,
    BOTH;

    public static final Companion Companion = new Companion(null);

    /* JADX INFO: compiled from: DeviceController.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: DeviceController.kt */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[u1.values().length];
                iArr[u1.LEFT.ordinal()] = 1;
                iArr[u1.RIGHT.ordinal()] = 2;
                iArr[u1.BOTH.ordinal()] = 3;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final Shoe valueOf(u1 u1Var) {
            p4.h.j(u1Var, "adaptKitShoe");
            int i10 = WhenMappings.$EnumSwitchMapping$0[u1Var.ordinal()];
            if (i10 == 1) {
                return Shoe.LEFT;
            }
            if (i10 == 2) {
                return Shoe.RIGHT;
            }
            if (i10 == 3) {
                return Shoe.BOTH;
            }
            throw new a();
        }
    }

    /* JADX INFO: compiled from: DeviceController.kt */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Shoe.values().length];
            iArr[Shoe.LEFT.ordinal()] = 1;
            iArr[Shoe.RIGHT.ordinal()] = 2;
            iArr[Shoe.BOTH.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    public final boolean isBoth() {
        return this == BOTH;
    }

    public final boolean isLeft() {
        return this == LEFT;
    }

    public final boolean isRight() {
        return this == RIGHT;
    }

    public final u1 parse() {
        int i10 = WhenMappings.$EnumSwitchMapping$0[ordinal()];
        if (i10 == 1) {
            return u1.LEFT;
        }
        if (i10 == 2) {
            return u1.RIGHT;
        }
        if (i10 == 3) {
            return u1.BOTH;
        }
        throw new a();
    }
}
