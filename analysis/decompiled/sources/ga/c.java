package ga;

import a1.f;
import android.os.Parcel;
import android.os.Parcelable;
import gd.q;
import java.util.Map;
import p4.h;

/* JADX INFO: compiled from: AdaptKitGestureNotification.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable, eb.d {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f7923h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final boolean f7924i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final ga.a f7925j;

    /* JADX INFO: compiled from: AdaptKitGestureNotification.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new c(parcel.readLong(), parcel.readInt() != 0, (ga.a) parcel.readParcelable(c.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(long j10, boolean z10, ga.a aVar) {
        h.j(aVar, "gestureConfiguration");
        this.f7923h = j10;
        this.f7924i = z10;
        this.f7925j = aVar;
    }

    @Override // eb.d
    public final String b() {
        boolean z10 = this.f7924i;
        long j10 = this.f7923h;
        String strB = this.f7925j.b();
        StringBuilder sb2 = new StringBuilder();
        sb2.append("GestureNotification gestureRecognized = ");
        sb2.append(z10);
        sb2.append(" timestamp = ");
        sb2.append(j10);
        return f.d(sb2, " Gesture = ", strB);
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof c)) {
            return false;
        }
        c cVar = (c) obj;
        return this.f7923h == cVar.f7923h && this.f7924i == cVar.f7924i && h.c(this.f7925j, cVar.f7925j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v3, types: [int] */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    public final int hashCode() {
        int iHashCode = Long.hashCode(this.f7923h) * 31;
        boolean z10 = this.f7924i;
        ?? r10 = z10;
        if (z10) {
            r10 = 1;
        }
        return this.f7925j.hashCode() + ((iHashCode + r10) * 31);
    }

    @Override // eb.d
    public final Map<String, Object> m() {
        return q.f8071h;
    }

    public final String toString() {
        return "AdaptKitGestureNotification(timestamp=" + this.f7923h + ", gestureRecognized=" + this.f7924i + ", gestureConfiguration=" + this.f7925j + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeLong(this.f7923h);
        parcel.writeInt(this.f7924i ? 1 : 0);
        parcel.writeParcelable(this.f7925j, i10);
    }
}
