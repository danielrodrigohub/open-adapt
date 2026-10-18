package t1;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import y0.d0;
import y0.f0;

/* JADX INFO: compiled from: DependencyDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f15332a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y0.q<t1.a> f15333b;

    /* JADX INFO: compiled from: DependencyDao_Impl.java */
    public class a extends y0.q<t1.a> {
        public a(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "INSERT OR IGNORE INTO `Dependency` (`work_spec_id`,`prerequisite_id`) VALUES (?,?)";
        }

        @Override // y0.q
        public final void e(d1.g gVar, t1.a aVar) {
            t1.a aVar2 = aVar;
            String str = aVar2.f15330a;
            if (str == null) {
                gVar.t(1);
            } else {
                gVar.l(1, str);
            }
            String str2 = aVar2.f15331b;
            if (str2 == null) {
                gVar.t(2);
            } else {
                gVar.l(2, str2);
            }
        }
    }

    public c(d0 d0Var) {
        this.f15332a = d0Var;
        this.f15333b = new a(d0Var);
    }

    public final List<String> a(String str) {
        f0 f0VarF0 = f0.f0("SELECT work_spec_id FROM dependency WHERE prerequisite_id=?", 1);
        if (str == null) {
            f0VarF0.t(1);
        } else {
            f0VarF0.l(1, str);
        }
        this.f15332a.b();
        Cursor cursorO = this.f15332a.o(f0VarF0);
        try {
            ArrayList arrayList = new ArrayList(cursorO.getCount());
            while (cursorO.moveToNext()) {
                arrayList.add(cursorO.getString(0));
            }
            cursorO.close();
            f0VarF0.g0();
            return arrayList;
        } catch (Throwable th) {
            cursorO.close();
            f0VarF0.g0();
            throw th;
        }
    }

    public final boolean b(String str) {
        f0 f0VarF0 = f0.f0("SELECT COUNT(*)=0 FROM dependency WHERE work_spec_id=? AND prerequisite_id IN (SELECT id FROM workspec WHERE state!=2)", 1);
        if (str == null) {
            f0VarF0.t(1);
        } else {
            f0VarF0.l(1, str);
        }
        this.f15332a.b();
        boolean z10 = false;
        Cursor cursorO = this.f15332a.o(f0VarF0);
        try {
            if (cursorO.moveToFirst()) {
                z10 = cursorO.getInt(0) != 0;
            }
            return z10;
        } finally {
            cursorO.close();
            f0VarF0.g0();
        }
    }
}
