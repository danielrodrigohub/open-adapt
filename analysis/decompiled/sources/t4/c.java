package t4;

import android.net.Uri;
import java.util.ArrayList;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import m5.g0;

/* JADX INFO: compiled from: DashManifest.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements o4.a<c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final long f15442a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final long f15443b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final long f15444c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final boolean f15445d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final long f15446e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f15447f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final long f15448g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final long f15449h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final fe.h f15450i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final l f15451j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final Uri f15452k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final h f15453l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final List<g> f15454m;

    public c(long j10, long j11, long j12, boolean z10, long j13, long j14, long j15, long j16, h hVar, fe.h hVar2, l lVar, Uri uri, List<g> list) {
        this.f15442a = j10;
        this.f15443b = j11;
        this.f15444c = j12;
        this.f15445d = z10;
        this.f15446e = j13;
        this.f15447f = j14;
        this.f15448g = j15;
        this.f15449h = j16;
        this.f15453l = hVar;
        this.f15450i = hVar2;
        this.f15452k = uri;
        this.f15451j = lVar;
        this.f15454m = list;
    }

    @Override // o4.a
    public final c a(List list) {
        LinkedList linkedList = new LinkedList(list);
        Collections.sort(linkedList);
        linkedList.add(new o4.c());
        ArrayList arrayList = new ArrayList();
        long j10 = 0;
        for (int i10 = 0; i10 < c(); i10++) {
            if (((o4.c) linkedList.peek()).f12267h != i10) {
                long jD = d(i10);
                if (jD != -9223372036854775807L) {
                    j10 += jD;
                }
            } else {
                g gVarB = b(i10);
                List<a> list2 = gVarB.f15478c;
                o4.c cVar = (o4.c) linkedList.poll();
                int i11 = cVar.f12267h;
                ArrayList arrayList2 = new ArrayList();
                while (true) {
                    int i12 = cVar.f12268i;
                    a aVar = list2.get(i12);
                    List<j> list3 = aVar.f15434c;
                    ArrayList arrayList3 = new ArrayList();
                    do {
                        arrayList3.add(list3.get(cVar.f12269j));
                        cVar = (o4.c) linkedList.poll();
                        if (cVar.f12267h != i11) {
                            break;
                        }
                    } while (cVar.f12268i == i12);
                    List<a> list4 = list2;
                    arrayList2.add(new a(aVar.f15432a, aVar.f15433b, arrayList3, aVar.f15435d, aVar.f15436e, aVar.f15437f));
                    if (cVar.f12267h != i11) {
                        break;
                    }
                    list2 = list4;
                }
                linkedList.addFirst(cVar);
                arrayList.add(new g(gVarB.f15476a, gVarB.f15477b - j10, arrayList2, gVarB.f15479d));
            }
        }
        long j11 = this.f15443b;
        return new c(this.f15442a, j11 != -9223372036854775807L ? j11 - j10 : -9223372036854775807L, this.f15444c, this.f15445d, this.f15446e, this.f15447f, this.f15448g, this.f15449h, this.f15453l, this.f15450i, this.f15451j, this.f15452k, arrayList);
    }

    public final g b(int i10) {
        return this.f15454m.get(i10);
    }

    public final int c() {
        return this.f15454m.size();
    }

    public final long d(int i10) {
        if (i10 != this.f15454m.size() - 1) {
            return this.f15454m.get(i10 + 1).f15477b - this.f15454m.get(i10).f15477b;
        }
        long j10 = this.f15443b;
        if (j10 == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        return j10 - this.f15454m.get(i10).f15477b;
    }

    public final long e(int i10) {
        return g0.L(d(i10));
    }
}
