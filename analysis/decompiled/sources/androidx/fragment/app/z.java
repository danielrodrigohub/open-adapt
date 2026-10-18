package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import java.util.ArrayList;

/* JADX INFO: compiled from: FragmentManagerState.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public final class z implements Parcelable {
    public static final Parcelable.Creator<z> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public ArrayList<d0> f2084h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList<String> f2085i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public b[] f2086j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f2087k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public String f2088l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public ArrayList<String> f2089m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public ArrayList<Bundle> f2090n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public ArrayList<x.k> f2091o;

    /* JADX INFO: compiled from: FragmentManagerState.java */
    public class a implements Parcelable.Creator<z> {
        @Override // android.os.Parcelable.Creator
        public final z createFromParcel(Parcel parcel) {
            return new z(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final z[] newArray(int i10) {
            return new z[i10];
        }
    }

    public z() {
        this.f2088l = null;
        this.f2089m = new ArrayList<>();
        this.f2090n = new ArrayList<>();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeTypedList(this.f2084h);
        parcel.writeStringList(this.f2085i);
        parcel.writeTypedArray(this.f2086j, i10);
        parcel.writeInt(this.f2087k);
        parcel.writeString(this.f2088l);
        parcel.writeStringList(this.f2089m);
        parcel.writeTypedList(this.f2090n);
        parcel.writeTypedList(this.f2091o);
    }

    public z(Parcel parcel) {
        this.f2088l = null;
        this.f2089m = new ArrayList<>();
        this.f2090n = new ArrayList<>();
        this.f2084h = parcel.createTypedArrayList(d0.CREATOR);
        this.f2085i = parcel.createStringArrayList();
        this.f2086j = (b[]) parcel.createTypedArray(b.CREATOR);
        this.f2087k = parcel.readInt();
        this.f2088l = parcel.readString();
        this.f2089m = parcel.createStringArrayList();
        this.f2090n = parcel.createTypedArrayList(Bundle.CREATOR);
        this.f2091o = parcel.createTypedArrayList(x.k.CREATOR);
    }
}
