package f2;

import a2.s;
import java.util.List;
import y1.e0;

/* JADX INFO: compiled from: ShapeStroke.java */
/* JADX INFO: loaded from: classes.dex */
public final class p implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f7036a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e2.b f7037b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final List<e2.b> f7038c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e2.a f7039d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e2.d f7040e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e2.b f7041f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final int f7042g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f7043h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final float f7044i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f7045j;

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;Le2/b;Ljava/util/List<Le2/b;>;Le2/a;Le2/d;Le2/b;Ljava/lang/Object;Ljava/lang/Object;FZ)V */
    public p(String str, e2.b bVar, List list, e2.a aVar, e2.d dVar, e2.b bVar2, int i10, int i11, float f10, boolean z10) {
        this.f7036a = str;
        this.f7037b = bVar;
        this.f7038c = list;
        this.f7039d = aVar;
        this.f7040e = dVar;
        this.f7041f = bVar2;
        this.f7042g = i10;
        this.f7043h = i11;
        this.f7044i = f10;
        this.f7045j = z10;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        return new s(e0Var, bVar, this);
    }
}
