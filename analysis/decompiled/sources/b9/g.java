package b9;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: MessagingCenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g extends e {
    public static final Parcelable.Creator<g> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Intent f3588h;

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class a implements Parcelable.Creator<g> {
        @Override // android.os.Parcelable.Creator
        public final g createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new g((Intent) parcel.readParcelable(g.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final g[] newArray(int i10) {
            return new g[i10];
        }
    }

    public g(Intent intent) {
        p4.h.j(intent, "intent");
        this.f3588h = intent;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof g) && p4.h.c(this.f3588h, ((g) obj).f3588h);
    }

    public final int hashCode() {
        return this.f3588h.hashCode();
    }

    public final String toString() {
        return "IntentBasedCtaAction(intent=" + this.f3588h + ")";
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeParcelable(this.f3588h, i10);
    }
}
