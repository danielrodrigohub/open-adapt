package za;

import android.bluetooth.BluetoothGatt;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import fa.m;
import fb.w;
import hc.l0;
import hc.n0;
import ic.j;
import ic.k;
import java.util.List;
import mc.a0;
import mc.b0;
import mc.e0;
import mc.g0;
import mc.j0;
import mc.n;
import mc.q;
import org.json.JSONObject;
import p4.h;
import qd.l;
import rd.o;
import w9.u1;
import ya.h0;

/* JADX INFO: compiled from: AdaptKitCoreRF.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a extends BroadcastReceiver implements l0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Context f19453h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final String f19454i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final String f19455j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f19456k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final C0337a f19457l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final u1 f19458m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final xa.b f19459n;

    /* JADX INFO: renamed from: za.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AdaptKitCoreRF.kt */
    public static final class C0337a implements hc.a {
        @Override // hc.a
        public final void a() {
        }
    }

    /* JADX INFO: compiled from: AdaptKitCoreRF.kt */
    public static final class b extends o implements l<Bundle, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.a f19460h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(nc.a aVar) {
            super(1);
            this.f19460h = aVar;
        }

        @Override // qd.l
        public final fd.o invoke(Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle2 != null) {
                ia.a.C0174a c0174a = ia.a.C0174a.f8974a;
                nc.a aVar = this.f19460h;
                mc.c cVarL = c0174a.l(bundle2);
                if (cVarL != null) {
                    aVar.j(cVarL);
                } else {
                    String strH = c0174a.h(bundle2);
                    if (strH == null) {
                        strH = "No error message supplied. Result was not present";
                    }
                    aVar.k(new Exception(strH));
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitCoreRF.kt */
    public static final class c extends o implements l<Bundle, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.a f19461h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(nc.a aVar) {
            super(1);
            this.f19461h = aVar;
        }

        @Override // qd.l
        public final fd.o invoke(Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle2 != null) {
                ia.a.e eVar = ia.a.e.f8978a;
                nc.a aVar = this.f19461h;
                e0 e0VarL = eVar.l(bundle2);
                if (e0VarL != null) {
                    aVar.j(e0VarL);
                } else {
                    String strH = eVar.h(bundle2);
                    if (strH == null) {
                        strH = "No error message supplied. Result was not present";
                    }
                    aVar.k(new Exception(strH));
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitCoreRF.kt */
    public static final class d extends o implements l<Bundle, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.a f19462h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d(nc.a aVar) {
            super(1);
            this.f19462h = aVar;
        }

        @Override // qd.l
        public final fd.o invoke(Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle2 != null) {
                ia.a.c cVar = ia.a.c.f8976a;
                nc.a aVar = this.f19462h;
                Integer numL = cVar.l(bundle2);
                if (numL != null) {
                    aVar.j(numL);
                } else {
                    String strH = cVar.h(bundle2);
                    if (strH == null) {
                        strH = "No error message supplied. Result was not present";
                    }
                    aVar.k(new Exception(strH));
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitCoreRF.kt */
    public static final class e extends o implements l<Bundle, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.a f19463h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e(nc.a aVar) {
            super(1);
            this.f19463h = aVar;
        }

        @Override // qd.l
        public final fd.o invoke(Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle2 != null) {
                nc.a aVar = this.f19463h;
                String string = bundle2.getString("param_result_outgoing_key");
                Boolean boolValueOf = string == null || yd.o.b0(string) ? null : Boolean.valueOf(new JSONObject(string).optBoolean("success", false));
                if (boolValueOf != null) {
                    aVar.j(boolValueOf);
                } else {
                    String string2 = bundle2.getString("extra_error_outgoing_key");
                    if (string2 == null) {
                        string2 = "No error message supplied. Result was not present";
                    }
                    aVar.k(new Exception(string2));
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitCoreRF.kt */
    public static final class f extends o implements l<Bundle, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.c f19464h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(nc.c cVar) {
            super(1);
            this.f19464h = cVar;
        }

        @Override // qd.l
        public final fd.o invoke(Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle2 != null) {
                nc.c cVar = this.f19464h;
                String string = bundle2.getString("param_result_outgoing_key");
                Boolean boolValueOf = string == null || yd.o.b0(string) ? null : Boolean.valueOf(new JSONObject(string).optBoolean("success", false));
                String string2 = bundle2.getString("extra_error_outgoing_key");
                if (boolValueOf != null) {
                    cVar.j(boolValueOf);
                } else {
                    if (string2 == null) {
                        string2 = "No message response came";
                    }
                    cVar.k(new Exception(string2));
                }
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: AdaptKitCoreRF.kt */
    public static final class g extends o implements l<Bundle, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.c f19465h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public g(nc.c cVar) {
            super(1);
            this.f19465h = cVar;
        }

        @Override // qd.l
        public final fd.o invoke(Bundle bundle) {
            Bundle bundle2 = bundle;
            if (bundle2 != null) {
                nc.c cVar = this.f19465h;
                String string = bundle2.getString("param_result_outgoing_key");
                Boolean boolValueOf = string == null || yd.o.b0(string) ? null : Boolean.valueOf(new JSONObject(string).optBoolean("success"));
                String string2 = bundle2.getString("extra_error_outgoing_key");
                if (boolValueOf != null) {
                    cVar.j(boolValueOf);
                } else {
                    if (string2 == null) {
                        string2 = "No message response came";
                    }
                    cVar.k(new Exception(string2));
                }
            }
            return fd.o.f7408a;
        }
    }

    public a(Context context, String str, String str2, String str3, String str4) {
        h.j(str, "pairId");
        h.j(str2, "deviceId");
        h.j(str3, "applicationId");
        h.j(str4, "receiverActionToken");
        this.f19453h = context;
        this.f19454i = str;
        this.f19455j = str2;
        this.f19456k = str4;
        this.f19457l = new C0337a();
        this.f19458m = yd.o.Y(str2, "l", true) ? u1.LEFT : u1.RIGHT;
        this.f19459n = xa.b.f18116a;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final hc.a A(nc.d<Boolean, oc.b, fd.o> dVar) {
        h.j(dVar, "request");
        ((h0) dVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
        return this.f19457l;
    }

    @Override // hc.l0
    public final void B(nc.a<Boolean> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void C(nc.a<Boolean> aVar) {
        h.j(aVar, "request");
        this.f19459n.c(this.f19453h, this.f19455j, this.f19456k, new za.b(ia.a.b.f8975a, this), new e(aVar));
    }

    @Override // hc.l0
    public final void D(nc.a<q> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void E(nc.a<Boolean> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void F(nc.c<b0, a0> cVar) {
        h.j(cVar, "request");
        cVar.k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void G(BluetoothGatt bluetoothGatt) {
        h.j(bluetoothGatt, "gatt");
    }

    @Override // hc.l0
    public final void H(int i10) {
    }

    @Override // hc.l0
    public final void I(nc.c<mc.h, byte[]> cVar) {
        ((ic.l) cVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void J(nc.a<mc.b> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void K(nc.a<Boolean> aVar) {
        aVar.k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void L(nc.c<Boolean, Integer> cVar) {
        h.j(cVar, "request");
        this.f19459n.c(this.f19453h, this.f19455j, this.f19456k, new za.c(ia.a.d.f8977a, this, cVar), new g(cVar));
    }

    @Override // hc.l0
    public final void M(nc.a<List<b0>> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void N(nc.a<g0> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void O() {
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void P(nc.c<String, n0> cVar) {
        h.j(cVar, "request");
        ((h0) cVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void Q(nc.a<Boolean> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void R(byte[] bArr) {
    }

    @Override // hc.l0
    public final void S(nc.a<Boolean> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void T(nc.a<Integer> aVar) {
        h.j(aVar, "request");
        this.f19459n.c(this.f19453h, this.f19455j, this.f19456k, new za.b(ia.a.c.f8976a, this), new d(aVar));
    }

    @Override // hc.l0
    public final void U(nc.c<Boolean, oc.d> cVar) {
        h.j(cVar, "request");
        this.f19459n.c(this.f19453h, this.f19455j, this.f19456k, new za.c(ia.a.f.f8979a, this, cVar), new f(cVar));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void V(nc.c<mc.o, List<n>> cVar) {
        h.j(cVar, "request");
        ((h0) cVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void W(boolean z10, nc.a<j0> aVar) {
    }

    @Override // hc.l0
    public final void X(nc.c<String, Integer> cVar) {
        ((rc.e) cVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final mc.e a() {
        return new mc.e("1.1.0");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void b(nc.c<Boolean, Integer> cVar) {
        h.j(cVar, "request");
        ((h0) cVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void c(byte[] bArr) {
    }

    @Override // hc.l0
    public final void d(nc.a<Boolean> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void e(nc.a<String> aVar) {
        ((k) aVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void f(nc.c<Boolean, Long> cVar) {
        new IllegalStateException("This functionality is not present for a remote connection.  Connect locally.");
        ((j) cVar).a();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final hc.a g(nc.d<Boolean, byte[], fd.o> dVar) {
        h.j(dVar, "request");
        ((h0) dVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
        return this.f19457l;
    }

    @Override // hc.l0
    public final void h(nc.a<e0> aVar) {
        h.j(aVar, "request");
        this.f19459n.c(this.f19453h, this.f19455j, this.f19456k, new za.b(ia.a.e.f8978a, this), new c(aVar));
    }

    @Override // hc.l0
    public final void i(nc.a<Boolean> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void j(nc.a<mc.f> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void k(nc.c<Boolean, Integer> cVar) {
        h.j(cVar, "request");
        ((h0) cVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void l(nc.a<a0> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void m(nc.a<Boolean> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void n() {
    }

    @Override // hc.l0
    public final void o() {
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        h.j(context, "context");
        h.j(intent, "intent");
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void p(nc.c<Boolean, Boolean> cVar) {
        h.j(cVar, "request");
        ((h0) cVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void q(nc.a<mc.j> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void r(nc.c<mc.k, Integer> cVar) {
        h.j(cVar, "request");
        ((h0) cVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void s(nc.a<Boolean> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void t(nc.a<Integer> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void u(nc.c<Boolean, oc.e> cVar) {
        h.j(cVar, "request");
        ((h0) cVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void v(nc.a<mc.a> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void w(nc.a<mc.c> aVar) {
        h.j(aVar, "request");
        this.f19459n.c(this.f19453h, this.f19455j, this.f19456k, new za.b(ia.a.C0174a.f8974a, this), new b(aVar));
    }

    @Override // hc.l0
    public final hc.a x(int i10, int i11, int i12, nc.b<Boolean, byte[]> bVar) {
        ((w) bVar).k(new IllegalStateException("This functionality is not present for a remote connection.  Connect locally."));
        return this.f19457l;
    }

    @Override // hc.l0
    public final void y(nc.a<String> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }

    @Override // hc.l0
    public final void z(nc.a<List<n>> aVar) {
        ((h0) aVar).k(m.e(aVar, "request", "This functionality is not present for a remote connection.  Connect locally."));
    }
}
