package w7;

import com.nike.adapt.BigfootApplication;
import fd.o;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import ld.e;
import ld.i;
import o7.x;
import ob.h;
import qd.p;
import s9.m;

/* JADX INFO: compiled from: BigfootAuthProvider.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements vc.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f17234a = new c();

    /* JADX INFO: compiled from: BigfootAuthProvider.kt */
    @e(c = "com.nike.adapt.network.BigfootAuthProvider$refreshedAccessToken$accessToken$1", f = "BigfootAuthProvider.kt", l = {21}, m = "invokeSuspend")
    public static final class a extends i implements p<CoroutineScope, jd.d<? super String>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f17235h;

        public a(jd.d<? super a> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return new a(dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super String> dVar) {
            return new a(dVar).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f17235h;
            if (i10 == 0) {
                d3.e.p(obj);
                h hVarA = BigfootApplication.f5638p.c().f7856f.a();
                this.f17235h = 1;
                obj = hVarA.a(this);
                if (obj == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            ob.b bVar = (ob.b) obj;
            if (bVar != null) {
                return bVar.getAccessToken();
            }
            return null;
        }
    }

    @Override // vc.a
    public final String a() {
        try {
            String str = (String) BuildersKt__BuildersKt.runBlocking$default(null, new a(null), 1, null);
            if (str != null || d.a()) {
                return str;
            }
            x.f12420a.a("Force logout of user. Refresh Token could not refresh.");
            x.f12420a.j("BigfootAuthProvider", "Force logout of user. Refresh Token could not refresh.", new Exception("Unite Could Not Refresh Access Token"));
            m.f15208a.a(false, false, false);
            return null;
        } catch (Throwable th) {
            x.f12420a.a(" Refresh Token error. " + th);
            return null;
        }
    }

    @Override // vc.a
    public final void b() {
    }

    @Override // vc.a
    public final void c() {
    }

    @Override // vc.a
    public final String getAccessToken() {
        try {
            ob.b bVarB = BigfootApplication.f5638p.c().f7856f.a().b();
            String accessToken = bVarB != null ? bVarB.getAccessToken() : null;
            if (accessToken != null || d.a()) {
                return accessToken;
            }
            x.f12420a.a("Force logout of user. Access Token came back as null.");
            x.f12420a.j("BigfootAuthProvider", "Force logout of user. Access Token came back as null.", new Exception("Unite Could Not Refresh Access Token"));
            m.f15208a.a(false, false, false);
            return null;
        } catch (Throwable th) {
            x.f12420a.a(" Access Token error. " + th);
            return null;
        }
    }
}
