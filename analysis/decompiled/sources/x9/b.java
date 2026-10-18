package x9;

import fd.o;
import gd.q;
import java.util.Map;
import v9.m;
import v9.t;

/* JADX INFO: compiled from: ConditionalCheck.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class b<ErrorCondition extends v9.m> {

    /* JADX INFO: compiled from: ConditionalCheck.kt */
    public static final class a implements eb.d {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ b<ErrorCondition> f18066h;

        public a(b<ErrorCondition> bVar) {
            this.f18066h = bVar;
        }

        @Override // eb.d
        public final String b() {
            return a0.b.a("ConditionalCheckFailed condition: ", this.f18066h.c(), " otherInfo[", this.f18066h.b().b(), "]");
        }

        @Override // eb.d
        public final Map<String, Object> m() {
            return q.f8071h;
        }
    }

    public abstract w9.a a();

    public abstract ErrorCondition b();

    public abstract String c();

    public abstract boolean d();

    public abstract qd.l<ErrorCondition, o> e();

    public final boolean f() {
        if (!d()) {
            return false;
        }
        e().invoke(b());
        t tVar = t.f16822a;
        t.f16830i.a(new eb.b(new a(this)));
        return true;
    }
}
