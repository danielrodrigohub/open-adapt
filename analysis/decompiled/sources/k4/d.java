package k4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import m5.g0;

/* JADX INFO: compiled from: ChapterTocFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class d extends h {
    public static final Parcelable.Creator<d> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9659i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f9660j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f9661k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final String[] f9662l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final h[] f9663m;

    /* JADX INFO: compiled from: ChapterTocFrame.java */
    public class a implements Parcelable.Creator<d> {
        @Override // android.os.Parcelable.Creator
        public final d createFromParcel(Parcel parcel) {
            return new d(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final d[] newArray(int i10) {
            return new d[i10];
        }
    }

    public d(String str, boolean z10, boolean z11, String[] strArr, h[] hVarArr) {
        super("CTOC");
        this.f9659i = str;
        this.f9660j = z10;
        this.f9661k = z11;
        this.f9662l = strArr;
        this.f9663m = hVarArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f9660j == dVar.f9660j && this.f9661k == dVar.f9661k && g0.a(this.f9659i, dVar.f9659i) && Arrays.equals(this.f9662l, dVar.f9662l) && Arrays.equals(this.f9663m, dVar.f9663m);
    }

    public final int hashCode() {
        int i10 = (((527 + (this.f9660j ? 1 : 0)) * 31) + (this.f9661k ? 1 : 0)) * 31;
        String str = this.f9659i;
        return i10 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9659i);
        parcel.writeByte(this.f9660j ? (byte) 1 : (byte) 0);
        parcel.writeByte(this.f9661k ? (byte) 1 : (byte) 0);
        parcel.writeStringArray(this.f9662l);
        parcel.writeInt(this.f9663m.length);
        for (h hVar : this.f9663m) {
            parcel.writeParcelable(hVar, 0);
        }
    }

    public d(Parcel parcel) {
        super("CTOC");
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f9659i = string;
        this.f9660j = parcel.readByte() != 0;
        this.f9661k = parcel.readByte() != 0;
        this.f9662l = parcel.createStringArray();
        int i11 = parcel.readInt();
        this.f9663m = new h[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            this.f9663m[i12] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }
}
