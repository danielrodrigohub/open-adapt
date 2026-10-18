package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: IMultiInstanceInvalidationCallback.java */
/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: androidx.room.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: IMultiInstanceInvalidationCallback.java */
    public static abstract class AbstractBinderC0033a extends Binder implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f2849a = 0;

        /* JADX INFO: renamed from: androidx.room.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: IMultiInstanceInvalidationCallback.java */
        public static class C0034a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f2850a;

            public C0034a(IBinder iBinder) {
                this.f2850a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f2850a;
            }

            @Override // androidx.room.a
            public final void b(String[] strArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationCallback");
                    parcelObtain.writeStringArray(strArr);
                    if (!this.f2850a.transact(1, parcelObtain, null, 1)) {
                        int i10 = AbstractBinderC0033a.f2849a;
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public AbstractBinderC0033a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationCallback");
        }

        public static a h(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
            return (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a)) ? new C0034a(iBinder) : (a) iInterfaceQueryLocalInterface;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 != 1) {
                if (i10 != 1598968902) {
                    return super.onTransact(i10, parcel, parcel2, i11);
                }
                parcel2.writeString("androidx.room.IMultiInstanceInvalidationCallback");
                return true;
            }
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationCallback");
            ((d.a) this).b(parcel.createStringArray());
            return true;
        }
    }

    void b(String[] strArr) throws RemoteException;
}
