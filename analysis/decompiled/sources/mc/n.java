package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: Gesture.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n implements Parcelable {
    public static final Parcelable.Creator<n> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final m f11075h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l f11076i;

    /* JADX INFO: compiled from: Gesture.kt */
    public static final class a implements Parcelable.Creator<n> {
        @Override // android.os.Parcelable.Creator
        public final n createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new n(m.CREATOR.createFromParcel(parcel), l.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final n[] newArray(int i10) {
            return new n[i10];
        }
    }

    public n(m mVar, l lVar) {
        p4.h.j(mVar, "classification");
        p4.h.j(lVar, "action");
        this.f11075h = mVar;
        this.f11076i = lVar;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof n)) {
            return false;
        }
        n nVar = (n) obj;
        return this.f11075h == nVar.f11075h && this.f11076i == nVar.f11076i;
    }

    public final int hashCode() {
        return this.f11076i.hashCode() + (this.f11075h.hashCode() * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("GestureConfiguration(classification=");
        sbC.append(this.f11075h);
        sbC.append(", action=");
        sbC.append(this.f11076i);
        sbC.append(')');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f11075h.writeToParcel(parcel, i10);
        this.f11076i.writeToParcel(parcel, i10);
    }
}
