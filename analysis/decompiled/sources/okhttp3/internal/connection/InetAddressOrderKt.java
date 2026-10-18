package okhttp3.internal.connection;

import java.net.Inet6Address;
import java.net.InetAddress;
import java.util.ArrayList;
import java.util.List;
import okhttp3.internal._UtilCommonKt;
import p4.h;

/* JADX INFO: compiled from: InetAddressOrder.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class InetAddressOrderKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final List<InetAddress> reorderForHappyEyeballs(List<? extends InetAddress> list) {
        h.j(list, "addresses");
        if (list.size() < 2) {
            return list;
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : list) {
            if (((InetAddress) obj) instanceof Inet6Address) {
                arrayList.add(obj);
            } else {
                arrayList2.add(obj);
            }
        }
        ArrayList arrayList3 = arrayList;
        ArrayList arrayList4 = arrayList2;
        return (arrayList3.isEmpty() || arrayList4.isEmpty()) ? list : _UtilCommonKt.interleave(arrayList3, arrayList4);
    }
}
