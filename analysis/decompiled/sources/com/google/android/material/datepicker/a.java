package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: CalendarConstraints.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0088a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final t f5171h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final t f5172i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final c f5173j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public t f5174k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f5175l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f5176m;

    /* JADX INFO: renamed from: com.google.android.material.datepicker.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CalendarConstraints.java */
    public class C0088a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a((t) parcel.readParcelable(t.class.getClassLoader()), (t) parcel.readParcelable(t.class.getClassLoader()), (c) parcel.readParcelable(c.class.getClassLoader()), (t) parcel.readParcelable(t.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* JADX INFO: compiled from: CalendarConstraints.java */
    public static final class b {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final long f5177e = b0.a(t.m(1900, 0).f5256m);

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final long f5178f = b0.a(t.m(2100, 11).f5256m);

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public long f5179a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f5180b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Long f5181c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public c f5182d;

        public b(a aVar) {
            this.f5179a = f5177e;
            this.f5180b = f5178f;
            this.f5182d = new e();
            this.f5179a = aVar.f5171h.f5256m;
            this.f5180b = aVar.f5172i.f5256m;
            this.f5181c = Long.valueOf(aVar.f5174k.f5256m);
            this.f5182d = aVar.f5173j;
        }
    }

    /* JADX INFO: compiled from: CalendarConstraints.java */
    public interface c extends Parcelable {
        boolean n(long j10);
    }

    public a(t tVar, t tVar2, c cVar, t tVar3) {
        this.f5171h = tVar;
        this.f5172i = tVar2;
        this.f5174k = tVar3;
        this.f5173j = cVar;
        if (tVar3 != null && tVar.f5251h.compareTo(tVar3.f5251h) > 0) {
            throw new IllegalArgumentException("start Month cannot be after current Month");
        }
        if (tVar3 != null && tVar3.f5251h.compareTo(tVar2.f5251h) > 0) {
            throw new IllegalArgumentException("current Month cannot be after end Month");
        }
        this.f5176m = tVar.A(tVar2) + 1;
        this.f5175l = (tVar2.f5253j - tVar.f5253j) + 1;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof a)) {
            return false;
        }
        a aVar = (a) obj;
        return this.f5171h.equals(aVar.f5171h) && this.f5172i.equals(aVar.f5172i) && i0.c.a(this.f5174k, aVar.f5174k) && this.f5173j.equals(aVar.f5173j);
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f5171h, this.f5172i, this.f5174k, this.f5173j});
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f5171h, 0);
        parcel.writeParcelable(this.f5172i, 0);
        parcel.writeParcelable(this.f5174k, 0);
        parcel.writeParcelable(this.f5173j, 0);
    }
}
