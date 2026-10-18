package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: FragmentState.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class d0 implements Parcelable {
    public static final Parcelable.Creator<d0> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f1858h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f1859i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f1860j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f1861k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f1862l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final String f1863m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final boolean f1864n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final boolean f1865o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final boolean f1866p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final Bundle f1867q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f1868r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final int f1869s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public Bundle f1870t;

    /* JADX INFO: compiled from: FragmentState.java */
    public class a implements Parcelable.Creator<d0> {
        @Override // android.os.Parcelable.Creator
        public final d0 createFromParcel(Parcel parcel) {
            return new d0(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final d0[] newArray(int i10) {
            return new d0[i10];
        }
    }

    public d0(m mVar) {
        this.f1858h = mVar.getClass().getName();
        this.f1859i = mVar.f1970m;
        this.f1860j = mVar.f1978u;
        this.f1861k = mVar.D;
        this.f1862l = mVar.E;
        this.f1863m = mVar.F;
        this.f1864n = mVar.I;
        this.f1865o = mVar.f1977t;
        this.f1866p = mVar.H;
        this.f1867q = mVar.f1971n;
        this.f1868r = mVar.G;
        this.f1869s = mVar.T.ordinal();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder(128);
        sb2.append("FragmentState{");
        sb2.append(this.f1858h);
        sb2.append(" (");
        sb2.append(this.f1859i);
        sb2.append(")}:");
        if (this.f1860j) {
            sb2.append(" fromLayout");
        }
        if (this.f1862l != 0) {
            sb2.append(" id=0x");
            sb2.append(Integer.toHexString(this.f1862l));
        }
        String str = this.f1863m;
        if (str != null && !str.isEmpty()) {
            sb2.append(" tag=");
            sb2.append(this.f1863m);
        }
        if (this.f1864n) {
            sb2.append(" retainInstance");
        }
        if (this.f1865o) {
            sb2.append(" removing");
        }
        if (this.f1866p) {
            sb2.append(" detached");
        }
        if (this.f1868r) {
            sb2.append(" hidden");
        }
        return sb2.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeString(this.f1858h);
        parcel.writeString(this.f1859i);
        parcel.writeInt(this.f1860j ? 1 : 0);
        parcel.writeInt(this.f1861k);
        parcel.writeInt(this.f1862l);
        parcel.writeString(this.f1863m);
        parcel.writeInt(this.f1864n ? 1 : 0);
        parcel.writeInt(this.f1865o ? 1 : 0);
        parcel.writeInt(this.f1866p ? 1 : 0);
        parcel.writeBundle(this.f1867q);
        parcel.writeInt(this.f1868r ? 1 : 0);
        parcel.writeBundle(this.f1870t);
        parcel.writeInt(this.f1869s);
    }

    public d0(Parcel parcel) {
        this.f1858h = parcel.readString();
        this.f1859i = parcel.readString();
        this.f1860j = parcel.readInt() != 0;
        this.f1861k = parcel.readInt();
        this.f1862l = parcel.readInt();
        this.f1863m = parcel.readString();
        this.f1864n = parcel.readInt() != 0;
        this.f1865o = parcel.readInt() != 0;
        this.f1866p = parcel.readInt() != 0;
        this.f1867q = parcel.readBundle();
        this.f1868r = parcel.readInt() != 0;
        this.f1870t = parcel.readBundle();
        this.f1869s = parcel.readInt();
    }
}
