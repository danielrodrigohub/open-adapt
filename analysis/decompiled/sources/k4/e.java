package k4;

import android.os.Parcel;
import android.os.Parcelable;
import m5.g0;

/* JADX INFO: compiled from: CommentFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends h {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9664i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f9665j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f9666k;

    /* JADX INFO: compiled from: CommentFrame.java */
    public class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            return new e(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e(String str, String str2, String str3) {
        super("COMM");
        this.f9664i = str;
        this.f9665j = str2;
        this.f9666k = str3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || e.class != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        return g0.a(this.f9665j, eVar.f9665j) && g0.a(this.f9664i, eVar.f9664i) && g0.a(this.f9666k, eVar.f9666k);
    }

    public final int hashCode() {
        String str = this.f9664i;
        int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
        String str2 = this.f9665j;
        int iHashCode2 = (iHashCode + (str2 != null ? str2.hashCode() : 0)) * 31;
        String str3 = this.f9666k;
        return iHashCode2 + (str3 != null ? str3.hashCode() : 0);
    }

    @Override // k4.h
    public final String toString() {
        return this.f9676h + ": language=" + this.f9664i + ", description=" + this.f9665j;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9676h);
        parcel.writeString(this.f9664i);
        parcel.writeString(this.f9666k);
    }

    public e(Parcel parcel) {
        super("COMM");
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f9664i = string;
        this.f9665j = parcel.readString();
        this.f9666k = parcel.readString();
    }
}
