package t1;

import android.database.Cursor;
import java.util.ArrayList;
import java.util.List;
import y0.d0;
import y0.f0;

/* JADX INFO: compiled from: WorkTagDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements s {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f15381a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y0.q<r> f15382b;

    /* JADX INFO: compiled from: WorkTagDao_Impl.java */
    public class a extends y0.q<r> {
        public a(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "INSERT OR IGNORE INTO `WorkTag` (`tag`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // y0.q
        public final void e(d1.g gVar, r rVar) {
            r rVar2 = rVar;
            String str = rVar2.f15379a;
            if (str == null) {
                gVar.t(1);
            } else {
                gVar.l(1, str);
            }
            String str2 = rVar2.f15380b;
            if (str2 == null) {
                gVar.t(2);
            } else {
                gVar.l(2, str2);
            }
        }
    }

    public t(d0 d0Var) {
        this.f15381a = d0Var;
        this.f15382b = new a(d0Var);
    }

    public final List<String> a(String str) {
        f0 f0VarF0 = f0.f0("SELECT DISTINCT tag FROM worktag WHERE work_spec_id=?", 1);
        if (str == null) {
            f0VarF0.t(1);
        } else {
            f0VarF0.l(1, str);
        }
        this.f15381a.b();
        Cursor cursorO = this.f15381a.o(f0VarF0);
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
}
