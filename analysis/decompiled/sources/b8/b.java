package b8;

import androidx.lifecycle.o;
import com.nike.adapt.network.dataopt.permissions.PermissionServiceApi;
import com.nike.adapt.network.dataopt.permissions.model.Permissions;
import fd.h;
import g0.n;
import java.util.Iterator;
import java.util.List;
import jd.d;
import ld.e;
import o7.x;

/* JADX INFO: compiled from: PermissionsApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements b8.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f3567b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f3568c = (h) o.x(a.f3569h);

    /* JADX INFO: compiled from: PermissionsApi.kt */
    public static final class a extends rd.o implements qd.a<PermissionServiceApi> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f3569h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final PermissionServiceApi invoke() {
            int i10 = w7.a.f17233a;
            n nVar = n.f7520c;
            PermissionServiceApi permissionServiceApi = n.f7522e;
            if (permissionServiceApi != null) {
                return permissionServiceApi;
            }
            PermissionServiceApi permissionServiceApi2 = (PermissionServiceApi) w7.a.C0303a.a(nVar, PermissionServiceApi.class, null, false, 6, null);
            n.f7522e = permissionServiceApi2;
            return permissionServiceApi2;
        }
    }

    /* JADX INFO: renamed from: b8.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: PermissionsApi.kt */
    @e(c = "com.nike.adapt.network.dataopt.permissions.PermissionsApiImpl", f = "PermissionsApi.kt", l = {43}, m = "getPermissions")
    public static final class C0057b extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f3570h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f3572j;

        public C0057b(d<? super C0057b> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f3570h = obj;
            this.f3572j |= Integer.MIN_VALUE;
            return b.this.a(this);
        }
    }

    /* JADX INFO: compiled from: PermissionsApi.kt */
    @e(c = "com.nike.adapt.network.dataopt.permissions.PermissionsApiImpl", f = "PermissionsApi.kt", l = {32, 33}, m = "updatePermissions")
    public static final class c extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f3573h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f3575j;

        public c(d<? super c> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f3573h = obj;
            this.f3575j |= Integer.MIN_VALUE;
            return b.this.b(false, this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // b8.a
    public final Object a(d<? super Boolean> dVar) throws Throwable {
        C0057b c0057b;
        Object next;
        Permissions permissions;
        if (dVar instanceof C0057b) {
            c0057b = (C0057b) dVar;
            int i10 = c0057b.f3572j;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0057b.f3572j = i10 - Integer.MIN_VALUE;
            } else {
                c0057b = new C0057b(dVar);
            }
        } else {
            c0057b = new C0057b(dVar);
        }
        Object privacyCompliance = c0057b.f3570h;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0057b.f3572j;
        try {
            if (i11 == 0) {
                d3.e.p(privacyCompliance);
                PermissionServiceApi permissionServiceApi = (PermissionServiceApi) f3568c.getValue();
                c0057b.f3572j = 1;
                privacyCompliance = permissionServiceApi.getPrivacyCompliance("adapt", c0057b);
                if (privacyCompliance == aVar) {
                    return aVar;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(privacyCompliance);
            }
            List list = (List) privacyCompliance;
            boolean zC = false;
            if (list != null) {
                Iterator it = list.iterator();
                do {
                    if (!it.hasNext()) {
                        next = null;
                        break;
                    }
                    next = it.next();
                    permissions = (Permissions) next;
                } while (!(p4.h.c(permissions.getPrincipal(), "adapt") && p4.h.c(permissions.getPermission(), "productimprovement:laceenginestats")));
                Permissions permissions2 = (Permissions) next;
                if (permissions2 != null) {
                    zC = p4.h.c(permissions2.getConsent(), "accept");
                }
            }
            return Boolean.valueOf(zC);
        } catch (Throwable th) {
            x.f12420a.a("getPermissions api : " + th.getCause() + " : " + th.getMessage());
            return null;
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // b8.a
    public final Object b(boolean z10, d<? super Boolean> dVar) throws Throwable {
        c cVar;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i10 = cVar.f3575j;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cVar.f3575j = i10 - Integer.MIN_VALUE;
            } else {
                cVar = new c(dVar);
            }
        } else {
            cVar = new c(dVar);
        }
        Object objA = cVar.f3573h;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = cVar.f3575j;
        try {
            if (i11 != 0) {
                if (i11 == 1) {
                    d3.e.p(objA);
                } else {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(objA);
                }
            }
            d3.e.p(objA);
            PermissionServiceApi permissionServiceApi = (PermissionServiceApi) f3568c.getValue();
            c8.a aVar2 = new c8.a(z10 ? "accept" : "decline");
            cVar.f3575j = 1;
            if (permissionServiceApi.updatePrivacyCompliance(aVar2, cVar) == aVar) {
                return aVar;
            }
            b bVar = f3567b;
            cVar.f3575j = 2;
            objA = bVar.a(cVar);
            return objA == aVar ? aVar : objA;
        } catch (Throwable th) {
            x.f12420a.a("updatePermissions api : " + th.getCause() + " : " + th.getMessage());
            return null;
        }
    }
}
