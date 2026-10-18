package d8;

import androidx.lifecycle.o;
import com.nike.adapt.network.deleteAccount.DeleteAccountServiceApi;
import fd.h;
import g0.n;
import java.net.SocketTimeoutException;
import java.net.UnknownHostException;
import jd.d;
import ld.e;
import o7.x;

/* JADX INFO: compiled from: DeleteAccountApi.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements d8.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final b f6114b = new b();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f6115c = (h) o.x(a.f6116h);

    /* JADX INFO: compiled from: DeleteAccountApi.kt */
    public static final class a extends rd.o implements qd.a<DeleteAccountServiceApi> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f6116h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final DeleteAccountServiceApi invoke() {
            int i10 = w7.a.f17233a;
            n nVar = n.f7520c;
            DeleteAccountServiceApi deleteAccountServiceApi = n.f7525h;
            if (deleteAccountServiceApi != null) {
                return deleteAccountServiceApi;
            }
            DeleteAccountServiceApi deleteAccountServiceApi2 = (DeleteAccountServiceApi) w7.a.C0303a.a(nVar, DeleteAccountServiceApi.class, "https://gdpr.nike.com", false, 4, null);
            n.f7525h = deleteAccountServiceApi2;
            return deleteAccountServiceApi2;
        }
    }

    /* JADX INFO: renamed from: d8.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DeleteAccountApi.kt */
    @e(c = "com.nike.adapt.network.deleteAccount.DeleteAccountApiImpl", f = "DeleteAccountApi.kt", l = {23}, m = "deleteAccount")
    public static final class C0107b extends ld.c {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public /* synthetic */ Object f6117h;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f6119j;

        public C0107b(d<? super C0107b> dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.f6117h = obj;
            this.f6119j |= Integer.MIN_VALUE;
            return b.this.deleteAccount(this);
        }
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // d8.a
    public final Object deleteAccount(d<? super c> dVar) throws Throwable {
        C0107b c0107b;
        if (dVar instanceof C0107b) {
            c0107b = (C0107b) dVar;
            int i10 = c0107b.f6119j;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                c0107b.f6119j = i10 - Integer.MIN_VALUE;
            } else {
                c0107b = new C0107b(dVar);
            }
        } else {
            c0107b = new C0107b(dVar);
        }
        Object obj = c0107b.f6117h;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = c0107b.f6119j;
        try {
            if (i11 == 0) {
                d3.e.p(obj);
                DeleteAccountServiceApi deleteAccountServiceApi = (DeleteAccountServiceApi) f6115c.getValue();
                c0107b.f6119j = 1;
                if (deleteAccountServiceApi.deleteAccount(c0107b) == aVar) {
                    return aVar;
                }
            } else {
                if (i11 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                d3.e.p(obj);
            }
            return c.b.f6121a;
        } catch (Throwable th) {
            x.f12420a.a("deleteAccount api : " + th.getCause() + " : " + th.getMessage());
            return th instanceof UnknownHostException ? true : th instanceof SocketTimeoutException ? c.C0108c.f6122a : c.a.f6120a;
        }
    }
}
