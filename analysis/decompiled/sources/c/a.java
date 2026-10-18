package c;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.Objects;

/* JADX INFO: compiled from: IResultReceiver.java */
/* JADX INFO: loaded from: classes.dex */
public interface a extends IInterface {

    /* JADX INFO: renamed from: c.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: IResultReceiver.java */
    public static abstract class AbstractBinderC0067a extends Binder implements a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int f3803a = 0;

        /* JADX INFO: renamed from: c.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: IResultReceiver.java */
        public static class C0068a implements a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public IBinder f3804a;

            public C0068a(IBinder iBinder) {
                this.f3804a = iBinder;
            }

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f3804a;
            }
        }

        public AbstractBinderC0067a() {
            attachInterface(this, "android.support.v4.os.IResultReceiver");
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
                parcel2.writeString("android.support.v4.os.IResultReceiver");
                return true;
            }
            parcel.enforceInterface("android.support.v4.os.IResultReceiver");
            int i12 = parcel.readInt();
            Bundle bundle = parcel.readInt() != 0 ? (Bundle) Bundle.CREATOR.createFromParcel(parcel) : null;
            b.BinderC0069b binderC0069b = (b.BinderC0069b) this;
            Objects.requireNonNull(b.this);
            b.this.a(i12, bundle);
            return true;
        }
    }
}
