package t1;

import android.database.Cursor;
import y0.d0;
import y0.f0;

/* JADX INFO: compiled from: PreferenceDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f15336a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y0.q<d> f15337b;

    /* JADX INFO: compiled from: PreferenceDao_Impl.java */
    public class a extends y0.q<d> {
        public a(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "INSERT OR REPLACE INTO `Preference` (`key`,`long_value`) VALUES (?,?)";
        }

        @Override // y0.q
        public final void e(d1.g gVar, d dVar) {
            d dVar2 = dVar;
            String str = dVar2.f15334a;
            if (str == null) {
                gVar.t(1);
            } else {
                gVar.l(1, str);
            }
            Long l10 = dVar2.f15335b;
            if (l10 == null) {
                gVar.t(2);
            } else {
                gVar.K(2, l10.longValue());
            }
        }
    }

    public f(d0 d0Var) {
        this.f15336a = d0Var;
        this.f15337b = new a(d0Var);
    }

    public final Long a(String str) {
        f0 f0VarF0 = f0.f0("SELECT long_value FROM Preference where `key`=?", 1);
        f0VarF0.l(1, str);
        this.f15336a.b();
        Long lValueOf = null;
        Cursor cursorO = this.f15336a.o(f0VarF0);
        try {
            if (cursorO.moveToFirst() && !cursorO.isNull(0)) {
                lValueOf = Long.valueOf(cursorO.getLong(0));
            }
            return lValueOf;
        } finally {
            cursorO.close();
            f0VarF0.g0();
        }
    }

    public final void b(d dVar) {
        this.f15336a.b();
        this.f15336a.c();
        try {
            this.f15337b.f(dVar);
            this.f15336a.p();
        } finally {
            this.f15336a.l();
        }
    }
}
