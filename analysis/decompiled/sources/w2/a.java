package w2;

import com.bumptech.glide.load.data.j;
import java.io.InputStream;
import java.util.Objects;
import java.util.Queue;
import p2.g;
import p2.h;
import v2.f;
import v2.m;
import v2.n;
import v2.o;
import v2.r;

/* JADX INFO: compiled from: HttpGlideUrlLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements n<f, InputStream> {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g<Integer> f17061b = g.a("com.bumptech.glide.load.model.stream.HttpGlideUrlLoader.Timeout", 2500);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m<f, f> f17062a;

    /* JADX INFO: renamed from: w2.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: HttpGlideUrlLoader.java */
    public static class C0299a implements o<f, InputStream> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final m<f, f> f17063a = new m<>();

        @Override // v2.o
        public final n<f, InputStream> b(r rVar) {
            return new a(this.f17063a);
        }

        @Override // v2.o
        public final void c() {
        }
    }

    public a(m<f, f> mVar) {
        this.f17062a = mVar;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // v2.n
    public final n.a<InputStream> a(f fVar, int i10, int i11, h hVar) {
        f fVar2 = fVar;
        m<f, f> mVar = this.f17062a;
        if (mVar != null) {
            m.a<f> aVarA = m.a.a(fVar2);
            f fVarA = mVar.f16169a.a(aVarA);
            Queue<m.a<?>> queue = m.a.f16170d;
            synchronized (queue) {
                queue.offer(aVarA);
            }
            f fVar3 = fVarA;
            if (fVar3 == null) {
                m<f, f> mVar2 = this.f17062a;
                Objects.requireNonNull(mVar2);
                mVar2.f16169a.d(m.a.a(fVar2), fVar2);
            } else {
                fVar2 = fVar3;
            }
        }
        return new n.a<>(fVar2, new j(fVar2, ((Integer) hVar.c(f17061b)).intValue()));
    }

    @Override // v2.n
    public final /* bridge */ /* synthetic */ boolean b(f fVar) {
        return true;
    }
}
