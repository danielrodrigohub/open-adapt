package d9;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.r0;
import ba.f;
import com.nike.adapt.adk.Shoe;
import p4.h;

/* JADX INFO: compiled from: ModeSnapshot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a implements Parcelable {
    public static final Parcelable.Creator<a> CREATOR = new C0109a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Shoe f6123h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final f f6124i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f6125j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f6126k;

    /* JADX INFO: renamed from: d9.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ModeSnapshot.kt */
    public static final class C0109a implements Parcelable.Creator<a> {
        @Override // android.os.Parcelable.Creator
        public final a createFromParcel(Parcel parcel) {
            h.j(parcel, "parcel");
            return new a(Shoe.valueOf(parcel.readString()), f.valueOf(parcel.readString()), parcel.readInt(), parcel.readInt());
        }

        @Override // android.os.Parcelable.Creator
        public final a[] newArray(int i10) {
            return new a[i10];
        }
    }

    public a(Shoe shoe, f fVar, int i10, int i11) {
        h.j(shoe, "shoe");
        h.j(fVar, "color");
        this.f6123h = shoe;
        this.f6124i = fVar;
        this.f6125j = i10;
        this.f6126k = i11;
    }

    public static a a(a aVar, f fVar, int i10, int i11, int i12) {
        Shoe shoe = (i12 & 1) != 0 ? aVar.f6123h : null;
        if ((i12 & 2) != 0) {
            fVar = aVar.f6124i;
        }
        if ((i12 & 4) != 0) {
            i10 = aVar.f6125j;
        }
        if ((i12 & 8) != 0) {
            i11 = aVar.f6126k;
        }
        h.j(shoe, "shoe");
        h.j(fVar, "color");
        return new a(shoe, fVar, i10, i11);
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
        return this.f6123h == aVar.f6123h && this.f6124i == aVar.f6124i && this.f6125j == aVar.f6125j && this.f6126k == aVar.f6126k;
    }

    public final int hashCode() {
        return Integer.hashCode(this.f6126k) + r0.e(this.f6125j, (this.f6124i.hashCode() + (this.f6123h.hashCode() * 31)) * 31, 31);
    }

    public final String toString() {
        return "ModeSnapshot(shoe=" + this.f6123h + ", color=" + this.f6124i + ", position=" + this.f6125j + ", absolutePosition=" + this.f6126k + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        h.j(parcel, "out");
        parcel.writeString(this.f6123h.name());
        parcel.writeString(this.f6124i.name());
        parcel.writeInt(this.f6125j);
        parcel.writeInt(this.f6126k);
    }

    public /* synthetic */ a(Shoe shoe, f fVar) {
        this(shoe, fVar, 99, 99);
    }
}
