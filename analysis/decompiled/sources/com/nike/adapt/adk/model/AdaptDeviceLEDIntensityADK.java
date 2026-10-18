package com.nike.adapt.adk.model;

import androidx.annotation.Keep;
import rd.h;

/* JADX INFO: compiled from: AdaptDeviceLEDIntensityADK.kt */
/* JADX INFO: loaded from: classes.dex */
@Keep
public enum AdaptDeviceLEDIntensityADK {
    LOW(0),
    MEDIUM(1),
    HIGH(2),
    HIGHEST(3);

    public static final Companion Companion = new Companion(null);
    private final int meter;

    /* JADX INFO: compiled from: AdaptDeviceLEDIntensityADK.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        /* JADX WARN: Code duplicated, block: B:14:0x0020  */
        /* JADX WARN: Code duplicated, block: B:18:? A[RETURN, SYNTHETIC] */
        public final AdaptDeviceLEDIntensityADK valueOf(int i10) {
            AdaptDeviceLEDIntensityADK[] adaptDeviceLEDIntensityADKArrValues = AdaptDeviceLEDIntensityADK.values();
            AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK = AdaptDeviceLEDIntensityADK.HIGHEST;
            for (AdaptDeviceLEDIntensityADK adaptDeviceLEDIntensityADK2 : adaptDeviceLEDIntensityADKArrValues) {
                if (adaptDeviceLEDIntensityADK2.getMeter() == i10) {
                    if (adaptDeviceLEDIntensityADK2 == null) {
                        return adaptDeviceLEDIntensityADK;
                    }
                    return adaptDeviceLEDIntensityADK2;
                }
            }
            adaptDeviceLEDIntensityADK2 = null;
            if (adaptDeviceLEDIntensityADK2 == null) {
                return adaptDeviceLEDIntensityADK;
            }
            return adaptDeviceLEDIntensityADK2;
        }
    }

    AdaptDeviceLEDIntensityADK(int i10) {
        this.meter = i10;
    }

    public final int getMeter() {
        return this.meter;
    }
}
