package n;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;

/* JADX INFO: compiled from: CustomTabsServiceConnection.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class d implements ServiceConnection {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Context f11131h;

    /* JADX INFO: compiled from: CustomTabsServiceConnection.java */
    public class a extends b {
        public a(a.b bVar, ComponentName componentName, Context context) {
            super(bVar, componentName);
        }
    }

    @Override // android.content.ServiceConnection
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        a.b c0001a;
        if (this.f11131h == null) {
            throw new IllegalStateException("Custom Tabs Service connected before an applicationcontext has been provided.");
        }
        int i10 = a.b.a.f1a;
        if (iBinder == null) {
            c0001a = null;
        } else {
            IInterface iInterfaceQueryLocalInterface = iBinder.queryLocalInterface("android.support.customtabs.ICustomTabsService");
            c0001a = (iInterfaceQueryLocalInterface == null || !(iInterfaceQueryLocalInterface instanceof a.b)) ? new a.b.a.C0001a(iBinder) : (a.b) iInterfaceQueryLocalInterface;
        }
        a aVar = new a(c0001a, componentName, this.f11131h);
        tb.c.a aVar2 = (tb.c.a) this;
        ub.a.Companion.a("CustomTabsService is connected");
        try {
            c0001a.g();
        } catch (RemoteException unused) {
        }
        tb.c.this.f15591b.set(aVar);
        tb.c.this.f15592c.countDown();
    }
}
