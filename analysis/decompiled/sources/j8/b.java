package j8;

import androidx.fragment.app.r;
import androidx.lifecycle.o;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import de.n0;
import fd.h;
import java.util.Objects;

/* JADX INFO: compiled from: BigfootOnBoardingPresenter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends r implements j8.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final i8.d f9466h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final h f9467i = (h) o.x(a.f9468h);

    /* JADX INFO: compiled from: BigfootOnBoardingPresenter.kt */
    public static final class a extends rd.o implements qd.a<m8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f9468h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final m8.a invoke() {
            return m8.a.f10808a;
        }
    }

    public b(i8.d dVar) {
        this.f9466h = dVar;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof b) && p4.h.c(this.f9466h, ((b) obj).f9466h);
    }

    public final int hashCode() {
        return this.f9466h.hashCode();
    }

    @Override // androidx.fragment.app.r
    public final void j(i8.a aVar) {
        e eVar = (e) aVar;
        if (eVar instanceof d) {
            m8.a aVar2 = (m8.a) this.f9467i.getValue();
            i8.d dVar = this.f9466h;
            Objects.requireNonNull(aVar2);
            p4.h.j(dVar, AnalyticsAttribute.UUID_ATTRIBUTE);
            c cVar = new c(dVar, aVar2.a().k(), aVar2.a().c());
            n0.b(cVar);
            s7.b.f15149a.a(cVar);
            return;
        }
        if (eVar instanceof g) {
            m8.a aVar3 = (m8.a) this.f9467i.getValue();
            g gVar = (g) eVar;
            v7.g gVar2 = gVar.f9473h;
            v7.h hVar = gVar.f9474i;
            Objects.requireNonNull(aVar3);
            p4.h.j(gVar2, "onBoardingState");
            p4.h.j(hVar, "onBoardingType");
            aVar3.a().h(gVar2);
            aVar3.a().i(hVar);
        }
    }

    public final String toString() {
        return "BigfootOnBoardingPresenterImpl(eventUUID=" + this.f9466h + ")";
    }
}
