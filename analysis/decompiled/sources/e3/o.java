package e3;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.util.Log;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: compiled from: SingletonConnectivityReceiver.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static volatile o f6338d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f6339a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Set<e3.b.a> f6340b = new HashSet();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f6341c;

    /* JADX INFO: compiled from: SingletonConnectivityReceiver.java */
    public class a implements l3.g<ConnectivityManager> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ Context f6342a;

        public a(Context context) {
            this.f6342a = context;
        }

        @Override // l3.g
        public final ConnectivityManager get() {
            return (ConnectivityManager) this.f6342a.getSystemService("connectivity");
        }
    }

    /* JADX INFO: compiled from: SingletonConnectivityReceiver.java */
    public class b implements e3.b.a {
        public b() {
        }

        @Override // e3.b.a
        public final void a(boolean z10) {
            ArrayList arrayList;
            synchronized (o.this) {
                arrayList = new ArrayList(o.this.f6340b);
            }
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                ((e3.b.a) it.next()).a(z10);
            }
        }
    }

    /* JADX INFO: compiled from: SingletonConnectivityReceiver.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f6344a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final e3.b.a f6345b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final l3.g<ConnectivityManager> f6346c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final a f6347d = new a();

        /* JADX INFO: compiled from: SingletonConnectivityReceiver.java */
        public class a extends ConnectivityManager.NetworkCallback {
            public a() {
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onAvailable(Network network) {
                l3.l.k(new p(this, true));
            }

            @Override // android.net.ConnectivityManager.NetworkCallback
            public final void onLost(Network network) {
                l3.l.k(new p(this, false));
            }
        }

        public c(l3.g<ConnectivityManager> gVar, e3.b.a aVar) {
            this.f6346c = gVar;
            this.f6345b = aVar;
        }
    }

    public o(Context context) {
        this.f6339a = new c(new l3.f(new a(context)), new b());
    }

    public static o a(Context context) {
        if (f6338d == null) {
            synchronized (o.class) {
                if (f6338d == null) {
                    f6338d = new o(context.getApplicationContext());
                }
            }
        }
        return f6338d;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.HashSet, java.util.Set<e3.b$a>] */
    public final void b() {
        if (this.f6341c || this.f6340b.isEmpty()) {
            return;
        }
        c cVar = this.f6339a;
        boolean z10 = true;
        cVar.f6344a = cVar.f6346c.get().getActiveNetwork() != null;
        try {
            cVar.f6346c.get().registerDefaultNetworkCallback(cVar.f6347d);
        } catch (RuntimeException e10) {
            if (Log.isLoggable("ConnectivityMonitor", 5)) {
                Log.w("ConnectivityMonitor", "Failed to register callback", e10);
            }
            z10 = false;
        }
        this.f6341c = z10;
    }
}
