package k8;

import androidx.fragment.app.r;
import androidx.lifecycle.o;

/* JADX INFO: compiled from: FetchProfilePresenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends r implements h {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i8.d f9740h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final fd.h f9741i = (fd.h) o.x(C0188a.f9742h);

    /* JADX INFO: renamed from: k8.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: FetchProfilePresenter.kt */
    public static final class C0188a extends rd.o implements qd.a<m8.f> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final C0188a f9742h = new C0188a();

        public C0188a() {
            super(0);
        }

        @Override // qd.a
        public final m8.f invoke() {
            int i10 = m8.f.f10821a;
            return m8.g.f10822b;
        }
    }

    public a(i8.d dVar) {
        this.f9740h = dVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof a) && p4.h.c(this.f9740h, ((a) obj).f9740h);
    }

    public final int hashCode() {
        return this.f9740h.hashCode();
    }

    @Override // androidx.fragment.app.r
    public final void j(i8.a aVar) {
        f fVar = (f) aVar;
        if (fVar instanceof e) {
            ((m8.f) this.f9741i.getValue()).a(new b(this));
        } else if (fVar instanceof d) {
            ((m8.f) this.f9741i.getValue()).a(new c(this));
        }
    }

    public final String toString() {
        return "AbsFetchProfilePresenter(eventUUID=" + this.f9740h + ")";
    }
}
