package k4;

import android.os.Parcel;
import android.os.Parcelable;
import m5.g0;

/* JADX INFO: compiled from: UrlLinkFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class m extends h {
    public static final Parcelable.Creator<m> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9689i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9690j;

    /* JADX INFO: compiled from: UrlLinkFrame.java */
    public class a implements Parcelable.Creator<m> {
        @Override // android.os.Parcelable.Creator
        public final m createFromParcel(Parcel parcel) {
            return new m(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final m[] newArray(int i10) {
            return new m[i10];
        }
    }

    public m(String str, String str2, String str3) {
        super(str);
        this.f9689i = str2;
        this.f9690j = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || m.class != obj.getClass()) {
            return false;
        }
        m mVar = (m) obj;
        return this.f9676h.equals(mVar.f9676h) && g0.a(this.f9689i, mVar.f9689i) && g0.a(this.f9690j, mVar.f9690j);
    }

    public final int hashCode() {
        int iC = a1.f.c(this.f9676h, 527, 31);
        String str = this.f9689i;
        int iHashCode = (iC + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f9690j;
        return iHashCode + (str2 != null ? str2.hashCode() : 0);
    }

    @Override // k4.h
    public final String toString() {
        return this.f9676h + ": url=" + this.f9690j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9676h);
        parcel.writeString(this.f9689i);
        parcel.writeString(this.f9690j);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public m(Parcel parcel) {
        String string = parcel.readString();
        int i10 = g0.f10384a;
        super(string);
        this.f9689i = parcel.readString();
        this.f9690j = parcel.readString();
    }
}
