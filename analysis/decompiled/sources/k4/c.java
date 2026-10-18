package k4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import m5.g0;

/* JADX INFO: compiled from: ChapterFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends h {
    public static final Parcelable.Creator<c> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f9653i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9654j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9655k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final long f9656l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final long f9657m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final h[] f9658n;

    /* JADX INFO: compiled from: ChapterFrame.java */
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

    public c(String str, int i10, int i11, long j10, long j11, h[] hVarArr) {
        super("CHAP");
        this.f9653i = str;
        this.f9654j = i10;
        this.f9655k = i11;
        this.f9656l = j10;
        this.f9657m = j11;
        this.f9658n = hVarArr;
    }

    @Override // k4.h, android.os.Parcelable
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
        return this.f9654j == cVar.f9654j && this.f9655k == cVar.f9655k && this.f9656l == cVar.f9656l && this.f9657m == cVar.f9657m && g0.a(this.f9653i, cVar.f9653i) && Arrays.equals(this.f9658n, cVar.f9658n);
    }

    public final int hashCode() {
        int i10 = (((((((527 + this.f9654j) * 31) + this.f9655k) * 31) + ((int) this.f9656l)) * 31) + ((int) this.f9657m)) * 31;
        String str = this.f9653i;
        return i10 + (str != null ? str.hashCode() : 0);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f9653i);
        parcel.writeInt(this.f9654j);
        parcel.writeInt(this.f9655k);
        parcel.writeLong(this.f9656l);
        parcel.writeLong(this.f9657m);
        parcel.writeInt(this.f9658n.length);
        for (h hVar : this.f9658n) {
            parcel.writeParcelable(hVar, 0);
        }
    }

    public c(Parcel parcel) {
        super("CHAP");
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f9653i = string;
        this.f9654j = parcel.readInt();
        this.f9655k = parcel.readInt();
        this.f9656l = parcel.readLong();
        this.f9657m = parcel.readLong();
        int i11 = parcel.readInt();
        this.f9658n = new h[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            this.f9658n[i12] = (h) parcel.readParcelable(h.class.getClassLoader());
        }
    }
}
