package b9;

import android.app.Activity;
import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: MessagingCenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class f extends j {
    public static final Parcelable.Creator<f> CREATOR = new a();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final Intent f3587i;

    /* JADX INFO: compiled from: MessagingCenter.kt */
    public static final class a implements Parcelable.Creator<f> {
        @Override // android.os.Parcelable.Creator
        public final f createFromParcel(Parcel parcel) {
            p4.h.j(parcel, "parcel");
            return new f((Intent) parcel.readParcelable(f.class.getClassLoader()));
        }

        @Override // android.os.Parcelable.Creator
        public final f[] newArray(int i10) {
            return new f[i10];
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public f(Intent intent) {
        super(intent);
        p4.h.j(intent, "intent");
        this.f3587i = intent;
    }

    @Override // b9.j
    public final Intent a() {
        return this.f3587i;
    }

    @Override // b9.j
    public final void b(Activity activity) {
        p4.h.j(activity, "messagingActivity");
        activity.finish();
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        p4.h.j(parcel, "out");
        parcel.writeParcelable(this.f3587i, i10);
    }
}
