package f4;

import android.os.Parcel;
import android.os.Parcelable;
import java.util.Arrays;
import java.util.List;
import m5.g0;
import n3.a1;
import n3.s0;

/* JADX INFO: compiled from: Metadata.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0125a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final b[] f7052h;

    /* JADX INFO: renamed from: f4.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: Metadata.java */
    public class C0125a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            return new a(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    /* JADX INFO: compiled from: Metadata.java */
    public interface b extends Parcelable {
        default void i(a1.a aVar) {
        }

        default s0 s() {
            return null;
        }

        default byte[] z() {
            return null;
        }
    }

    public a(b... bVarArr) {
        this.f7052h = bVarArr;
    }

    public final a a(b... bVarArr) {
        if (bVarArr.length == 0) {
            return this;
        }
        b[] bVarArr2 = this.f7052h;
        int i10 = g0.f10384a;
        Object[] objArrCopyOf = Arrays.copyOf(bVarArr2, bVarArr2.length + bVarArr.length);
        System.arraycopy(bVarArr, 0, objArrCopyOf, bVarArr2.length, bVarArr.length);
        return new a((b[]) objArrCopyOf);
    }

    public final a b(a aVar) {
        return aVar == null ? this : a(aVar.f7052h);
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
        return Arrays.equals(this.f7052h, ((a) obj).f7052h);
    }

    public final int hashCode() {
        return Arrays.hashCode(this.f7052h);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("entries=");
        sbC.append(Arrays.toString(this.f7052h));
        return sbC.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeInt(this.f7052h.length);
        for (b bVar : this.f7052h) {
            parcel.writeParcelable(bVar, 0);
        }
    }

    public a(List<? extends b> list) {
        this.f7052h = (b[]) list.toArray(new b[0]);
    }

    public a(Parcel parcel) {
        this.f7052h = new b[parcel.readInt()];
        int i10 = 0;
        while (true) {
            b[] bVarArr = this.f7052h;
            if (i10 >= bVarArr.length) {
                return;
            }
            bVarArr[i10] = (b) parcel.readParcelable(b.class.getClassLoader());
            i10++;
        }
    }
}
