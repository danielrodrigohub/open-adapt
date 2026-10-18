package okhttp3;

import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.Proxy;
import okhttp3.internal._HostnamesJvmKt;
import p4.h;
import yd.s;

/* JADX INFO: compiled from: Route.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Route {
    private final Address address;
    private final Proxy proxy;
    private final InetSocketAddress socketAddress;

    public Route(Address address, Proxy proxy, InetSocketAddress inetSocketAddress) {
        h.j(address, "address");
        h.j(proxy, "proxy");
        h.j(inetSocketAddress, "socketAddress");
        this.address = address;
        this.proxy = proxy;
        this.socketAddress = inetSocketAddress;
    }

    /* JADX INFO: renamed from: -deprecated_address, reason: not valid java name */
    public final Address m156deprecated_address() {
        return this.address;
    }

    /* JADX INFO: renamed from: -deprecated_proxy, reason: not valid java name */
    public final Proxy m157deprecated_proxy() {
        return this.proxy;
    }

    /* JADX INFO: renamed from: -deprecated_socketAddress, reason: not valid java name */
    public final InetSocketAddress m158deprecated_socketAddress() {
        return this.socketAddress;
    }

    public final Address address() {
        return this.address;
    }

    public boolean equals(Object obj) {
        if (obj instanceof Route) {
            Route route = (Route) obj;
            if (h.c(route.address, this.address) && h.c(route.proxy, this.proxy) && h.c(route.socketAddress, this.socketAddress)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.socketAddress.hashCode() + ((this.proxy.hashCode() + ((this.address.hashCode() + 527) * 31)) * 31);
    }

    public final Proxy proxy() {
        return this.proxy;
    }

    public final boolean requiresTunnel() {
        if (this.proxy.type() != Proxy.Type.HTTP) {
            return false;
        }
        return this.address.sslSocketFactory() != null || this.address.protocols().contains(Protocol.H2_PRIOR_KNOWLEDGE);
    }

    public final InetSocketAddress socketAddress() {
        return this.socketAddress;
    }

    public String toString() {
        String hostAddress;
        StringBuilder sb2 = new StringBuilder();
        String strHost = this.address.url().host();
        InetAddress address = this.socketAddress.getAddress();
        String canonicalHost = (address == null || (hostAddress = address.getHostAddress()) == null) ? null : _HostnamesJvmKt.toCanonicalHost(hostAddress);
        if (s.h0(strHost, ':')) {
            sb2.append("[");
            sb2.append(strHost);
            sb2.append("]");
        } else {
            sb2.append(strHost);
        }
        if (this.address.url().port() != this.socketAddress.getPort() || h.c(strHost, canonicalHost)) {
            sb2.append(":");
            sb2.append(this.address.url().port());
        }
        if (!h.c(strHost, canonicalHost)) {
            if (h.c(this.proxy, Proxy.NO_PROXY)) {
                sb2.append(" at ");
            } else {
                sb2.append(" via proxy ");
            }
            if (canonicalHost == null) {
                sb2.append("<unresolved>");
            } else if (s.h0(canonicalHost, ':')) {
                sb2.append("[");
                sb2.append(canonicalHost);
                sb2.append("]");
            } else {
                sb2.append(canonicalHost);
            }
            sb2.append(":");
            sb2.append(this.socketAddress.getPort());
        }
        String string = sb2.toString();
        h.i(string, "StringBuilder().apply(builderAction).toString()");
        return string;
    }
}
