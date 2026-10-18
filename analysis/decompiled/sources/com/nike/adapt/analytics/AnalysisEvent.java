package com.nike.adapt.analytics;

import android.os.Parcel;
import android.os.Parcelable;
import p4.h;

/* JADX INFO: compiled from: AnalysisEvent.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AnalysisEvent implements Parcelable {
    public static final Parcelable.Creator<AnalysisEvent> CREATOR = new Creator();
    private final Track analytic;
    private final Track breadCrumb;
    private final boolean isState;

    /* JADX INFO: compiled from: AnalysisEvent.kt */
    public static final class Creator implements Parcelable.Creator<AnalysisEvent> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AnalysisEvent createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new AnalysisEvent(parcel.readInt() == 0 ? null : Track.CREATOR.createFromParcel(parcel), parcel.readInt() != 0 ? Track.CREATOR.createFromParcel(parcel) : null, parcel.readInt() != 0);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AnalysisEvent[] newArray(int i10) {
            return new AnalysisEvent[i10];
        }
    }

    public AnalysisEvent() {
        this((Track) null, (Track) null, false, 7, (rd.h) null);
    }

    public AnalysisEvent(Track track, Track track2, boolean z10) {
        this.breadCrumb = track;
        this.analytic = track2;
        this.isState = z10;
    }

    public static /* synthetic */ AnalysisEvent copy$default(AnalysisEvent analysisEvent, Track track, Track track2, boolean z10, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            track = analysisEvent.breadCrumb;
        }
        if ((i10 & 2) != 0) {
            track2 = analysisEvent.analytic;
        }
        if ((i10 & 4) != 0) {
            z10 = analysisEvent.isState;
        }
        return analysisEvent.copy(track, track2, z10);
    }

    public final Track component1() {
        return this.breadCrumb;
    }

    public final Track component2() {
        return this.analytic;
    }

    public final boolean component3() {
        return this.isState;
    }

    public final AnalysisEvent copy(Track track, Track track2, boolean z10) {
        return new AnalysisEvent(track, track2, z10);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AnalysisEvent)) {
            return false;
        }
        AnalysisEvent analysisEvent = (AnalysisEvent) obj;
        return h.c(this.breadCrumb, analysisEvent.breadCrumb) && h.c(this.analytic, analysisEvent.analytic) && this.isState == analysisEvent.isState;
    }

    public final Track getAnalytic() {
        return this.analytic;
    }

    public final Track getBreadCrumb() {
        return this.breadCrumb;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public int hashCode() {
        Track track = this.breadCrumb;
        int iHashCode = (track == null ? 0 : track.hashCode()) * 31;
        Track track2 = this.analytic;
        int iHashCode2 = (iHashCode + (track2 != null ? track2.hashCode() : 0)) * 31;
        boolean z10 = this.isState;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return iHashCode2 + r10;
    }

    public final boolean isState() {
        return this.isState;
    }

    public String toString() {
        return "AnalysisEvent(breadCrumb=" + this.breadCrumb + ", analytic=" + this.analytic + ", isState=" + this.isState + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        Track track = this.breadCrumb;
        if (track == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            track.writeToParcel(parcel, i10);
        }
        Track track2 = this.analytic;
        if (track2 == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            track2.writeToParcel(parcel, i10);
        }
        parcel.writeInt(this.isState ? 1 : 0);
    }

    public /* synthetic */ AnalysisEvent(Track track, Track track2, boolean z10, int i10, rd.h hVar) {
        this((i10 & 1) != 0 ? null : track, (i10 & 2) != 0 ? null : track2, (i10 & 4) != 0 ? false : z10);
    }

    public /* synthetic */ AnalysisEvent(String str, String str2, boolean z10, int i10, rd.h hVar) {
        this((i10 & 1) != 0 ? null : str, (i10 & 2) != 0 ? null : str2, (i10 & 4) != 0 ? false : z10);
    }

    public AnalysisEvent(String str, String str2, boolean z10) {
        this(str != null ? new Track(str, null, 2, null) : null, str2 != null ? new Track(str2, null, 2, null) : null, z10);
    }
}
