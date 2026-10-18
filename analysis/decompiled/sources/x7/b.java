package x7;

import androidx.lifecycle.o;
import com.nike.adapt.network.assets.ManifestServiceApi;
import com.nike.adapt.network.assets.model.Manifest;
import fd.h;
import g0.n;
import jd.d;
import ld.c;
import ld.e;

/* JADX INFO: compiled from: ManifestApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements x7.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f17852b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f17853c = (h) o.x(a.f17854h);

    /* JADX INFO: compiled from: ManifestApi.kt */
    public static final class a extends rd.o implements qd.a<ManifestServiceApi> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f17854h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final ManifestServiceApi invoke() {
            int i10 = w7.a.f17233a;
            n nVar = n.f7520c;
            ManifestServiceApi manifestServiceApi = n.f7524g;
            if (manifestServiceApi != null) {
                return manifestServiceApi;
            }
            ManifestServiceApi manifestServiceApi2 = (ManifestServiceApi) w7.a.C0303a.a(nVar, ManifestServiceApi.class, null, false, 2, null);
            n.f7524g = manifestServiceApi2;
            return manifestServiceApi2;
        }
    }

    /* JADX INFO: renamed from: x7.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: ManifestApi.kt */
    @e(c = "com.nike.adapt.network.assets.ManifestApiImpl", f = "ManifestApi.kt", l = {28, 30}, m = "getAssetsManifestJson")
    public static final class C0314b extends c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f17855h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f17857j;

        public C0314b(d<? super C0314b> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f17855h = obj;
            this.f17857j |= Integer.MIN_VALUE;
            return b.this.a(null, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // x7.a
    public final Object a(String str, d<? super Manifest> dVar) throws Throwable {
        C0314b c0314b;
        if (dVar instanceof C0314b) {
            c0314b = (C0314b) dVar;
            int i10 = c0314b.f17857j;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0314b.f17857j = i10 - Integer.MIN_VALUE;
            } else {
                c0314b = new C0314b(dVar);
            }
        } else {
            c0314b = new C0314b(dVar);
        }
        C0314b c0314b2 = c0314b;
        Object objA = c0314b2.f17855h;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0314b2.f17857j;
        try {
            if (i11 == 0) {
                d3.e.p(objA);
                ManifestServiceApi manifestServiceApi = (ManifestServiceApi) f17853c.getValue();
                c0314b2.f17857j = 2;
                objA = ManifestServiceApi.a.a(manifestServiceApi, "prod", str, null, c0314b2, 4, null);
                if (objA == aVar) {
                    return aVar;
                }
            } else {
                if (i11 == 1) {
                    d3.e.p(objA);
                    return (Manifest) objA;
                }
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(objA);
            }
            return (Manifest) objA;
        } catch (Throwable unused) {
            return new Manifest(null, null, 3, null);
        }
    }
}
