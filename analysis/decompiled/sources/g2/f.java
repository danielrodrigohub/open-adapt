package g2;

import e2.k;
import f.p;
import java.util.List;
import java.util.Locale;

/* JADX INFO: compiled from: Layer.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<f2.b> f7588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y1.i f7589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f7590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final long f7591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f7592e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final long f7593f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f7594g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<f2.f> f7595h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k f7596i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f7597j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f7598k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f7599l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final float f7600m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final float f7601n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f7602o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f7603p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final e2.j f7604q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final q.c f7605r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final e2.b f7606s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final List<l2.a<Float>> f7607t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final int f7608u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final boolean f7609v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final p f7610w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final i2.j f7611x;

    /* JADX WARN: Incorrect types in method signature: (Ljava/util/List<Lf2/b;>;Ly1/i;Ljava/lang/String;JLjava/lang/Object;JLjava/lang/String;Ljava/util/List<Lf2/f;>;Le2/k;IIIFFIILe2/j;Lq/c;Ljava/util/List<Ll2/a<Ljava/lang/Float;>;>;Ljava/lang/Object;Le2/b;ZLf/p;Li2/j;)V */
    public f(List list, y1.i iVar, String str, long j10, int i10, long j11, String str2, List list2, k kVar, int i11, int i12, int i13, float f10, float f11, int i14, int i15, e2.j jVar, q.c cVar, List list3, int i16, e2.b bVar, boolean z10, p pVar, i2.j jVar2) {
        this.f7588a = list;
        this.f7589b = iVar;
        this.f7590c = str;
        this.f7591d = j10;
        this.f7592e = i10;
        this.f7593f = j11;
        this.f7594g = str2;
        this.f7595h = list2;
        this.f7596i = kVar;
        this.f7597j = i11;
        this.f7598k = i12;
        this.f7599l = i13;
        this.f7600m = f10;
        this.f7601n = f11;
        this.f7602o = i14;
        this.f7603p = i15;
        this.f7604q = jVar;
        this.f7605r = cVar;
        this.f7607t = list3;
        this.f7608u = i16;
        this.f7606s = bVar;
        this.f7609v = z10;
        this.f7610w = pVar;
        this.f7611x = jVar2;
    }

    public final String a(String str) {
        StringBuilder sbC = a0.b.c(str);
        sbC.append(this.f7590c);
        sbC.append("\n");
        f fVarD = this.f7589b.d(this.f7593f);
        if (fVarD != null) {
            sbC.append("\t\tParents: ");
            sbC.append(fVarD.f7590c);
            f fVarD2 = this.f7589b.d(fVarD.f7593f);
            while (fVarD2 != null) {
                sbC.append("->");
                sbC.append(fVarD2.f7590c);
                fVarD2 = this.f7589b.d(fVarD2.f7593f);
            }
            sbC.append(str);
            sbC.append("\n");
        }
        if (!this.f7595h.isEmpty()) {
            sbC.append(str);
            sbC.append("\tMasks: ");
            sbC.append(this.f7595h.size());
            sbC.append("\n");
        }
        if (this.f7597j != 0 && this.f7598k != 0) {
            sbC.append(str);
            sbC.append("\tBackground: ");
            sbC.append(String.format(Locale.US, "%dx%d %X\n", Integer.valueOf(this.f7597j), Integer.valueOf(this.f7598k), Integer.valueOf(this.f7599l)));
        }
        if (!this.f7588a.isEmpty()) {
            sbC.append(str);
            sbC.append("\tShapes:\n");
            for (f2.b bVar : this.f7588a) {
                sbC.append(str);
                sbC.append("\t\t");
                sbC.append(bVar);
                sbC.append("\n");
            }
        }
        return sbC.toString();
    }

    public final String toString() {
        return a("");
    }
}
