package n3;

import android.os.Binder;
import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;
import java.util.List;

/* JADX INFO: compiled from: BundleListRetriever.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends Binder {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int f11395b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final u6.v<Bundle> f11396a;

    static {
        f11395b = m5.g0.f10384a >= 30 ? IBinder.getSuggestedMaxIpcSizeBytes() : 65536;
    }

    public g(List<Bundle> list) {
        this.f11396a = u6.v.s(list);
    }

    @Override // android.os.Binder
    public final boolean onTransact(int i10, Parcel parcel, Parcel parcel2, int i11) throws RemoteException {
        if (i10 != 1) {
            return super.onTransact(i10, parcel, parcel2, i11);
        }
        if (parcel2 == null) {
            return false;
        }
        int size = this.f11396a.size();
        int i12 = parcel.readInt();
        while (i12 < size && parcel2.dataSize() < f11395b) {
            parcel2.writeInt(1);
            parcel2.writeBundle(this.f11396a.get(i12));
            i12++;
        }
        parcel2.writeInt(i12 < size ? 2 : 0);
        return true;
    }
}
