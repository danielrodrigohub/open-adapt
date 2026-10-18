package v2;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* JADX INFO: compiled from: MultiModelLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class q<Model, Data> implements n<Model, Data> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final List<n<Model, Data>> f16181a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final i0.e<List<Throwable>> f16182b;

    /* JADX INFO: compiled from: MultiModelLoader.java */
    public static class a<Data> implements com.bumptech.glide.load.data.d<Data>, com.bumptech.glide.load.data.d.a<Data> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final List<com.bumptech.glide.load.data.d<Data>> f16183h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final i0.e<List<Throwable>> f16184i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f16185j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public com.bumptech.glide.g f16186k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public com.bumptech.glide.load.data.d.a<? super Data> f16187l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public List<Throwable> f16188m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public boolean f16189n;

        public a(List<com.bumptech.glide.load.data.d<Data>> list, i0.e<List<Throwable>> eVar) {
            this.f16184i = eVar;
            if (list.isEmpty()) {
                throw new IllegalArgumentException("Must not be empty.");
            }
            this.f16183h = list;
            this.f16185j = 0;
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<Data> a() {
            return this.f16183h.get(0).a();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
            List<Throwable> list = this.f16188m;
            if (list != null) {
                this.f16184i.a(list);
            }
            this.f16188m = null;
            Iterator<com.bumptech.glide.load.data.d<Data>> it = this.f16183h.iterator();
            while (it.hasNext()) {
                it.next().b();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public final void c(Exception exc) {
            List<Throwable> list = this.f16188m;
            Objects.requireNonNull(list, "Argument must not be null");
            list.add(exc);
            g();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
            this.f16189n = true;
            Iterator<com.bumptech.glide.load.data.d<Data>> it = this.f16183h.iterator();
            while (it.hasNext()) {
                it.next().cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d.a
        public final void d(Data data) {
            if (data != null) {
                this.f16187l.d(data);
            } else {
                g();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public final p2.a e() {
            return this.f16183h.get(0).e();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d.a<? super Data> aVar) {
            this.f16186k = gVar;
            this.f16187l = aVar;
            this.f16188m = this.f16184i.b();
            this.f16183h.get(this.f16185j).f(gVar, this);
            if (this.f16189n) {
                cancel();
            }
        }

        public final void g() {
            if (this.f16189n) {
                return;
            }
            if (this.f16185j < this.f16183h.size() - 1) {
                this.f16185j++;
                f(this.f16186k, this.f16187l);
            } else {
                c3.d.g(this.f16188m);
                this.f16187l.c(new r2.r("Fetch failed", new ArrayList(this.f16188m)));
            }
        }
    }

    public q(List<n<Model, Data>> list, i0.e<List<Throwable>> eVar) {
        this.f16181a = list;
        this.f16182b = eVar;
    }

    @Override // v2.n
    public final n.a<Data> a(Model model, int i10, int i11, p2.h hVar) {
        n.a<Data> aVarA;
        int size = this.f16181a.size();
        ArrayList arrayList = new ArrayList(size);
        p2.f fVar = null;
        for (int i12 = 0; i12 < size; i12++) {
            n<Model, Data> nVar = this.f16181a.get(i12);
            if (nVar.b(model) && (aVarA = nVar.a(model, i10, i11, hVar)) != null) {
                fVar = aVarA.f16174a;
                arrayList.add(aVarA.f16176c);
            }
        }
        if (arrayList.isEmpty() || fVar == null) {
            return null;
        }
        return new n.a<>(fVar, new a(arrayList, this.f16182b));
    }

    @Override // v2.n
    public final boolean b(Model model) {
        Iterator<n<Model, Data>> it = this.f16181a.iterator();
        while (it.hasNext()) {
            if (it.next().b(model)) {
                return true;
            }
        }
        return false;
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("MultiModelLoader{modelLoaders=");
        sbC.append(Arrays.toString(this.f16181a.toArray()));
        sbC.append('}');
        return sbC.toString();
    }
}
