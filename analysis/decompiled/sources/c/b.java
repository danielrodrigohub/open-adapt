package c;

import android.annotation.SuppressLint;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;

/* JADX INFO: compiled from: ResultReceiver.java */
/* JADX INFO: loaded from: classes.dex */
@SuppressLint({"BanParcelableUsage"})
public class b implements Parcelable {
    public static final Parcelable.Creator<b> CREATOR = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public c.a f3805h;

    /* JADX INFO: compiled from: ResultReceiver.java */
    public class a implements Parcelable.Creator<b> {
        @Override // android.os.Parcelable.Creator
        public final b createFromParcel(Parcel parcel) {
            return new b(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final b[] newArray(int i10) {
            return new b[i10];
        }
    }

    /* JADX INFO: renamed from: c.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ResultReceiver.java */
    public class BinderC0069b extends c.a.AbstractBinderC0067a {
        public BinderC0069b() {
        }
    }

    public b(Parcel parcel) {
        c.a c0068a;
        IBinder strongBinder = parcel.readStrongBinder();
        int i10 = c.a.AbstractBinderC0067a.f3803a;
        if (strongBinder == null) {
            c0068a = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = strongBinder.queryLocalInterface("android.support.v4.os.IResultReceiver");
            c0068a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof c.a)) ? new c.a.AbstractBinderC0067a.C0068a(strongBinder) : (c.a) iInterfaceQueryLocalInterface;
        }
        this.f3805h = c0068a;
    }

    public void a(int i10, Bundle bundle) {
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i10) {
        synchronized (this) {
            if (this.f3805h == null) {
                this.f3805h = new BinderC0069b();
            }
            parcel.writeStrongBinder(this.f3805h.asBinder());
        }
    }
}
