package okhttp3;

import androidx.recyclerview.widget.d;
import gd.i;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.List;
import p4.h;

/* JADX INFO: compiled from: Dns.kt */
/* JADX INFO: loaded from: classes.dex */
public interface Dns {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final Dns SYSTEM = new Companion.DnsSystem();

    /* JADX INFO: compiled from: Dns.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();

        /* JADX INFO: compiled from: Dns.kt */
        public static final class DnsSystem implements Dns {
            @Override // okhttp3.Dns
            public List<InetAddress> lookup(String str) throws UnknownHostException {
                h.j(str, "hostname");
                try {
                    InetAddress[] allByName = InetAddress.getAllByName(str);
                    h.i(allByName, "getAllByName(hostname)");
                    return i.v(allByName);
                } catch (NullPointerException e10) {
                    UnknownHostException unknownHostException = new UnknownHostException(d.c("Broken system behaviour for dns lookup of ", str));
                    unknownHostException.initCause(e10);
                    throw unknownHostException;
                }
            }
        }

        private Companion() {
        }
    }

    List<InetAddress> lookup(String str) throws UnknownHostException;
}
