package com.nike.adapt.adk.model;

import a4.g;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: AdaptCustomAnimation.kt */
/* JADX INFO: loaded from: classes.dex */
public final class AdaptCustomAnimation implements Parcelable {
    public static final Parcelable.Creator<AdaptCustomAnimation> CREATOR = new Creator();
    private final List<AdaptAppAnimationFrame> frames;

    /* JADX INFO: renamed from: id, reason: collision with root package name */
    private final int f5677id;
    private final boolean interruptable;
    private final int repeatCount;
    private final boolean resumable;
    private final int type;

    /* JADX INFO: compiled from: AdaptCustomAnimation.kt */
    public static final class Creator implements Parcelable.Creator<AdaptCustomAnimation> {
        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptCustomAnimation createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            int i10 = parcel.readInt();
            boolean z10 = parcel.readInt() != 0;
            int i11 = parcel.readInt();
            ArrayList arrayList = new ArrayList(i11);
            int iC = 0;
            while (iC != i11) {
                iC = a.c(AdaptAppAnimationFrame.CREATOR, parcel, arrayList, iC, 1);
            }
            return new AdaptCustomAnimation(i10, z10, arrayList, parcel.readInt() != 0, parcel.readInt(), parcel.readInt());
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override // android.os.Parcelable.Creator
        public final AdaptCustomAnimation[] newArray(int i10) {
            return new AdaptCustomAnimation[i10];
        }
    }

    public AdaptCustomAnimation(int i10, boolean z10, List<AdaptAppAnimationFrame> list, boolean z11, int i11, int i12) {
        h.j(list, "frames");
        this.f5677id = i10;
        this.resumable = z10;
        this.frames = list;
        this.interruptable = z11;
        this.type = i11;
        this.repeatCount = i12;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ AdaptCustomAnimation copy$default(AdaptCustomAnimation adaptCustomAnimation, int i10, boolean z10, List list, boolean z11, int i11, int i12, int i13, Object obj) {
        if ((i13 & 1) != 0) {
            i10 = adaptCustomAnimation.f5677id;
        }
        if ((i13 & 2) != 0) {
            z10 = adaptCustomAnimation.resumable;
        }
        boolean z12 = z10;
        if ((i13 & 4) != 0) {
            list = adaptCustomAnimation.frames;
        }
        List list2 = list;
        if ((i13 & 8) != 0) {
            z11 = adaptCustomAnimation.interruptable;
        }
        boolean z13 = z11;
        if ((i13 & 16) != 0) {
            i11 = adaptCustomAnimation.type;
        }
        int i14 = i11;
        if ((i13 & 32) != 0) {
            i12 = adaptCustomAnimation.repeatCount;
        }
        return adaptCustomAnimation.copy(i10, z12, list2, z13, i14, i12);
    }

    public final int component1() {
        return this.f5677id;
    }

    public final boolean component2() {
        return this.resumable;
    }

    public final List<AdaptAppAnimationFrame> component3() {
        return this.frames;
    }

    public final boolean component4() {
        return this.interruptable;
    }

    public final int component5() {
        return this.type;
    }

    public final int component6() {
        return this.repeatCount;
    }

    public final AdaptCustomAnimation copy(int i10, boolean z10, List<AdaptAppAnimationFrame> list, boolean z11, int i11, int i12) {
        h.j(list, "frames");
        return new AdaptCustomAnimation(i10, z10, list, z11, i11, i12);
    }

    @Override // android.os.Parcelable
    public int describeContents() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AdaptCustomAnimation)) {
            return false;
        }
        AdaptCustomAnimation adaptCustomAnimation = (AdaptCustomAnimation) obj;
        return this.f5677id == adaptCustomAnimation.f5677id && this.resumable == adaptCustomAnimation.resumable && h.c(this.frames, adaptCustomAnimation.frames) && this.interruptable == adaptCustomAnimation.interruptable && this.type == adaptCustomAnimation.type && this.repeatCount == adaptCustomAnimation.repeatCount;
    }

    public final List<AdaptAppAnimationFrame> getFrames() {
        return this.frames;
    }

    public final int getId() {
        return this.f5677id;
    }

    public final boolean getInterruptable() {
        return this.interruptable;
    }

    public final int getRepeatCount() {
        return this.repeatCount;
    }

    public final boolean getResumable() {
        return this.resumable;
    }

    public final int getType() {
        return this.type;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r0v6, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v8 */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r2v0 */
    /* JADX WARN: Type inference failed for: r2v1, types: [int] */
    /* JADX WARN: Type inference failed for: r2v3 */
    public int hashCode() {
        int iHashCode = Integer.hashCode(this.f5677id) * 31;
        boolean z10 = this.resumable;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        int iD = g.d(this.frames, (iHashCode + r10) * 31, 31);
        boolean z11 = this.interruptable;
        return Integer.hashCode(this.repeatCount) + r0.e(this.type, (iD + (z11 ? 1 : z11)) * 31, 31);
    }

    public String toString() {
        return "AdaptCustomAnimation(id=" + this.f5677id + ", resumable=" + this.resumable + ", frames=" + this.frames + ", interruptable=" + this.interruptable + ", type=" + this.type + ", repeatCount=" + this.repeatCount + ")";
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeInt(this.f5677id);
        parcel.writeInt(this.resumable ? 1 : 0);
        Iterator itD = ca.a.d(this.frames, parcel);
        while (itD.hasNext()) {
            ((AdaptAppAnimationFrame) itD.next()).writeToParcel(parcel, i10);
        }
        parcel.writeInt(this.interruptable ? 1 : 0);
        parcel.writeInt(this.type);
        parcel.writeInt(this.repeatCount);
    }

    public /* synthetic */ AdaptCustomAnimation(int i10, boolean z10, List list, boolean z11, int i11, int i12, int i13, rd.h hVar) {
        this(i10, (i13 & 2) != 0 ? true : z10, list, (i13 & 8) != 0 ? true : z11, (i13 & 16) != 0 ? 0 : i11, (i13 & 32) != 0 ? -1 : i12);
    }
}
