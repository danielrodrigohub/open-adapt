package ee;

import de.a0;
import fd.o;
import gd.p;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: -FileSystem.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class i {

    /* JADX INFO: compiled from: -FileSystem.kt */
    @ld.e(c = "okio.internal._FileSystemKt", f = "-FileSystem.kt", l = {113, 132, 142}, m = "collectRecursively")
    public static final class a extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public xd.f f6775h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public de.k f6776i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public gd.f f6777j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public a0 f6778k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public Iterator f6779l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f6780m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f6781n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public /* synthetic */ Object f6782o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f6783p;

        public a(jd.d<? super a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f6782o = obj;
            this.f6783p |= Integer.MIN_VALUE;
            return i.a(null, null, null, null, false, false, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:52:0x00f8 A[Catch: all -> 0x0054, TryCatch #0 {all -> 0x0054, blocks: (B:18:0x004f, B:50:0x00f2, B:52:0x00f8, B:56:0x0103), top: B:70:0x004f }] */
    /* JADX WARN: Code duplicated, block: B:54:0x0100  */
    /* JADX WARN: Code duplicated, block: B:55:0x0102  */
    /* JADX WARN: Code duplicated, block: B:66:0x013e  */
    /* JADX WARN: Code duplicated, block: B:68:0x014f  */
    /* JADX WARN: Code duplicated, block: B:75:0x0127 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:77:? A[LOOP:0: B:50:0x00f2->B:77:?, LOOP_END, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001b  */
    public static final Object a(xd.f<? super a0> fVar, de.k kVar, gd.f<a0> fVar2, a0 a0Var, boolean z10, boolean z11, jd.d<? super o> dVar) throws Throwable {
        a aVar;
        gd.f<a0> fVar3;
        xd.f<? super a0> fVar4;
        boolean z12;
        de.k kVar2;
        a0 a0VarC;
        gd.f<a0> fVar5;
        xd.f<? super a0> fVar6;
        de.k kVar3;
        a0 a0Var2;
        boolean z13;
        boolean z14;
        Iterator<a0> it;
        a0 next;
        boolean z15;
        a0 a0Var3 = a0Var;
        boolean z16 = z11;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.f6783p;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.f6783p = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object obj = aVar.f6782o;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i11 = aVar.f6783p;
        if (i11 == 0) {
            d3.e.p(obj);
            if (!z16) {
                aVar.f6775h = fVar;
                aVar.f6776i = kVar;
                aVar.f6777j = fVar2;
                aVar.f6778k = a0Var3;
                aVar.f6780m = z10;
                aVar.f6781n = z16;
                aVar.f6783p = 1;
                fVar.a(a0Var3, aVar);
                return aVar2;
            }
            fVar3 = fVar2;
            fVar4 = fVar;
            z12 = z10;
            kVar2 = kVar;
        } else {
            if (i11 != 1) {
                if (i11 != 2) {
                    if (i11 != 3) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                    return o.f7408a;
                }
                z14 = aVar.f6781n;
                z13 = aVar.f6780m;
                it = aVar.f6779l;
                a0Var2 = aVar.f6778k;
                fVar5 = aVar.f6777j;
                kVar3 = aVar.f6776i;
                fVar6 = aVar.f6775h;
                try {
                    d3.e.p(obj);
                    while (it.hasNext()) {
                        next = it.next();
                        if (z14) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        aVar.f6775h = fVar6;
                        aVar.f6776i = kVar3;
                        aVar.f6777j = fVar5;
                        aVar.f6778k = a0Var2;
                        aVar.f6779l = it;
                        aVar.f6780m = z13;
                        aVar.f6781n = z14;
                        aVar.f6783p = 2;
                        if (a(fVar6, kVar3, fVar5, next, z13, z15, aVar) == aVar2) {
                            return aVar2;
                        }
                    }
                    fVar5.v();
                    z16 = z14;
                    a0Var3 = a0Var2;
                    fVar4 = fVar6;
                    if (z16) {
                        return o.f7408a;
                    }
                    aVar.f6775h = null;
                    aVar.f6776i = null;
                    aVar.f6777j = null;
                    aVar.f6778k = null;
                    aVar.f6779l = null;
                    aVar.f6783p = 3;
                    fVar4.a(a0Var3, aVar);
                    return aVar2;
                } catch (Throwable th) {
                    th = th;
                    fVar5.v();
                    throw th;
                }
            }
            boolean z17 = aVar.f6781n;
            boolean z18 = aVar.f6780m;
            a0 a0Var4 = aVar.f6778k;
            fVar3 = aVar.f6777j;
            kVar2 = aVar.f6776i;
            fVar4 = aVar.f6775h;
            d3.e.p(obj);
            z16 = z17;
            z12 = z18;
            a0Var3 = a0Var4;
        }
        List<a0> listListOrNull = kVar2.listOrNull(a0Var3);
        if (listListOrNull == null) {
            listListOrNull = p.f8070h;
        }
        if (!listListOrNull.isEmpty()) {
            a0 a0Var5 = a0Var3;
            int i12 = 0;
            while (true) {
                if (z12 && fVar3.contains(a0Var5)) {
                    throw new IOException("symlink cycle at " + a0Var3);
                }
                p4.h.j(a0Var5, "path");
                a0 a0Var6 = kVar2.metadata(a0Var5).f6245c;
                if (a0Var6 == null) {
                    a0VarC = null;
                } else {
                    a0 a0VarI = a0Var5.i();
                    p4.h.g(a0VarI);
                    a0VarC = l.c(a0VarI, a0Var6, false);
                }
                if (a0VarC != null) {
                    i12++;
                    a0Var5 = a0VarC;
                } else if (z12 || i12 == 0) {
                    fVar3.n(a0Var5);
                    try {
                        fVar6 = fVar4;
                        kVar3 = kVar2;
                        fVar5 = fVar3;
                        a0Var2 = a0Var3;
                        z13 = z12;
                        z14 = z16;
                        it = listListOrNull.iterator();
                        while (it.hasNext()) {
                            next = it.next();
                            if (z14) {
                                z15 = true;
                            } else {
                                z15 = false;
                            }
                            aVar.f6775h = fVar6;
                            aVar.f6776i = kVar3;
                            aVar.f6777j = fVar5;
                            aVar.f6778k = a0Var2;
                            aVar.f6779l = it;
                            aVar.f6780m = z13;
                            aVar.f6781n = z14;
                            aVar.f6783p = 2;
                            if (a(fVar6, kVar3, fVar5, next, z13, z15, aVar) == aVar2) {
                                return aVar2;
                            }
                        }
                        fVar5.v();
                        z16 = z14;
                        a0Var3 = a0Var2;
                        fVar4 = fVar6;
                    } catch (Throwable th2) {
                        th = th2;
                        fVar5 = fVar3;
                        fVar5.v();
                        throw th;
                    }
                }
            }
        }
        if (z16) {
            return o.f7408a;
        }
        aVar.f6775h = null;
        aVar.f6776i = null;
        aVar.f6777j = null;
        aVar.f6778k = null;
        aVar.f6779l = null;
        aVar.f6783p = 3;
        fVar4.a(a0Var3, aVar);
        return aVar2;
    }
}
