package b2;

import java.util.Objects;

/* JADX INFO: compiled from: TextKeyframeAnimation.java */
/* JADX INFO: loaded from: classes.dex */
public final class o extends l2.c<d2.b> {

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final /* synthetic */ l2.b f3210c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final /* synthetic */ l2.c f3211d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final /* synthetic */ d2.b f3212e;

    public o(l2.b bVar, l2.c cVar, d2.b bVar2) {
        this.f3210c = bVar;
        this.f3211d = cVar;
        this.f3212e = bVar2;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.String] */
    /* JADX WARN: Type inference failed for: r2v2, types: [T, java.lang.String] */
    @Override // l2.c
    public final d2.b a(l2.b<d2.b> bVar) {
        l2.b bVar2 = this.f3210c;
        Objects.requireNonNull(bVar);
        ?? r10 = bVar.f9911a.f5964a;
        ?? r11 = bVar.f9912b.f5964a;
        float f10 = bVar.f9913c;
        Objects.requireNonNull(bVar2);
        bVar2.f9911a = r10;
        bVar2.f9912b = r11;
        bVar2.f9913c = f10;
        String str = (String) this.f3211d.a(bVar2);
        d2.b bVar3 = bVar.f9913c == 1.0f ? bVar.f9912b : bVar.f9911a;
        this.f3212e.a(str, bVar3.f5965b, bVar3.f5966c, bVar3.f5967d, bVar3.f5968e, bVar3.f5969f, bVar3.f5970g, bVar3.f5971h, bVar3.f5972i, bVar3.f5973j, bVar3.f5974k);
        return this.f3212e;
    }
}
