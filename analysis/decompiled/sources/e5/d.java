package e5;

import java.util.Collections;
import java.util.List;
import m5.g0;
import z4.g;

/* JADX INFO: compiled from: SsaSubtitle.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements g {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<List<z4.a>> f6509h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final List<Long> f6510i;

    public d(List<List<z4.a>> list, List<Long> list2) {
        this.f6509h = list;
        this.f6510i = list2;
    }

    @Override // z4.g
    public final int b(long j10) {
        int i10;
        List<Long> list = this.f6510i;
        Long lValueOf = Long.valueOf(j10);
        int i11 = g0.f10384a;
        int iBinarySearch = Collections.binarySearch(list, lValueOf);
        if (iBinarySearch < 0) {
            i10 = ~iBinarySearch;
        } else {
            int size = list.size();
            do {
                iBinarySearch++;
                if (iBinarySearch >= size) {
                    break;
                }
            } while (list.get(iBinarySearch).compareTo(lValueOf) == 0);
            i10 = iBinarySearch;
        }
        if (i10 < this.f6510i.size()) {
            return i10;
        }
        return -1;
    }

    @Override // z4.g
    public final long g(int i10) {
        m5.a.a(i10 >= 0);
        m5.a.a(i10 < this.f6510i.size());
        return this.f6510i.get(i10).longValue();
    }

    @Override // z4.g
    public final List<z4.a> i(long j10) {
        int iC = g0.c(this.f6510i, Long.valueOf(j10), false);
        return iC == -1 ? Collections.emptyList() : this.f6509h.get(iC);
    }

    @Override // z4.g
    public final int j() {
        return this.f6510i.size();
    }
}
