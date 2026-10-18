package com.nike.adapt.adk.model;

import ga.b;
import rd.h;

/* JADX INFO: compiled from: AdaptGestureConfigurationResponse.kt */
/* JADX INFO: loaded from: classes.dex */
public enum AdaptGestureConfigurationResponse {
    CRITICAL_BATTERY("CRITICAL_BATTERY"),
    ACTIVE_SESSION("ACTIVE_SESSION"),
    CONFIG_SET("CONFIG_SET"),
    UNKNOWN("UNKNOWN");

    public static final Companion Companion = new Companion(null);
    private final String state;

    /* JADX INFO: compiled from: AdaptGestureConfigurationResponse.kt */
    public static final class Companion {

        /* JADX INFO: compiled from: AdaptGestureConfigurationResponse.kt */
        public /* synthetic */ class WhenMappings {
            public static final /* synthetic */ int[] $EnumSwitchMapping$0;

            static {
                int[] iArr = new int[b.values().length];
                iArr[0] = 1;
                iArr[1] = 2;
                iArr[2] = 3;
                iArr[3] = 4;
                $EnumSwitchMapping$0 = iArr;
            }
        }

        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final AdaptGestureConfigurationResponse from(b bVar) {
            p4.h.j(bVar, "configurationResponse");
            int iOrdinal = bVar.ordinal();
            if (iOrdinal == 0) {
                return AdaptGestureConfigurationResponse.CRITICAL_BATTERY;
            }
            if (iOrdinal == 1) {
                return AdaptGestureConfigurationResponse.ACTIVE_SESSION;
            }
            if (iOrdinal == 2) {
                return AdaptGestureConfigurationResponse.CONFIG_SET;
            }
            if (iOrdinal == 3) {
                return AdaptGestureConfigurationResponse.UNKNOWN;
            }
            throw new j2.a();
        }
    }

    AdaptGestureConfigurationResponse(String str) {
        this.state = str;
    }

    public final String getState() {
        return this.state;
    }
}
