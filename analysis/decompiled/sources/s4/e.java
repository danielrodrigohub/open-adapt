package s4;

import android.net.Uri;
import java.util.Collections;
import java.util.Map;
import l5.m;
import m5.e0;
import t4.i;
import t4.j;

/* JADX INFO: compiled from: DashUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {
    public static m a(j jVar, String str, i iVar, int i10) {
        Map mapEmptyMap = Collections.emptyMap();
        Uri uriD = e0.d(str, iVar.f15487c);
        long j10 = iVar.f15485a;
        long j11 = iVar.f15486b;
        String strA = jVar.a();
        String string = strA != null ? strA : e0.d(jVar.f15490b.get(0).f15438a, iVar.f15487c).toString();
        m5.a.g(uriD, "The uri must be set.");
        return new m(uriD, 0L, 1, null, mapEmptyMap, j10, j11, string, i10, null);
    }
}
