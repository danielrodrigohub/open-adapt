package f2;

import android.graphics.PointF;
import y1.e0;

/* JADX INFO: compiled from: PolystarShape.java */
/* JADX INFO: loaded from: classes.dex */
public final class h implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6997a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6998b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e2.b f6999c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e2.l<PointF, PointF> f7000d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e2.b f7001e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e2.b f7002f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final e2.b f7003g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final e2.b f7004h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final e2.b f7005i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final boolean f7006j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final boolean f7007k;

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;Ljava/lang/Object;Le2/b;Le2/l<Landroid/graphics/PointF;Landroid/graphics/PointF;>;Le2/b;Le2/b;Le2/b;Le2/b;Le2/b;ZZ)V */
    public h(String str, int i10, e2.b bVar, e2.l lVar, e2.b bVar2, e2.b bVar3, e2.b bVar4, e2.b bVar5, e2.b bVar6, boolean z10, boolean z11) {
        this.f6997a = str;
        this.f6998b = i10;
        this.f6999c = bVar;
        this.f7000d = lVar;
        this.f7001e = bVar2;
        this.f7002f = bVar3;
        this.f7003g = bVar4;
        this.f7004h = bVar5;
        this.f7005i = bVar6;
        this.f7006j = z10;
        this.f7007k = z11;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        return new a2.m(e0Var, bVar, this);
    }
}
