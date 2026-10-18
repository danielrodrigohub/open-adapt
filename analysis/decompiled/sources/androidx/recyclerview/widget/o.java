package androidx.recyclerview.widget;

import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: DiffUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class o {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Comparator<c> f2699a = new a();

    /* JADX INFO: compiled from: DiffUtil.java */
    public class a implements Comparator<c> {
        @Override // java.util.Comparator
        public final int compare(c cVar, c cVar2) {
            return cVar.f2700a - cVar2.f2700a;
        }
    }

    /* JADX INFO: compiled from: DiffUtil.java */
    public static abstract class b {
        public abstract boolean a(int i10, int i11);

        public abstract boolean b(int i10, int i11);

        public abstract Object c(int i10, int i11);

        public abstract int d();

        public abstract int e();
    }

    /* JADX INFO: compiled from: DiffUtil.java */
    public static class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f2700a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f2701b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int f2702c;

        public c(int i10, int i11, int i12) {
            this.f2700a = i10;
            this.f2701b = i11;
            this.f2702c = i12;
        }
    }

    /* JADX INFO: compiled from: DiffUtil.java */
    public static class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final List<c> f2703a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int[] f2704b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final int[] f2705c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final b f2706d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final int f2707e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final int f2708f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final boolean f2709g;

        public d(b bVar, List list, int[] iArr, int[] iArr2) {
            int i10;
            int i11;
            this.f2703a = list;
            this.f2704b = iArr;
            this.f2705c = iArr2;
            Arrays.fill(iArr, 0);
            Arrays.fill(iArr2, 0);
            this.f2706d = bVar;
            int iE = bVar.e();
            this.f2707e = iE;
            int iD = bVar.d();
            this.f2708f = iD;
            this.f2709g = true;
            c cVar = list.isEmpty() ? null : (c) list.get(0);
            if (cVar == null || cVar.f2700a != 0 || cVar.f2701b != 0) {
                list.add(0, new c(0, 0, 0));
            }
            list.add(new c(iE, iD, 0));
            Iterator it = list.iterator();
            while (it.hasNext()) {
                c cVar2 = (c) it.next();
                for (int i12 = 0; i12 < cVar2.f2702c; i12++) {
                    int i13 = cVar2.f2700a + i12;
                    int i14 = cVar2.f2701b + i12;
                    int i15 = this.f2706d.a(i13, i14) ? 1 : 2;
                    this.f2704b[i13] = (i14 << 4) | i15;
                    this.f2705c[i14] = (i13 << 4) | i15;
                }
            }
            if (this.f2709g) {
                int i16 = 0;
                for (c cVar3 : this.f2703a) {
                    while (true) {
                        i10 = cVar3.f2700a;
                        if (i16 < i10) {
                            if (this.f2704b[i16] == 0) {
                                int size = this.f2703a.size();
                                int i17 = 0;
                                for (int i18 = 0; i18 < size; i18++) {
                                    c cVar4 = this.f2703a.get(i18);
                                    while (true) {
                                        i11 = cVar4.f2701b;
                                        if (i17 < i11) {
                                            if (this.f2705c[i17] == 0 && this.f2706d.b(i16, i17)) {
                                                int i19 = this.f2706d.a(i16, i17) ? 8 : 4;
                                                this.f2704b[i16] = (i17 << 4) | i19;
                                                this.f2705c[i17] = i19 | (i16 << 4);
                                                break;
                                            }
                                            i17++;
                                        }
                                    }
                                    i17 = cVar4.f2702c + i11;
                                }
                            }
                            i16++;
                        }
                    }
                    i16 = cVar3.f2702c + i10;
                }
            }
        }

        public static e b(Collection<e> collection, int i10, boolean z10) {
            e next;
            Iterator<e> it = collection.iterator();
            while (true) {
                if (!it.hasNext()) {
                    next = null;
                    break;
                }
                next = it.next();
                if (next.f2710a == i10 && next.f2712c == z10) {
                    it.remove();
                    break;
                }
            }
            while (it.hasNext()) {
                e next2 = it.next();
                if (z10) {
                    next2.f2711b--;
                } else {
                    next2.f2711b++;
                }
            }
            return next;
        }

        public final void a(RecyclerView.e eVar) {
            int i10;
            y bVar = new androidx.recyclerview.widget.b(eVar);
            androidx.recyclerview.widget.c cVar = bVar instanceof androidx.recyclerview.widget.c ? (androidx.recyclerview.widget.c) bVar : new androidx.recyclerview.widget.c(bVar);
            int i11 = this.f2707e;
            ArrayDeque arrayDeque = new ArrayDeque();
            int i12 = this.f2707e;
            int i13 = this.f2708f;
            for (int size = this.f2703a.size() - 1; size >= 0; size--) {
                c cVar2 = this.f2703a.get(size);
                int i14 = cVar2.f2700a;
                int i15 = cVar2.f2702c;
                int i16 = i14 + i15;
                int i17 = cVar2.f2701b + i15;
                while (true) {
                    if (i12 <= i16) {
                        break;
                    }
                    i12--;
                    int i18 = this.f2704b[i12];
                    if ((i18 & 12) != 0) {
                        int i19 = i18 >> 4;
                        e eVarB = b(arrayDeque, i19, false);
                        if (eVarB != null) {
                            int i20 = (i11 - eVarB.f2711b) - 1;
                            cVar.b(i12, i20);
                            if ((i18 & 4) != 0) {
                                cVar.d(i20, 1, this.f2706d.c(i12, i19));
                            }
                        } else {
                            arrayDeque.add(new e(i12, (i11 - i12) - 1, true));
                        }
                    } else {
                        cVar.a(i12, 1);
                        i11--;
                    }
                }
                while (i13 > i17) {
                    i13--;
                    int i21 = this.f2705c[i13];
                    if ((i21 & 12) != 0) {
                        int i22 = i21 >> 4;
                        e eVarB2 = b(arrayDeque, i22, true);
                        if (eVarB2 == null) {
                            arrayDeque.add(new e(i13, i11 - i12, false));
                        } else {
                            cVar.b((i11 - eVarB2.f2711b) - 1, i12);
                            if ((i21 & 4) != 0) {
                                cVar.d(i12, 1, this.f2706d.c(i22, i13));
                            }
                        }
                    } else {
                        cVar.c(i12, 1);
                        i11++;
                    }
                }
                int i23 = cVar2.f2700a;
                int i24 = cVar2.f2701b;
                for (i10 = 0; i10 < cVar2.f2702c; i10++) {
                    if ((this.f2704b[i23] & 15) == 2) {
                        cVar.d(i23, 1, this.f2706d.c(i23, i24));
                    }
                    i23++;
                    i24++;
                }
                i12 = cVar2.f2700a;
                i13 = cVar2.f2701b;
            }
            cVar.e();
        }
    }

    /* JADX INFO: compiled from: DiffUtil.java */
    public static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2710a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2711b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public boolean f2712c;

        public e(int i10, int i11, boolean z10) {
            this.f2710a = i10;
            this.f2711b = i11;
            this.f2712c = z10;
        }
    }

    /* JADX INFO: compiled from: DiffUtil.java */
    public static class f {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2713a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2714b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2715c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2716d;

        public f() {
        }

        public f(int i10, int i11) {
            this.f2713a = 0;
            this.f2714b = i10;
            this.f2715c = 0;
            this.f2716d = i11;
        }
    }

    /* JADX INFO: compiled from: DiffUtil.java */
    public static class g {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f2717a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f2718b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f2719c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f2720d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public boolean f2721e;

        public final int a() {
            return Math.min(this.f2719c - this.f2717a, this.f2720d - this.f2718b);
        }
    }

    public static d a(b bVar) {
        ArrayList arrayList;
        ArrayList arrayList2;
        f fVar;
        g gVar;
        ArrayList arrayList3;
        int i10;
        f fVar2;
        c cVar;
        int i11;
        int i12;
        boolean z10;
        g gVar2;
        g gVar3;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int iE = bVar.e();
        int iD = bVar.d();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        arrayList5.add(new f(iE, iD));
        int i19 = iE + iD;
        int i20 = 1;
        int i21 = (((i19 + 1) / 2) * 2) + 1;
        int[] iArr = new int[i21];
        int i22 = i21 / 2;
        int[] iArr2 = new int[i21];
        ArrayList arrayList6 = new ArrayList();
        while (!arrayList5.isEmpty()) {
            f fVar3 = (f) arrayList5.remove(arrayList5.size() - i20);
            int i23 = fVar3.f2714b;
            int i24 = fVar3.f2713a;
            int i25 = i23 - i24;
            if (i25 >= i20 && (i11 = fVar3.f2716d - fVar3.f2715c) >= i20) {
                int i26 = ((i11 + i25) + i20) / 2;
                int i27 = i20 + i22;
                iArr[i27] = i24;
                iArr2[i27] = i23;
                int i28 = 0;
                while (true) {
                    if (i28 >= i26) {
                        arrayList = arrayList5;
                        arrayList2 = arrayList6;
                        fVar = fVar3;
                        gVar = null;
                        break;
                    }
                    int i29 = Math.abs((fVar3.f2714b - fVar3.f2713a) - (fVar3.f2716d - fVar3.f2715c)) % 2 == i20 ? i20 : 0;
                    int i30 = (fVar3.f2714b - fVar3.f2713a) - (fVar3.f2716d - fVar3.f2715c);
                    int i31 = -i28;
                    int i32 = i31;
                    while (true) {
                        if (i32 > i28) {
                            arrayList = arrayList5;
                            arrayList2 = arrayList6;
                            i12 = i26;
                            z10 = false;
                            gVar2 = null;
                            break;
                        }
                        if (i32 == i31 || (i32 != i28 && iArr[i32 + 1 + i22] > iArr[(i32 - 1) + i22])) {
                            i16 = iArr[i32 + 1 + i22];
                            i17 = i16;
                        } else {
                            i16 = iArr[(i32 - 1) + i22];
                            i17 = i16 + 1;
                        }
                        i12 = i26;
                        arrayList = arrayList5;
                        int i33 = ((i17 - fVar3.f2713a) + fVar3.f2715c) - i32;
                        int i34 = (i28 == 0 || i17 != i16) ? i33 : i33 - 1;
                        arrayList2 = arrayList6;
                        while (i17 < fVar3.f2714b && i33 < fVar3.f2716d && bVar.b(i17, i33)) {
                            i17++;
                            i33++;
                        }
                        iArr[i32 + i22] = i17;
                        if (i29 != 0) {
                            int i35 = i30 - i32;
                            i18 = i29;
                            if (i35 >= i31 + 1 && i35 <= i28 - 1 && iArr2[i35 + i22] <= i17) {
                                gVar2 = new g();
                                gVar2.f2717a = i16;
                                gVar2.f2718b = i34;
                                gVar2.f2719c = i17;
                                gVar2.f2720d = i33;
                                z10 = false;
                                gVar2.f2721e = false;
                                break;
                            }
                        } else {
                            i18 = i29;
                        }
                        i32 += 2;
                        i26 = i12;
                        arrayList5 = arrayList;
                        arrayList6 = arrayList2;
                        i29 = i18;
                    }
                    if (gVar2 != null) {
                        gVar = gVar2;
                        fVar = fVar3;
                        break;
                    }
                    int i36 = (fVar3.f2714b - fVar3.f2713a) - (fVar3.f2716d - fVar3.f2715c);
                    boolean z11 = i36 % 2 == 0 ? true : z10;
                    int i37 = i31;
                    while (true) {
                        if (i37 > i28) {
                            fVar = fVar3;
                            gVar3 = null;
                            break;
                        }
                        if (i37 == i31 || (i37 != i28 && iArr2[i37 + 1 + i22] < iArr2[(i37 - 1) + i22])) {
                            i13 = iArr2[i37 + 1 + i22];
                            i14 = i13;
                        } else {
                            i13 = iArr2[(i37 - 1) + i22];
                            i14 = i13 - 1;
                        }
                        int i38 = fVar3.f2716d - ((fVar3.f2714b - i14) - i37);
                        int i39 = (i28 == 0 || i14 != i13) ? i38 : i38 + 1;
                        while (true) {
                            if (i14 > fVar3.f2713a && i38 > fVar3.f2715c) {
                                int i40 = i14 - 1;
                                fVar = fVar3;
                                int i41 = i38 - 1;
                                if (!bVar.b(i40, i41)) {
                                    break;
                                }
                                i14 = i40;
                                i38 = i41;
                                fVar3 = fVar;
                            } else {
                                fVar = fVar3;
                                break;
                            }
                        }
                        iArr2[i37 + i22] = i14;
                        if (z11 && (i15 = i36 - i37) >= i31 && i15 <= i28 && iArr[i15 + i22] >= i14) {
                            gVar3 = new g();
                            gVar3.f2717a = i14;
                            gVar3.f2718b = i38;
                            gVar3.f2719c = i13;
                            gVar3.f2720d = i39;
                            gVar3.f2721e = true;
                            break;
                        }
                        i37 += 2;
                        fVar3 = fVar;
                    }
                    if (gVar3 != null) {
                        gVar = gVar3;
                        break;
                    }
                    i28++;
                    i26 = i12;
                    arrayList5 = arrayList;
                    arrayList6 = arrayList2;
                    fVar3 = fVar;
                    i20 = 1;
                }
            } else {
                arrayList = arrayList5;
                arrayList2 = arrayList6;
                fVar = fVar3;
                gVar = null;
                break;
            }
            if (gVar != null) {
                if (gVar.a() > 0) {
                    int i42 = gVar.f2720d;
                    int i43 = gVar.f2718b;
                    int i44 = i42 - i43;
                    int i45 = gVar.f2719c;
                    int i46 = gVar.f2717a;
                    int i47 = i45 - i46;
                    if (!(i44 != i47)) {
                        cVar = new c(i46, i43, i47);
                    } else if (gVar.f2721e) {
                        cVar = new c(i46, i43, gVar.a());
                    } else {
                        cVar = i44 > i47 ? new c(i46, i43 + 1, gVar.a()) : new c(i46 + 1, i43, gVar.a());
                    }
                    arrayList4.add(cVar);
                }
                if (arrayList2.isEmpty()) {
                    fVar2 = new f();
                    arrayList6 = arrayList2;
                    i10 = 1;
                } else {
                    i10 = 1;
                    arrayList6 = arrayList2;
                    fVar2 = (f) arrayList6.remove(arrayList2.size() - 1);
                }
                fVar2.f2713a = fVar.f2713a;
                fVar2.f2715c = fVar.f2715c;
                fVar2.f2714b = gVar.f2717a;
                fVar2.f2716d = gVar.f2718b;
                arrayList3 = arrayList;
                arrayList3.add(fVar2);
                fVar.f2714b = fVar.f2714b;
                fVar.f2716d = fVar.f2716d;
                fVar.f2713a = gVar.f2719c;
                fVar.f2715c = gVar.f2720d;
                arrayList3.add(fVar);
            } else {
                arrayList3 = arrayList;
                arrayList6 = arrayList2;
                i10 = 1;
                arrayList6.add(fVar);
            }
            i20 = i10;
            arrayList5 = arrayList3;
        }
        Collections.sort(arrayList4, f2699a);
        return new d(bVar, arrayList4, iArr, iArr2);
    }
}
