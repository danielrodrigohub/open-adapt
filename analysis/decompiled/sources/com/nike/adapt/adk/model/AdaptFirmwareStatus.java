package com.nike.adapt.adk.model;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AdaptFirmwareModels.kt */
/* JADX INFO: loaded from: classes.dex */
public interface AdaptFirmwareStatus extends Parcelable {

    /* JADX INFO: compiled from: AdaptFirmwareModels.kt */
    public static final class ErrorOccurred implements AdaptFirmwareStatus {
        public static final Parcelable.Creator<ErrorOccurred> CREATOR = new Creator();
        private final AdaptFirmwareVersion currentVersion;
        private final String errorMessage;

        /* JADX INFO: compiled from: AdaptFirmwareModels.kt */
        public static final class Creator implements Parcelable.Creator<ErrorOccurred> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ErrorOccurred createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                return new ErrorOccurred(AdaptFirmwareVersion.CREATOR.createFromParcel(parcel), parcel.readString());
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final ErrorOccurred[] newArray(int i10) {
                return new ErrorOccurred[i10];
            }
        }

        public ErrorOccurred(AdaptFirmwareVersion adaptFirmwareVersion, String str) {
            h.j(adaptFirmwareVersion, "currentVersion");
            h.j(str, "errorMessage");
            this.currentVersion = adaptFirmwareVersion;
            this.errorMessage = str;
        }

