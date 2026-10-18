package com.nike.adapt.adk.model;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
/* JADX INFO: loaded from: classes.dex */
public interface AdaptFirmwareUpdateState extends Parcelable {

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class AlreadyUpToDate implements AdaptFirmwareUpdateState {
        public static final AlreadyUpToDate INSTANCE = new AlreadyUpToDate();
        public static final Parcelable.Creator<AlreadyUpToDate> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<AlreadyUpToDate> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final AlreadyUpToDate createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return AlreadyUpToDate.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final AlreadyUpToDate[] newArray(int i10) {
                return new AlreadyUpToDate[i10];
            }
        }

        private AlreadyUpToDate() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class BatteryTooLow implements AdaptFirmwareUpdateState {
        public static final BatteryTooLow INSTANCE = new BatteryTooLow();
        public static final Parcelable.Creator<BatteryTooLow> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<BatteryTooLow> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final BatteryTooLow createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return BatteryTooLow.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final BatteryTooLow[] newArray(int i10) {
                return new BatteryTooLow[i10];
            }
        }

        private BatteryTooLow() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class CheckUpdateStatus implements AdaptFirmwareUpdateState {
        public static final CheckUpdateStatus INSTANCE = new CheckUpdateStatus();
        public static final Parcelable.Creator<CheckUpdateStatus> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<CheckUpdateStatus> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckUpdateStatus createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return CheckUpdateStatus.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckUpdateStatus[] newArray(int i10) {
                return new CheckUpdateStatus[i10];
            }
        }

        private CheckUpdateStatus() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class CheckUpdateStatusError implements AdaptFirmwareUpdateState {
        public static final CheckUpdateStatusError INSTANCE = new CheckUpdateStatusError();
        public static final Parcelable.Creator<CheckUpdateStatusError> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<CheckUpdateStatusError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckUpdateStatusError createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return CheckUpdateStatusError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckUpdateStatusError[] newArray(int i10) {
                return new CheckUpdateStatusError[i10];
            }
        }

        private CheckUpdateStatusError() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class CheckUpgradeSlotsAlreadyStaged implements AdaptFirmwareUpdateState {
        public static final CheckUpgradeSlotsAlreadyStaged INSTANCE = new CheckUpgradeSlotsAlreadyStaged();
        public static final Parcelable.Creator<CheckUpgradeSlotsAlreadyStaged> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<CheckUpgradeSlotsAlreadyStaged> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckUpgradeSlotsAlreadyStaged createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return CheckUpgradeSlotsAlreadyStaged.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckUpgradeSlotsAlreadyStaged[] newArray(int i10) {
                return new CheckUpgradeSlotsAlreadyStaged[i10];
            }
        }

        private CheckUpgradeSlotsAlreadyStaged() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class CheckUpgradeSlotsUploadRequired implements AdaptFirmwareUpdateState {
        public static final CheckUpgradeSlotsUploadRequired INSTANCE = new CheckUpgradeSlotsUploadRequired();
        public static final Parcelable.Creator<CheckUpgradeSlotsUploadRequired> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<CheckUpgradeSlotsUploadRequired> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckUpgradeSlotsUploadRequired createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return CheckUpgradeSlotsUploadRequired.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckUpgradeSlotsUploadRequired[] newArray(int i10) {
                return new CheckUpgradeSlotsUploadRequired[i10];
            }
        }

        private CheckUpgradeSlotsUploadRequired() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class CheckingUpgradeSlots implements AdaptFirmwareUpdateState {
        public static final CheckingUpgradeSlots INSTANCE = new CheckingUpgradeSlots();
        public static final Parcelable.Creator<CheckingUpgradeSlots> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<CheckingUpgradeSlots> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckingUpgradeSlots createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return CheckingUpgradeSlots.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final CheckingUpgradeSlots[] newArray(int i10) {
                return new CheckingUpgradeSlots[i10];
            }
        }

