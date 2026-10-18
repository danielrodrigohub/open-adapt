package ea;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitInMemoryDevice.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f6638a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public List<e> f6639b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public i f6640c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public i f6641d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public d f6642e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public d f6643f;

    /* JADX INFO: compiled from: Comparisons.kt */
    public static final class a<T> implements Comparator {
        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.Comparator
        public final int compare(T t10, T t11) {
            return hd.a.b(Boolean.valueOf(((e) t10).f6629j), Boolean.valueOf(((e) t11).f6629j));
        }
    }

    public g() {
        this(null, null, null, null, null, null, 63, null);
    }

    public g(String str, List list, i iVar, i iVar2, d dVar, d dVar2, int i10, rd.h hVar) {
        ArrayList arrayList = new ArrayList();
        this.f6638a = null;
        this.f6639b = arrayList;
        this.f6640c = null;
        this.f6641d = null;
        this.f6642e = null;
        this.f6643f = null;
    }

    /* JADX WARN: Code duplicated, block: B:86:0x0169  */
    public final ea.a a() {
        int i10;
        e eVar;
        Object obj;
        h.a aVar;
        h.a aVar2;
        i iVar = this.f6640c;
        int i11 = (iVar == null || (aVar2 = iVar.f6649i) == null) ? -3 : aVar2.f6646j;
        i iVar2 = this.f6641d;
        int i12 = (iVar2 == null || (aVar = iVar2.f6649i) == null) ? -3 : aVar.f6646j;
        ArrayList arrayList = new ArrayList();
        if (i11 == -3) {
            arrayList.add(ea.a.EnumC0120a.LACE_PERCENT_LEFT_REQUIRED);
        }
        if (i12 == -3) {
            arrayList.add(ea.a.EnumC0120a.LACE_PERCENT_RIGHT_REQUIRED);
        }
        if (this.f6642e == null) {
            arrayList.add(ea.a.EnumC0120a.COLOR_LEFT_REQUIRED);
        }
        if (this.f6643f == null) {
            arrayList.add(ea.a.EnumC0120a.COLOR_RIGHT_REQUIRED);
        }
        boolean z10 = false;
        if (!arrayList.isEmpty()) {
            Object[] array = arrayList.toArray(new ea.a.EnumC0120a[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            ea.a.EnumC0120a[] enumC0120aArr = (ea.a.EnumC0120a[]) array;
            return new ea.a(null, (ea.a.EnumC0120a[]) Arrays.copyOf(enumC0120aArr, enumC0120aArr.length));
        }
        List<e> list = this.f6639b;
        ArrayList arrayList2 = new ArrayList();
        for (Object obj2 : list) {
            e eVar2 = (e) obj2;
            c cVar = eVar2.f6630k;
            int i13 = cVar.f6618h.f6649i.f6646j;
            boolean z11 = (i11 + (-2) > i13 || i13 > i11 + 2) ? z10 : true;
            int i14 = eVar2.f6631l.f6618h.f6649i.f6646j;
            boolean z12 = (i12 + (-2) > i14 || i14 > i12 + 2) ? z10 : true;
            d dVar = cVar.f6619i;
            fd.i iVar3 = new fd.i(Integer.valueOf(dVar.f6622h), Integer.valueOf(dVar.f6623i), Integer.valueOf(dVar.f6624j));
            d dVar2 = this.f6642e;
            boolean zC = p4.h.c(iVar3, dVar2 != null ? new fd.i(Integer.valueOf(dVar2.f6622h), Integer.valueOf(dVar2.f6623i), Integer.valueOf(dVar2.f6624j)) : null);
            d dVar3 = eVar2.f6631l.f6619i;
            fd.i iVar4 = new fd.i(Integer.valueOf(dVar3.f6622h), Integer.valueOf(dVar3.f6623i), Integer.valueOf(dVar3.f6624j));
            d dVar4 = this.f6643f;
            if ((z11 && z12) && (eVar2.f6629j || (zC && p4.h.c(iVar4, dVar4 != null ? new fd.i(Integer.valueOf(dVar4.f6622h), Integer.valueOf(dVar4.f6623i), Integer.valueOf(dVar4.f6624j)) : null)))) {
                arrayList2.add(obj2);
            }
            z10 = false;
        }
        if (!(!arrayList2.isEmpty())) {
            return new ea.a(null, new ea.a.EnumC0120a[0]);
        }
        String str = this.f6638a;
        if (str != null) {
            Iterator it = arrayList2.iterator();
            while (true) {
                if (!it.hasNext()) {
                    obj = null;
                    break;
                }
                Object next = it.next();
                if (p4.h.c(str, ((e) next).f6628i)) {
                    obj = next;
                    break;
                }
            }
            eVar = (e) obj;
            if (eVar == null) {
                i10 = 0;
                eVar = (e) gd.n.i0(arrayList2, new a()).get(0);
            } else {
                i10 = 0;
            }
        } else {
            i10 = 0;
            eVar = (e) gd.n.i0(arrayList2, new a()).get(0);
        }
        return new ea.a(eVar, new ea.a.EnumC0120a[i10]);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return p4.h.c(this.f6638a, gVar.f6638a) && p4.h.c(this.f6639b, gVar.f6639b) && p4.h.c(this.f6640c, gVar.f6640c) && p4.h.c(this.f6641d, gVar.f6641d) && p4.h.c(this.f6642e, gVar.f6642e) && p4.h.c(this.f6643f, gVar.f6643f);
    }

    public final int hashCode() {
        String str = this.f6638a;
        int iD = a4.g.d(this.f6639b, (str == null ? 0 : str.hashCode()) * 31, 31);
        i iVar = this.f6640c;
        int iHashCode = (iD + (iVar == null ? 0 : iVar.hashCode())) * 31;
        i iVar2 = this.f6641d;
        int iHashCode2 = (iHashCode + (iVar2 == null ? 0 : iVar2.hashCode())) * 31;
        d dVar = this.f6642e;
        int iHashCode3 = (iHashCode2 + (dVar == null ? 0 : dVar.hashCode())) * 31;
        d dVar2 = this.f6643f;
        return iHashCode3 + (dVar2 != null ? dVar2.hashCode() : 0);
    }

    public final String toString() {
        return "AdaptKitInMemoryDevice(lastUsedSnapshot=" + this.f6638a + ", modes=" + this.f6639b + ", leftLacingPosition=" + this.f6640c + ", rightLacingPosition=" + this.f6641d + ", leftColor=" + this.f6642e + ", rightColor=" + this.f6643f + ")";
    }
}
