package bd;

import java.util.List;
import qd.l;

/* JADX INFO: compiled from: DataStoreHost.kt */
/* JADX INFO: loaded from: classes.dex */
public interface a {

    /* JADX INFO: renamed from: bd.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DataStoreHost.kt */
    public static final class C0065a {

        /* JADX INFO: renamed from: bd.a$a$a, reason: collision with other inner class name */
        /* JADX INFO: compiled from: DataStoreHost.kt */
        @ld.e(c = "com.nike.persistence.implementation.datastores.DataStoreHost$DefaultImpls", f = "DataStoreHost.kt", l = {12}, m = "lockGuard")
        public static final class C0066a<R> extends ld.c {

            /* JADX INFO: renamed from: h, reason: collision with root package name */
            public /* synthetic */ Object f3778h;

            /* JADX INFO: renamed from: i, reason: collision with root package name */
            public int f3779i;

            public C0066a(jd.d<? super C0066a> dVar) {
                super(dVar);
            }

            @Override // ld.a
            public final Object invokeSuspend(Object obj) {
                this.f3778h = obj;
                this.f3779i |= Integer.MIN_VALUE;
                return C0065a.a(null, null, null, this);
            }
        }

        /* JADX WARN: Code duplicated, block: B:7:0x0013  */
        public static <R> Object a(a aVar, List<? extends yc.a.b> list, l<? super jd.d<? super R>, ? extends Object> lVar, jd.d<? super R> dVar) throws Throwable {
            C0066a c0066a;
            Object objG;
            Object objG2;
            l<? super jd.d<? super R>, ? extends Object> lVar2;
            l<? super jd.d<? super R>, ? extends Object> lVar3;
            if (dVar instanceof C0066a) {
                c0066a = (C0066a) dVar;
                int i10 = c0066a.f3779i;
                if ((i10 & Integer.MIN_VALUE) != 0) {
                    c0066a.f3779i = i10 - Integer.MIN_VALUE;
                } else {
                    c0066a = new C0066a(dVar);
                }
            } else {
                c0066a = new C0066a(dVar);
            }
            Object objInvoke = c0066a.f3778h;
            kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
            int i11 = c0066a.f3779i;
            try {
                if (i11 == 0) {
                    d3.e.p(objInvoke);
                    try {
                        if (Boolean.valueOf(aVar.b(list)).booleanValue()) {
                            lVar2 = (l<? super jd.d<? super R>, ? extends Object>) null;
                        }
                        if (lVar3 == null) {
                            lVar3 = lVar2;
                            lVar3 = lVar;
                            throw new Exception();
                        }
                        lVar3 = lVar2;
                        lVar3 = lVar;
                        objG2 = lVar3;
                    } catch (Throwable th) {
                        objG2 = d3.e.g(th);
                    }
                    boolean z10 = !(objG2 instanceof fd.f.a);
                    objG = objG2;
                    if (z10) {
                        c0066a.f3779i = 1;
                        objInvoke = ((l) objG2).invoke(c0066a);
                        if (objInvoke == aVar2) {
                            return aVar2;
                        }
                    }
                    d3.e.p(objG);
                    return objG;
                }
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(objInvoke);
                objG = objInvoke;
            } catch (Throwable th2) {
                objG = d3.e.g(th2);
            }
            d3.e.p(objG);
            return objG;
        }
    }

    boolean b(List<? extends yc.a.b> list);

    <R> Object d(List<? extends yc.a.b> list, l<? super jd.d<? super R>, ? extends Object> lVar, jd.d<? super R> dVar);
}
