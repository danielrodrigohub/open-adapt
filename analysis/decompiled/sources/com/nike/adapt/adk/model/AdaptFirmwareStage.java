package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptFirmwareStage.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AdaptFirmwareStage implements Parcelable {

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class BatteryTooLow extends AdaptFirmwareStage {
        public static final Parcelable.Creator<BatteryTooLow> CREATOR = new Creator();
        private final Battery battery;

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<BatteryTooLow> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final BatteryTooLow createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                return new BatteryTooLow(Battery.CREATOR.createFromParcel(parcel));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final BatteryTooLow[] newArray(int i10) {
                return new BatteryTooLow[i10];
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public BatteryTooLow(Battery battery) {
            super(null);
            h.j(battery, "battery");
            this.battery = battery;
        }

        public static /* synthetic */ BatteryTooLow copy$default(BatteryTooLow batteryTooLow, Battery battery, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                battery = batteryTooLow.battery;
            }
            return batteryTooLow.copy(battery);
        }

        public final Battery component1() {
            return this.battery;
        }

        public final BatteryTooLow copy(Battery battery) {
            h.j(battery, "battery");
            return new BatteryTooLow(battery);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof BatteryTooLow) && h.c(this.battery, ((BatteryTooLow) obj).battery);
        }

        public final Battery getBattery() {
            return this.battery;
        }

        public int hashCode() {
            return this.battery.hashCode();
        }

        public String toString() {
            return "BatteryTooLow(battery=" + this.battery + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            this.battery.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class Completed extends AdaptFirmwareStage {
        public static final Completed INSTANCE = new Completed();
        public static final Parcelable.Creator<Completed> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<Completed> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Completed createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return Completed.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Completed[] newArray(int i10) {
                return new Completed[i10];
            }
        }

        private Completed() {
            super(null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Completed";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class ConnectionLost extends AdaptFirmwareStage {
        public static final ConnectionLost INSTANCE = new ConnectionLost();
        public static final Parcelable.Creator<ConnectionLost> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<ConnectionLost> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ConnectionLost createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return ConnectionLost.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ConnectionLost[] newArray(int i10) {
                return new ConnectionLost[i10];
            }
        }

        private ConnectionLost() {
            super(null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "ConnectionLost";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class Failure extends AdaptFirmwareStage {
        public static final Failure INSTANCE = new Failure();
        public static final Parcelable.Creator<Failure> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<Failure> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Failure createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return Failure.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Failure[] newArray(int i10) {
                return new Failure[i10];
            }
        }

        private Failure() {
            super(null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Failure";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class FetchingData extends AdaptFirmwareStage {
        public static final FetchingData INSTANCE = new FetchingData();
        public static final Parcelable.Creator<FetchingData> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<FetchingData> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final FetchingData createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return FetchingData.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final FetchingData[] newArray(int i10) {
                return new FetchingData[i10];
            }
        }

        private FetchingData() {
            super(null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "FetchingData";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class Flashing extends AdaptFirmwareStage {
        public static final Flashing INSTANCE = new Flashing();
        public static final Parcelable.Creator<Flashing> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<Flashing> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Flashing createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return Flashing.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Flashing[] newArray(int i10) {
                return new Flashing[i10];
            }
        }

        private Flashing() {
            super(null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Flashing";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class InProgress extends AdaptFirmwareStage {
        public static final Parcelable.Creator<InProgress> CREATOR = new Creator();
        private final float percent;

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<InProgress> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final InProgress createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                return new InProgress(parcel.readFloat());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final InProgress[] newArray(int i10) {
                return new InProgress[i10];
            }
        }

        public InProgress(float f10) {
            super(null);
            this.percent = f10;
        }

        public static /* synthetic */ InProgress copy$default(InProgress inProgress, float f10, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                f10 = inProgress.percent;
            }
            return inProgress.copy(f10);
        }

        public final float component1() {
            return this.percent;
        }

        public final InProgress copy(float f10) {
            return new InProgress(f10);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof InProgress) && h.c(Float.valueOf(this.percent), Float.valueOf(((InProgress) obj).percent));
        }

        public final float getPercent() {
            return this.percent;
        }

        public int hashCode() {
            return Float.hashCode(this.percent);
        }

        public String toString() {
            return "InProgress " + this.percent;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeFloat(this.percent);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class NoUpdateAvailable extends AdaptFirmwareStage {
        public static final NoUpdateAvailable INSTANCE = new NoUpdateAvailable();
        public static final Parcelable.Creator<NoUpdateAvailable> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<NoUpdateAvailable> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final NoUpdateAvailable createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return NoUpdateAvailable.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final NoUpdateAvailable[] newArray(int i10) {
                return new NoUpdateAvailable[i10];
            }
        }

        private NoUpdateAvailable() {
            super(null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "NoUpdateAvailable";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class NotStarted extends AdaptFirmwareStage {
        public static final NotStarted INSTANCE = new NotStarted();
        public static final Parcelable.Creator<NotStarted> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<NotStarted> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final NotStarted createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return NotStarted.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final NotStarted[] newArray(int i10) {
                return new NotStarted[i10];
            }
        }

        private NotStarted() {
            super(null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "NotStarted";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
    public static final class Reconnecting extends AdaptFirmwareStage {
        public static final Reconnecting INSTANCE = new Reconnecting();
        public static final Parcelable.Creator<Reconnecting> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareStage.kt */
        public static final class Creator implements Parcelable.Creator<Reconnecting> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Reconnecting createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return Reconnecting.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Reconnecting[] newArray(int i10) {
                return new Reconnecting[i10];
            }
        }

        private Reconnecting() {
            super(null);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public String toString() {
            return "Reconnecting";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    private AdaptFirmwareStage() {
    }

    public /* synthetic */ AdaptFirmwareStage(rd.h hVar) {
        this();
    }
}
