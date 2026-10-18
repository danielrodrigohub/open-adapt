package a;

import android.net.Uri;
import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: ICustomTabsService.java */
/* JADX INFO: loaded from: classes.dex */
public interface b extends IInterface {

    /* JADX INFO: compiled from: ICustomTabsService.java */
    public static abstract class a extends Binder implements b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f1a = 0;

        /* JADX INFO: renamed from: a.b$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: ICustomTabsService.java */
        public static class C0001a implements b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f2a;

            public C0001a(IBinder iBinder) {
                this.f2a = iBinder;
            }

            @Override // a.b
            public final boolean a(a.a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    parcelObtain.writeStrongBinder(aVar != null ? (a.a.AbstractBinderC0000a) aVar : null);
                    if (uri != null) {
                        parcelObtain.writeInt(1);
                        uri.writeToParcel(parcelObtain, 0);
                    } else {
                        parcelObtain.writeInt(0);
                    }
                    parcelObtain.writeInt(1);
                    bundle.writeToParcel(parcelObtain, 0);
                    parcelObtain.writeTypedList(list);
                    if (!this.f2a.transact(4, parcelObtain, parcelObtain2, 0)) {
                        int i10 = a.f1a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f2a;
            }

            @Override // a.b
            public final boolean d(a.a aVar) throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    parcelObtain.writeStrongBinder((a.a.AbstractBinderC0000a) aVar);
                    if (!this.f2a.transact(3, parcelObtain, parcelObtain2, 0)) {
                        int i10 = a.f1a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }

            @Override // a.b
            public final boolean g() throws RemoteException {
                Parcel parcelObtain = Parcel.obtain();
                Parcel parcelObtain2 = Parcel.obtain();
                try {
                    parcelObtain.writeInterfaceToken("android.support.customtabs.ICustomTabsService");
                    parcelObtain.writeLong(0L);
                    if (!this.f2a.transact(2, parcelObtain, parcelObtain2, 0)) {
                        int i10 = a.f1a;
                    }
                    parcelObtain2.readException();
                    return parcelObtain2.readInt() != 0;
                } finally {
                    parcelObtain2.recycle();
                    parcelObtain.recycle();
                }
            }
        }
    }

    boolean a(a.a aVar, Uri uri, Bundle bundle, List<Bundle> list) throws RemoteException;

    boolean d(a.a aVar) throws RemoteException;

    boolean g() throws RemoteException;
}
