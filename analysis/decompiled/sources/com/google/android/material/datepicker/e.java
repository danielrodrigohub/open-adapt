package com.google.android.material.datepicker;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;

/* JADX INFO: compiled from: DateValidatorPointForward.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements com.google.android.material.datepicker.a.c {
    public static final Parcelable.Creator<e> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f5204h;

    /* JADX INFO: compiled from: DateValidatorPointForward.java */
    public class a implements Parcelable.Creator<e> {
        @Override // android.os.Parcelable.Creator
        public final e createFromParcel(Parcel parcel) {
            return new e(parcel.readLong(), null);
        }

        @Override // android.os.Parcelable.Creator
        public final e[] newArray(int i10) {
            return new e[i10];
        }
    }

    public e() {
        this.f5204h = Long.MIN_VALUE;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof e) && this.f5204h == ((e) obj).f5204h;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{Long.valueOf(this.f5204h)});
    }

    @Override // com.google.android.material.datepicker.a.c
    public final boolean n(long j10) {
        return j10 >= this.f5204h;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeLong(this.f5204h);
    }

    public e(long j10, a aVar) {
        this.f5204h = j10;
    }
}
