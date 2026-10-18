package ac;

import fd.f;
import fd.o;
import gd.n;
import gd.r;
import java.util.Set;
import jd.d;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializersKt;
import ld.e;
import p4.h;
import rd.x;

/* JADX INFO: compiled from: PersistenceHelperImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements ac.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final zc.c f586a;

    /* JADX INFO: compiled from: PersistenceHelperImpl.kt */
    @e(c = "com.nike.authcomponent.oidc.internal.persistence.PersistenceHelperImpl", f = "PersistenceHelperImpl.kt", l = {38}, m = "getRefreshTokensToRevoke")
    public static final class a extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f587h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f589j;

        public a(d<? super a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f587h = obj;
            this.f589j |= Integer.MIN_VALUE;
            return b.this.b(this);
        }
    }

    /* JADX INFO: renamed from: ac.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PersistenceHelperImpl.kt */
    @e(c = "com.nike.authcomponent.oidc.internal.persistence.PersistenceHelperImpl", f = "PersistenceHelperImpl.kt", l = {22, 38}, m = "removeRefreshTokenToRevoke")
    public static final class C0014b extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f590h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f591i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f592j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f594l;

        public C0014b(d<? super C0014b> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f592j = obj;
            this.f594l |= Integer.MIN_VALUE;
            return b.this.c(null, this);
        }
    }

    /* JADX INFO: compiled from: PersistenceHelperImpl.kt */
    @e(c = "com.nike.authcomponent.oidc.internal.persistence.PersistenceHelperImpl", f = "PersistenceHelperImpl.kt", l = {12, 38}, m = "saveRefreshTokenToRevoke")
    public static final class c extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f595h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f596i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f597j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f599l;

        public c(d<? super c> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f597j = obj;
            this.f599l |= Integer.MIN_VALUE;
            return b.this.a(null, this);
        }
    }

    public b(zc.c cVar) {
        h.j(cVar, "dataStore");
        this.f586a = cVar;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // ac.a
    public final Object a(String str, d<? super o> dVar) throws Throwable {
        c cVar;
        b bVar;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i10 = cVar.f599l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cVar.f599l = i10 - Integer.MIN_VALUE;
            } else {
                cVar = new c(dVar);
            }
        } else {
            cVar = new c(dVar);
        }
        Object objB = cVar.f597j;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = cVar.f599l;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    str = cVar.f596i;
                    bVar = (b) cVar.f595h;
                    d3.e.p(objB);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(objB);
                }
                return o.f7408a;
            }
            d3.e.p(objB);
            cVar.f595h = this;
            cVar.f596i = str;
            cVar.f599l = 1;
            objB = b(cVar);
            if (objB == aVar) {
                return aVar;
            }
            bVar = this;
            Set setO0 = n.o0((Iterable) objB);
            if (setO0.add(str)) {
                zc.c cVar2 = bVar.f586a;
                wd.h.a aVar2 = wd.h.f17605c;
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(x.c(Set.class, new wd.h(1, x.b(String.class))));
                cVar.f595h = setO0;
                cVar.f596i = null;
                cVar.f599l = 2;
                if (cVar2.c(setO0, kSerializerSerializer, cVar) == aVar) {
                    return aVar;
                }
            }
        } catch (Throwable th) {
            d3.e.g(th);
        }
        return o.f7408a;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // ac.a
    public final Object b(d<? super Set<String>> dVar) throws Throwable {
        a aVar;
        Object objG;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.f589j;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.f589j = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object objE = aVar.f587h;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i11 = aVar.f589j;
        try {
            if (i11 == 0) {
                d3.e.p(objE);
                zc.c cVar = this.f586a;
                wd.h.a aVar3 = wd.h.f17605c;
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(x.c(Set.class, new wd.h(1, x.b(String.class))));
                aVar.f589j = 1;
                objE = cVar.e(kSerializerSerializer, aVar);
                if (objE == aVar2) {
                    return aVar2;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(objE);
            }
            objG = (Set) objE;
        } catch (Throwable th) {
            objG = d3.e.g(th);
        }
        return objG instanceof f.a ? r.f8072h : objG;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // ac.a
    public final Object c(String str, d<? super o> dVar) throws Throwable {
        C0014b c0014b;
        b bVar;
        if (dVar instanceof C0014b) {
            c0014b = (C0014b) dVar;
            int i10 = c0014b.f594l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0014b.f594l = i10 - Integer.MIN_VALUE;
            } else {
                c0014b = new C0014b(dVar);
            }
        } else {
            c0014b = new C0014b(dVar);
        }
        Object objB = c0014b.f592j;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0014b.f594l;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    str = c0014b.f591i;
                    bVar = (b) c0014b.f590h;
                    d3.e.p(objB);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(objB);
                }
                return o.f7408a;
            }
            d3.e.p(objB);
            c0014b.f590h = this;
            c0014b.f591i = str;
            c0014b.f594l = 1;
            objB = b(c0014b);
            if (objB == aVar) {
                return aVar;
            }
            bVar = this;
            Set setO0 = n.o0((Iterable) objB);
            if ((!setO0.isEmpty()) && setO0.remove(str)) {
                zc.c cVar = bVar.f586a;
                wd.h.a aVar2 = wd.h.f17605c;
                KSerializer<Object> kSerializerSerializer = SerializersKt.serializer(x.c(Set.class, new wd.h(1, x.b(String.class))));
                c0014b.f590h = setO0;
                c0014b.f591i = null;
                c0014b.f594l = 2;
                if (cVar.c(setO0, kSerializerSerializer, c0014b) == aVar) {
                    return aVar;
                }
            }
        } catch (Throwable th) {
            d3.e.g(th);
        }
        return o.f7408a;
    }
}
