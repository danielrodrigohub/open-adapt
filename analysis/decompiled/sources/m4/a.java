package m4;

import android.os.Parcel;
import android.os.Parcelable;
import m5.g0;

/* JADX INFO: compiled from: PrivateCommand.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends b {
    public static final Parcelable.Creator<a> CREATOR = new C0204a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f10323h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long f10324i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final byte[] f10325j;

    /* JADX INFO: renamed from: m4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PrivateCommand.java */
    public class C0204a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(long j10, byte[] bArr, long j11) {
        this.f10323h = j11;
        this.f10324i = j10;
        this.f10325j = bArr;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f10323h);
        parcel.writeLong(this.f10324i);
        parcel.writeByteArray(this.f10325j);
    }

    public a(Parcel parcel) {
        this.f10323h = parcel.readLong();
        this.f10324i = parcel.readLong();
        byte[] bArrCreateByteArray = parcel.createByteArray();
        int i10 = g0.f10384a;
        this.f10325j = bArrCreateByteArray;
    }
}
