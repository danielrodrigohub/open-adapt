package v2;

/* JADX INFO: compiled from: UnitModelLoader.java */
/* JADX INFO: loaded from: classes.dex */
public final class u<Model> implements n<Model, Model> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final u<?> f16206a = new u<>();

    /* JADX INFO: compiled from: UnitModelLoader.java */
    public static class a<Model> implements o<Model, Model> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final a<?> f16207a = new a<>();

        @Deprecated
        public a() {
        }

        @Override // v2.o
        public final n<Model, Model> b(r rVar) {
            return u.f16206a;
        }

        @Override // v2.o
        public final void c() {
        }
    }

    /* JADX INFO: compiled from: UnitModelLoader.java */
    public static class b<Model> implements com.bumptech.glide.load.data.d<Model> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final Model f16208h;

        public b(Model model) {
            this.f16208h = model;
        }

        @Override // com.bumptech.glide.load.data.d
        public final Class<Model> a() {
            return (Class<Model>) this.f16208h.getClass();
        }

        @Override // com.bumptech.glide.load.data.d
        public final void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public final p2.a e() {
            return p2.a.LOCAL;
        }

        @Override // com.bumptech.glide.load.data.d
        public final void f(com.bumptech.glide.g gVar, com.bumptech.glide.load.data.d.a<? super Model> aVar) {
            aVar.d(this.f16208h);
        }
    }

    @Deprecated
    public u() {
    }

    @Override // v2.n
    public final n.a<Model> a(Model model, int i10, int i11, p2.h hVar) {
        return new n.a<>(new k3.d(model), new b(model));
    }

    @Override // v2.n
    public final boolean b(Model model) {
        return true;
    }
}