        public static /* synthetic */ ErrorOccurred copy$default(ErrorOccurred errorOccurred, AdaptFirmwareVersion adaptFirmwareVersion, String str, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                adaptFirmwareVersion = errorOccurred.getCurrentVersion();
            }
            if ((i10 & 2) != 0) {
                str = errorOccurred.errorMessage;
            }
            return errorOccurred.copy(adaptFirmwareVersion, str);
        }

        public final AdaptFirmwareVersion component1() {
            return getCurrentVersion();
        }

        public final String component2() {
            return this.errorMessage;
        }

        public final ErrorOccurred copy(AdaptFirmwareVersion adaptFirmwareVersion, String str) {
            h.j(adaptFirmwareVersion, "currentVersion");
            h.j(str, "errorMessage");
            return new ErrorOccurred(adaptFirmwareVersion, str);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof ErrorOccurred)) {
                return false;
            }
            ErrorOccurred errorOccurred = (ErrorOccurred) obj;
            return h.c(getCurrentVersion(), errorOccurred.getCurrentVersion()) && h.c(this.errorMessage, errorOccurred.errorMessage);
        }

        @Override // com.nike.adapt.adk.model.AdaptFirmwareStatus
        public AdaptFirmwareVersion getCurrentVersion() {
            return this.currentVersion;
        }

        public final String getErrorMessage() {
            return this.errorMessage;
        }

        public int hashCode() {
            return this.errorMessage.hashCode() + (getCurrentVersion().hashCode() * 31);
        }

        public String toString() {
            return "ErrorOccurred(currentVersion=" + getCurrentVersion() + ", errorMessage=" + this.errorMessage + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            this.currentVersion.writeToParcel(parcel, i10);
            parcel.writeString(this.errorMessage);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareModels.kt */
    public static final class UpToDate implements AdaptFirmwareStatus {
        public static final Parcelable.Creator<UpToDate> CREATOR = new Creator();
        private final AdaptFirmwareVersion currentVersion;

        /* JADX INFO: compiled from: AdaptFirmwareModels.kt */
        public static final class Creator implements Parcelable.Creator<UpToDate> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpToDate createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                return new UpToDate(AdaptFirmwareVersion.CREATOR.createFromParcel(parcel));
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpToDate[] newArray(int i10) {
                return new UpToDate[i10];
            }
        }

        public UpToDate(AdaptFirmwareVersion adaptFirmwareVersion) {
            h.j(adaptFirmwareVersion, "currentVersion");
            this.currentVersion = adaptFirmwareVersion;
        }

        public static /* synthetic */ UpToDate copy$default(UpToDate upToDate, AdaptFirmwareVersion adaptFirmwareVersion, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                adaptFirmwareVersion = upToDate.getCurrentVersion();
            }
            return upToDate.copy(adaptFirmwareVersion);
        }

        public final AdaptFirmwareVersion component1() {
            return getCurrentVersion();
        }

        public final UpToDate copy(AdaptFirmwareVersion adaptFirmwareVersion) {
            h.j(adaptFirmwareVersion, "currentVersion");
            return new UpToDate(adaptFirmwareVersion);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof UpToDate) && h.c(getCurrentVersion(), ((UpToDate) obj).getCurrentVersion());
        }

        @Override // com.nike.adapt.adk.model.AdaptFirmwareStatus
        public AdaptFirmwareVersion getCurrentVersion() {
            return this.currentVersion;
        }

        public int hashCode() {
            return getCurrentVersion().hashCode();
        }

        public String toString() {
            return "UpToDate(currentVersion=" + getCurrentVersion() + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            this.currentVersion.writeToParcel(parcel, i10);
        }
    }

    /* JADX INFO: compiled from: AdaptFirmwareModels.kt */
    public static final class UpdateAvailable implements AdaptFirmwareStatus {
        public static final Parcelable.Creator<UpdateAvailable> CREATOR = new Creator();
        private final AdaptFirmwareVersion currentVersion;
        private final boolean forceUpdateRequired;
        private final boolean inBetaProgram;
        private final boolean readyForUpdate;
        private final String updatedVersion;

        /* JADX INFO: compiled from: AdaptFirmwareModels.kt */
        public static final class Creator implements Parcelable.Creator<UpdateAvailable> {
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpdateAvailable createFromParcel(Parcel parcel) {
                h.j(parcel, "parcel");
                return new UpdateAvailable(AdaptFirmwareVersion.CREATOR.createFromParcel(parcel), parcel.readInt() != 0, parcel.readString(), parcel.readInt() != 0, parcel.readInt() != 0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // android.os.Parcelable.Creator
            public final UpdateAvailable[] newArray(int i10) {
                return new UpdateAvailable[i10];
            }
        }

        public UpdateAvailable(AdaptFirmwareVersion adaptFirmwareVersion, boolean z10, String str, boolean z11, boolean z12) {
            h.j(adaptFirmwareVersion, "currentVersion");
            h.j(str, "updatedVersion");
            this.currentVersion = adaptFirmwareVersion;
            this.readyForUpdate = z10;
            this.updatedVersion = str;
            this.inBetaProgram = z11;
            this.forceUpdateRequired = z12;
        }

        public static /* synthetic */ UpdateAvailable copy$default(UpdateAvailable updateAvailable, AdaptFirmwareVersion adaptFirmwareVersion, boolean z10, String str, boolean z11, boolean z12, int i10, Object obj) {
            if ((i10 & 1) != 0) {
                adaptFirmwareVersion = updateAvailable.getCurrentVersion();
            }
            if ((i10 & 2) != 0) {
                z10 = updateAvailable.readyForUpdate;
            }
            boolean z13 = z10;
            if ((i10 & 4) != 0) {
                str = updateAvailable.updatedVersion;
            }
            String str2 = str;
            if ((i10 & 8) != 0) {
                z11 = updateAvailable.inBetaProgram;
            }
            boolean z14 = z11;
            if ((i10 & 16) != 0) {
                z12 = updateAvailable.forceUpdateRequired;
            }
            return updateAvailable.copy(adaptFirmwareVersion, z13, str2, z14, z12);
        }

        public final AdaptFirmwareVersion component1() {
            return getCurrentVersion();
        }

        public final boolean component2() {
            return this.readyForUpdate;
        }

        public final String component3() {
            return this.updatedVersion;
        }

        public final boolean component4() {
            return this.inBetaProgram;
        }

        public final boolean component5() {
            return this.forceUpdateRequired;
        }

        public final UpdateAvailable copy(AdaptFirmwareVersion adaptFirmwareVersion, boolean z10, String str, boolean z11, boolean z12) {
            h.j(adaptFirmwareVersion, "currentVersion");
            h.j(str, "updatedVersion");
            return new UpdateAvailable(adaptFirmwareVersion, z10, str, z11, z12);
        }

        @Override // android.os.Parcelable
        public int describeContents() {
            return 0;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof UpdateAvailable)) {
                return false;
            }
            UpdateAvailable updateAvailable = (UpdateAvailable) obj;
            return h.c(getCurrentVersion(), updateAvailable.getCurrentVersion()) && this.readyForUpdate == updateAvailable.readyForUpdate && h.c(this.updatedVersion, updateAvailable.updatedVersion) && this.inBetaProgram == updateAvailable.inBetaProgram && this.forceUpdateRequired == updateAvailable.forceUpdateRequired;
        }

        @Override // com.nike.adapt.adk.model.AdaptFirmwareStatus
        public AdaptFirmwareVersion getCurrentVersion() {
            return this.currentVersion;
        }

        public final boolean getForceUpdateRequired() {
            return this.forceUpdateRequired;
        }

        public final boolean getInBetaProgram() {
            return this.inBetaProgram;
        }

        public final boolean getReadyForUpdate() {
            return this.readyForUpdate;
        }

        public final String getUpdatedVersion() {
            return this.updatedVersion;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [int] */
        /* JADX WARN: Type inference failed for: r0v6, types: [int] */
        /* JADX WARN: Type inference failed for: r0v8, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v4, types: [int] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        /* JADX WARN: Type inference failed for: r1v8 */
        /* JADX WARN: Type inference failed for: r1v9 */
        /* JADX WARN: Type inference failed for: r2v0 */
        /* JADX WARN: Type inference failed for: r2v1, types: [int] */
        /* JADX WARN: Type inference failed for: r2v2 */
        public int hashCode() {
            int iHashCode = getCurrentVersion().hashCode() * 31;
            boolean z10 = this.readyForUpdate;
            ?? r10 = z10;
            if (z10) {
                r10 = 1;
            }
            int iC = f.c(this.updatedVersion, (iHashCode + r10) * 31, 31);
            boolean z11 = this.inBetaProgram;
            ?? r11 = z11;
            if (z11) {
                r11 = 1;
            }
            int i10 = (iC + r11) * 31;
            boolean z12 = this.forceUpdateRequired;
            return i10 + (z12 ? 1 : z12);
        }

        public String toString() {
            return "UpdateAvailable(currentVersion=" + getCurrentVersion() + ", readyForUpdate=" + this.readyForUpdate + ", updatedVersion=" + this.updatedVersion + ", inBetaProgram=" + this.inBetaProgram + ", forceUpdateRequired=" + this.forceUpdateRequired + ")";
        }

        @Override // android.os.Parcelable
        public void writeToParcel(Parcel parcel, int i10) {
            h.j(parcel, "out");
            this.currentVersion.writeToParcel(parcel, i10);
            parcel.writeInt(this.readyForUpdate ? 1 : 0);
            parcel.writeString(this.updatedVersion);
            parcel.writeInt(this.inBetaProgram ? 1 : 0);
            parcel.writeInt(this.forceUpdateRequired ? 1 : 0);
        }
    }

    AdaptFirmwareVersion getCurrentVersion();
}
