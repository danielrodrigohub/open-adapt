package g8;

import android.app.Application;
import android.content.Context;
import android.net.Uri;
import androidx.lifecycle.o;
import com.nike.adapt.BigfootApplication;
import com.nike.persistence.implementation.PersistenceManager;
import java.util.List;
import java.util.Objects;
import java.util.UUID;
import kotlinx.coroutines.BuildersKt__BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.serialization.SerializersKt;
import kotlinx.serialization.json.Json;
import o7.x;
import ob.f;
import okhttp3.OkHttpClient;
import p4.h;
import s9.m;
import v9.t;

/* JADX INFO: compiled from: OAuthModule.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final h8.c f7851a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final e f7852b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final C0150a f7853c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final b f7854d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final ad.d f7855e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final pb.b f7856f;

    /* JADX INFO: renamed from: g8.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: OAuthModule.kt */
    public static final class C0150a implements u9.b {
        @Override // u9.b
        public final void a(u9.a.C0279a c0279a) {
        }
    }

    /* JADX INFO: compiled from: OAuthModule.kt */
    public static final class b implements f.a {
        @Override // ob.f.a
        public final void a(ob.e eVar) {
            t.f16822a.g();
            m mVar = m.f15208a;
            m.b(false, true, 3);
        }
    }

    /* JADX INFO: compiled from: OAuthModule.kt */
    public static final class c implements ob.a.InterfaceC0223a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final u9.b f7857a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Application f7858b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final CoroutineScope f7859c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final b f7860d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final OkHttpClient f7861e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public final yc.c f7862f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public final e f7863g;

        public c(a aVar, Context context) {
            this.f7857a = aVar.f7853c;
            Context applicationContext = context.getApplicationContext();
            h.h(applicationContext, "null cannot be cast to non-null type android.app.Application");
            this.f7858b = (Application) applicationContext;
            BigfootApplication.e eVar = BigfootApplication.f5638p;
            this.f7859c = BigfootApplication.f5642t.getValue();
            this.f7860d = aVar.f7854d;
            this.f7861e = new OkHttpClient();
            this.f7862f = aVar.f7855e;
            this.f7863g = aVar.f7852b;
        }

        @Override // ob.a.InterfaceC0223a
        public final CoroutineScope a() {
            return this.f7859c;
        }

        @Override // ob.a.InterfaceC0223a
        public final f.a b() {
            return this.f7860d;
        }

        @Override // ob.a.InterfaceC0223a
        public final Application c() {
            return this.f7858b;
        }

        @Override // ob.a.InterfaceC0223a
        public final u9.b d() {
            return this.f7857a;
        }

        @Override // ob.a.InterfaceC0223a
        public final OkHttpClient e() {
            return this.f7861e;
        }

        @Override // ob.a.InterfaceC0223a
        public final ed.e f() {
            return this.f7863g;
        }

        @Override // ob.a.InterfaceC0223a
        public final yc.c g() {
            return this.f7862f;
        }
    }

    /* JADX INFO: compiled from: OAuthModule.kt */
    public static final class d implements ob.a.b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Uri f7864a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final List<String> f7865b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f7866c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final int f7867d;

        public d() {
            Uri uri = Uri.parse("nikeadapt://oidc/authorize_code/v1");
            h.i(uri, "parse(this)");
            this.f7864a = uri;
            this.f7865b = o.z("openid", "profile", "email", "phone", "flow", "offline_access", "nike.digital");
            h.i(Uri.parse("https://accounts.nike.com/.well-known/openid-configuration"), "parse(this)");
            this.f7866c = "https://accounts.nike.com/";
            this.f7867d = 1;
        }

        @Override // ob.a.b
        public final Uri a() {
            return this.f7864a;
        }

        @Override // ob.a.b
        public final int b() {
            return this.f7867d;
        }

        @Override // ob.a.b
        public final String c() {
            return this.f7866c;
        }

        @Override // ob.a.b
        public final List<String> d() {
            return this.f7865b;
        }

        @Override // ob.a.b
        public final void e() {
        }
    }

    /* JADX INFO: compiled from: OAuthModule.kt */
    public static final class e implements ed.e {
        @Override // ed.e
        public final void a(String str, Throwable th) {
            h.j(str, "message");
            if (th != null) {
                x.f12420a.c("AppAuth", str, th);
            } else {
                x.f12420a.b("AppAuth", str);
            }
        }

        @Override // ed.e
        public final void b(android.support.v4.media.a aVar) {
        }
    }

    public a(Context context) throws yc.b {
        Object objG;
        h.j(context, "context");
        this.f7851a = h8.c.f8298b;
        e eVar = new e();
        this.f7852b = eVar;
        this.f7853c = new C0150a();
        this.f7854d = new b();
        PersistenceManager persistenceManager = new PersistenceManager();
        persistenceManager.f5941b = context;
        try {
            cd.a aVar = new cd.a(new cd.a.b(context), persistenceManager.f5942c);
            persistenceManager.f5940a = aVar;
            objG = aVar;
        } catch (Throwable th) {
            objG = d3.e.g(th);
        }
        boolean z10 = !(objG instanceof fd.f.a);
        ad.d dVar = null;
        Object objG2 = objG;
        if (z10) {
            try {
                objG2 = (PersistenceManager.Settings) BuildersKt__BuildersKt.runBlocking$default(null, new ad.b((cd.a) objG, persistenceManager, null), 1, null);
            } catch (Throwable th2) {
                objG2 = d3.e.g(th2);
            }
        }
        boolean z11 = !(objG2 instanceof fd.f.a);
        Object objG3 = objG2;
        if (z11) {
            try {
                objG3 = UUID.fromString(((PersistenceManager.Settings) objG2).f5944a);
            } catch (Throwable th3) {
                objG3 = d3.e.g(th3);
            }
        }
        Throwable thA = fd.f.a(objG3);
        Object objG4 = objG3;
        if (thA != null) {
            try {
                UUID uuidRandomUUID = UUID.randomUUID();
                Json.Default r10 = Json.Default;
                String string = uuidRandomUUID.toString();
                h.i(string, "uuid.toString()");
                BuildersKt__BuildersKt.runBlocking$default(null, new ad.c(persistenceManager, r10.encodeToString(SerializersKt.serializer(r10.getSerializersModule(), rd.x.b(PersistenceManager.Settings.class)), new PersistenceManager.Settings(string)), null), 1, null);
                objG4 = uuidRandomUUID;
            } catch (Throwable th4) {
                objG4 = d3.e.g(th4);
            }
        }
        boolean z12 = !(objG4 instanceof fd.f.a);
        Object objG5 = objG4;
        if (z12) {
            try {
                UUID uuid = (UUID) objG4;
                ad.a aVar2 = new ad.a(context, eVar);
                h.i(uuid, "sessionID");
                aVar2.f605f = new ad.f(uuid);
                objG5 = aVar2;
            } catch (Throwable th5) {
                objG5 = d3.e.g(th5);
            }
        }
        Throwable thA2 = fd.f.a(objG5);
        if (thA2 != null) {
            throw new yc.b(thA2);
        }
        ad.a aVar3 = (ad.a) objG5;
        if (aVar3 != null) {
            Context context2 = persistenceManager.f5941b;
            if (context2 == null) {
                h.C("context");
                throw null;
            }
            dVar = new ad.d(context2, aVar3);
        }
        if (dVar == null) {
            throw new yc.b();
        }
        this.f7855e = dVar;
        ob.a aVar4 = new ob.a(new c(this, context), new d());
        Objects.requireNonNull(f.Companion);
        this.f7856f = new pb.b(new cc.e(aVar4));
    }

    public final boolean a() {
        boolean z10 = this.f7851a.m0().getBoolean("PREF_USER_LOGGED_IN", false);
        if (z10 && this.f7856f.a().b() != null) {
            return true;
        }
        if (z10) {
            this.f7851a.q0(false);
        }
        if (this.f7856f.a().b() == null) {
            return false;
        }
        m.f15208a.a(false, true, false);
        return false;
    }

    public final String b() {
        ob.b bVarB = this.f7856f.a().b();
        if (bVarB != null) {
            return bVarB.getUpmID();
        }
        return null;
    }
}
