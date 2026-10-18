package p0;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: AbsSavedState.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public abstract class a implements Parcelable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Parcelable f12620h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final C0227a f12619i = new C0227a();
    public static final Parcelable.Creator<a> CREATOR = new b();

    /* JADX INFO: renamed from: p0.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AbsSavedState.java */
    public class C0227a extends a {
    }

    public a() {
        this.f12620h = null;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public void writeToParcel(Parcel parcel, int i10) {
        parcel.writeParcelable(this.f12620h, i10);
    }

    /* JADX INFO: compiled from: AbsSavedState.java */
    public class b implements Parcelable.ClassLoaderCreator<a> {
        @Override // android.os.Parcelable.Creator
        public final Object createFromParcel(Parcel parcel) {
            if (parcel.readParcelable(null) == null) {
                return a.f12619i;
            }
            throw new IllegalStateException("superState must be null");
        }

        @Override // android.os.Parcelable.Creator
        public final Object[] newArray(int i10) {
            return new a[i10];
        }

        @Override // android.os.Parcelable.ClassLoaderCreator
        public final a createFromParcel(Parcel parcel, ClassLoader classLoader) {
            if (parcel.readParcelable(classLoader) == null) {
                return a.f12619i;
            }
            throw new IllegalStateException("superState must be null");
        }
    }

    public a(Parcelable parcelable) {
        if (parcelable != null) {
            this.f12620h = parcelable == f12619i ? null : parcelable;
            return;
        }
        throw new IllegalArgumentException("superState must not be null");
    }

    public a(Parcel parcel, ClassLoader classLoader) {
        Parcelable parcelable = parcel.readParcelable(classLoader);
        this.f12620h = parcelable == null ? f12619i : parcelable;
    }
}
