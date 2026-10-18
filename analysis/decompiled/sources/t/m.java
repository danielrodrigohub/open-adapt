package t;

import java.util.ArrayList;

/* JADX INFO: compiled from: RunGroup.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public p f15305a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public ArrayList<p> f15306b = new ArrayList<>();

    public m(p pVar) {
        this.f15305a = null;
        this.f15305a = pVar;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<t.d>] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.ArrayList, java.util.List<t.d>] */
    public final long a(f fVar, long j10) {
        p pVar = fVar.f15293d;
        if (pVar instanceof k) {
            return j10;
        }
        int size = fVar.f15300k.size();
        long jMin = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = (d) fVar.f15300k.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f15293d != pVar) {
                    jMin = Math.min(jMin, a(fVar2, ((long) fVar2.f15295f) + j10));
                }
            }
        }
        if (fVar != pVar.f15323i) {
            return jMin;
        }
        long j11 = j10 - pVar.j();
        return Math.min(Math.min(jMin, a(pVar.f15322h, j11)), j11 - ((long) pVar.f15322h.f15295f));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.ArrayList, java.util.List<t.d>] */
    /* JADX WARN: Type inference failed for: r5v0, types: [java.util.ArrayList, java.util.List<t.d>] */
    public final long b(f fVar, long j10) {
        p pVar = fVar.f15293d;
        if (pVar instanceof k) {
            return j10;
        }
        int size = fVar.f15300k.size();
        long jMax = j10;
        for (int i10 = 0; i10 < size; i10++) {
            d dVar = (d) fVar.f15300k.get(i10);
            if (dVar instanceof f) {
                f fVar2 = (f) dVar;
                if (fVar2.f15293d != pVar) {
                    jMax = Math.max(jMax, b(fVar2, ((long) fVar2.f15295f) + j10));
                }
            }
        }
        if (fVar != pVar.f15322h) {
            return jMax;
        }
        long j11 = j10 + pVar.j();
        return Math.max(Math.max(jMax, b(pVar.f15323i, j11)), j11 - ((long) pVar.f15323i.f15295f));
    }
}
