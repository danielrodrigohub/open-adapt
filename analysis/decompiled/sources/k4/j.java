package k4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import m5.g0;

/* JADX INFO: compiled from: MlltFrame.java */
/* JADX INFO: loaded from: classes.dex */
public final class j extends h {
    public static final Parcelable.Creator<j> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f9680i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9681j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9682k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int[] f9683l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f9684m;

    /* JADX INFO: compiled from: MlltFrame.java */
    public class a implements Parcelable.Creator<j> {
        @Override // android.os.Parcelable.Creator
        public final j createFromParcel(Parcel parcel) {
            return new j(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final j[] newArray(int i10) {
            return new j[i10];
        }
    }

    public j(int i10, int i11, int i12, int[] iArr, int[] iArr2) {
        super("MLLT");
        this.f9680i = i10;
        this.f9681j = i11;
        this.f9682k = i12;
        this.f9683l = iArr;
        this.f9684m = iArr2;
    }

    @Override // k4.h, android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || j.class != obj.getClass()) {
            return false;
        }
        j jVar = (j) obj;
        return this.f9680i == jVar.f9680i && this.f9681j == jVar.f9681j && this.f9682k == jVar.f9682k && Arrays.equals(this.f9683l, jVar.f9683l) && Arrays.equals(this.f9684m, jVar.f9684m);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f9684m) + ((Arrays.hashCode(this.f9683l) + ((((((527 + this.f9680i) * 31) + this.f9681j) * 31) + this.f9682k) * 31)) * 31);
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f9680i);
        parcel.writeInt(this.f9681j);
        parcel.writeInt(this.f9682k);
        parcel.writeIntArray(this.f9683l);
        parcel.writeIntArray(this.f9684m);
    }

    public j(Parcel parcel) {
        super("MLLT");
        this.f9680i = parcel.readInt();
        this.f9681j = parcel.readInt();
        this.f9682k = parcel.readInt();
        int[] iArrCreateIntArray = parcel.createIntArray();
        int i10 = g0.f10384a;
        this.f9683l = iArrCreateIntArray;
        this.f9684m = parcel.createIntArray();
    }
}
