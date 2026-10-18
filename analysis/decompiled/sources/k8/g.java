package k8;

import android.os.Parcel;
import android.os.Parcelable;
import com.nike.adapt.presenter.profile.AdaptUser;

/* JADX INFO: compiled from: FetchProfileActionResult.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements i8.b {
    public static final Parcelable.Creator<g> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i8.d f9747h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final AdaptUser f9748i;

    /* JADX INFO: compiled from: FetchProfileActionResult.kt */
    public static final class a implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        public final g createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g(i8.d.CREATOR.createFromParcel(parcel), parcel.readInt() == 0 ? null : AdaptUser.CREATOR.createFromParcel(parcel));
        }

        @Override // android.os.Parcelable.Creator
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(i8.d dVar, AdaptUser adaptUser) {
        p4.h.j(dVar, "eventUUID");
        this.f9747h = dVar;
        this.f9748i = adaptUser;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        this.f9747h.writeToParcel(parcel, i10);
        AdaptUser adaptUser = this.f9748i;
        if (adaptUser == null) {
            parcel.writeInt(0);
        } else {
            parcel.writeInt(1);
            adaptUser.writeToParcel(parcel, i10);
        }
    }
}
