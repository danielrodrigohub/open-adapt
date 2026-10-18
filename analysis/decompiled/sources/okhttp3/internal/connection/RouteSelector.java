package okhttp3.internal.connection;

import a0.b;
import androidx.lifecycle.o;
import gd.l;
import gd.p;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import java.net.SocketAddress;
import java.net.SocketException;
import java.net.URI;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.EventListener;
import okhttp3.HttpUrl;
import okhttp3.Route;
import okhttp3.internal._HostnamesCommonKt;
import okhttp3.internal._UtilJvmKt;
import rd.h;

/* JADX INFO: compiled from: RouteSelector.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RouteSelector {
    public static final Companion Companion = new Companion(null);
    private final Address address;
    private final Call call;
    private final EventListener eventListener;
    private final boolean fastFallback;
    private List<? extends InetSocketAddress> inetSocketAddresses;
    private int nextProxyIndex;
    private final List<Route> postponedRoutes;
    private List<? extends Proxy> proxies;
    private final RouteDatabase routeDatabase;

    /* JADX INFO: compiled from: RouteSelector.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final String getSocketHost(InetSocketAddress inetSocketAddress) {
            p4.h.j(inetSocketAddress, "<this>");
            InetAddress address = inetSocketAddress.getAddress();
            if (address == null) {
                String hostName = inetSocketAddress.getHostName();
                p4.h.i(hostName, "hostName");
                return hostName;
            }
            String hostAddress = address.getHostAddress();
            p4.h.i(hostAddress, "address.hostAddress");
            return hostAddress;
        }
    }

    /* JADX INFO: compiled from: RouteSelector.kt */
    public static final class Selection {
        private int nextRouteIndex;
        private final List<Route> routes;

        public Selection(List<Route> list) {
            p4.h.j(list, "routes");
            this.routes = list;
        }

        public final List<Route> getRoutes() {
            return this.routes;
        }

        public final boolean hasNext() {
            return this.nextRouteIndex < this.routes.size();
        }

        public final Route next() {
            if (!hasNext()) {
                throw new NoSuchElementException();
            }
            List<Route> list = this.routes;
            int i10 = this.nextRouteIndex;
            this.nextRouteIndex = i10 + 1;
            return list.get(i10);
        }
    }

    public RouteSelector(Address address, RouteDatabase routeDatabase, Call call, boolean z10, EventListener eventListener) {
        p4.h.j(address, "address");
        p4.h.j(routeDatabase, "routeDatabase");
        p4.h.j(call, "call");
        p4.h.j(eventListener, "eventListener");
        this.address = address;
        this.routeDatabase = routeDatabase;
        this.call = call;
        this.fastFallback = z10;
        this.eventListener = eventListener;
        p pVar = p.f8070h;
        this.proxies = pVar;
        this.inetSocketAddresses = pVar;
        this.postponedRoutes = new ArrayList();
        resetNextProxy(address.url(), address.proxy());
    }

    private final boolean hasNextProxy() {
        return this.nextProxyIndex < this.proxies.size();
    }

    private final Proxy nextProxy() throws IOException {
        if (!hasNextProxy()) {
            StringBuilder sbC = b.c("No route to ");
            sbC.append(this.address.url().host());
            sbC.append("; exhausted proxy configurations: ");
            sbC.append(this.proxies);
            throw new SocketException(sbC.toString());
        }
        List<? extends Proxy> list = this.proxies;
        int i10 = this.nextProxyIndex;
        this.nextProxyIndex = i10 + 1;
        Proxy proxy = list.get(i10);
        resetNextInetSocketAddress(proxy);
        return proxy;
    }

    private final void resetNextInetSocketAddress(Proxy proxy) throws IOException {
        String strHost;
        int iPort;
        List<InetAddress> listLookup;
        ArrayList arrayList = new ArrayList();
        this.inetSocketAddresses = arrayList;
        if (proxy.type() == Proxy.Type.DIRECT || proxy.type() == Proxy.Type.SOCKS) {
            strHost = this.address.url().host();
            iPort = this.address.url().port();
        } else {
            SocketAddress socketAddressAddress = proxy.address();
            if (!(socketAddressAddress instanceof InetSocketAddress)) {
                StringBuilder sbC = b.c("Proxy.address() is not an InetSocketAddress: ");
                sbC.append(socketAddressAddress.getClass());
                throw new IllegalArgumentException(sbC.toString().toString());
            }
            Companion companion = Companion;
            p4.h.i(socketAddressAddress, "proxyAddress");
            InetSocketAddress inetSocketAddress = (InetSocketAddress) socketAddressAddress;
            strHost = companion.getSocketHost(inetSocketAddress);
            iPort = inetSocketAddress.getPort();
        }
        boolean z10 = false;
        if (1 <= iPort && iPort < 65536) {
            z10 = true;
        }
        if (!z10) {
            throw new SocketException("No route to " + strHost + ':' + iPort + "; port is out of range");
        }
        if (proxy.type() == Proxy.Type.SOCKS) {
            arrayList.add(InetSocketAddress.createUnresolved(strHost, iPort));
            return;
        }
        if (_HostnamesCommonKt.canParseAsIpAddress(strHost)) {
            listLookup = o.y(InetAddress.getByName(strHost));
        } else {
            this.eventListener.dnsStart(this.call, strHost);
            listLookup = this.address.dns().lookup(strHost);
            if (listLookup.isEmpty()) {
                throw new UnknownHostException(this.address.dns() + " returned no addresses for " + strHost);
            }
            this.eventListener.dnsEnd(this.call, strHost, listLookup);
        }
        if (this.fastFallback) {
            listLookup = InetAddressOrderKt.reorderForHappyEyeballs(listLookup);
        }
        Iterator<InetAddress> it = listLookup.iterator();
        while (it.hasNext()) {
            arrayList.add(new InetSocketAddress(it.next(), iPort));
        }
    }

    private final void resetNextProxy(HttpUrl httpUrl, Proxy proxy) {
        this.eventListener.proxySelectStart(this.call, httpUrl);
        List<Proxy> listResetNextProxy$selectProxies = resetNextProxy$selectProxies(proxy, httpUrl, this);
        this.proxies = listResetNextProxy$selectProxies;
        this.nextProxyIndex = 0;
        this.eventListener.proxySelectEnd(this.call, httpUrl, listResetNextProxy$selectProxies);
    }

    private static final List<Proxy> resetNextProxy$selectProxies(Proxy proxy, HttpUrl httpUrl, RouteSelector routeSelector) {
        if (proxy != null) {
            return o.y(proxy);
        }
        URI uri = httpUrl.uri();
        if (uri.getHost() == null) {
            return _UtilJvmKt.immutableListOf(Proxy.NO_PROXY);
        }
        List<Proxy> listSelect = routeSelector.address.proxySelector().select(uri);
        if (listSelect == null || listSelect.isEmpty()) {
            return _UtilJvmKt.immutableListOf(Proxy.NO_PROXY);
        }
        p4.h.i(listSelect, "proxiesOrNull");
        return _UtilJvmKt.toImmutableList(listSelect);
    }

    public final boolean hasNext() {
        return hasNextProxy() || (this.postponedRoutes.isEmpty() ^ true);
    }

    public final Selection next() throws IOException {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        ArrayList arrayList = new ArrayList();
        while (hasNextProxy()) {
            Proxy proxyNextProxy = nextProxy();
            Iterator<? extends InetSocketAddress> it = this.inetSocketAddresses.iterator();
            while (it.hasNext()) {
                Route route = new Route(this.address, proxyNextProxy, it.next());
                if (this.routeDatabase.shouldPostpone(route)) {
                    this.postponedRoutes.add(route);
                } else {
                    arrayList.add(route);
                }
            }
            if (!arrayList.isEmpty()) {
                break;
            }
        }
        if (arrayList.isEmpty()) {
            l.X(arrayList, this.postponedRoutes);
            this.postponedRoutes.clear();
        }
        return new Selection(arrayList);
    }
}
