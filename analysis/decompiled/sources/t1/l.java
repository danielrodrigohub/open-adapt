package t1;

import y0.d0;

/* JADX INFO: compiled from: WorkNameDao_Impl.java */
/* JADX INFO: loaded from: classes.dex */
public final class l implements k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final d0 f15345a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final y0.q<j> f15346b;

    /* JADX INFO: compiled from: WorkNameDao_Impl.java */
    public class a extends y0.q<j> {
        public a(d0 d0Var) {
            super(d0Var);
        }

        @Override // y0.h0
        public final String c() {
            return "INSERT OR IGNORE INTO `WorkName` (`name`,`work_spec_id`) VALUES (?,?)";
        }

        @Override // y0.q
        public final void e(d1.g gVar, j jVar) {
            j jVar2 = jVar;
            String str = jVar2.f15343a;
            if (str == null) {
                gVar.t(1);
            } else {
                gVar.l(1, str);
            }
            String str2 = jVar2.f15344b;
            if (str2 == null) {
                gVar.t(2);
            } else {
                gVar.l(2, str2);
            }
        }
    }

    public l(d0 d0Var) {
        this.f15345a = d0Var;
        this.f15346b = new a(d0Var);
    }
}
