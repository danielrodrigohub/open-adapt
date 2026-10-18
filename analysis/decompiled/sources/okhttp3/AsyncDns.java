package okhttp3;

import androidx.lifecycle.o;
import androidx.recyclerview.widget.d;
import gd.n;
import gd.p;
import java.io.IOException;
import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import p4.h;

/* JADX INFO: compiled from: AsyncDns.kt */
/* JADX INFO: loaded from: classes.dex */
public interface AsyncDns {
    public static final Companion Companion = Companion.$$INSTANCE;
    public static final int TYPE_A = 1;
    public static final int TYPE_AAAA = 28;

    /* JADX INFO: compiled from: AsyncDns.kt */
    public interface Callback {
        void onFailure(String str, IOException iOException);

        void onResponse(String str, List<? extends InetAddress> list);
    }

    /* JADX INFO: compiled from: AsyncDns.kt */
    public static final class Companion {
        public static final /* synthetic */ Companion $$INSTANCE = new Companion();
        public static final int TYPE_A = 1;
        public static final int TYPE_AAAA = 28;

        private Companion() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: toDns$lambda-2, reason: not valid java name */
        public static final List m36toDns$lambda2(AsyncDns[] asyncDnsArr, String str) throws Throwable {
            Iterable iterableY;
            h.j(asyncDnsArr, "$asyncDns");
            h.j(str, "hostname");
            final ArrayList arrayList = new ArrayList();
            final ArrayList arrayList2 = new ArrayList();
            final CountDownLatch countDownLatch = new CountDownLatch(asyncDnsArr.length);
            for (AsyncDns asyncDns : asyncDnsArr) {
                asyncDns.query(str, new Callback() { // from class: okhttp3.AsyncDns$Companion$toDns$1$1$1
                    @Override // okhttp3.AsyncDns.Callback
                    public void onFailure(String str2, IOException iOException) {
                        h.j(str2, "hostname");
                        h.j(iOException, "e");
                        List<IOException> list = arrayList2;
                        synchronized (list) {
                            list.add(iOException);
                        }
                        countDownLatch.countDown();
                    }

                    @Override // okhttp3.AsyncDns.Callback
                    public void onResponse(String str2, List<? extends InetAddress> list) {
                        h.j(str2, "hostname");
                        h.j(list, "addresses");
                        List<InetAddress> list2 = arrayList;
                        synchronized (list2) {
                            list2.addAll(list);
                        }
                        countDownLatch.countDown();
                    }
                });
            }
            countDownLatch.await();
            if (!arrayList.isEmpty()) {
                return arrayList;
            }
            Throwable unknownHostException = (IOException) n.a0(arrayList2);
            if (unknownHostException == null) {
                unknownHostException = new UnknownHostException(d.c("No results for ", str));
            }
            int size = arrayList2.size() - 1;
            if (size <= 0) {
                iterableY = p.f8070h;
            } else if (size == 1) {
                iterableY = o.y(n.e0(arrayList2));
            } else {
                ArrayList arrayList3 = new ArrayList(size);
                int size2 = arrayList2.size();
                for (int i10 = 1; i10 < size2; i10++) {
                    arrayList3.add(arrayList2.get(i10));
                }
                iterableY = arrayList3;
            }
            Iterator it = iterableY.iterator();
            while (it.hasNext()) {
                h.b(unknownHostException, (IOException) it.next());
            }
            throw unknownHostException;
        }

        public final Dns toDns(final AsyncDns... asyncDnsArr) {
            h.j(asyncDnsArr, "asyncDns");
            return new Dns() { // from class: okhttp3.a
                @Override // okhttp3.Dns
                public final List lookup(String str) {
                    return AsyncDns.Companion.m36toDns$lambda2(asyncDnsArr, str);
                }
            };
        }
    }

    /* JADX INFO: compiled from: AsyncDns.kt */
    public enum DnsClass {
        IPV4(1),
        IPV6(28);

        private final int type;

        DnsClass(int i10) {
            this.type = i10;
        }

        public final int getType() {
            return this.type;
        }
    }

    void query(String str, Callback callback);
}
