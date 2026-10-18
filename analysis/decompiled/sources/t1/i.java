package t1;

import android.database.Cursor;
import y0.d0;
import y0.f0;
import y0.h0;

/* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class i implements h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f15340a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y0.q<g> f15341b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final b f15342c;

    /* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
    public class a extends y0.q<g> {
        public a(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "INSERT OR REPLACE INTO `SystemIdInfo` (`work_spec_id`,`system_id`) VALUES (?,?)";
        }

        @Override // y0.q
        public final void e(d1.g gVar, g gVar2) {
            g gVar3 = gVar2;
            String str = gVar3.f15338a;
            if (str == null) {
                gVar.t(1);
            } else {
                gVar.l(1, str);
            }
            gVar.K(2, gVar3.f15339b);
        }
    }

    /* JADX INFO: compiled from: SystemIdInfoDao_Impl.java */
    public class b extends h0 {
        public b(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "DELETE FROM SystemIdInfo where work_spec_id=?";
        }
    }

    public i(d0 d0Var) {
        this.f15340a = d0Var;
        this.f15341b = new a(d0Var);
        this.f15342c = new b(d0Var);
    }

    public final g a(String str) {
        f0 f0VarF0 = f0.f0("SELECT `SystemIdInfo`.`work_spec_id` AS `work_spec_id`, `SystemIdInfo`.`system_id` AS `system_id` FROM SystemIdInfo WHERE work_spec_id=?", 1);
        if (str == null) {
            f0VarF0.t(1);
        } else {
            f0VarF0.l(1, str);
        }
        this.f15340a.b();
        Cursor cursorO = this.f15340a.o(f0VarF0);
        try {
            return cursorO.moveToFirst() ? new g(cursorO.getString(a1.b.a(cursorO, "work_spec_id")), cursorO.getInt(a1.b.a(cursorO, "system_id"))) : null;
        } finally {
            cursorO.close();
            f0VarF0.g0();
        }
    }

    public final void b(g gVar) {
        this.f15340a.b();
        this.f15340a.c();
        try {
            this.f15341b.f(gVar);
            this.f15340a.p();
        } finally {
            this.f15340a.l();
        }
    }

    public final void c(String str) {
        this.f15340a.b();
        d1.g gVarA = this.f15342c.a();
        if (str == null) {
            gVarA.t(1);
        } else {
            gVarA.l(1, str);
        }
        this.f15340a.c();
        try {
            gVarA.p();
            this.f15340a.p();
        } finally {
            this.f15340a.l();
            this.f15342c.d(gVarA);
        }
    }
}
