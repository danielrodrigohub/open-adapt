package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;

/* JADX INFO: compiled from: IMultiInstanceInvalidationService.java */
/* JADX INFO: loaded from: classes.dex */
public interface b extends IInterface {

    /* JADX INFO: compiled from: IMultiInstanceInvalidationService.java */
    public static abstract class a extends Binder implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f2851a = 0;

        /* JADX INFO: renamed from: androidx.room.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: IMultiInstanceInvalidationService.java */
        public static class C0035a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f2852a;

            public C0035a(IBinder iBinder) {
                this.f2852a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f2852a;
            }

            @Override // androidx.room.b
            public final int c(androidx.room.a aVar, String str) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    parcelObtain.writeStrongBinder(aVar != null ? aVar.asBinder() : null);
                    parcelObtain.writeString(str);
                    if (!this.f2852a.transact(1, parcelObtain, parcelObtain2, 0)) {
                        int i10 = a.f2851a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt();
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // androidx.room.b
            public final void e(int i10, String[] strArr) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    parcelObtain.writeInt(i10);
                    parcelObtain.writeStringArray(strArr);
                    if (!this.f2852a.transact(3, parcelObtain, null, 1)) {
                        int i11 = a.f2851a;
                    }
                } finally {
                    parcelObtain.recycle();
                }
            }
        }

        public a() {
            attachInterface(this, "androidx.room.IMultiInstanceInvalidationService");
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
            if (i10 == 1) {
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                int iC = ((MultiInstanceInvalidationService.b) this).c(androidx.room.a.AbstractBinderC0033a.h(parcel.readStrongBinder()), parcel.readString());
                parcel2.writeNoException();
                parcel2.writeInt(iC);
                return true;
            }
            if (i10 != 2) {
                if (i10 != 3) {
                    if (i10 != 1598968902) {
                        return super.onTransact(i10, parcel, parcel2, i11);
                    }
                    parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
                    return true;
                }
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                ((MultiInstanceInvalidationService.b) this).e(parcel.readInt(), parcel.createStringArray());
                return true;
            }
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            androidx.room.a aVarH = androidx.room.a.AbstractBinderC0033a.h(parcel.readStrongBinder());
            int i12 = parcel.readInt();
            MultiInstanceInvalidationService.b bVar = (MultiInstanceInvalidationService.b) this;
            synchronized (MultiInstanceInvalidationService.this.f2845j) {
                MultiInstanceInvalidationService.this.f2845j.unregister(aVarH);
                MultiInstanceInvalidationService.this.f2844i.remove(Integer.valueOf(i12));
            }
            parcel2.writeNoException();
            return true;
        }
    }

    int c(androidx.room.a aVar, String str) throws RemoteException;

    void e(int i10, String[] strArr) throws RemoteException;
}
