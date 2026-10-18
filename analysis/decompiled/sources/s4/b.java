package s4;

import android.os.SystemClock;
import android.util.Pair;
import g0.n;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;
import m5.g0;

/* JADX INFO: compiled from: BaseUrlExclusionList.java */
/* JADX INFO: loaded from: classes.dex */
public final class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Long> f15113a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Map<Integer, Long> f15114b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<List<Pair<String, Integer>>, t4.b> f15115c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Random f15116d;

    public b() {
        Random random = new Random();
        this.f15115c = new HashMap();
        this.f15116d = random;
        this.f15113a = new HashMap();
        this.f15114b = new HashMap();
    }

    public static <T> void a(T t10, long j10, Map<T, Long> map) {
        if (map.containsKey(t10)) {
            Long l10 = map.get(t10);
            int i10 = g0.f10384a;
            j10 = Math.max(j10, l10.longValue());
        }
        map.put(t10, Long.valueOf(j10));
    }

    public static <T> void c(long j10, Map<T, Long> map) {
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<T, Long> entry : map.entrySet()) {
            if (entry.getValue().longValue() <= j10) {
                arrayList.add(entry.getKey());
            }
        }
        for (int i10 = 0; i10 < arrayList.size(); i10++) {
            map.remove(arrayList.get(i10));
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Long>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.HashMap, java.util.Map<java.lang.Integer, java.lang.Long>] */
    public final List<t4.b> b(List<t4.b> list) {
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        c(jElapsedRealtime, this.f15113a);
        c(jElapsedRealtime, this.f15114b);
        ArrayList arrayList = new ArrayList();
        for (int i10 = 0; i10 < list.size(); i10++) {
            t4.b bVar = list.get(i10);
            if (!this.f15113a.containsKey(bVar.f15439b) && !this.f15114b.containsKey(Integer.valueOf(bVar.f15440c))) {
                arrayList.add(bVar);
            }
        }
        return arrayList;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final t4.b d(List<t4.b> list) {
        List<t4.b> listB = b(list);
        ArrayList arrayList = (ArrayList) listB;
        if (arrayList.size() < 2) {
            return (t4.b) n.a(listB, null);
        }
        Collections.sort(listB, a.f15108i);
        ArrayList arrayList2 = new ArrayList();
        int i10 = ((t4.b) arrayList.get(0)).f15440c;
        for (int i11 = 0; i11 < arrayList.size(); i11++) {
            t4.b bVar = (t4.b) arrayList.get(i11);
            if (i10 != bVar.f15440c) {
                if (arrayList2.size() != 1) {
                    break;
                }
                return (t4.b) arrayList.get(0);
            }
            arrayList2.add(new Pair(bVar.f15439b, Integer.valueOf(bVar.f15441d)));
        }
        t4.b bVar2 = this.f15115c.get(arrayList2);
        if (bVar2 == null) {
            List listSubList = arrayList.subList(0, arrayList2.size());
            int i12 = 0;
            for (int i13 = 0; i13 < listSubList.size(); i13++) {
                i12 += ((t4.b) listSubList.get(i13)).f15441d;
            }
            int iNextInt = this.f15116d.nextInt(i12);
            int i14 = 0;
            for (int i15 = 0; i15 < listSubList.size(); i15++) {
                t4.b bVar3 = (t4.b) listSubList.get(i15);
                i14 += bVar3.f15441d;
                if (iNextInt < i14) {
                    bVar2 = bVar3;
                    this.f15115c.put(arrayList2, bVar2);
                }
            }
            bVar2 = (t4.b) n.b(listSubList);
            this.f15115c.put(arrayList2, bVar2);
        }
        return bVar2;
    }
}
