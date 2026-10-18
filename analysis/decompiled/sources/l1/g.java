package l1;

import android.text.TextUtils;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import k1.o;
import k1.r;

/* JADX INFO: compiled from: WorkContinuationImpl.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends j6.f {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f9837j = k1.l.e("WorkContinuationImpl");

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final k f9838a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f9839b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f9840c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final List<? extends r> f9841d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<String> f9842e;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f9845h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c f9846i;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<g> f9844g = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<String> f9843f = new ArrayList();

    /* JADX WARN: Incorrect types in method signature: (Ll1/k;Ljava/lang/String;Ljava/lang/Object;Ljava/util/List<+Lk1/r;>;Ljava/util/List<Ll1/g;>;)V */
    /* JADX WARN: Type inference failed for: r3v1, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    /* JADX WARN: Type inference failed for: r3v2, types: [java.util.ArrayList, java.util.List<java.lang.String>] */
    public g(k kVar, String str, int i10, List list, List list2) {
        this.f9838a = kVar;
        this.f9839b = str;
        this.f9840c = i10;
        this.f9841d = list;
        this.f9842e = new ArrayList(list.size());
        for (int i11 = 0; i11 < list.size(); i11++) {
            String strA = ((r) list.get(i11)).a();
            this.f9842e.add(strA);
            this.f9843f.add(strA);
        }
    }

    public static boolean d(g gVar, Set<String> set) {
        set.addAll(gVar.f9842e);
        Set<String> setE = e(gVar);
        Iterator<String> it = set.iterator();
        while (it.hasNext()) {
            if (((HashSet) setE).contains(it.next())) {
                return true;
            }
        }
        List<g> list = gVar.f9844g;
        if (list != null && !list.isEmpty()) {
            Iterator<g> it2 = list.iterator();
            while (it2.hasNext()) {
                if (d(it2.next(), set)) {
                    return true;
                }
            }
        }
        set.removeAll(gVar.f9842e);
        return false;
    }

    public static Set<String> e(g gVar) {
        HashSet hashSet = new HashSet();
        List<g> list = gVar.f9844g;
        if (list != null && !list.isEmpty()) {
            Iterator<g> it = list.iterator();
            while (it.hasNext()) {
                hashSet.addAll(it.next().f9842e);
            }
        }
        return hashSet;
    }

    public final o c() {
        if (this.f9845h) {
            k1.l.c().f(f9837j, String.format("Already enqueued work ids (%s)", TextUtils.join(", ", this.f9842e)), new Throwable[0]);
        } else {
            u1.d dVar = new u1.d(this);
            ((w1.b) this.f9838a.f9856d).a(dVar);
            this.f9846i = dVar.f15627i;
        }
        return this.f9846i;
    }
}
