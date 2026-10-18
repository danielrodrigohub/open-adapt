package com.nike.adapt.adk.model;

import androidx.lifecycle.o;
import fd.d;

/* JADX INFO: compiled from: BatteryState.kt */
/* JADX INFO: loaded from: classes.dex */
public enum BatteryState {
    ON_CHARGER,
    OFF_CHARGER,
    ON_CHARGING,
    CHARGING_ERROR,
    ERROR;

    private final d isError$delegate = o.x(new C03452());
    private final d isNotError$delegate = o.x(new C03462());
    private final d isCharging$delegate = o.x(new AnonymousClass2());

    /* JADX INFO: renamed from: com.nike.adapt.adk.model.BatteryState$isCharging$2, reason: invalid class name */
    /* JADX INFO: compiled from: BatteryState.kt */
    public static final class AnonymousClass2 extends rd.o implements qd.a<Boolean> {
        public AnonymousClass2() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // qd.a
        public final Boolean invoke() {
            BatteryState batteryState = BatteryState.this;
            return Boolean.valueOf(batteryState == BatteryState.ON_CHARGER || batteryState == BatteryState.ON_CHARGING);
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.model.BatteryState$isError$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BatteryState.kt */
    public static final class C03452 extends rd.o implements qd.a<Boolean> {
        public C03452() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // qd.a
        public final Boolean invoke() {
            BatteryState batteryState = BatteryState.this;
            return Boolean.valueOf(batteryState == BatteryState.CHARGING_ERROR || batteryState == BatteryState.ERROR);
        }
    }

    /* JADX INFO: renamed from: com.nike.adapt.adk.model.BatteryState$isNotError$2, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: BatteryState.kt */
    public static final class C03462 extends rd.o implements qd.a<Boolean> {
        public C03462() {
            super(0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // qd.a
        public final Boolean invoke() {
            BatteryState batteryState = BatteryState.this;
            return Boolean.valueOf((batteryState == BatteryState.CHARGING_ERROR || batteryState == BatteryState.ERROR) ? false : true);
        }
    }

    BatteryState() {
    }

    public final boolean isCharging() {
        return ((Boolean) this.isCharging$delegate.getValue()).booleanValue();
    }

    public final boolean isError() {
        return ((Boolean) this.isError$delegate.getValue()).booleanValue();
    }

    public final boolean isNotError() {
        return ((Boolean) this.isNotError$delegate.getValue()).booleanValue();
    }
}
