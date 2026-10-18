package y1;

import android.graphics.Rect;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: compiled from: LottieComposition.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public Map<String, List<g2.f>> f18334c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Map<String, f0> f18335d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Map<String, d2.c> f18336e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public List<d2.h> f18337f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public p.h<d2.d> f18338g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public p.d<g2.f> f18339h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<g2.f> f18340i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public Rect f18341j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f18342k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f18343l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f18344m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f18345n;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l0 f18332a = new l0();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final HashSet<String> f18333b = new HashSet<>();

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f18346o = 0;

    public final void a(String str) {
        k2.c.b(str);
        this.f18333b.add(str);
    }

    public final float b() {
        return (long) (((this.f18343l - this.f18342k) / this.f18344m) * 1000.0f);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0038  */
    public final d2.h c(String str) {
        int size = this.f18337f.size();
        for (int i10 = 0; i10 < size; i10++) {
            d2.h hVar = this.f18337f.get(i10);
            boolean z10 = true;
            if (!hVar.f5987a.equalsIgnoreCase(str)) {
                if (hVar.f5987a.endsWith("\r")) {
                    String str2 = hVar.f5987a;
                    if (!str2.substring(0, str2.length() - 1).equalsIgnoreCase(str)) {
                        z10 = false;
                    }
                } else {
                    z10 = false;
                }
            }
            if (z10) {
                return hVar;
            }
        }
        return null;
    }

    public final g2.f d(long j10) {
        return this.f18339h.d(j10, null);
    }

    public final String toString() {
        StringBuilder sb2 = new StringBuilder("LottieComposition:\n");
        Iterator<g2.f> it = this.f18340i.iterator();
        while (it.hasNext()) {
            sb2.append(it.next().a("\t"));
        }
        return sb2.toString();
    }
}
