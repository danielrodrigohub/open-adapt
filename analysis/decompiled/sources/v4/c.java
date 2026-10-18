package v4;

import java.util.List;
import l5.f0;

/* JADX INFO: compiled from: FilteringHlsPlaylistParserFactory.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final i f16260a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final List<o4.c> f16261b;

    public c(i iVar, List<o4.c> list) {
        this.f16260a = iVar;
        this.f16261b = list;
    }

    @Override // v4.i
    public final f0.a<g> a(f fVar, e eVar) {
        return new o4.b(this.f16260a.a(fVar, eVar), this.f16261b);
    }

    @Override // v4.i
    public final f0.a<g> b() {
        return new o4.b(this.f16260a.b(), this.f16261b);
    }
}
