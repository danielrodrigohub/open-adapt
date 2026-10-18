package b;

import android.app.Notification;
import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: INotificationSideChannel.java */
/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: b.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: INotificationSideChannel.java */
    public static abstract class AbstractBinderC0048a extends Binder implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f3155a = 0;

        /* JADX INFO: renamed from: b.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: INotificationSideChannel.java */
        public static class C0049a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f3156a;

            public C0049a(IBinder iBinder) {
                this.f3156a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f3156a;
            }

            @Override // b.a
            public final void f(String str, int i10, String str2, Notification notification) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.v4.app.INotificationSideChannel");
                    parcelObtain.writeString(str);
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeString(str2);
                    if (notification != null) {
                        parcelObtain.writeInt(1);
                        notification.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    if (!this.f3156a.transact(1, parcelObtain, null, 1)) {
                        int i11 = AbstractBinderC0048a.f3155a;
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }
    }

    void f(String str, int i10, String str2, Notification notification) throws RemoteException;
}
