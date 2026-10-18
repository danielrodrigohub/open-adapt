package i5;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.List;
import m5.g0;

/* JADX INFO: compiled from: WebvttSubtitle.java */
/* JADX INFO: loaded from: classes.dex */
public final class k implements z4.g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<e> f8814h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long[] f8815i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final long[] f8816j;

    public k(List<e> list) {
        this.f8814h = Collections.unmodifiableList(new ArrayList(list));
        this.f8815i = new long[list.size() * 2];
        for (int i10 = 0; i10 < list.size(); i10++) {
            e eVar = list.get(i10);
            int i11 = i10 * 2;
            long[] jArr = this.f8815i;
            jArr[i11] = eVar.f8784b;
            jArr[i11 + 1] = eVar.f8785c;
        }
        long[] jArr2 = this.f8815i;
        long[] jArrCopyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f8816j = jArrCopyOf;
        Arrays.sort(jArrCopyOf);
    }

    @Override // z4.g
    public final int b(long j10) {
        int iB = g0.b(this.f8816j, j10, false);
        if (iB < this.f8816j.length) {
            return iB;
        }
        return -1;
    }

    @Override // z4.g
    public final long g(int i10) {
        m5.a.a(i10 >= 0);
        m5.a.a(i10 < this.f8816j.length);
        return this.f8816j[i10];
    }

    @Override // z4.g
    public final List<z4.a> i(long j10) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i10 = 0; i10 < this.f8814h.size(); i10++) {
            long[] jArr = this.f8815i;
            int i11 = i10 * 2;
            if (jArr[i11] <= j10 && j10 < jArr[i11 + 1]) {
                e eVar = this.f8814h.get(i10);
                z4.a aVar = eVar.f8783a;
                if (aVar.f19298l == -3.4028235E38f) {
                    arrayList2.add(eVar);
                } else {
                    arrayList.add(aVar);
                }
            }
        }
        Collections.sort(arrayList2, new Comparator() { // from class: i5.j
            @Override // java.util.Comparator
            public final int compare(Object obj, Object obj2) {
                return Long.compare(((e) obj).f8784b, ((e) obj2).f8784b);
            }
        });
        for (int i12 = 0; i12 < arrayList2.size(); i12++) {
            z4.a.C0332a c0332aB = ((e) arrayList2.get(i12)).f8783a.b();
            c0332aB.f19315e = (-1) - i12;
            c0332aB.f19316f = 1;
            arrayList.add(c0332aB.a());
        }
        return arrayList;
    }

    @Override // z4.g
    public final int j() {
        return this.f8816j.length;
    }
}
