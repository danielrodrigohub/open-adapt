package k4;

import android.os.Parcel;
import android.os.Parcelable;
import m5.g0;

/* JADX INFO: compiled from: InternalFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends h {
    public static final Parcelable.Creator<i> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9677i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9678j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f9679k;

    /* JADX INFO: compiled from: InternalFrame.java */
    public class a implements Parcelable.Creator<i> {
        @Override // android.os.Parcelable.Creator
        public final i createFromParcel(Parcel parcel) {
            return new i(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final i[] newArray(int i10) {
            return new i[i10];
        }
    }

    public i(String str, String str2, String str3) {
        super("----");
        this.f9677i = str;
        this.f9678j = str2;
        this.f9679k = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return g0.a(this.f9678j, iVar.f9678j) && g0.a(this.f9677i, iVar.f9677i) && g0.a(this.f9679k, iVar.f9679k);
    }

    public final int hashCode() {
        String str = this.f9677i;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f9678j;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f9679k;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // k4.h
    public final String toString() {
        return this.f9676h + ": domain=" + this.f9677i + ", description=" + this.f9678j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9676h);
        parcel.writeString(this.f9677i);
        parcel.writeString(this.f9679k);
    }

    public i(Parcel parcel) {
        super("----");
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f9677i = string;
        this.f9678j = parcel.readString();
        this.f9679k = parcel.readString();
    }
}
