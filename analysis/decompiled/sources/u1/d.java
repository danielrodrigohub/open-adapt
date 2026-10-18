package u1;

import android.database.Cursor;
import android.os.Build;
import android.text.TextUtils;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import androidx.work.impl.workers.ConstraintTrackingWorker;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import k1.r;
import t1.s;
import t1.t;
import y0.f0;

/* JADX INFO: compiled from: EnqueueRunnable.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements Runnable {

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final String f15625j = k1.l.e("EnqueueRunnable");

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final l1.g f15626h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final l1.c f15627i = new l1.c();

    public d(l1.g gVar) {
        this.f15626h = gVar;
    }

    /* JADX WARN: Code duplicated, block: B:109:0x020f  */
    /* JADX WARN: Code duplicated, block: B:199:0x01b7 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:80:0x0198  */
    /* JADX WARN: Code duplicated, block: B:82:0x019c  */
    /* JADX WARN: Code duplicated, block: B:83:0x019e  */
    /* JADX WARN: Code duplicated, block: B:86:0x01a3  */
    /* JADX WARN: Code duplicated, block: B:87:0x01a8 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:88:0x01aa  */
    /* JADX WARN: Code duplicated, block: B:89:0x01ac  */
    /* JADX WARN: Multi-variable type inference failed */
    public static boolean a(l1.g gVar) {
        int i10;
        int i11;
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        k1.p pVar;
        int i12;
        boolean z14;
        int i13;
        boolean z15;
        List listEmptyList;
        boolean z16;
        boolean z17;
        k1.p pVar2;
        boolean z18;
        boolean z19;
        List<l1.g> list = gVar.f9844g;
        if (list != null) {
            i10 = 0;
            for (l1.g gVar2 : list) {
                if (gVar2.f9845h) {
                    k1.l.c().f(f15625j, String.format("Already enqueued work ids (%s).", TextUtils.join(", ", gVar2.f9842e)), new Throwable[0]);
                } else {
                    i10 |= a(gVar2) ? 1 : 0;
                }
            }
        } else {
            i10 = 0;
        }
        Set<String> setE = l1.g.e(gVar);
        l1.k kVar = gVar.f9838a;
        List<? extends r> list2 = gVar.f9841d;
        String[] strArr = (String[]) setE.toArray(new String[0]);
        String str = gVar.f9839b;
        int i14 = gVar.f9840c;
        k1.p pVar3 = k1.p.ENQUEUED;
        k1.p pVar4 = k1.p.SUCCEEDED;
        k1.p pVar5 = k1.p.CANCELLED;
        k1.p pVar6 = k1.p.FAILED;
        long jCurrentTimeMillis = System.currentTimeMillis();
        WorkDatabase workDatabase = kVar.f9855c;
        boolean z20 = strArr != null && strArr.length > 0;
        if (z20) {
            int length = strArr.length;
            i11 = i10;
            int i15 = 0;
            z10 = false;
            z11 = false;
            z12 = true;
            while (true) {
                if (i15 < length) {
                    int i16 = length;
                    String str2 = strArr[i15];
                    t1.o oVarH = ((t1.q) workDatabase.w()).h(str2);
                    if (oVarH == null) {
                        k1.l.c().b(f15625j, String.format("Prerequisite %s doesn't exist; not enqueuing", str2), new Throwable[0]);
                    } else {
                        k1.p pVar7 = oVarH.f15351b;
                        z12 &= pVar7 == pVar4;
                        if (pVar7 == pVar6) {
                            z11 = true;
                        } else if (pVar7 == pVar5) {
                            z10 = true;
                        }
                        i15++;
                        length = i16;
                    }
                }
                i13 = 0;
                gVar.f9845h = true;
                return i11 | i13;
            }
        }
        i11 = i10;
        z10 = false;
        z11 = false;
        z12 = true;
        boolean z21 = !TextUtils.isEmpty(str);
        if (z21 && !z20) {
            ArrayList arrayList = (ArrayList) ((t1.q) workDatabase.w()).i(str);
            if (arrayList.isEmpty()) {
                z13 = z21;
                pVar = pVar3;
                i12 = 0;
            } else if (i14 == 3 || i14 == 4) {
                t1.b bVarR = workDatabase.r();
                ArrayList arrayList2 = new ArrayList();
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    t1.o.a aVar = (t1.o.a) it.next();
                    Iterator it2 = it;
                    String str3 = aVar.f15368a;
                    boolean z22 = z21;
                    t1.c cVar = (t1.c) bVarR;
                    Objects.requireNonNull(cVar);
                    t1.b bVar = bVarR;
                    k1.p pVar8 = pVar3;
                    f0 f0VarF0 = f0.f0("SELECT COUNT(*)>0 FROM dependency WHERE prerequisite_id=?", 1);
                    if (str3 == null) {
                        f0VarF0.t(1);
                    } else {
                        f0VarF0.l(1, str3);
                    }
                    cVar.f15332a.b();
                    Cursor cursorO = cVar.f15332a.o(f0VarF0);
                    try {
                        if (cursorO.moveToFirst()) {
                            z16 = false;
                            if (cursorO.getInt(0) != 0) {
                                z17 = true;
                            }
                            cursorO.close();
                            f0VarF0.g0();
                            if (z17) {
                                pVar2 = aVar.f15369b;
                                if (pVar2 == pVar4) {
                                    z18 = true;
                                } else {
                                    z18 = z16;
                                }
                                boolean z23 = z12 & z18;
                                if (pVar2 == pVar6) {
                                    z19 = z10;
                                    z11 = true;
                                } else if (pVar2 == pVar5) {
                                    z19 = true;
                                } else {
                                    z19 = z10;
                                }
                                arrayList2.add(aVar.f15368a);
                                z10 = z19;
                                z12 = z23;
                            }
                            it = it2;
                            z21 = z22;
                            bVarR = bVar;
                            pVar3 = pVar8;
                        } else {
                            z16 = false;
                        }
                        z17 = z16;
                        cursorO.close();
                        f0VarF0.g0();
                        if (z17) {
                            pVar2 = aVar.f15369b;
                            if (pVar2 == pVar4) {
                                z18 = true;
                            } else {
                                z18 = z16;
                            }
                            boolean z24 = z12 & z18;
                            if (pVar2 == pVar6) {
                                z19 = z10;
                                z11 = true;
                            } else if (pVar2 == pVar5) {
                                z19 = true;
                            } else {
                                z19 = z10;
                            }
                            arrayList2.add(aVar.f15368a);
                            z10 = z19;
                            z12 = z24;
                        }
                        it = it2;
                        z21 = z22;
                        bVarR = bVar;
                        pVar3 = pVar8;
                    } catch (Throwable th) {
                        cursorO.close();
                        f0VarF0.g0();
                        throw th;
                    }
                }
                z13 = z21;
                pVar = pVar3;
                i12 = 0;
                if (i14 == 4 && (z10 || z11)) {
                    t1.q qVar = (t1.q) workDatabase.w();
                    Iterator it3 = ((ArrayList) qVar.i(str)).iterator();
                    while (it3.hasNext()) {
                        qVar.a(((t1.o.a) it3.next()).f15368a);
                    }
                    z15 = false;
                    z11 = false;
                    listEmptyList = Collections.emptyList();
                } else {
                    z15 = z10;
                    listEmptyList = arrayList2;
                }
                strArr = (String[]) listEmptyList.toArray(strArr);
                z10 = z15;
                z20 = strArr.length > 0;
            } else {
                if (i14 == 2) {
                    Iterator it4 = arrayList.iterator();
                    while (true) {
                        if (it4.hasNext()) {
                            k1.p pVar9 = ((t1.o.a) it4.next()).f15369b;
                            if (pVar9 == pVar3 || pVar9 == k1.p.RUNNING) {
                                i13 = 0;
                                gVar.f9845h = true;
                                return i11 | i13;
                            }
                        }
                    }
                }
                new b(kVar, str, false).run();
                t1.p pVarW = workDatabase.w();
                Iterator it5 = arrayList.iterator();
                while (it5.hasNext()) {
                    ((t1.q) pVarW).a(((t1.o.a) it5.next()).f15368a);
                }
                z13 = z21;
                z14 = z20;
                pVar = pVar3;
                i12 = 0;
                i13 = 1;
            }
            z14 = z20;
            i13 = i12;
        } else {
            z13 = z21;
            pVar = pVar3;
            i12 = 0;
            z14 = z20;
            i13 = i12;
        }
        for (r rVar : list2) {
            t1.o oVar = rVar.f9617b;
            if (!z14 || z12) {
                if (oVar.c()) {
                    oVar.f15363n = 0L;
                } else {
                    oVar.f15363n = jCurrentTimeMillis;
                }
            } else if (z11) {
                oVar.f15351b = pVar6;
            } else if (z10) {
                oVar.f15351b = pVar5;
            } else {
                oVar.f15351b = k1.p.BLOCKED;
            }
            if (Build.VERSION.SDK_INT <= 25) {
                b(oVar);
            }
            k1.p pVar10 = pVar;
            if (oVar.f15351b == pVar10) {
                i13 = 1;
            }
            t1.q qVar2 = (t1.q) workDatabase.w();
            qVar2.f15370a.b();
            qVar2.f15370a.c();
            try {
                qVar2.f15371b.f(oVar);
                qVar2.f15370a.p();
                qVar2.f15370a.l();
                if (z14) {
                    int length2 = strArr.length;
                    int i17 = i12;
                    while (i17 < length2) {
                        String[] strArr2 = strArr;
                        t1.a aVar2 = new t1.a(rVar.a(), strArr[i17]);
                        t1.c cVar2 = (t1.c) workDatabase.r();
                        cVar2.f15332a.b();
                        cVar2.f15332a.c();
                        try {
                            cVar2.f15333b.f(aVar2);
                            cVar2.f15332a.p();
                            cVar2.f15332a.l();
                            i17++;
                            strArr = strArr2;
                        } catch (Throwable th2) {
                            cVar2.f15332a.l();
                            throw th2;
                        }
                    }
                }
                String[] strArr3 = strArr;
                for (String str4 : rVar.f9618c) {
                    s sVarX = workDatabase.x();
                    t1.r rVar2 = new t1.r(str4, rVar.a());
                    t tVar = (t) sVarX;
                    tVar.f15381a.b();
                    tVar.f15381a.c();
                    try {
                        tVar.f15382b.f(rVar2);
                        tVar.f15381a.p();
                        tVar.f15381a.l();
                    } catch (Throwable th3) {
                        tVar.f15381a.l();
                        throw th3;
                    }
                }
                if (z13) {
                    t1.k kVarU = workDatabase.u();
                    t1.j jVar = new t1.j(str, rVar.a());
                    t1.l lVar = (t1.l) kVarU;
                    lVar.f15345a.b();
                    lVar.f15345a.c();
                    try {
                        lVar.f15346b.f(jVar);
                        lVar.f15345a.p();
                        lVar.f15345a.l();
                    } catch (Throwable th4) {
                        lVar.f15345a.l();
                        throw th4;
                    }
                }
                pVar = pVar10;
                strArr = strArr3;
                i12 = 0;
            } catch (Throwable th5) {
                qVar2.f15370a.l();
                throw th5;
            }
        }
        gVar.f9845h = true;
        return i11 | i13;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public static void b(t1.o oVar) {
        k1.c cVar = oVar.f15359j;
        String str = oVar.f15352c;
        if (str.equals(ConstraintTrackingWorker.class.getName())) {
            return;
        }
        if (cVar.f9577d || cVar.f9578e) {
            androidx.work.b.a aVar = new androidx.work.b.a();
            aVar.b(oVar.f15354e.f3051a);
            aVar.f3052a.put("androidx.work.impl.workers.ConstraintTrackingWorker.ARGUMENT_CLASS_NAME", str);
            oVar.f15352c = ConstraintTrackingWorker.class.getName();
            oVar.f15354e = aVar.a();
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            l1.g gVar = this.f15626h;
            Objects.requireNonNull(gVar);
            if (l1.g.d(gVar, new HashSet())) {
                throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", this.f15626h));
            }
            WorkDatabase workDatabase = this.f15626h.f9838a.f9855c;
            workDatabase.c();
            try {
                boolean zA = a(this.f15626h);
                workDatabase.p();
                workDatabase.l();
                if (zA) {
                    f.a(this.f15626h.f9838a.f9853a, RescheduleReceiver.class, true);
                    l1.k kVar = this.f15626h.f9838a;
                    l1.f.a(kVar.f9854b, kVar.f9855c, kVar.f9857e);
                }
                this.f15627i.a(k1.o.f9606a);
            } catch (Throwable th) {
                workDatabase.l();
                throw th;
            }
        } catch (Throwable th2) {
            this.f15627i.a(new k1.o.b.a(th2));
        }
    }
}
