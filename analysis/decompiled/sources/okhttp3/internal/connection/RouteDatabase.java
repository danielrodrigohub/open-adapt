package okhttp3.internal.connection;

import java.util.LinkedHashSet;
import java.util.Set;
import okhttp3.Route;
import p4.h;

/* JADX INFO: compiled from: RouteDatabase.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class RouteDatabase {
    private final Set<Route> failedRoutes = new LinkedHashSet();

    public final synchronized void connected(Route route) {
        h.j(route, "route");
        this.failedRoutes.remove(route);
    }

    public final synchronized void failed(Route route) {
        h.j(route, "failedRoute");
        this.failedRoutes.add(route);
    }

    public final synchronized boolean shouldPostpone(Route route) {
        h.j(route, "route");
        return this.failedRoutes.contains(route);
    }
}
