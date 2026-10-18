package mc;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: Battery.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Parcelable {
    public static final a CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f10977h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f10978i;

    /* JADX INFO: compiled from: Battery.kt */
    public static final class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new c(parcel.readInt(), q.g.b(5)[parcel.readInt()]);
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c(int i10, int i11) {
        androidx.appcompat.widget.o.d(i11, "state");
        this.f10977h = i10;
        this.f10978i = i11;
    }

    public final int a() {
        return this.f10977h;
    }

    public final int b() {
        return this.f10978i;
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
        return this.f10977h == cVar.f10977h && this.f10978i == cVar.f10978i;
    }

    public final int hashCode() {
        return q.g.a(this.f10978i) + (Integer.hashCode(this.f10977h) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("Battery(percent=");
        sbC.append(this.f10977h);
        sbC.append(", state=");
        sbC.append(ca.a.i(this.f10978i));
        sbC.append(')');
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "parcel");
        parcel.writeInt(this.f10977h);
        parcel.writeInt(q.g.a(this.f10978i));
    }
}
