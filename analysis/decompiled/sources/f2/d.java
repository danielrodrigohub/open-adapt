package f2;

import android.graphics.Path;
import y1.e0;

/* JADX INFO: compiled from: GradientFill.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6969a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Path.FillType f6970b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final e2.c f6971c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final e2.d f6972d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final e2.f f6973e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e2.f f6974f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f6975g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final boolean f6976h;

    public d(String str, int i10, Path.FillType fillType, e2.c cVar, e2.d dVar, e2.f fVar, e2.f fVar2, boolean z10) {
        this.f6969a = i10;
        this.f6970b = fillType;
        this.f6971c = cVar;
        this.f6972d = dVar;
        this.f6973e = fVar;
        this.f6974f = fVar2;
        this.f6975g = str;
        this.f6976h = z10;
    }

    @Override // f2.b
    public final a2.b a(e0 e0Var, g2.b bVar) {
        return new a2.g(e0Var, bVar, this);
    }
}