        private CheckingUpgradeSlots() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class ConnectionLost implements AdaptFirmwareUpdateState {
        public static final ConnectionLost INSTANCE = new ConnectionLost();
        public static final Parcelable.Creator<ConnectionLost> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
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
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class DownloadComplete implements AdaptFirmwareUpdateState {
        public static final DownloadComplete INSTANCE = new DownloadComplete();
        public static final Parcelable.Creator<DownloadComplete> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<DownloadComplete> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DownloadComplete createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return DownloadComplete.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DownloadComplete[] newArray(int i10) {
                return new DownloadComplete[i10];
            }
        }

        private DownloadComplete() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class DownloadFailed implements AdaptFirmwareUpdateState {
        public static final DownloadFailed INSTANCE = new DownloadFailed();
        public static final Parcelable.Creator<DownloadFailed> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<DownloadFailed> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DownloadFailed createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return DownloadFailed.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DownloadFailed[] newArray(int i10) {
                return new DownloadFailed[i10];
            }
        }

        private DownloadFailed() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class DownloadStart implements AdaptFirmwareUpdateState {
        public static final DownloadStart INSTANCE = new DownloadStart();
        public static final Parcelable.Creator<DownloadStart> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<DownloadStart> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DownloadStart createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return DownloadStart.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final DownloadStart[] newArray(int i10) {
                return new DownloadStart[i10];
            }
        }

        private DownloadStart() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class FlashError implements AdaptFirmwareUpdateState {
        public static final FlashError INSTANCE = new FlashError();
        public static final Parcelable.Creator<FlashError> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<FlashError> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final FlashError createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return FlashError.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final FlashError[] newArray(int i10) {
                return new FlashError[i10];
            }
        }

        private FlashError() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class FlashSuccess implements AdaptFirmwareUpdateState {
        public static final FlashSuccess INSTANCE = new FlashSuccess();
        public static final Parcelable.Creator<FlashSuccess> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<FlashSuccess> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final FlashSuccess createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return FlashSuccess.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final FlashSuccess[] newArray(int i10) {
                return new FlashSuccess[i10];
            }
        }

        private FlashSuccess() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class KickoffFirmwareProcess implements AdaptFirmwareUpdateState {
        public static final KickoffFirmwareProcess INSTANCE = new KickoffFirmwareProcess();
        public static final Parcelable.Creator<KickoffFirmwareProcess> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<KickoffFirmwareProcess> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final KickoffFirmwareProcess createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return KickoffFirmwareProcess.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final KickoffFirmwareProcess[] newArray(int i10) {
                return new KickoffFirmwareProcess[i10];
            }
        }

        private KickoffFirmwareProcess() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class Md5CheckFailed implements AdaptFirmwareUpdateState {
        public static final Md5CheckFailed INSTANCE = new Md5CheckFailed();
        public static final Parcelable.Creator<Md5CheckFailed> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<Md5CheckFailed> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Md5CheckFailed createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return Md5CheckFailed.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Md5CheckFailed[] newArray(int i10) {
                return new Md5CheckFailed[i10];
            }
        }

        private Md5CheckFailed() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class Md5CheckPassed implements AdaptFirmwareUpdateState {
        public static final Md5CheckPassed INSTANCE = new Md5CheckPassed();
        public static final Parcelable.Creator<Md5CheckPassed> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<Md5CheckPassed> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Md5CheckPassed createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return Md5CheckPassed.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Md5CheckPassed[] newArray(int i10) {
                return new Md5CheckPassed[i10];
            }
        }

        private Md5CheckPassed() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class NoUpgradeInProcess implements AdaptFirmwareUpdateState {
        public static final NoUpgradeInProcess INSTANCE = new NoUpgradeInProcess();
        public static final Parcelable.Creator<NoUpgradeInProcess> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<NoUpgradeInProcess> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final NoUpgradeInProcess createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return NoUpgradeInProcess.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final NoUpgradeInProcess[] newArray(int i10) {
                return new NoUpgradeInProcess[i10];
            }
        }

        private NoUpgradeInProcess() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class PostUploadSlotCheck implements AdaptFirmwareUpdateState {
        public static final PostUploadSlotCheck INSTANCE = new PostUploadSlotCheck();
        public static final Parcelable.Creator<PostUploadSlotCheck> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<PostUploadSlotCheck> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final PostUploadSlotCheck createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return PostUploadSlotCheck.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final PostUploadSlotCheck[] newArray(int i10) {
                return new PostUploadSlotCheck[i10];
            }
        }

        private PostUploadSlotCheck() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class ReadyToFlash implements AdaptFirmwareUpdateState {
        public static final ReadyToFlash INSTANCE = new ReadyToFlash();
        public static final Parcelable.Creator<ReadyToFlash> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<ReadyToFlash> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ReadyToFlash createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return ReadyToFlash.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ReadyToFlash[] newArray(int i10) {
                return new ReadyToFlash[i10];
            }
        }

        private ReadyToFlash() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class Reconnected implements AdaptFirmwareUpdateState {
        public static final Reconnected INSTANCE = new Reconnected();
        public static final Parcelable.Creator<Reconnected> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<Reconnected> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Reconnected createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return Reconnected.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final Reconnected[] newArray(int i10) {
                return new Reconnected[i10];
            }
        }

        private Reconnected() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class UpToDate implements AdaptFirmwareUpdateState {
        public static final UpToDate INSTANCE = new UpToDate();
        public static final Parcelable.Creator<UpToDate> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<UpToDate> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpToDate createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return UpToDate.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpToDate[] newArray(int i10) {
                return new UpToDate[i10];
            }
        }

        private UpToDate() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class UpdateAvailable implements AdaptFirmwareUpdateState {
        public static final UpdateAvailable INSTANCE = new UpdateAvailable();
        public static final Parcelable.Creator<UpdateAvailable> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<UpdateAvailable> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpdateAvailable createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return UpdateAvailable.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpdateAvailable[] newArray(int i10) {
                return new UpdateAvailable[i10];
            }
        }

        private UpdateAvailable() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class UpgradeFailed implements AdaptFirmwareUpdateState {
        public static final UpgradeFailed INSTANCE = new UpgradeFailed();
        public static final Parcelable.Creator<UpgradeFailed> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<UpgradeFailed> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpgradeFailed createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return UpgradeFailed.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpgradeFailed[] newArray(int i10) {
                return new UpgradeFailed[i10];
            }
        }

        private UpgradeFailed() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class UpgradeSuccessful implements AdaptFirmwareUpdateState {
        public static final UpgradeSuccessful INSTANCE = new UpgradeSuccessful();
        public static final Parcelable.Creator<UpgradeSuccessful> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<UpgradeSuccessful> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpgradeSuccessful createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return UpgradeSuccessful.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpgradeSuccessful[] newArray(int i10) {
                return new UpgradeSuccessful[i10];
            }
        }

        private UpgradeSuccessful() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class UploadComplete implements AdaptFirmwareUpdateState {
        public static final UploadComplete INSTANCE = new UploadComplete();
        public static final Parcelable.Creator<UploadComplete> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<UploadComplete> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UploadComplete createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return UploadComplete.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UploadComplete[] newArray(int i10) {
                return new UploadComplete[i10];
            }
        }

        private UploadComplete() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static abstract class UploadInProgressError implements AdaptFirmwareUpdateState {

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class SlotCheck extends UploadInProgressError {
            public static final SlotCheck INSTANCE = new SlotCheck();
            public static final Parcelable.Creator<SlotCheck> CREATOR = new Creator();

            /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
            public static final class Creator implements Parcelable.Creator<SlotCheck> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final SlotCheck createFromParcel(Parcel parcel) {
                    h.j(parcel, "parcel");
                    parcel.readInt();
                    return SlotCheck.INSTANCE;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final SlotCheck[] newArray(int i10) {
                    return new SlotCheck[i10];
                }
            }

            private SlotCheck() {
                super(null);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                h.j(parcel, "out");
                parcel.writeInt(1);
            }
        }

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class TransferStopped extends UploadInProgressError {
            public static final TransferStopped INSTANCE = new TransferStopped();
            public static final Parcelable.Creator<TransferStopped> CREATOR = new Creator();

            /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
            public static final class Creator implements Parcelable.Creator<TransferStopped> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final TransferStopped createFromParcel(Parcel parcel) {
                    h.j(parcel, "parcel");
                    parcel.readInt();
                    return TransferStopped.INSTANCE;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final TransferStopped[] newArray(int i10) {
                    return new TransferStopped[i10];
                }
            }

            private TransferStopped() {
                super(null);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                h.j(parcel, "out");
                parcel.writeInt(1);
            }
        }

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class UserCanceled extends UploadInProgressError {
            public static final UserCanceled INSTANCE = new UserCanceled();
            public static final Parcelable.Creator<UserCanceled> CREATOR = new Creator();

            /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
            public static final class Creator implements Parcelable.Creator<UserCanceled> {
                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final UserCanceled createFromParcel(Parcel parcel) {
                    h.j(parcel, "parcel");
                    parcel.readInt();
                    return UserCanceled.INSTANCE;
                }

                /* JADX WARN: Can't rename method to resolve collision */
                @Override // android.os.Parcelable.Creator
                public final UserCanceled[] newArray(int i10) {
                    return new UserCanceled[i10];
                }
            }

            private UserCanceled() {
                super(null);
            }

            @Override // android.os.Parcelable
            public int describeContents() {
                return 0;
            }

            @Override // android.os.Parcelable
            public void writeToParcel(Parcel parcel, int i10) {
                h.j(parcel, "out");
                parcel.writeInt(1);
            }
        }

        private UploadInProgressError() {
        }

        public /* synthetic */ UploadInProgressError(rd.h hVar) {
            this();
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
    public static final class UploadProgress implements AdaptFirmwareUpdateState {
        public static final UploadProgress INSTANCE = new UploadProgress();
        public static final Parcelable.Creator<UploadProgress> CREATOR = new Creator();

        /* JADX INFO: compiled from: AdaptFirmwareUpdateState.kt */
        public static final class Creator implements Parcelable.Creator<UploadProgress> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UploadProgress createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                parcel.readInt();
                return UploadProgress.INSTANCE;
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UploadProgress[] newArray(int i10) {
                return new UploadProgress[i10];
            }
        }

        private UploadProgress() {
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            parcel.writeInt(1);
        }
    }
}
