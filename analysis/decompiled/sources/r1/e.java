package r1;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import k1.l;

/* JADX INFO: compiled from: NetworkStateTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends d<p1.b> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f14210i = l.e("NetworkStateTracker");

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final ConnectivityManager f14211g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public a f14212h;

    /* JADX INFO: compiled from: NetworkStateTracker.java */
    public class a extends ConnectivityManager.NetworkCallback {
        public a() {
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            l.c().a(e.f14210i, String.format("Network capabilities changed: %s", networkCapabilities), new Throwable[0]);
            e eVar = e.this;
            eVar.c(eVar.f());
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            l.c().a(e.f14210i, "Network connection lost", new Throwable[0]);
            e eVar = e.this;
            eVar.c(eVar.f());
        }
    }

    public e(Context context, w1.a aVar) {
        super(context, aVar);
        this.f14211g = (ConnectivityManager) this.f14204b.getSystemService("connectivity");
        this.f14212h = new a();
    }

    @Override // r1.d
    public final p1.b a() {
        return f();
    }

    @Override // r1.d
    public final void d() {
        try {
            l.c().a(f14210i, "Registering network callback", new Throwable[0]);
            this.f14211g.registerDefaultNetworkCallback(this.f14212h);
        } catch (IllegalArgumentException | SecurityException e10) {
            l.c().b(f14210i, "Received exception while registering network callback", e10);
        }
    }

    @Override // r1.d
    public final void e() {
        try {
            l.c().a(f14210i, "Unregistering network callback", new Throwable[0]);
            this.f14211g.unregisterNetworkCallback(this.f14212h);
        } catch (IllegalArgumentException | SecurityException e10) {
            l.c().b(f14210i, "Received exception while unregistering network callback", e10);
        }
    }

    public final p1.b f() {
        boolean z10;
        NetworkInfo activeNetworkInfo = this.f14211g.getActiveNetworkInfo();
        boolean z11 = activeNetworkInfo != null && activeNetworkInfo.isConnected();
        try {
            NetworkCapabilities networkCapabilities = this.f14211g.getNetworkCapabilities(this.f14211g.getActiveNetwork());
            z10 = networkCapabilities != null && networkCapabilities.hasCapability(16);
        } catch (SecurityException e10) {
            l.c().b(f14210i, "Unable to validate active network", e10);
        }
        return new p1.b(z11, z10, e0.a.a(this.f14211g), (activeNetworkInfo == null || activeNetworkInfo.isRoaming()) ? false : true);
    }
}
