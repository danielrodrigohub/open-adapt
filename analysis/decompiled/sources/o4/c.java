package o4;

import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: StreamKey.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements Comparable<c>, Parcelable {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f12267h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f12268i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f12269j;

    /* JADX INFO: compiled from: StreamKey.java */
    public class a implements Parcelable.Creator<c> {
        @Override // android.os.Parcelable.Creator
        public final c createFromParcel(Parcel parcel) {
            return new c(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final c[] newArray(int i10) {
            return new c[i10];
        }
    }

    public c() {
        this.f12267h = -1;
        this.f12268i = -1;
        this.f12269j = -1;
    }

    @Override // java.lang.Comparable
    public final int compareTo(c cVar) {
        c cVar2 = cVar;
        int i10 = this.f12267h - cVar2.f12267h;
        if (i10 != 0) {
            return i10;
        }
        int i11 = this.f12268i - cVar2.f12268i;
        return i11 == 0 ? this.f12269j - cVar2.f12269j : i11;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || c.class != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        return this.f12267h == cVar.f12267h && this.f12268i == cVar.f12268i && this.f12269j == cVar.f12269j;
    }

    public final int hashCode() {
        return (((this.f12267h * 31) + this.f12268i) * 31) + this.f12269j;
    }

    public final String toString() {
        return this.f12267h + "." + this.f12268i + "." + this.f12269j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f12267h);
        parcel.writeInt(this.f12268i);
        parcel.writeInt(this.f12269j);
    }

    public c(Parcel parcel) {
        this.f12267h = parcel.readInt();
        this.f12268i = parcel.readInt();
        this.f12269j = parcel.readInt();
    }
}
