package yb;

import android.content.Intent;
import android.net.Uri;
import android.util.Base64;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.OIDCAuthWebService;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.OIDCAuthWebServiceFactory;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.impl.OIDCAuthWebServiceFactoryImpl;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthConfigurationJSON;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthCredentialJSON;
import com.nike.authcomponent.oidc.internal.nativeoidc.webservice.model.OIDCAuthCredentialJSONKt;
import fd.f;
import fd.o;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexKt;
import ld.i;
import org.json.JSONException;
import p4.h;
import qd.p;
import rd.u;

/* JADX INFO: compiled from: NativeOIDCWrapper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class e implements pb.d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final ob.a f19138a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final OIDCAuthWebServiceFactory f19139b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final zb.a f19140c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final ac.a f19141d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final wc.b f19142e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final CoroutineDispatcher f19143f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final Mutex f19144g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public long f19145h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public OIDCAuthConfigurationJSON f19146i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final CoroutineScope f19147j;

    /* JADX INFO: compiled from: NativeOIDCWrapper.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper", f = "NativeOIDCWrapper.kt", l = {187, 66}, m = "getAuthorizationServiceConfiguration")
    public static final class a extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public e f19148h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Mutex f19149i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f19150j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f19152l;

        public a(jd.d<? super a> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f19150j = obj;
            this.f19152l |= Integer.MIN_VALUE;
            return e.this.g(this);
        }
    }

    /* JADX INFO: compiled from: NativeOIDCWrapper.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper$loadAuthConfig$1", f = "NativeOIDCWrapper.kt", l = {133}, m = "invokeSuspend")
    public static final class b extends i implements p<CoroutineScope, jd.d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f19153h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public /* synthetic */ Object f19154i;

        public b(jd.d<? super b> dVar) {
            super(2, dVar);
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            b bVar = e.this.new b(dVar);
            bVar.f19154i = obj;
            return bVar;
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
            return ((b) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f19153h;
            try {
                if (i10 == 0) {
                    d3.e.p(obj);
                    e eVar = e.this;
                    this.f19153h = 1;
                    obj = eVar.g(this);
                    if (obj == aVar) {
                        return aVar;
                    }
                } else {
                    if (i10 != 1) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    d3.e.p(obj);
                }
            } catch (Throwable th) {
                d3.e.g(th);
            }
            return o.f7408a;
        }
    }

    /* JADX INFO: compiled from: NativeOIDCWrapper.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper", f = "NativeOIDCWrapper.kt", l = {116, 117}, m = "refreshUserCredential")
    public static final class c extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public e f19156h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public String f19157i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public /* synthetic */ Object f19158j;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f19160l;

        public c(jd.d<? super c> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f19158j = obj;
            this.f19160l |= Integer.MIN_VALUE;
            return e.this.c(null, this);
        }
    }

    /* JADX INFO: compiled from: NativeOIDCWrapper.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper$revokeRefreshToken$1", f = "NativeOIDCWrapper.kt", l = {126}, m = "invokeSuspend")
    public static final class d extends i implements p<CoroutineScope, jd.d<? super o>, Object> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f19161h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ String f19163j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(String str, jd.d<? super d> dVar) {
            super(2, dVar);
            this.f19163j = str;
        }

        @Override // ld.a
        public final jd.d<o> create(Object obj, jd.d<?> dVar) {
            return e.this.new d(this.f19163j, dVar);
        }

        @Override // qd.p
        public final Object invoke(CoroutineScope coroutineScope, jd.d<? super o> dVar) {
            return ((d) create(coroutineScope, dVar)).invokeSuspend(o.f7408a);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) throws Throwable {
            kd.a aVar = kd.a.COROUTINE_SUSPENDED;
            int i10 = this.f19161h;
            if (i10 == 0) {
                d3.e.p(obj);
                e eVar = e.this;
                String str = this.f19163j;
                this.f19161h = 1;
                if (e.f(eVar, str, this) == aVar) {
                    return aVar;
                }
            } else {
                if (i10 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return o.f7408a;
        }
    }

    /* JADX INFO: renamed from: yb.e$e, reason: collision with other inner class name */
    /* JADX INFO: compiled from: NativeOIDCWrapper.kt */
    @ld.e(c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper", f = "NativeOIDCWrapper.kt", l = {85, 87, 100}, m = "signIn-Kx4hsE0")
    public static final class C0327e extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public e f19164h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Object f19165i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Object f19166j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public /* synthetic */ Object f19167k;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f19169m;

        public C0327e(jd.d<? super C0327e> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f19167k = obj;
            this.f19169m |= Integer.MIN_VALUE;
            return e.this.d(null, null, this);
        }
    }

    public e(ob.a aVar) {
        OIDCAuthWebServiceFactoryImpl oIDCAuthWebServiceFactoryImpl = new OIDCAuthWebServiceFactoryImpl(aVar);
        zb.b bVar = new zb.b(aVar);
        yc.a.d<zc.c> dVarA = aVar.f12530a.g().a();
        h.j(dVarA, "<this>");
        dVarA.b(dd.a.App);
        dVarA.b(new dd.d("com.nike.authcomponent.oidc"));
        ac.b bVar2 = new ac.b((zc.c) dVarA.a());
        wc.b bVar3 = new wc.b();
        CoroutineDispatcher io = Dispatchers.getIO();
        h.j(io, "dispatcher");
        this.f19138a = aVar;
        this.f19139b = oIDCAuthWebServiceFactoryImpl;
        this.f19140c = bVar;
        this.f19141d = bVar2;
        this.f19142e = bVar3;
        this.f19143f = io;
        this.f19144g = MutexKt.Mutex$default(false, 1, null);
        this.f19145h = System.currentTimeMillis();
        CoroutineScope coroutineScopeA = aVar.f12530a.a();
        this.f19147j = coroutineScopeA;
        BuildersKt__Builders_commonKt.launch$default(coroutineScopeA, io, null, new yb.a(this, null), 2, null);
    }

    /* JADX WARN: Code duplicated, block: B:49:0x00e1  */
    /* JADX WARN: Code duplicated, block: B:52:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:54:0x012d A[PHI: r0 r1 r4 r10
      0x012d: PHI (r0v17 yb.e) = (r0v14 yb.e), (r0v19 yb.e) binds: [B:48:0x00df, B:53:0x00f9] A[DONT_GENERATE, DONT_INLINE]
      0x012d: PHI (r1v11 java.lang.Object) = (r1v8 java.lang.Object), (r1v14 java.lang.Object) binds: [B:48:0x00df, B:53:0x00f9] A[DONT_GENERATE, DONT_INLINE]
      0x012d: PHI (r4v11 rd.u) = (r4v8 rd.u), (r4v14 rd.u) binds: [B:48:0x00df, B:53:0x00f9] A[DONT_GENERATE, DONT_INLINE]
      0x012d: PHI (r10v12 java.lang.String) = (r10v8 java.lang.String), (r10v14 java.lang.String) binds: [B:48:0x00df, B:53:0x00f9] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:56:0x0133  */
    /* JADX WARN: Code duplicated, block: B:61:0x014a  */
    /* JADX WARN: Code duplicated, block: B:75:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:76:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x001a  */
    public static final Object f(e eVar, String str, jd.d dVar) throws Throwable {
        yb.b bVar;
        u uVar;
        String str2;
        e eVar2;
        u uVar2;
        String str3;
        e eVar3;
        Object objG;
        e eVar4;
        ac.a aVar;
        String str4;
        e eVar5;
        Throwable thA;
        ac.a aVar2;
        e eVar6;
        Throwable th;
        e eVar7 = eVar;
        Objects.requireNonNull(eVar);
        if (dVar instanceof yb.b) {
            bVar = (yb.b) dVar;
            int i10 = bVar.f19128n;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                bVar.f19128n = i10 - Integer.MIN_VALUE;
            } else {
                bVar = new yb.b(eVar7, dVar);
            }
        } else {
            bVar = new yb.b(eVar7, dVar);
        }
        Object objG2 = bVar.f19126l;
        kd.a aVar3 = kd.a.COROUTINE_SUSPENDED;
        int i11 = bVar.f19128n;
        if (i11 != 0) {
            if (i11 == 1) {
                eVar7 = (e) bVar.f19125k;
                uVar = (u) bVar.f19124j;
                str2 = (String) bVar.f19123i;
                eVar2 = bVar.f19122h;
                try {
                    d3.e.p(objG2);
                } catch (Throwable th2) {
                    th = th2;
                    eVar7 = eVar2;
                    e eVar8 = eVar7;
                    objG = d3.e.g(th);
                    eVar4 = eVar8;
                }
            } else {
                if (i11 == 2) {
                    uVar2 = (u) bVar.f19124j;
                    str3 = (String) bVar.f19123i;
                    eVar3 = bVar.f19122h;
                    try {
                        d3.e.p(objG2);
                        u uVar3 = uVar2;
                        objG = o.f7408a;
                        eVar4 = eVar3;
                        str2 = str3;
                        uVar = uVar3;
                    } catch (Throwable th3) {
                        th = th3;
                        String str5 = str3;
                        uVar = uVar2;
                        eVar7 = eVar3;
                        str2 = str5;
                        e eVar9 = eVar7;
                        objG = d3.e.g(th);
                        eVar4 = eVar9;
                    }
                    if (!(objG instanceof f.a)) {
                        aVar = eVar4.f19141d;
                        bVar.f19122h = eVar4;
                        bVar.f19123i = str2;
                        bVar.f19124j = uVar;
                        bVar.f19125k = objG;
                        bVar.f19128n = 3;
                        if (aVar.c(str2, bVar) == aVar3) {
                            return aVar3;
                        }
                        str4 = str2;
                        eVar5 = eVar4;
                        ed.e eVarH = eVar5.h();
                        h.j(eVarH, "<this>");
                        eVarH.b(new ed.b(3, "Revoke_Refresh_Token_Succeeded", "Revoke refresh token succeeded", ec.b.a(null, null, null, 0, 31), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6724g))));
                        eVar4 = eVar5;
                        str2 = str4;
                        thA = f.a(objG);
                        if (thA != null) {
                            aVar2 = eVar4.f19141d;
                            bVar.f19122h = eVar4;
                            bVar.f19123i = objG;
                            bVar.f19124j = thA;
                            bVar.f19125k = null;
                            bVar.f19128n = 4;
                            if (aVar2.a(str2, bVar) == aVar3) {
                                return aVar3;
                            }
                            eVar6 = eVar4;
                            th = thA;
                        }
                    } else {
                        thA = f.a(objG);
                        if (thA != null) {
                            aVar2 = eVar4.f19141d;
                            bVar.f19122h = eVar4;
                            bVar.f19123i = objG;
                            bVar.f19124j = thA;
                            bVar.f19125k = null;
                            bVar.f19128n = 4;
                            if (aVar2.a(str2, bVar) == aVar3) {
                                return aVar3;
                            }
                            eVar6 = eVar4;
                            th = thA;
                        }
                    }
                    return o.f7408a;
                }
                if (i11 == 3) {
                    objG = bVar.f19125k;
                    uVar = (u) bVar.f19124j;
                    str4 = (String) bVar.f19123i;
                    eVar5 = bVar.f19122h;
                    d3.e.p(objG2);
                    ed.e eVarH2 = eVar5.h();
                    h.j(eVarH2, "<this>");
                    eVarH2.b(new ed.b(3, "Revoke_Refresh_Token_Succeeded", "Revoke refresh token succeeded", ec.b.a(null, null, null, 0, 31), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6724g))));
                    eVar4 = eVar5;
                    str2 = str4;
                    thA = f.a(objG);
                    if (thA != null && !uVar.f14793h) {
                        aVar2 = eVar4.f19141d;
                        bVar.f19122h = eVar4;
                        bVar.f19123i = objG;
                        bVar.f19124j = thA;
                        bVar.f19125k = null;
                        bVar.f19128n = 4;
                        if (aVar2.a(str2, bVar) == aVar3) {
                            return aVar3;
                        }
                        eVar6 = eVar4;
                        th = thA;
                    }
                    return o.f7408a;
                }
                if (i11 != 4) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                th = (Throwable) bVar.f19124j;
                eVar6 = bVar.f19122h;
                d3.e.p(objG2);
            }
            ec.b.d(eVar6.h(), th);
            return o.f7408a;
        }
        d3.e.p(objG2);
        uVar = new u();
        try {
            bVar.f19122h = eVar7;
            str2 = str;
            try {
                bVar.f19123i = str2;
                bVar.f19124j = uVar;
                bVar.f19125k = eVar7;
                bVar.f19128n = 1;
                objG2 = eVar7.g(bVar);
                if (objG2 == aVar3) {
                    return aVar3;
                }
                eVar2 = eVar7;
            } catch (Throwable th4) {
                th = th4;
                e eVar10 = eVar7;
                objG = d3.e.g(th);
                eVar4 = eVar10;
            }
        } catch (Throwable th5) {
            th = th5;
            str2 = str;
        }
        wc.b bVar2 = eVar7.f19142e;
        yb.c cVar = new yb.c(eVar7, (OIDCAuthConfigurationJSON) objG2, str2, null);
        yb.d dVar2 = new yb.d(uVar, eVar7, str2, null);
        bVar.f19122h = eVar2;
        bVar.f19123i = str2;
        bVar.f19124j = uVar;
        bVar.f19125k = null;
        bVar.f19128n = 2;
        if (wc.a.a(bVar2, cVar, dVar2, bVar) == aVar3) {
            return aVar3;
        }
        uVar2 = uVar;
        str3 = str2;
        eVar3 = eVar2;
        u uVar4 = uVar2;
        objG = o.f7408a;
        eVar4 = eVar3;
        str2 = str3;
        uVar = uVar4;
        if (!(objG instanceof f.a)) {
            aVar = eVar4.f19141d;
            bVar.f19122h = eVar4;
            bVar.f19123i = str2;
            bVar.f19124j = uVar;
            bVar.f19125k = objG;
            bVar.f19128n = 3;
            if (aVar.c(str2, bVar) == aVar3) {
                return aVar3;
            }
            str4 = str2;
            eVar5 = eVar4;
            ed.e eVarH3 = eVar5.h();
            h.j(eVarH3, "<this>");
            eVarH3.b(new ed.b(3, "Revoke_Refresh_Token_Succeeded", "Revoke refresh token succeeded", ec.b.a(null, null, null, 0, 31), ec.a.f6718a.a(androidx.lifecycle.o.z(ec.a.f6722e, ec.a.f6724g))));
            eVar4 = eVar5;
            str2 = str4;
            thA = f.a(objG);
            if (thA != null) {
                aVar2 = eVar4.f19141d;
                bVar.f19122h = eVar4;
                bVar.f19123i = objG;
                bVar.f19124j = thA;
                bVar.f19125k = null;
                bVar.f19128n = 4;
                if (aVar2.a(str2, bVar) == aVar3) {
                    return aVar3;
                }
                eVar6 = eVar4;
                th = thA;
                ec.b.d(eVar6.h(), th);
            }
        } else {
            thA = f.a(objG);
            if (thA != null) {
                aVar2 = eVar4.f19141d;
                bVar.f19122h = eVar4;
                bVar.f19123i = objG;
                bVar.f19124j = thA;
                bVar.f19125k = null;
                bVar.f19128n = 4;
                if (aVar2.a(str2, bVar) == aVar3) {
                    return aVar3;
                }
                eVar6 = eVar4;
                th = thA;
                ec.b.d(eVar6.h(), th);
            }
        }
        return o.f7408a;
    }

    @Override // pb.d
    public final void a(String str) {
        h.j(str, "refreshToken");
        BuildersKt__Builders_commonKt.launch$default(this.f19147j, this.f19143f, null, new d(str, null), 2, null);
    }

    @Override // pb.d
    public final void b() {
        BuildersKt__Builders_commonKt.launch$default(this.f19147j, this.f19143f, null, new b(null), 2, null);
        this.f19140c.a();
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // pb.d
    public final Object c(String str, jd.d<? super ob.c> dVar) throws Throwable {
        c cVar;
        String str2;
        e eVar;
        if (dVar instanceof c) {
            cVar = (c) dVar;
            int i10 = cVar.f19160l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                cVar.f19160l = i10 - Integer.MIN_VALUE;
            } else {
                cVar = new c(dVar);
            }
        } else {
            cVar = new c(dVar);
        }
        c cVar2 = cVar;
        Object objG = cVar2.f19158j;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = cVar2.f19160l;
        if (i11 != 0) {
            if (i11 == 1) {
                String str3 = cVar2.f19157i;
                e eVar2 = cVar2.f19156h;
                d3.e.p(objG);
                str2 = str3;
                eVar = eVar2;
            } else {
                if (i11 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                eVar = cVar2.f19156h;
                d3.e.p(objG);
            }
            return OIDCAuthCredentialJSONKt.toInternal((OIDCAuthCredentialJSON) objG, eVar.h());
        }
        d3.e.p(objG);
        cVar2.f19156h = this;
        cVar2.f19157i = str;
        cVar2.f19160l = 1;
        objG = g(cVar2);
        if (objG == aVar) {
            return aVar;
        }
        str2 = str;
        eVar = this;
        OIDCAuthWebService oIDCAuthWebServiceCreate = eVar.f19139b.create();
        String token_endpoint = ((OIDCAuthConfigurationJSON) objG).getToken_endpoint();
        eVar.f19138a.f12531b.e();
        cVar2.f19156h = eVar;
        cVar2.f19157i = null;
        cVar2.f19160l = 2;
        objG = OIDCAuthWebService.DefaultImpls.updateCredential$default(oIDCAuthWebServiceCreate, token_endpoint, "5049d3b1ed877abc784ac3233c0cf83", str2, null, cVar2, 8, null);
        if (objG == aVar) {
            return aVar;
        }
        return OIDCAuthCredentialJSONKt.toInternal((OIDCAuthCredentialJSON) objG, eVar.h());
    }

    /* JADX WARN: Code duplicated, block: B:36:0x00f1  */
    /* JADX WARN: Code duplicated, block: B:38:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:39:0x00f9  */
    /* JADX WARN: Code duplicated, block: B:42:0x010a  */
    /* JADX WARN: Code duplicated, block: B:45:0x0116 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:46:0x0118  */
    /* JADX WARN: Code duplicated, block: B:48:0x0154 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:49:0x0155  */
    /* JADX WARN: Code duplicated, block: B:52:0x0162 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:53:0x0163  */
    /* JADX WARN: Code duplicated, block: B:55:0x0170  */
    /* JADX WARN: Code duplicated, block: B:57:0x0178  */
    /* JADX WARN: Code duplicated, block: B:73:0x010c A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0017  */
    @Override // pb.d
    public final Object d(androidx.fragment.app.p pVar, zd.a aVar, jd.d<? super ob.c> dVar) throws Throwable {
        C0327e c0327e;
        e eVar;
        zd.a aVar2;
        androidx.fragment.app.p pVar2;
        OIDCAuthConfigurationJSON oIDCAuthConfigurationJSON;
        bc.a aVar3;
        Intent intent;
        Uri data;
        String queryParameter;
        com.nike.authcomponent.oidc.internal.appauth.source.a aVarC;
        e eVar2;
        if (dVar instanceof C0327e) {
            c0327e = (C0327e) dVar;
            int i10 = c0327e.f19169m;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0327e.f19169m = i10 - Integer.MIN_VALUE;
            } else {
                c0327e = new C0327e(dVar);
            }
        } else {
            c0327e = new C0327e(dVar);
        }
        C0327e c0327e2 = c0327e;
        Object credential$default = c0327e2.f19167k;
        kd.a aVar4 = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0327e2.f19169m;
        ob.c internal = null;
        int i12 = 1;
        if (i11 != 0) {
            if (i11 == 1) {
                zd.a aVar5 = (zd.a) c0327e2.f19166j;
                pVar2 = (androidx.fragment.app.p) c0327e2.f19165i;
                e eVar3 = c0327e2.f19164h;
                d3.e.p(credential$default);
                aVar2 = aVar5;
                eVar = eVar3;
            } else {
                if (i11 == 2) {
                    aVar3 = (bc.a) c0327e2.f19166j;
                    oIDCAuthConfigurationJSON = (OIDCAuthConfigurationJSON) c0327e2.f19165i;
                    e eVar4 = c0327e2.f19164h;
                    d3.e.p(credential$default);
                    eVar = eVar4;
                    intent = ((androidx.activity.result.a) credential$default).f714i;
                    if (intent != null) {
                        data = intent.getData();
                        if (data == null) {
                            queryParameter = null;
                        } else {
                            queryParameter = data.getQueryParameter("code");
                        }
                        int i13 = com.nike.authcomponent.oidc.internal.appauth.source.a.f5930m;
                        if (intent.hasExtra("com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationException")) {
                            try {
                                aVarC = com.nike.authcomponent.oidc.internal.appauth.source.a.c(intent.getStringExtra("com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationException"));
                            } catch (JSONException e10) {
                                throw new IllegalArgumentException("Intent contains malformed exception data", e10);
                            }
                        } else {
                            aVarC = null;
                        }
                        if (aVarC == null) {
                            throw aVarC;
                        }
                        if (queryParameter != null) {
                            throw new ob.e.d("AppAuth gave an empty response", null, 2);
                        }
                        OIDCAuthWebService oIDCAuthWebServiceCreate = eVar.f19139b.create();
                        String token_endpoint = oIDCAuthConfigurationJSON.getToken_endpoint();
                        eVar.f19138a.f12531b.e();
                        String string = eVar.f19138a.f12531b.a().toString();
                        h.i(string, "configuration.settings.redirectURI.toString()");
                        String str = aVar3.f3775a;
                        c0327e2.f19164h = eVar;
                        c0327e2.f19165i = null;
                        c0327e2.f19166j = null;
                        c0327e2.f19169m = 3;
                        credential$default = OIDCAuthWebService.DefaultImpls.getCredential$default(oIDCAuthWebServiceCreate, token_endpoint, "5049d3b1ed877abc784ac3233c0cf83", string, queryParameter, str, null, c0327e2, 32, null);
                        if (credential$default == aVar4) {
                            return aVar4;
                        }
                        eVar2 = eVar;
                    }
                    if (internal != null) {
                        return internal;
                    }
                    throw new ob.e.d("AppAuth did not send result data", new IllegalStateException());
                }
                if (i11 != 3) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                eVar2 = c0327e2.f19164h;
                d3.e.p(credential$default);
            }
            internal = OIDCAuthCredentialJSONKt.toInternal((OIDCAuthCredentialJSON) credential$default, eVar2.h());
            if (internal != null) {
                return internal;
            }
            throw new ob.e.d("AppAuth did not send result data", new IllegalStateException());
        }
        d3.e.p(credential$default);
        c0327e2.f19164h = this;
        c0327e2.f19165i = pVar;
        c0327e2.f19166j = aVar;
        c0327e2.f19169m = 1;
        Object objG = g(c0327e2);
        if (objG == aVar4) {
            return aVar4;
        }
        eVar = this;
        aVar2 = aVar;
        pVar2 = pVar;
        credential$default = objG;
        OIDCAuthConfigurationJSON oIDCAuthConfigurationJSON2 = (OIDCAuthConfigurationJSON) credential$default;
        String strB = "";
        int i14 = 0;
        while (true) {
            i14 += i12;
            strB = h.B(strB, Character.valueOf("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-._~".charAt(td.c.f15597h.b(66))));
            if (i14 >= 128) {
                try {
                    break;
                } catch (UnsupportedEncodingException e11) {
                    throw new IllegalStateException("Could not convert string to an ASCII byte array", e11);
                }
            }
            i12 = 1;
        }
        Charset charset = yd.a.f19174e;
        if (strB == null) {
            throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
        }
        byte[] bytes = strB.getBytes(charset);
        h.i(bytes, "(this as java.lang.String).getBytes(charset)");
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("SHA-256");
            h.i(messageDigest, "getInstance(SHA_256)");
            messageDigest.update(bytes, 0, bytes.length);
            byte[] bArrDigest = messageDigest.digest();
            h.i(bArrDigest, "{\n            val md: MessageDigest = MessageDigest.getInstance(SHA_256)\n            md.update(input, 0, input.size)\n            md.digest()\n        }");
            String strEncodeToString = Base64.encodeToString(bArrDigest, 11);
            h.i(strEncodeToString, "encodeToString(source, Base64.URL_SAFE or Base64.NO_WRAP or Base64.NO_PADDING)");
            bc.a aVar6 = new bc.a(strB, strEncodeToString);
            zb.a aVar7 = eVar.f19140c;
            c0327e2.f19164h = eVar;
            c0327e2.f19165i = oIDCAuthConfigurationJSON2;
            c0327e2.f19166j = aVar6;
            c0327e2.f19169m = 2;
            Object objB = aVar7.b(pVar2, oIDCAuthConfigurationJSON2, aVar6, aVar2, c0327e2);
            if (objB == aVar4) {
                return aVar4;
            }
            oIDCAuthConfigurationJSON = oIDCAuthConfigurationJSON2;
            credential$default = objB;
            aVar3 = aVar6;
            intent = ((androidx.activity.result.a) credential$default).f714i;
            if (intent != null) {
                data = intent.getData();
                if (data == null) {
                    queryParameter = null;
                } else {
                    queryParameter = data.getQueryParameter("code");
                }
                int i15 = com.nike.authcomponent.oidc.internal.appauth.source.a.f5930m;
                if (intent.hasExtra("com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationException")) {
                    aVarC = null;
                } else {
                    aVarC = com.nike.authcomponent.oidc.internal.appauth.source.a.c(intent.getStringExtra("com.nike.authcomponent.oidc.internal.appauth.source.AuthorizationException"));
                }
                if (aVarC == null) {
                    throw aVarC;
                }
                if (queryParameter != null) {
                    throw new ob.e.d("AppAuth gave an empty response", null, 2);
                }
                OIDCAuthWebService oIDCAuthWebServiceCreate2 = eVar.f19139b.create();
                String token_endpoint2 = oIDCAuthConfigurationJSON.getToken_endpoint();
                eVar.f19138a.f12531b.e();
                String string2 = eVar.f19138a.f12531b.a().toString();
                h.i(string2, "configuration.settings.redirectURI.toString()");
                String str2 = aVar3.f3775a;
                c0327e2.f19164h = eVar;
                c0327e2.f19165i = null;
                c0327e2.f19166j = null;
                c0327e2.f19169m = 3;
                credential$default = OIDCAuthWebService.DefaultImpls.getCredential$default(oIDCAuthWebServiceCreate2, token_endpoint2, "5049d3b1ed877abc784ac3233c0cf83", string2, queryParameter, str2, null, c0327e2, 32, null);
                if (credential$default == aVar4) {
                    return aVar4;
                }
                eVar2 = eVar;
                internal = OIDCAuthCredentialJSONKt.toInternal((OIDCAuthCredentialJSON) credential$default, eVar2.h());
            }
            if (internal != null) {
                return internal;
            }
            throw new ob.e.d("AppAuth did not send result data", new IllegalStateException());
        } catch (NoSuchAlgorithmException e12) {
            throw new IllegalStateException("Failed to get SHA-256 signature", e12);
        }
    }

    @Override // pb.d
    public final void e() {
        this.f19146i = null;
        this.f19145h = 0L;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public final Object g(jd.d<? super OIDCAuthConfigurationJSON> dVar) throws Throwable {
        a aVar;
        Mutex mutex;
        e eVar;
        OIDCAuthConfigurationJSON oIDCAuthConfigurationJSON;
        Mutex mutex2;
        e eVar2;
        if (dVar instanceof a) {
            aVar = (a) dVar;
            int i10 = aVar.f19152l;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                aVar.f19152l = i10 - Integer.MIN_VALUE;
            } else {
                aVar = new a(dVar);
            }
        } else {
            aVar = new a(dVar);
        }
        Object configuration = aVar.f19150j;
        kd.a aVar2 = kd.a.COROUTINE_SUSPENDED;
        int i11 = aVar.f19152l;
        boolean z10 = true;
        try {
            if (i11 == 0) {
                d3.e.p(configuration);
                mutex = this.f19144g;
                aVar.f19148h = this;
                aVar.f19149i = mutex;
                aVar.f19152l = 1;
                if (mutex.lock(null, aVar) == aVar2) {
                    return aVar2;
                }
                eVar = this;
            } else {
                if (i11 != 1) {
                    if (i11 != 2) {
                        throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                    }
                    mutex2 = aVar.f19149i;
                    eVar2 = aVar.f19148h;
                    try {
                        d3.e.p(configuration);
                        eVar2.f19145h = System.currentTimeMillis();
                        eVar2.f19146i = (OIDCAuthConfigurationJSON) configuration;
                        oIDCAuthConfigurationJSON = (OIDCAuthConfigurationJSON) configuration;
                        mutex = mutex2;
                        mutex.unlock(null);
                        return oIDCAuthConfigurationJSON;
                    } catch (Throwable th) {
                        th = th;
                        mutex = mutex2;
                        mutex.unlock(null);
                        throw th;
                    }
                }
                mutex = aVar.f19149i;
                eVar = aVar.f19148h;
                d3.e.p(configuration);
            }
            oIDCAuthConfigurationJSON = eVar.f19146i;
            if (System.currentTimeMillis() - eVar.f19145h <= TimeUnit.MINUTES.toMillis(1L)) {
                z10 = false;
            }
            if (z10 || oIDCAuthConfigurationJSON == null) {
                OIDCAuthWebService oIDCAuthWebServiceCreate = eVar.f19139b.create();
                aVar.f19148h = eVar;
                aVar.f19149i = mutex;
                aVar.f19152l = 2;
                configuration = oIDCAuthWebServiceCreate.getConfiguration(aVar);
                if (configuration == aVar2) {
                    return aVar2;
                }
                mutex2 = mutex;
                eVar2 = eVar;
                eVar2.f19145h = System.currentTimeMillis();
                eVar2.f19146i = (OIDCAuthConfigurationJSON) configuration;
                oIDCAuthConfigurationJSON = (OIDCAuthConfigurationJSON) configuration;
                mutex = mutex2;
            }
            mutex.unlock(null);
            return oIDCAuthConfigurationJSON;
        } catch (Throwable th2) {
            th = th2;
            mutex.unlock(null);
            throw th;
        }
    }

    public final ed.e h() {
        return this.f19138a.f12530a.f();
    }
}
