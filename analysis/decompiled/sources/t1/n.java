package t1;

import java.util.concurrent.atomic.AtomicBoolean;
import y0.d0;
import y0.h0;

/* JADX INFO: compiled from: WorkProgressDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class n implements m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f15347a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f15348b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f15349c;

    /* JADX INFO: compiled from: WorkProgressDao_Impl.java */
    public class a extends h0 {
        public a(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "DELETE from WorkProgress where work_spec_id=?";
        }
    }

    /* JADX INFO: compiled from: WorkProgressDao_Impl.java */
    public class b extends h0 {
        public b(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "DELETE FROM WorkProgress";
        }
    }

    public n(d0 d0Var) {
        this.f15347a = d0Var;
        new AtomicBoolean(false);
        this.f15348b = new a(d0Var);
        this.f15349c = new b(d0Var);
    }

    public final void a(String str) {
        this.f15347a.b();
        d1.g gVarA = this.f15348b.a();
        if (str == null) {
            gVarA.t(1);
        } else {
            gVarA.l(1, str);
        }
        this.f15347a.c();
        try {
            gVarA.p();
            this.f15347a.p();
        } finally {
            this.f15347a.l();
            this.f15348b.d(gVarA);
        }
    }

    public final void b() {
        this.f15347a.b();
        d1.g gVarA = this.f15349c.a();
        this.f15347a.c();
        try {
            gVarA.p();
            this.f15347a.p();
        } finally {
            this.f15347a.l();
            this.f15349c.d(gVarA);
        }
    }
}
