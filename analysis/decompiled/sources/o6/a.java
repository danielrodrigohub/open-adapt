package o6;

import a0.b;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import p.g;

/* JADX INFO: compiled from: ExtendableSavedState.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends p0.a {
    public static final Parcelable.Creator<a> CREATOR = new C0220a();

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final g<String, Bundle> f12352j;

    /* JADX INFO: renamed from: o6.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ExtendableSavedState.java */
    public class C0220a implements Parcelable.ClassLoaderCreator<a> {
        @Override // android.os.Parcelable.ClassLoaderCreator
        public final a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            return new a(parcel, classLoader);
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i10) {
            return new a[i10];
        }

        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            return new a(parcel, null);
        }
    }

    public a(Parcelable parcelable) {
        super(parcelable);
        this.f12352j = new g<>();
    }

    public final String toString() {
        StringBuilder sbC = b.c("ExtendableSavedState{");
        sbC.append(Integer.toHexString(System.identityHashCode(this)));
        sbC.append(" states=");
        sbC.append(this.f12352j);
        sbC.append("}");
        return sbC.toString();
    }

    @Override // p0.a, android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f12620h, i10);
        int i11 = this.f12352j.f12614j;
        parcel.writeInt(i11);
        String[] strArr = new String[i11];
        Bundle[] bundleArr = new Bundle[i11];
        for (int i12 = 0; i12 < i11; i12++) {
            strArr[i12] = this.f12352j.i(i12);
            bundleArr[i12] = this.f12352j.m(i12);
        }
        parcel.writeStringArray(strArr);
        parcel.writeTypedArray(bundleArr, 0);
    }

    public a(Parcel parcel, ClassLoader classLoader) {
        super(parcel, classLoader);
        int i10 = parcel.readInt();
        String[] strArr = new String[i10];
        parcel.readStringArray(strArr);
        Bundle[] bundleArr = new Bundle[i10];
        parcel.readTypedArray(bundleArr, Bundle.CREATOR);
        this.f12352j = new g<>(i10);
        for (int i11 = 0; i11 < i10; i11++) {
            this.f12352j.put(strArr[i11], bundleArr[i11]);
        }
    }
}
