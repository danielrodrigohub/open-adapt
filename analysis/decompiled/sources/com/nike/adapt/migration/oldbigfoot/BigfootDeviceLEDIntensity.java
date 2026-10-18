package com.nike.adapt.migration.oldbigfoot;

import rd.h;

/* JADX INFO: compiled from: BigfootDeviceLEDIntensity.kt */
/* JADX INFO: loaded from: classes.dex */
public enum BigfootDeviceLEDIntensity {
    LOW(0),
    MEDIUM(1),
    HIGH(2),
    HIGHEST(3);

    public static final Companion Companion = new Companion(null);
    private final int meter;

    /* JADX INFO: compiled from: BigfootDeviceLEDIntensity.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final BigfootDeviceLEDIntensity valueOf(int i10) {
            return BigfootDeviceLEDIntensity.HIGHEST;
        }
    }

    BigfootDeviceLEDIntensity(int i10) {
        this.meter = i10;
    }

    public final int getMeter() {
        return this.meter;
    }
}
