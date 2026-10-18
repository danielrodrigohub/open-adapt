package h4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.Objects;
import m5.g0;
import n3.s0;

/* JADX INFO: compiled from: EventMessage.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements f4.a.b {
    public static final Parcelable.Creator<a> CREATOR;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final s0 f8173n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public static final s0 f8174o;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8175h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f8176i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long f8177j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final long f8178k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final byte[] f8179l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8180m;

    /* JADX INFO: renamed from: h4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: EventMessage.java */
    public class C0164a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    static {
        s0.a aVar = new s0.a();
        aVar.f11705k = "application/id3";
        f8173n = aVar.a();
        s0.a aVar2 = new s0.a();
        aVar2.f11705k = "application/x-scte35";
        f8174o = aVar2.a();
        CREATOR = new C0164a();
    }

    public a(String str, String str2, long j10, long j11, byte[] bArr) {
        this.f8175h = str;
        this.f8176i = str2;
        this.f8177j = j10;
        this.f8178k = j11;
        this.f8179l = bArr;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || a.class != obj.getClass()) {
            return false;
        }
        a aVar = (a) obj;
        return this.f8177j == aVar.f8177j && this.f8178k == aVar.f8178k && g0.a(this.f8175h, aVar.f8175h) && g0.a(this.f8176i, aVar.f8176i) && Arrays.equals(this.f8179l, aVar.f8179l);
    }

    public final int hashCode() {
        if (this.f8180m == 0) {
            String str = this.f8175h;
            int iHashCode = (527 + (str != null ? str.hashCode() : 0)) * 31;
            String str2 = this.f8176i;
            int iHashCode2 = str2 != null ? str2.hashCode() : 0;
            long j10 = this.f8177j;
            int i10 = (((iHashCode + iHashCode2) * 31) + ((int) (j10 ^ (j10 >>> 32)))) * 31;
            long j11 = this.f8178k;
            this.f8180m = Arrays.hashCode(this.f8179l) + ((i10 + ((int) (j11 ^ (j11 >>> 32)))) * 31);
        }
        return this.f8180m;
    }

    @Override // f4.a.b
    public final s0 s() {
        String str = this.f8175h;
        Objects.requireNonNull(str);
        switch (str) {
            case "urn:scte:scte35:2014:bin":
                return f8174o;
            case "https://aomedia.org/emsg/ID3":
            case "https://developer.apple.com/streaming/emsg-id3":
                return f8173n;
            default:
                return null;
        }
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("EMSG: scheme=");
        sbC.append(this.f8175h);
        sbC.append(", id=");
        sbC.append(this.f8178k);
        sbC.append(", durationMs=");
        sbC.append(this.f8177j);
        sbC.append(", value=");
        sbC.append(this.f8176i);
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f8175h);
        parcel.writeString(this.f8176i);
        parcel.writeLong(this.f8177j);
        parcel.writeLong(this.f8178k);
        parcel.writeByteArray(this.f8179l);
    }

    @Override // f4.a.b
    public final byte[] z() {
        if (s() != null) {
            return this.f8179l;
        }
        return null;
    }

    public a(Parcel parcel) {
        String string = parcel.readString();
        int i10 = g0.f10384a;
        this.f8175h = string;
        this.f8176i = parcel.readString();
        this.f8177j = parcel.readLong();
        this.f8178k = parcel.readLong();
        this.f8179l = parcel.createByteArray();
    }
}
