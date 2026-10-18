package hc;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothGattService;
import android.content.IntentFilter;
import com.newrelic.agent.android.crash.CrashSender;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.CompletableFuture;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.zip.CRC32;
import javax.crypto.Cipher;
import javax.crypto.interfaces.DHPublicKey;
import javax.crypto.spec.DHParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class l implements l0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f8547h;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final hc.e f8550k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public BluetoothGatt f8551l;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public k0 f8554o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final ExecutorService f8555p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final ExecutorService f8556q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final AtomicBoolean f8557r;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f8548i = false;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public mc.e f8549j = new mc.e("1.1.0");

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final AtomicBoolean f8552m = new AtomicBoolean(false);

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final AtomicBoolean f8553n = new AtomicBoolean(false);

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class a extends pc.c<byte[]> {
        public a(nc.c<byte[], String> cVar) {
            super(cVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            byte[] bArr = (byte[]) obj;
            if (bArr != null) {
                return bArr;
            }
            throw new IllegalStateException("Byte Array Required");
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class a0 implements rc.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ rd.u f8558a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f8559b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8560c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8561d;

        public a0(rd.u uVar, l lVar, nc.d<Boolean, byte[], fd.o> dVar, nc.d<Boolean, byte[], fd.o> dVar2) {
            this.f8558a = uVar;
            this.f8559b = lVar;
            this.f8560c = dVar;
            this.f8561d = dVar2;
        }

        @Override // rc.c
        public final void a(boolean z10) {
            this.f8558a.f14793h = !z10;
            hc.g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c(" for device ");
            sbC.append(this.f8559b.f8547h);
            sbC.append(" isGoldSlotFixNeeded is ");
            sbC.append(this.f8558a.f14793h);
            sbC.append(SafeJsonPrimitive.NULL_CHAR);
            g0VarQ.c(sbC.toString(), null, true, "TRANSFER_FIRMWARE");
            this.f8559b.a0(this.f8560c, this.f8561d, false);
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class b extends pc.c<mc.c> {
        public b(nc.a<mc.c> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) throws m7.z {
            byte[] bArr = (byte[]) obj;
            int i10 = 5;
            if (bArr == null) {
                return new mc.c(-1, 5);
            }
            gc.l lVarA = gc.l.A(bArr);
            int iY = lVarA.y();
            int iOrdinal = lVarA.z().ordinal();
            if (iOrdinal == 0) {
                i10 = 1;
            } else if (iOrdinal == 1) {
                i10 = 2;
            } else if (iOrdinal == 2) {
                i10 = 3;
            } else if (iOrdinal == 3) {
                i10 = 4;
            } else if (iOrdinal != 4) {
                throw new j2.a();
            }
            return new mc.c(iY, i10);
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class b0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8562h;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b0(nc.d<Boolean, byte[], fd.o> dVar) {
            super(0);
            this.f8562h = dVar;
        }

        @Override // qd.a
        public final fd.o invoke() {
            nc.d<Boolean, byte[], fd.o> dVar = this.f8562h;
            fd.o oVar = fd.o.f7408a;
            dVar.b(oVar);
            return oVar;
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class c extends pc.c<mc.a0> {
        public c(nc.a<mc.a0> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            try {
                return new mc.a0(fc.z.C((byte[]) obj).A());
            } catch (m7.z unused) {
                return new mc.a0(0);
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class c0 extends rd.o implements qd.p<Float, Float, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8563h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ l f8564i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c0(nc.d<Boolean, byte[], fd.o> dVar, l lVar) {
            super(2);
            this.f8563h = dVar;
            this.f8564i = lVar;
        }

        @Override // qd.p
        public final fd.o invoke(Float f10, Float f11) {
            float fFloatValue = f10.floatValue();
            float fFloatValue2 = f11.floatValue();
            float f12 = fFloatValue + fFloatValue2;
            float f13 = fFloatValue2 * 2;
            this.f8563h.i(f12, f13);
            hc.g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c(" Firmware Transfer progress ");
            sbC.append(this.f8564i.f8547h);
            sbC.append(": ");
            sbC.append(f12);
            sbC.append(" , ");
            sbC.append(f13);
            sbC.append(SafeJsonPrimitive.NULL_CHAR);
            g0VarQ.c(sbC.toString(), null, false, "TRANSFERFIRMWARE_PROGRESS");
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class d extends pc.c<mc.a> {
        public d(nc.a<mc.a> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            byte[] bArr = (byte[]) obj;
            mc.a aVar = mc.a.ACTIVITY_UNKNOWN;
            if (bArr != null) {
                try {
                    int iY = fc.a.z(bArr).y();
                    if (iY == 1) {
                        aVar = mc.a.ACTIVITY_IDLE;
                    } else if (iY == 2) {
                        aVar = mc.a.ACTIVITY_WALK;
                    } else if (iY == 3) {
                        aVar = mc.a.ACTIVITY_JOG;
                    } else if (iY == 4) {
                        aVar = mc.a.ACTIVITY_RUN;
                    } else if (iY == 5) {
                        aVar = mc.a.ACTIVITY_SPRINT;
                    }
                } catch (m7.z unused) {
                }
            }
            return aVar;
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class d0 extends rd.o implements qd.a<fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ rd.u f8565h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ l f8566i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8567j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8568k;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public d0(rd.u uVar, l lVar, nc.d<Boolean, byte[], fd.o> dVar, nc.d<Boolean, byte[], fd.o> dVar2) {
            super(0);
            this.f8565h = uVar;
            this.f8566i = lVar;
            this.f8567j = dVar;
            this.f8568k = dVar2;
        }

        @Override // qd.a
        public final fd.o invoke() {
            if (this.f8565h.f14793h) {
                hc.g0 g0VarQ = androidx.lifecycle.o.q();
                StringBuilder sbC = a0.b.c(" TRANSFER_GOLD_SLOT_START deviceId: ");
                sbC.append(this.f8566i.f8547h);
                g0VarQ.c(sbC.toString(), null, true, "CORE_RF");
                this.f8566i.a0(this.f8567j, this.f8568k, true);
                androidx.lifecycle.o.q().c(a1.f.d(a0.b.c(" Firmware Transfer "), this.f8566i.f8547h, ": Targeting GoldSlot!!!!"), null, true, "TRANSFER_FIRMWARE");
            } else {
                androidx.lifecycle.o.q().c(a1.f.d(a0.b.c(" Firmware Transfer "), this.f8566i.f8547h, ": complete"), null, true, "TRANSFER_FIRMWARE");
                this.f8568k.b(fd.o.f7408a);
            }
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class e extends pc.c<mc.b> {
        public e(nc.a<mc.b> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            byte[] bArr = (byte[]) obj;
            mc.b bVar = mc.b.DISABLED;
            if (bArr == null) {
                return bVar;
            }
            try {
                return fc.d.z(bArr).y() == 0 ? bVar : mc.b.ENABLED;
            } catch (m7.z unused) {
                return bVar;
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class e0 extends rd.o implements qd.p<Float, Float, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ rd.u f8569h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8570i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ l f8571j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public e0(rd.u uVar, nc.d<Boolean, byte[], fd.o> dVar, l lVar) {
            super(2);
            this.f8569h = uVar;
            this.f8570i = dVar;
            this.f8571j = lVar;
        }

        @Override // qd.p
        public final fd.o invoke(Float f10, Float f11) {
            float fFloatValue = f10.floatValue();
            float fFloatValue2 = f11.floatValue();
            if (this.f8569h.f14793h) {
                fFloatValue2 *= 2;
            }
            this.f8570i.i(fFloatValue, fFloatValue2);
            hc.g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c(" Firmware Transfer progress ");
            sbC.append(this.f8571j.f8547h);
            sbC.append(": ");
            sbC.append(fFloatValue);
            sbC.append(" , ");
            sbC.append(fFloatValue2);
            sbC.append(SafeJsonPrimitive.NULL_CHAR);
            g0VarQ.c(sbC.toString(), null, false, "TRANSFERFIRMWARE_PROGRESS");
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class f extends pc.c<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ l f8572b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public f(nc.a<String> aVar, l lVar) {
            super(aVar);
            this.f8572b = lVar;
        }

        @Override // pc.c
        public final Object a(Object obj) throws m7.z {
            gc.g0 g0VarB = gc.g0.B((byte[]) obj);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(g0VarB.y());
            sb2.append('.');
            sb2.append(g0VarB.z());
            sb2.append('.');
            sb2.append(g0VarB.A());
            String string = sb2.toString();
            this.f8572b.f8549j = new mc.e(string);
            return string;
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class f0 implements hc.a {
        public f0() {
        }

        @Override // hc.a
        public final void a() {
            k0 k0Var = l.this.f8554o;
            if (k0Var != null) {
                k0Var.c(false);
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class g extends pc.c<mc.j> {
        public g(nc.a<mc.j> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            return mc.j.f11044l.a(gc.p.C((byte[]) obj));
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class g0 implements hc.a {
        public g0() {
        }

        @Override // hc.a
        public final void a() {
            k0 k0Var = l.this.f8554o;
            if (k0Var != null) {
                k0Var.c(false);
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class h extends pc.c<mc.k> {
        public h(nc.c<mc.k, Integer> cVar) {
            super(cVar);
        }

        @Override // pc.c
        public final Object a(Object obj) throws m7.z {
            int i10;
            gc.r rVarG = gc.r.G((byte[]) obj);
            StringBuilder sb2 = new StringBuilder();
            sb2.append(rVarG.C());
            sb2.append('.');
            sb2.append(rVarG.D());
            sb2.append('.');
            sb2.append(rVarG.E());
            String string = sb2.toString();
            switch (rVarG.F().ordinal()) {
                case 0:
                    i10 = 1;
                    break;
                case 1:
                    i10 = 2;
                    break;
                case 2:
                    i10 = 3;
                    break;
                case 3:
                    i10 = 4;
                    break;
                case 4:
                    i10 = 5;
                    break;
                case 5:
                    i10 = 6;
                    break;
                case 6:
                    i10 = 7;
                    break;
                case 7:
                    i10 = 8;
                    break;
                case 8:
                    i10 = 9;
                    break;
                case 9:
                    i10 = 10;
                    break;
                default:
                    throw new j2.a();
            }
            return new mc.k(string, i10, rVarG.y(), rVarG.z(), rVarG.A(), rVarG.B(), rVarG.E());
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class h0 implements lc.a<Boolean, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, oc.b, fd.o> f8575h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ l f8576i;

        public h0(nc.d<Boolean, oc.b, fd.o> dVar, l lVar) {
            this.f8575h = dVar;
            this.f8576i = lVar;
        }

        @Override // lc.a
        public final void b(fd.o oVar) {
            fd.o oVar2 = fd.o.f7408a;
            k0 k0Var = this.f8576i.f8554o;
            if (k0Var != null) {
                k0Var.e();
            }
            this.f8576i.f8554o = null;
            this.f8575h.b(oVar2);
        }

        @Override // lc.a
        public final void g() {
            this.f8575h.g();
        }

        @Override // lc.a
        public final void i(float f10, float f11) {
            this.f8575h.i(f10, f11);
        }

        @Override // lc.b
        public final void j(Object obj) {
            this.f8575h.j(Boolean.valueOf(((Boolean) obj).booleanValue()));
        }

        @Override // lc.b
        public final void k(Throwable th) {
            p4.h.j(th, "throwable");
            k0 k0Var = this.f8576i.f8554o;
            if (k0Var != null) {
                k0Var.e();
            }
            this.f8576i.f8554o = null;
            this.f8575h.k(th);
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class i extends pc.c<String> {

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ nc.c<String, Integer> f8577b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final /* synthetic */ l f8578c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public i(nc.c<String, Integer> cVar, l lVar) {
            super(cVar);
            this.f8577b = cVar;
            this.f8578c = lVar;
        }

        @Override // pc.c
        public final Object a(Object obj) throws m7.z, kc.e {
            gc.r rVarG = gc.r.G((byte[]) obj);
            nc.c<String, Integer> cVar = this.f8577b;
            l lVar = this.f8578c;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(rVarG.C());
            sb2.append('.');
            sb2.append(rVarG.D());
            sb2.append('.');
            sb2.append(rVarG.E());
            String string = sb2.toString();
            hc.g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("FirmwareImageStats parsed stats slotId: ");
            sbC.append(cVar.getValue().intValue());
            sbC.append(" deviceId: ");
            a1.d.g(sbC, lVar.f8547h, " version: ", string, " status: ");
            sbC.append(rVarG.F());
            hc.g0.a.a(g0VarQ, sbC.toString(), null, true, null, 10, null);
            if (rVarG.F() == gc.r.b.FW_IMG_READY || rVarG.F() == gc.r.b.FW_IMG_CURRENT) {
                return string;
            }
            throw new kc.e(null, 1, null);
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class j extends pc.c<List<? extends mc.n>> {
        public j(nc.a<List<mc.n>> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            mc.m mVar;
            byte[] bArr = (byte[]) obj;
            mc.l lVar = mc.l.ACTION_UNKNOWN;
            mc.m mVar2 = mc.m.CLASSIFICATION_UNKNOWN;
            if (bArr == null) {
                return androidx.lifecycle.o.e(new mc.n(mVar2, lVar));
            }
            try {
                fc.c cVarB = fc.c.B(bArr);
                ArrayList arrayList = new ArrayList();
                for (fc.e eVar : cVarB.z()) {
                    int iD = eVar.D();
                    if (iD == 1) {
                        mVar = mc.m.CLASSIFICATION_NONE;
                    } else if (iD != 2) {
                        mVar = iD != 3 ? mVar2 : mc.m.CLASSIFICATION_DOUBLETAP_TRAINING;
                    } else {
                        mVar = mc.m.CLASSIFICATION_DOUBLETAP;
                    }
                    int iB = eVar.B();
                    arrayList.add(new mc.n(mVar, iB != 1 ? iB != 2 ? lVar : mc.l.ACTION_UNLACE : mc.l.ACTION_NONE));
                }
                return arrayList;
            } catch (m7.z unused) {
                return androidx.lifecycle.o.e(new mc.n(mVar2, lVar));
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class k extends pc.c<mc.q> {
        public k(nc.a<mc.q> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            byte[] bArr = (byte[]) obj;
            if (bArr == null) {
                return new mc.q(0, 0);
            }
            try {
                fc.g gVarA = fc.g.A(bArr);
                return new mc.q(gVarA.z(), gVarA.y());
            } catch (m7.z unused) {
                return new mc.q(0, 0);
            }
        }
    }

    /* JADX INFO: renamed from: hc.l$l, reason: collision with other inner class name */
    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class C0167l extends pc.c<mc.e0> {
        public C0167l(nc.a<mc.e0> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            try {
                gc.b0 b0VarH = gc.b0.H((byte[]) obj);
                return new mc.e0(b0VarH.F(), b0VarH.E(), b0VarH.C(), b0VarH.D().a());
            } catch (m7.z unused) {
                return new mc.e0(8);
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class m extends pc.c<mc.e0> {
        public m(nc.a<mc.e0> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            try {
                gc.i iVarG = gc.i.G((byte[]) obj);
                return new mc.e0(iVarG.E() / 256, iVarG.D() / 256, iVarG.C() / 256, 4);
            } catch (m7.z unused) {
                return new mc.e0(8);
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class n extends pc.c<String> {
        public n(nc.a<String> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            try {
                m7.i iVarY = gc.v.z((byte[]) obj).y();
                String strS = iVarY.size() == 0 ? "" : iVarY.s(Charset.forName("UTF-8"));
                p4.h.i(strS, "{\n                      …                        }");
                return strS;
            } catch (m7.z unused) {
                return "unknown";
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class o extends pc.c<Integer> {
        public o(nc.a<Integer> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            gc.y yVarH;
            try {
                yVarH = gc.y.B((byte[]) obj);
            } catch (m7.z unused) {
                gc.y.a aVarA = gc.y.A();
                aVarA.m(0);
                yVarH = aVarA.h();
            }
            return Integer.valueOf(yVarH.z());
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class p extends pc.c<Integer> {
        public p(nc.a<Integer> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            try {
                return Integer.valueOf(gc.y.B((byte[]) obj).z());
            } catch (m7.z unused) {
                return 0;
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class q extends pc.c<String> {
        public q(nc.c<String, n0> cVar) {
            super(cVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            String strZ = gc.u.B((byte[]) obj).z();
            p4.h.i(strZ, "parseFrom(response).serialNumber");
            return strZ;
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class r extends pc.c<mc.b0> {
        public r(nc.c<mc.b0, mc.a0> cVar) {
            super(cVar);
        }

        @Override // pc.c
        public final Object a(Object obj) throws m7.z {
            fc.a0 a0VarD = fc.a0.D((byte[]) obj);
            mc.a0 a0Var = new mc.a0(a0VarD.z().A());
            long jC = a0VarD.C();
            int iA = a0VarD.A();
            int iY = a0VarD.y();
            int iA2 = a0VarD.B().a();
            int i10 = 2;
            if (iA2 != 1) {
                if (iA2 != 2) {
                    i10 = iA2 != 3 ? 1 : 4;
                } else {
                    i10 = 3;
                }
            }
            return new mc.b0(a0Var, jC, iA, iY, i10);
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class s extends pc.c<mc.f> {
        public s(nc.a<mc.f> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) throws m7.z {
            gc.h0 h0VarH = gc.h0.H((byte[]) obj);
            return new mc.f(new mc.d(h0VarH.z().y(), h0VarH.z().z(), h0VarH.z().A(), h0VarH.z().B(), h0VarH.z().D(), h0VarH.z().E(), h0VarH.z().F(), h0VarH.z().G(), h0VarH.z().H()), new mc.g(h0VarH.A().z(), h0VarH.A().A()), new mc.i(h0VarH.B().z(), h0VarH.B().A(), h0VarH.B().B(), h0VarH.B().C(), h0VarH.B().D(), h0VarH.B().E(), h0VarH.B().F(), h0VarH.B().G(), h0VarH.B().H()), new mc.u(h0VarH.D().y(), h0VarH.D().z(), h0VarH.D().A(), h0VarH.D().C(), h0VarH.D().D(), h0VarH.D().E(), h0VarH.D().F(), h0VarH.D().G(), h0VarH.D().H()), new mc.f0(h0VarH.E().z(), h0VarH.E().A(), h0VarH.E().B(), h0VarH.E().C()), new mc.i0(h0VarH.F().y(), h0VarH.F().z(), h0VarH.F().A(), h0VarH.F().B()), new mc.q(h0VarH.C().A(), h0VarH.C().z()));
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class t extends pc.c<mc.g0> {
        public t(nc.a<mc.g0> aVar) {
            super(aVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            return mc.g0.f11024m.a(gc.j0.C((byte[]) obj));
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class u implements lc.b<Boolean> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ k0 f8579h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8580i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ l f8581j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ boolean f8582k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public final /* synthetic */ nc.d<Boolean, byte[], fd.o> f8583l;

        public u(k0 k0Var, nc.d<Boolean, byte[], fd.o> dVar, l lVar, boolean z10, nc.d<Boolean, byte[], fd.o> dVar2) {
            this.f8579h = k0Var;
            this.f8580i = dVar;
            this.f8581j = lVar;
            this.f8582k = z10;
            this.f8583l = dVar2;
        }

        @Override // lc.b
        public final void j(Boolean bool) {
            if (bool.booleanValue()) {
                this.f8579h.b(this.f8580i.getValue());
                hc.g0 g0VarQ = androidx.lifecycle.o.q();
                StringBuilder sbC = a0.b.c(" Firmware  Transfer ");
                sbC.append(this.f8581j.f8547h);
                sbC.append(": targetGoldSlot = ");
                sbC.append(this.f8582k);
                sbC.append(SafeJsonPrimitive.NULL_CHAR);
                g0VarQ.c(sbC.toString(), null, true, "TRANSFER_FIRMWARE");
                this.f8581j.f8554o = this.f8579h;
            }
        }

        @Override // lc.b
        public final void k(Throwable th) {
            p4.h.j(th, "throwable");
            this.f8583l.k(new Throwable("Unable to set the proper slot before transfer"));
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class v implements nc.b<Boolean, fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ nc.b<Boolean, byte[]> f8585i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ rd.w<k0> f8586j;

        public v(nc.b<Boolean, byte[]> bVar, rd.w<k0> wVar) {
            this.f8585i = bVar;
            this.f8586j = wVar;
        }

        @Override // lc.a
        public final void b(Object obj) {
            hc.g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("ReceiveFile onComplete() ");
            sbC.append(l.this.f8547h);
            sbC.append(" agent Present =  ");
            sbC.append(this.f8586j.f14795h != null);
            hc.g0.a.a(g0VarQ, sbC.toString(), null, false, null, 14, null);
            k0 k0Var = this.f8586j.f14795h;
            fd.o oVar = null;
            if (k0Var != null) {
                l lVar = l.this;
                nc.b<Boolean, byte[]> bVar = this.f8585i;
                byte[] byteArray = k0Var.A.toByteArray();
                k0Var.c(false);
                k0Var.e();
                lVar.f8554o = null;
                p4.h.i(byteArray, "payload");
                bVar.b(byteArray);
                oVar = fd.o.f7408a;
            }
            if (oVar == null) {
                this.f8585i.k(new Throwable("No Transfer Existed"));
            }
        }

        @Override // lc.a
        public final void g() {
            hc.g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("ReceiveFile onStart() ");
            sbC.append(l.this.f8547h);
            hc.g0.a.a(g0VarQ, sbC.toString(), null, false, null, 14, null);
            this.f8585i.g();
        }

        @Override // lc.a
        public final void i(float f10, float f11) {
            hc.g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("ReceiveFile onProgress() ");
            sbC.append(l.this.f8547h);
            sbC.append(" currentValue: ");
            sbC.append(f10);
            sbC.append(" totalValue: ");
            sbC.append(f11);
            hc.g0.a.a(g0VarQ, sbC.toString(), null, false, null, 14, null);
            this.f8585i.i(f10, f11);
        }

        @Override // lc.b
        public final void j(Object obj) {
            boolean zBooleanValue = ((Boolean) obj).booleanValue();
            hc.g0.a.a(androidx.lifecycle.o.q(), a1.f.d(a0.b.c("ReceiveFile response() "), l.this.f8547h, "  THIS SHOULD NOT BE INVOKED"), null, false, null, 14, null);
            this.f8585i.j(Boolean.valueOf(zBooleanValue));
        }

        @Override // lc.b
        public final void k(Throwable th) {
            p4.h.j(th, "throwable");
            hc.g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("ReceiveFile error() ");
            sbC.append(l.this.f8547h);
            hc.g0.a.a(g0VarQ, sbC.toString(), null, false, null, 14, null);
            k0 k0Var = this.f8586j.f14795h;
            if (k0Var != null) {
                k0Var.e();
            }
            l.this.f8554o = null;
            this.f8585i.k(th);
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class w implements hc.a {
        public w() {
        }

        @Override // hc.a
        public final void a() {
            k0 k0Var = l.this.f8554o;
            if (k0Var != null) {
                k0Var.c(false);
            }
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class x extends pc.c<mc.o> {
        public x(nc.c<mc.o, List<mc.n>> cVar) {
            super(cVar);
        }

        @Override // pc.c
        public final Object a(Object obj) {
            int iOrdinal;
            mc.o oVar;
            byte[] bArr = (byte[]) obj;
            mc.o oVar2 = mc.o.UNKNOWN;
            if (bArr == null || (iOrdinal = fc.j.z(bArr).y().ordinal()) == 0) {
                return oVar2;
            }
            if (iOrdinal == 1) {
                oVar = mc.o.CRITICAL_BATTERY;
            } else if (iOrdinal == 2) {
                oVar = mc.o.ACTIVE_SESSION;
            } else {
                if (iOrdinal != 3) {
                    if (iOrdinal == 4) {
                        return oVar2;
                    }
                    throw new j2.a();
                }
                oVar = mc.o.CONFIG_SET;
            }
            return oVar;
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class y implements nc.c<byte[], String> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.a<Boolean> f8588h;

        public y(nc.a<Boolean> aVar) {
            this.f8588h = aVar;
        }

        @Override // nc.c
        public final /* bridge */ /* synthetic */ String getValue() {
            return "fw system_reset";
        }

        @Override // lc.b
        public final void j(Object obj) {
            p4.h.j((byte[]) obj, "response");
            this.f8588h.j(Boolean.TRUE);
        }

        @Override // lc.b
        public final void k(Throwable th) {
            p4.h.j(th, "throwable");
            this.f8588h.k(th);
        }
    }

    /* JADX INFO: compiled from: CoreRFBigfoot.kt */
    public static final class z implements nc.a<mc.c> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ nc.a f8589h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ l f8590i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final /* synthetic */ nc.d f8591j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public final /* synthetic */ rd.u f8592k;

        public z(nc.a aVar, l lVar, nc.d dVar, rd.u uVar) {
            this.f8589h = aVar;
            this.f8590i = lVar;
            this.f8591j = dVar;
            this.f8592k = uVar;
        }

        @Override // lc.b
        public final void j(Object obj) {
            mc.c cVar = (mc.c) obj;
            p4.h.j(cVar, "response");
            if (cVar.f10977h < 20) {
                this.f8589h.k(new Throwable("Battery level less than 20"));
                return;
            }
            l lVar = this.f8590i;
            nc.d dVar = this.f8591j;
            b0 b0Var = new b0(dVar);
            c0 c0Var = new c0(this.f8591j, this.f8590i);
            Objects.requireNonNull(lVar);
            hc.p pVar = new hc.p(dVar, lVar, true, c0Var, b0Var);
            l lVar2 = this.f8590i;
            nc.d dVar2 = this.f8591j;
            d0 d0Var = new d0(this.f8592k, lVar2, pVar, dVar2);
            e0 e0Var = new e0(this.f8592k, this.f8591j, this.f8590i);
            Objects.requireNonNull(lVar2);
            hc.p pVar2 = new hc.p(dVar2, lVar2, false, e0Var, d0Var);
            l lVar3 = this.f8590i;
            String str = lVar3.f8547h;
            a0 a0Var = new a0(this.f8592k, lVar3, pVar2, this.f8591j);
            p4.h.j(str, "deviceId");
            lVar3.X(new rc.e(str, rc.b.MCU_IMAGE_GOLD, new rc.f(str, lVar3, a0Var)));
        }

        @Override // lc.b
        public final void k(Throwable th) {
            p4.h.j(th, "throwable");
            this.f8589h.k(th);
        }
    }

    public l(String str) {
        this.f8547h = str;
        this.f8550k = new hc.e(str);
        ExecutorService executorServiceNewSingleThreadExecutor = Executors.newSingleThreadExecutor(new m5.f0(this, 1));
        p4.h.i(executorServiceNewSingleThreadExecutor, "newSingleThreadExecutor …nnable.run() })\n        }");
        this.f8555p = executorServiceNewSingleThreadExecutor;
        ExecutorService executorServiceNewSingleThreadExecutor2 = Executors.newSingleThreadExecutor(new ThreadFactory() { // from class: hc.k
            @Override // java.util.concurrent.ThreadFactory
            public final Thread newThread(Runnable runnable) {
                l lVar = this.f8520a;
                p4.h.j(lVar, "this$0");
                return androidx.lifecycle.m0.d("writeDescriptor-" + lVar.f8547h, 10, new c0(runnable), 6);
            }
        });
        p4.h.i(executorServiceNewSingleThreadExecutor2, "newSingleThreadExecutor …nnable.run() })\n        }");
        this.f8556q = executorServiceNewSingleThreadExecutor2;
        this.f8557r = new AtomicBoolean(false);
    }

    public static final Exception Y(l lVar, String str, mc.e eVar, mc.e eVar2) {
        Objects.requireNonNull(lVar);
        f8.b bVarA = ic.g.f9016b.a(str);
        if (!((bVarA instanceof ic.u) || (bVarA instanceof ic.b))) {
            hc.g0.a.b(androidx.lifecycle.o.q(), "NOT READY FOR REQUESTS", new Exception("Not ready for requests"), false, null, 12, null);
            return new kc.b(null, 1, null);
        }
        if (lVar.f8549j.compareTo(eVar) < 0) {
            kc.a aVar = new kc.a(lVar.f8549j, eVar);
            hc.g0.a.b(androidx.lifecycle.o.q(), aVar.f9784h, aVar, false, null, 12, null);
            return new kc.a(lVar.f8549j, eVar);
        }
        if (lVar.f8549j.compareTo(eVar2) <= 0) {
            return null;
        }
        kc.d dVar = new kc.d(lVar.f8549j, eVar2);
        hc.g0.a.b(androidx.lifecycle.o.q(), dVar.f9794h, dVar, false, null, 12, null);
        return new kc.d(lVar.f8549j, eVar2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final hc.a A(nc.d<Boolean, oc.b, fd.o> dVar) {
        byte[] bArrCopyOf;
        byte[] bArrCopyOf2;
        p4.h.j(dVar, "request");
        oc.b bVar = (oc.b) ((ya.j) dVar).getValue();
        byte[] bArr = new byte[0];
        byte[] bArrCopyOf3 = Arrays.copyOf(new byte[0], 1);
        bArrCopyOf3[0] = -34;
        int length = bArrCopyOf3.length;
        byte[] bArrCopyOf4 = Arrays.copyOf(bArrCopyOf3, length + 1);
        bArrCopyOf4[length] = -6;
        byte b10 = (byte) bVar.f12541a;
        int length2 = bArrCopyOf4.length;
        byte[] bArrCopyOf5 = Arrays.copyOf(bArrCopyOf4, length2 + 1);
        bArrCopyOf5[length2] = b10;
        byte b11 = (byte) (bVar.f12541a >> 8);
        int length3 = bArrCopyOf5.length;
        byte[] bArrCopyOf6 = Arrays.copyOf(bArrCopyOf5, length3 + 1);
        bArrCopyOf6[length3] = b11;
        byte b12 = (byte) bVar.f12542b;
        int length4 = bArrCopyOf6.length;
        byte[] bArrCopyOf7 = Arrays.copyOf(bArrCopyOf6, length4 + 1);
        bArrCopyOf7[length4] = b12;
        byte b13 = (byte) (bVar.f12542b >> 8);
        int length5 = bArrCopyOf7.length;
        byte[] bArrCopyOf8 = Arrays.copyOf(bArrCopyOf7, length5 + 1);
        bArrCopyOf8[length5] = b13;
        if (bVar.f12543c) {
            int length6 = bArrCopyOf8.length;
            bArrCopyOf = Arrays.copyOf(bArrCopyOf8, length6 + 1);
            bArrCopyOf[length6] = 1;
        } else {
            int length7 = bArrCopyOf8.length;
            bArrCopyOf = Arrays.copyOf(bArrCopyOf8, length7 + 1);
            bArrCopyOf[length7] = 0;
        }
        if (bVar.f12544d) {
            int length8 = bArrCopyOf.length;
            bArrCopyOf2 = Arrays.copyOf(bArrCopyOf, length8 + 1);
            bArrCopyOf2[length8] = 1;
        } else {
            int length9 = bArrCopyOf.length;
            bArrCopyOf2 = Arrays.copyOf(bArrCopyOf, length9 + 1);
            bArrCopyOf2[length9] = 0;
        }
        byte b14 = (byte) bVar.f12545e;
        int length10 = bArrCopyOf2.length;
        byte[] bArrCopyOf9 = Arrays.copyOf(bArrCopyOf2, length10 + 1);
        bArrCopyOf9[length10] = b14;
        byte b15 = (byte) (bVar.f12545e >> 8);
        int length11 = bArrCopyOf9.length;
        byte[] bArrCopyOf10 = Arrays.copyOf(bArrCopyOf9, length11 + 1);
        bArrCopyOf10[length11] = b15;
        byte b16 = (byte) bVar.f12546f;
        int length12 = bArrCopyOf10.length;
        byte[] bArrCopyOf11 = Arrays.copyOf(bArrCopyOf10, length12 + 1);
        bArrCopyOf11[length12] = b16;
        byte b17 = (byte) (bVar.f12546f >> 8);
        int length13 = bArrCopyOf11.length;
        byte[] bArrCopyOf12 = Arrays.copyOf(bArrCopyOf11, length13 + 1);
        bArrCopyOf12[length13] = b17;
        byte b18 = (byte) bVar.f12547g;
        int length14 = bArrCopyOf12.length;
        byte[] bArrCopyOf13 = Arrays.copyOf(bArrCopyOf12, length14 + 1);
        bArrCopyOf13[length14] = b18;
        byte b19 = (byte) (bVar.f12547g >> 8);
        int length15 = bArrCopyOf13.length;
        byte[] bArrCopyOf14 = Arrays.copyOf(bArrCopyOf13, length15 + 1);
        bArrCopyOf14[length15] = b19;
        byte b20 = (byte) (bVar.f12547g >> 16);
        int length16 = bArrCopyOf14.length;
        byte[] bArrCopyOf15 = Arrays.copyOf(bArrCopyOf14, length16 + 1);
        bArrCopyOf15[length16] = b20;
        byte b21 = (byte) (bVar.f12547g >> 24);
        int length17 = bArrCopyOf15.length;
        byte[] bArrCopyOf16 = Arrays.copyOf(bArrCopyOf15, length17 + 1);
        bArrCopyOf16[length17] = b21;
        for (oc.a aVar : bVar.f12548h) {
            for (oc.c cVar : aVar.f12540b) {
                byte b22 = cVar.f12549a;
                int length18 = bArrCopyOf16.length;
                byte[] bArrCopyOf17 = Arrays.copyOf(bArrCopyOf16, length18 + 1);
                bArrCopyOf17[length18] = b22;
                byte b23 = cVar.f12550b;
                int length19 = bArrCopyOf17.length;
                byte[] bArrCopyOf18 = Arrays.copyOf(bArrCopyOf17, length19 + 1);
                bArrCopyOf18[length19] = b23;
                byte b24 = cVar.f12551c;
                int length20 = bArrCopyOf18.length;
                bArrCopyOf16 = Arrays.copyOf(bArrCopyOf18, length20 + 1);
                bArrCopyOf16[length20] = b24;
            }
            byte b25 = (byte) aVar.f12539a;
            int length21 = bArrCopyOf16.length;
            byte[] bArrCopyOf19 = Arrays.copyOf(bArrCopyOf16, length21 + 1);
            bArrCopyOf19[length21] = b25;
            byte b26 = (byte) (aVar.f12539a >> 8);
            int length22 = bArrCopyOf19.length;
            bArrCopyOf16 = Arrays.copyOf(bArrCopyOf19, length22 + 1);
            bArrCopyOf16[length22] = b26;
        }
        CRC32 crc32 = new CRC32();
        crc32.update(bArrCopyOf16);
        gc.c.a aVarH = gc.c.H();
        int value = (int) (crc32.getValue() & 4294967295L);
        aVarH.k();
        gc.c.y((gc.c) aVarH.f10785i, value);
        aVarH.k();
        gc.c.x((gc.c) aVarH.f10785i);
        int length23 = bArrCopyOf16.length;
        aVarH.k();
        gc.c.z((gc.c) aVarH.f10785i, length23);
        aVarH.k();
        gc.c.A((gc.c) aVarH.f10785i);
        aVarH.k();
        gc.c.B((gc.c) aVarH.f10785i);
        gc.c cVarH = aVarH.h();
        gc.a.C0158a c0158aD = gc.a.D();
        c0158aD.k();
        gc.a.x((gc.a) c0158aD.f10785i, cVarH);
        gc.a aVarH2 = c0158aD.h();
        byte[] bArrCopyOf20 = Arrays.copyOf(bArr, 1);
        bArrCopyOf20[0] = -66;
        int length24 = bArrCopyOf20.length;
        byte[] bArrCopyOf21 = Arrays.copyOf(bArrCopyOf20, length24 + 1);
        bArrCopyOf21[length24] = -17;
        byte length25 = (byte) aVarH2.m().length;
        int length26 = bArrCopyOf21.length;
        byte[] bArrCopyOf22 = Arrays.copyOf(bArrCopyOf21, length26 + 1);
        bArrCopyOf22[length26] = length25;
        byte length27 = (byte) (aVarH2.m().length >> 8);
        int length28 = bArrCopyOf22.length;
        byte[] bArrCopyOf23 = Arrays.copyOf(bArrCopyOf22, length28 + 1);
        bArrCopyOf23[length28] = length27;
        byte[] bArrO = gd.g.o(gd.g.o(bArrCopyOf23, aVarH2.m()), bArrCopyOf16);
        h0 h0Var = new h0(dVar, this);
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11002n, mc.e.f11005q);
        if (excY == null) {
            try {
                if (this.f8554o == null) {
                    k0 k0Var = new k0(this.f8550k, this.f8547h, new pc.a(h0Var));
                    k0Var.b(bArrO);
                    androidx.lifecycle.o.q().c("Animation Transfer " + this.f8547h, null, true, "FILE_TRANSFER");
                    this.f8554o = k0Var;
                } else {
                    h0Var.k(new Throwable("FirmwareTransferAlreadyInProgress"));
                }
            } catch (Throwable th) {
                ((ya.h0) dVar).k(th);
            }
        } else {
            ((ya.h0) dVar).k(excY);
        }
        return new g0();
    }

    @Override // hc.l0
    public final void B(nc.a<Boolean> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11000l, mc.e.f11005q);
        if (excY != null) {
            aVar.k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.USER_ANIMATION_STOP_ANIMATION;
            this.f8550k.j("Stop User Animations", new m0((byte) 237, m0.a.REQUEST, null), new pc.b(aVar));
        } catch (Throwable th) {
            aVar.k(th);
        }
    }

    @Override // hc.l0
    public final void C(nc.a<Boolean> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.IDENTIFY;
            this.f8550k.j("Identify", new m0((byte) 20, m0.a.REQUEST, null), new pc.b(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void D(nc.a<mc.q> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11004p, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SESSION_GET_GESTURE_DETECTION_COUNT;
            this.f8550k.j("query gesture statistics", new m0((byte) 181, m0.a.REQUEST, null), new k(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void E(nc.a<Boolean> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.FIRMWARE_UPGRADE;
            this.f8550k.k("Upgrade Firmware", new m0((byte) 14, m0.a.REQUEST, null), new pc.b(aVar), 20000L);
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void F(nc.c<mc.b0, mc.a0> cVar) {
        p4.h.j(cVar, "request");
        String str = this.f8547h;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11001m, mc.e.f11005q);
        if (excY != null) {
            cVar.k(excY);
            return;
        }
        try {
            fc.z.a aVarB = fc.z.B();
            aVarB.m(cVar.getValue().f10968a);
            fc.z zVarH = aVarB.h();
            hc.d dVar = hc.d.SESSION_GET_INFO;
            this.f8550k.k("Get session information", new m0((byte) 154, m0.a.REQUEST, zVarH.m()), new r(cVar), 2500L);
        } catch (Throwable th) {
            cVar.k(th);
        }
    }

    @Override // hc.l0
    public final void G(BluetoothGatt bluetoothGatt) {
        p4.h.j(bluetoothGatt, "gatt");
        this.f8557r.set(false);
        this.f8553n.set(false);
        this.f8551l = bluetoothGatt;
        hc.e eVar = this.f8550k;
        eVar.g();
        p0 p0Var = new p0();
        eVar.f8462e = p0Var;
        String str = eVar.f8468k;
        p0Var.f8613a = eVar;
        p0Var.f8616d = str;
        p0Var.f8614b = null;
        eVar.n(Executors.newSingleThreadExecutor());
        eVar.f8461d = bluetoothGatt;
        eVar.f8459b = true;
        eVar.e(null, 3, "CoreRF has been initialized", null);
    }

    @Override // hc.l0
    public final void H(int i10) {
        this.f8550k.f8462e.c(true);
        this.f8550k.b("com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WRITE_COMPLETE", i10);
    }

    @Override // hc.l0
    public final void I(nc.c<mc.h, byte[]> cVar) {
        f8.b bVarA = ic.g.f9016b.a(this.f8547h);
        if (!(bVarA instanceof ic.d) && !(bVarA instanceof ic.e)) {
            ((ic.l) cVar).k(new RuntimeException("Device " + bVarA + " is not Connected and Some Auth Flow"));
            return;
        }
        final byte[] bArr = (byte[]) ((ic.l) cVar).getValue();
        if (this.f8548i) {
            byte[] bArr2 = hc.b.f8408j;
            p4.h.i(bArr2, "DEFAULT_KEY");
            cVar.j(new mc.h0(bArr2));
            return;
        }
        hc.g0 g0VarQ = androidx.lifecycle.o.q();
        StringBuilder sbC = a0.b.c("authenticate with key: ");
        sbC.append(hc.e0.c(bArr));
        hc.g0.a.a(g0VarQ, sbC.toString(), null, false, "🔑", 6, null);
        try {
            if (Arrays.equals(bArr, hc.b.f8408j)) {
                CompletableFuture completableFuture = new CompletableFuture();
                this.f8555p.submit(new r3.f(this, completableFuture, 2));
                Object obj = completableFuture.get();
                p4.h.i(obj, "completableFuture.get()");
                final int iIntValue = ((Number) obj).intValue();
                final CompletableFuture completableFuture2 = new CompletableFuture();
                this.f8555p.submit(new Runnable() { // from class: hc.f
                    @Override // java.lang.Runnable
                    public final void run() throws kc.f, TimeoutException {
                        DHParameterSpec dHParameterSpec;
                        int i10 = iIntValue;
                        l lVar = this;
                        CompletableFuture completableFuture3 = completableFuture2;
                        p4.h.j(lVar, "this$0");
                        p4.h.j(completableFuture3, "$completableFuture");
                        if (i10 == 0) {
                            dHParameterSpec = b.f8404f;
                        } else if (i10 == 1) {
                            dHParameterSpec = b.f8405g;
                        } else if (i10 != 2) {
                            dHParameterSpec = i10 != 3 ? null : b.f8407i;
                        } else {
                            dHParameterSpec = b.f8406h;
                        }
                        b bVar = new b(dHParameterSpec);
                        byte[] byteArray = ((DHPublicKey) bVar.f8410b.getPublic()).getY().toByteArray();
                        if (byteArray[0] == 0) {
                            byteArray = Arrays.copyOfRange(byteArray, 1, byteArray.length);
                        }
                        g0 g0VarQ2 = androidx.lifecycle.o.q();
                        StringBuilder sb2 = new StringBuilder();
                        sb2.append("my publicKey is ");
                        p4.h.i(byteArray, "mobilePublicKey");
                        sb2.append(e0.c(byteArray));
                        sb2.append("; length: ");
                        sb2.append(byteArray.length);
                        g0.a.a(g0VarQ2, sb2.toString(), null, false, "📞", 6, null);
                        gc.q.a aVarA = gc.q.A();
                        m7.i iVarL = m7.i.l(byteArray, 0, byteArray.length);
                        aVarA.k();
                        gc.q.x((gc.q) aVarA.f10785i, iVarL);
                        gc.q qVarH = aVarA.h();
                        d dVar = d.EXCHANGE_PUBLIC_KEY;
                        lVar.f8550k.k("Public Key Exchange", new m0((byte) 111, m0.a.REQUEST, qVarH.m()), new q(new r(lVar, completableFuture3), bVar), 33000L);
                    }
                });
                Object obj2 = completableFuture2.get();
                p4.h.i(obj2, "completableFuture.get()");
                bArr = (byte[]) obj2;
            }
            final byte[] bArr3 = new byte[16];
            new Random().nextBytes(bArr3);
            final CompletableFuture completableFuture3 = new CompletableFuture();
            this.f8555p.submit(new Runnable() { // from class: hc.i
                @Override // java.lang.Runnable
                public final void run() throws TimeoutException {
                    byte[] bArr4 = bArr3;
                    l lVar = this;
                    CompletableFuture completableFuture4 = completableFuture3;
                    p4.h.j(bArr4, "$nonce");
                    p4.h.j(lVar, "this$0");
                    p4.h.j(completableFuture4, "$completableFuture");
                    gc.e0.a aVarZ = gc.e0.z();
                    m7.i iVarL = m7.i.l(bArr4, 0, bArr4.length);
                    aVarZ.k();
                    gc.e0.x((gc.e0) aVarZ.f10785i, iVarL);
                    gc.e0 e0VarH = aVarZ.h();
                    d dVar = d.START_AUTHENTICATION;
                    lVar.f8550k.j("Start Authentication Challenge", new m0((byte) 112, m0.a.REQUEST, e0VarH.m()), new v(new w(lVar, completableFuture4)));
                }
            });
            Object obj3 = completableFuture3.get();
            p4.h.i(obj3, "completableFuture.get()");
            final byte[] bArr4 = (byte[]) obj3;
            final CompletableFuture completableFuture4 = new CompletableFuture();
            this.f8555p.submit(new Runnable() { // from class: hc.j
                @Override // java.lang.Runnable
                public final void run() throws kc.f, TimeoutException {
                    byte[] bArrDoFinal;
                    byte[] bArr5 = bArr4;
                    byte[] bArr6 = bArr;
                    CompletableFuture completableFuture5 = completableFuture4;
                    l lVar = this;
                    p4.h.j(bArr5, "$nonce");
                    p4.h.j(bArr6, "$devicePublicKeyEnc");
                    p4.h.j(completableFuture5, "$completableFuture");
                    p4.h.j(lVar, "this$0");
                    try {
                        g0 g0VarQ2 = androidx.lifecycle.o.q();
                        String str = String.format("encrypting %02x using authKey: %02x", Arrays.copyOf(new Object[]{new BigInteger(1, bArr5), new BigInteger(1, bArr6)}, 2));
                        p4.h.i(str, "format(format, *args)");
                        g0.a.a(g0VarQ2, str, null, false, "🔑", 6, null);
                        DHParameterSpec dHParameterSpec = b.f8404f;
                        Cipher cipher = Cipher.getInstance("AES/ECB/NoPadding");
                        cipher.init(1, new SecretKeySpec(bArr6, "AES"));
                        bArrDoFinal = cipher.doFinal(bArr5);
                    } catch (GeneralSecurityException e10) {
                        androidx.lifecycle.o.q().a("authenticationChallenge() encryption failure", e10, true, "Authentication");
                        completableFuture5.completeExceptionally(e10);
                        bArrDoFinal = null;
                    }
                    gc.k.a aVarZ = gc.k.z();
                    p4.h.g(bArrDoFinal);
                    m7.i iVarL = m7.i.l(bArrDoFinal, 0, bArrDoFinal.length);
                    aVarZ.k();
                    gc.k.x((gc.k) aVarZ.f10785i, iVarL);
                    gc.k kVarH = aVarZ.h();
                    d dVar = d.AUTHENTICATION_CHALLENGE;
                    lVar.f8550k.k("Authentication Challenge", new m0((byte) 113, m0.a.REQUEST, kVarH.m()), new m(new n(completableFuture5)), 8000L);
                }
            });
            Object obj4 = completableFuture4.get();
            p4.h.i(obj4, "completableFuture.get()");
            if (((Boolean) obj4).booleanValue()) {
                this.f8550k.c("com.nike.corerf.ACTION_RIPLEY_AUTHENTICATED", bArr);
                cVar.j(new mc.h0(bArr));
            } else {
                this.f8550k.a("com.nike.corerf.ACTION_RIPLEY_FAILED_AUTHENTICATION");
                cVar.j(new mc.s(null, 1, null));
            }
        } catch (Throwable th) {
            ((ic.l) cVar).k(th);
        }
    }

    @Override // hc.l0
    public final void J(nc.a<mc.b> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11003o, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SESSION_AUTOADAPT_GET_CURRENT_STATE;
            this.f8550k.j("query autoadapt enable state", new m0((byte) 173, m0.a.REQUEST, null), new e(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void K(nc.a<Boolean> aVar) {
        k0 k0Var = this.f8554o;
        if (k0Var == null) {
            aVar.j(Boolean.TRUE);
            return;
        }
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            aVar.k(excY);
            return;
        }
        try {
            k0Var.c(false);
            this.f8554o = null;
            aVar.j(Boolean.TRUE);
        } catch (Throwable th) {
            aVar.k(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void L(nc.c<Boolean, Integer> cVar) {
        p4.h.j(cVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) cVar).k(excY);
            return;
        }
        try {
            gc.y.a aVarA = gc.y.A();
            aVarA.m(((Number) ((ya.d.j0) cVar).getValue()).intValue());
            gc.y yVarH = aVarA.h();
            hc.d dVar = hc.d.SERVO_POSITION_SET;
            this.f8550k.j("Set Position", new m0((byte) 3, m0.a.REQUEST, yVarH.m()), new pc.b(cVar));
        } catch (Throwable th) {
            ((ya.h0) cVar).k(th);
        }
    }

    @Override // hc.l0
    public final void M(nc.a<List<mc.b0>> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11001m, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SESSION_GET_ID_LIST;
            this.f8550k.j("Get Session List", new m0((byte) 153, m0.a.REQUEST, null), new hc.t(new hc.u(this, aVar)));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void N(nc.a<mc.g0> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11000l, mc.e.f11001m);
        if (excY != null) {
            aVar.k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.USER_ANIMATION_GET_ANIMATION;
            this.f8550k.j("Get User Animation", new m0((byte) 235, m0.a.REQUEST, null), new t(aVar));
        } catch (Throwable th) {
            aVar.k(th);
        }
    }

    @Override // hc.l0
    public final void O() {
        this.f8552m.set(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void P(nc.c<String, n0> cVar) {
        gc.u.b bVar;
        p4.h.j(cVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) cVar).k(excY);
            return;
        }
        try {
            gc.u.a aVarA = gc.u.A();
            int i10 = ((ya.d.c0) cVar).f18804p.f8606h;
            if (i10 == 0) {
                bVar = gc.u.b.SHOE;
            } else if (i10 != 1) {
                bVar = i10 != 2 ? null : gc.u.b.PCA;
            } else {
                bVar = gc.u.b.ENGINE;
            }
            aVarA.k();
            gc.u.x((gc.u) aVarA.f10785i, bVar);
            gc.u uVarH = aVarA.h();
            hc.d dVar = hc.d.SERIAL_NUMBER_GET;
            this.f8550k.j("Get Serial Number", new m0((byte) 50, m0.a.REQUEST, uVarH.m()), new q(cVar));
        } catch (Throwable th) {
            ((ya.h0) cVar).k(th);
        }
    }

    @Override // hc.l0
    public final void Q(nc.a<Boolean> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11003o, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SESSION_AUTOADAPT_DISABLE;
            this.f8550k.j("disable autoadapt fit", new m0((byte) 168, m0.a.REQUEST, null), new pc.b(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void R(byte[] bArr) {
        hc.e eVar = this.f8550k;
        Objects.requireNonNull(eVar);
        eVar.c("com.nike.corerf.ACTION_RIPLEY_TRANSPORT_DATA_AVAILABLE", bArr);
        this.f8550k.c("com.nike.corerf.ACTION_RAW_DATA_AVAILABLE", bArr);
    }

    @Override // hc.l0
    public final void S(nc.a<Boolean> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            gc.x.a aVarZ = gc.x.z();
            gc.x.b bVar = gc.x.b.SERVO_SHORT_SEGMENT_LOOSEN;
            aVarZ.k();
            gc.x.x((gc.x) aVarZ.f10785i, bVar);
            gc.x xVarH = aVarZ.h();
            hc.d dVar = hc.d.SERVO_MOVE;
            this.f8550k.j("Loosen", new m0((byte) 0, m0.a.REQUEST, xVarH.m()), new pc.b(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void T(nc.a<Integer> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SERVO_POSITION_GET;
            this.f8550k.j("Get Position", new m0((byte) 4, m0.a.REQUEST, null), new o(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void U(nc.c<Boolean, oc.d> cVar) {
        p4.h.j(cVar, "request");
        if (this.f8549j.compareTo(new mc.e("2.1.7")) >= 0) {
            String str = this.f8547h;
            mc.e eVar = mc.e.f10998j;
            mc.e.a aVar = mc.e.f10997i;
            Exception excY = Y(this, str, eVar, mc.e.f11005q);
            if (excY != null) {
                ((ya.h0) cVar).k(excY);
                return;
            }
            try {
                gc.i.a aVarF = gc.i.F();
                int i10 = ((oc.d) ((ya.d.h) cVar).getValue()).f12552a * 256;
                aVarF.k();
                gc.i.A((gc.i) aVarF.f10785i, i10);
                int i11 = ((oc.d) ((ya.d.h) cVar).getValue()).f12553b * 256;
                aVarF.k();
                gc.i.z((gc.i) aVarF.f10785i, i11);
                int i12 = ((oc.d) ((ya.d.h) cVar).getValue()).f12554c * 256;
                aVarF.k();
                gc.i.x((gc.i) aVarF.f10785i, i12);
                aVarF.k();
                gc.i.y((gc.i) aVarF.f10785i);
                gc.i iVarH = aVarF.h();
                hc.d dVar = hc.d.ANIMATION_SET_COLOR;
                this.f8550k.j("Set LED Color", new m0((byte) 222, m0.a.REQUEST, iVarH.m()), new pc.b(cVar));
                return;
            } catch (Throwable th) {
                ((ya.h0) cVar).k(th);
                return;
            }
        }
        String str2 = this.f8547h;
        mc.e eVar2 = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY2 = Y(this, str2, eVar2, mc.e.f11005q);
        if (excY2 != null) {
            ((ya.h0) cVar).k(excY2);
            return;
        }
        try {
            gc.b0.b bVarG = gc.b0.G();
            int i13 = ((oc.d) ((ya.d.h) cVar).getValue()).f12552a;
            bVarG.k();
            gc.b0.A((gc.b0) bVarG.f10785i, i13);
            int i14 = ((oc.d) ((ya.d.h) cVar).getValue()).f12554c;
            bVarG.k();
            gc.b0.x((gc.b0) bVarG.f10785i, i14);
            ya.d.h hVar = (ya.d.h) cVar;
            int i15 = ((oc.d) hVar.getValue()).f12553b;
            bVarG.k();
            gc.b0.z((gc.b0) bVarG.f10785i, i15);
            gc.b0.a aVarB = gc.b0.a.b(q.g.a(((oc.d) hVar.getValue()).f12555d));
            bVarG.k();
            gc.b0.y((gc.b0) bVarG.f10785i, aVarB);
            gc.b0 b0VarH = bVarG.h();
            hc.d dVar2 = hc.d.SET_LED_BASE;
            this.f8550k.j("Set LED Color", new m0((byte) 130, m0.a.REQUEST, b0VarH.m()), new pc.b(cVar));
        } catch (Throwable th2) {
            ((ya.h0) cVar).k(th2);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void V(nc.c<mc.o, List<mc.n>> cVar) {
        p4.h.j(cVar, "request");
        List<mc.n> list = ((ya.d.o0) cVar).f18903p;
        String str = this.f8547h;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11004p, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) cVar).k(excY);
            return;
        }
        try {
            fc.c.a aVarA = fc.c.A();
            for (mc.n nVar : list) {
                fc.e.a aVarF = fc.e.F();
                int i10 = nVar.f11075h.f11074h;
                aVarF.k();
                fc.e.y((fc.e) aVarF.f10785i, i10);
                int i11 = nVar.f11076i.f11068h;
                aVarF.k();
                fc.e.x((fc.e) aVarF.f10785i, i11);
                fc.e eVarH = aVarF.h();
                aVarA.k();
                fc.c.x((fc.c) aVarA.f10785i, eVarH);
            }
            hc.d dVar = hc.d.SESSION_SET_GESTURE_CONFIGURATION;
            this.f8550k.j("set gesture configuration", new m0((byte) 178, m0.a.REQUEST, aVarA.h().m()), new x(cVar));
        } catch (Throwable th) {
            ((ya.h0) cVar).k(th);
        }
    }

    @Override // hc.l0
    public final void W(final boolean z10, final nc.a<mc.j0> aVar) {
        this.f8552m.set(false);
        this.f8555p.execute(new Runnable() { // from class: hc.g
            @Override // java.lang.Runnable
            public final void run() throws InterruptedException {
                final l lVar = this.f8497h;
                final nc.a aVar2 = aVar;
                boolean z11 = z10;
                p4.h.j(lVar, "this$0");
                p4.h.j(aVar2, "$request");
                long jCurrentTimeMillis = System.currentTimeMillis() + ((long) 1000);
                while (!lVar.f8553n.get()) {
                    if (System.currentTimeMillis() > jCurrentTimeMillis) {
                        aVar2.j(mc.j0.RIPLEY_SERVICE_NOT_FOUND);
                        return;
                    }
                    Thread.sleep(10L);
                }
                final BluetoothGatt bluetoothGatt = lVar.f8551l;
                if (bluetoothGatt == null) {
                    aVar2.j(mc.j0.GATT_GONE_COULD_NOT_INVOKE);
                    return;
                }
                final b0 b0Var = new b0(lVar, aVar2);
                BluetoothGattService service = bluetoothGatt.getService(f0.f8477b);
                if (service == null) {
                    return;
                }
                BluetoothGattCharacteristic characteristic = service.getCharacteristic(f0.f8479d);
                boolean z12 = true;
                if (!bluetoothGatt.setCharacteristicNotification(characteristic, true)) {
                    aVar2.k(new Throwable("setCharacteristicNotification was not ready"));
                    return;
                }
                BluetoothGattDescriptor descriptor = characteristic.getDescriptor(f0.f8476a);
                descriptor.setValue(BluetoothGattDescriptor.ENABLE_NOTIFICATION_VALUE);
                if (!z11 && bluetoothGatt.getDevice().getBondState() == 12) {
                    z12 = false;
                }
                boolean zWriteDescriptor = bluetoothGatt.writeDescriptor(descriptor);
                androidx.lifecycle.o.n().registerReceiver(b0Var, new IntentFilter("android.bluetooth.device.action.BOND_STATE_CHANGED"));
                if (!zWriteDescriptor) {
                    aVar2.k(new Throwable("writeDescriptor was not ready"));
                } else {
                    final boolean z13 = z12;
                    lVar.f8556q.execute(new Runnable() { // from class: hc.h
                        @Override // java.lang.Runnable
                        public final void run() throws InterruptedException {
                            char c10;
                            boolean z14 = z13;
                            BluetoothGatt bluetoothGatt2 = bluetoothGatt;
                            nc.a aVar3 = aVar2;
                            l lVar2 = lVar;
                            b0 b0Var2 = b0Var;
                            p4.h.j(bluetoothGatt2, "$currentGatt");
                            p4.h.j(aVar3, "$request");
                            p4.h.j(lVar2, "this$0");
                            p4.h.j(b0Var2, "$receiver");
                            if (z14) {
                                Thread.sleep(1000L);
                            }
                            int bondState = bluetoothGatt2.getDevice().getBondState();
                            if (bondState != 11) {
                                c10 = bondState != 12 ? (char) 1 : (char) 3;
                            } else {
                                c10 = 2;
                            }
                            boolean z15 = false;
                            boolean z16 = c10 != 3;
                            if (z16) {
                                aVar3.j(mc.j0.NOT_BONDED_CANNOT_WRITE);
                            }
                            lVar2.f8550k.a("com.nike.corerf.ACTION_GATT_NOTIFICATIONS_SUBSCRIBED");
                            try {
                                long jCurrentTimeMillis2 = System.currentTimeMillis() + ((long) (z16 ? 30000 : CrashSender.CRASH_COLLECTOR_TIMEOUT));
                                while (!lVar2.f8557r.get() && !z15 && !lVar2.f8552m.get()) {
                                    if (System.currentTimeMillis() > jCurrentTimeMillis2) {
                                        z15 = true;
                                    }
                                    Thread.sleep(10L);
                                }
                                if (lVar2.f8552m.get()) {
                                    aVar3.j(mc.j0.BONDED_AND_READY);
                                } else if (lVar2.f8557r.get()) {
                                    aVar3.j(mc.j0.CANCELED);
                                } else {
                                    aVar3.j(mc.j0.TIMED_OUT);
                                }
                            } catch (Throwable th) {
                                try {
                                    aVar3.k(th);
                                } finally {
                                    try {
                                        androidx.lifecycle.o.n().unregisterReceiver(b0Var2);
                                    } catch (Throwable unused) {
                                    }
                                }
                            }
                        }
                    });
                }
            }
        });
    }

    @Override // hc.l0
    public final void X(nc.c<String, Integer> cVar) {
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((rc.e) cVar).k(excY);
            return;
        }
        try {
            gc.s.a aVarZ = gc.s.z();
            aVarZ.m(((Number) ((rc.e) cVar).getValue()).intValue());
            gc.s sVarH = aVarZ.h();
            hc.d dVar = hc.d.FIRMWARE_GET_IMAGE_STATS;
            this.f8550k.j("Get firmware version in slot", new m0((byte) 19, m0.a.REQUEST, sVarH.m()), new i(cVar, this));
        } catch (Throwable th) {
            ((rc.e) cVar).k(th);
        }
    }

    public final void Z(nc.c<byte[], String> cVar) throws TimeoutException {
        gc.j.a aVarA = gc.j.A();
        aVarA.m("fw system_reset");
        gc.j jVarH = aVarA.h();
        hc.d dVar = hc.d.ASCII_COMMAND;
        this.f8550k.j("Debug ASCII command", new m0((byte) HttpStatusCodesKt.HTTP_OK, m0.a.EVENT, jVarH.m()), new a(cVar));
    }

    @Override // hc.l0
    public final mc.e a() {
        return this.f8549j;
    }

    public final void a0(nc.d<Boolean, byte[], fd.o> dVar, nc.d<Boolean, byte[], fd.o> dVar2, boolean z10) {
        if (this.f8554o != null) {
            dVar2.k(new kc.c.g(z10));
            return;
        }
        k0 k0Var = new k0(this.f8550k, this.f8547h, new pc.a(dVar));
        pc.b bVar = new pc.b(new u(k0Var, dVar, this, z10, dVar2));
        if (z10) {
            k0Var.f8540t = 3;
            hc.d dVar3 = hc.d.ASCII_COMMAND;
            byte b10 = (byte) HttpStatusCodesKt.HTTP_OK;
            m0.a aVar = m0.a.EVENT;
            gc.j.a aVarA = gc.j.A();
            aVarA.m("fw set_fwdl_destination 1");
            try {
                k0Var.f8532l.j("UploadToGoldSlot", new m0(b10, aVar, aVarA.h().m()), bVar);
                androidx.lifecycle.o.q().c("Sent : UploadToGoldSlot message", null, false, "FileTransfer");
                return;
            } catch (TimeoutException e10) {
                bVar.b(e10);
                return;
            }
        }
        k0Var.f8540t = 2;
        hc.d dVar4 = hc.d.ASCII_COMMAND;
        byte b11 = (byte) HttpStatusCodesKt.HTTP_OK;
        m0.a aVar2 = m0.a.EVENT;
        gc.j.a aVarA2 = gc.j.A();
        aVarA2.m("fw set_fwdl_destination 0");
        try {
            k0Var.f8532l.j("UploadToUpgradeSlot", new m0(b11, aVar2, aVarA2.h().m()), bVar);
            androidx.lifecycle.o.q().c("Sent : UploadToUpgradeSlot message", null, false, "FileTransfer");
        } catch (TimeoutException e11) {
            bVar.b(e11);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void b(nc.c<Boolean, Integer> cVar) {
        p4.h.j(cVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) cVar).k(excY);
            return;
        }
        try {
            gc.y.a aVarA = gc.y.A();
            aVarA.m(((Number) ((ya.d.p0) cVar).getValue()).intValue());
            gc.y yVarH = aVarA.h();
            hc.d dVar = hc.d.SERVO_PRESET_SET;
            this.f8550k.j("Set Preset", new m0((byte) 1, m0.a.REQUEST, yVarH.m()), new pc.b(cVar));
        } catch (Throwable th) {
            ((ya.h0) cVar).k(th);
        }
    }

    public final int b0(int i10) {
        return ((int) (((double) i10) / 10.0d)) * 10;
    }

    /* JADX WARN: Code duplicated, block: B:39:0x0126  */
    /* JADX WARN: Code duplicated, block: B:41:0x012a  */
    /* JADX WARN: Code duplicated, block: B:42:0x012c  */
    /* JADX WARN: Code duplicated, block: B:45:0x0137 A[LOOP:1: B:43:0x0131->B:45:0x0137, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:49:0x0151 A[LOOP:2: B:47:0x014b->B:49:0x0151, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:53:0x016c  */
    /* JADX WARN: Code duplicated, block: B:79:0x01e8  */
    @Override // hc.l0
    public final void c(byte[] bArr) {
        char c10;
        p0.a aVarPeek;
        int iA;
        ArrayList arrayList;
        Iterator it;
        int length;
        ByteBuffer byteBufferAllocate;
        byte[] bArrArray;
        hc.e eVar = this.f8550k;
        Objects.requireNonNull(eVar);
        if (bArr.length >= 1) {
            eVar.e(null, 2, String.format("[%s] transportReceived(%s)", eVar.f8461d.getDevice().getAddress(), hc.e.o(bArr)), null);
            eVar.f8465h++;
            b2.h hVar = eVar.f8458a;
            Objects.requireNonNull(hVar);
            if (bArr.length < 1 || hVar.f3190a == null) {
                c10 = 'c';
            } else {
                byte b10 = bArr[0];
                byte bA = (byte) (b2.h.a(bArr) & 255);
                if (b2.h.b(b10)) {
                    byte b11 = bArr[1];
                    if (b11 == 0) {
                        androidx.lifecycle.o.q().c(String.format("setting lastFlowControl to %s", hc.e.o(bArr)), null, false, "TransportGather");
                        hVar.f3192c = bArr;
                    } else if (b11 != 1) {
                        if (b11 == 2) {
                            androidx.lifecycle.o.q().c(String.format("invalid request in window: %s", hc.e.o(bArr)), null, false, "TransportGather");
                        }
                        androidx.lifecycle.o.q().a(String.format("unexpected flow-control request: %s", hc.e.o(bArr)), null, false, "TransportGather");
                    } else {
                        androidx.lifecycle.o.q().c(String.format("resend request for %s", hc.e.o(bArr)), null, false, "TransportGather");
                    }
                    c10 = 0;
                } else if (Arrays.copyOfRange(bArr, 1, bArr.length) == null) {
                    c10 = 'c';
                } else {
                    hVar.f3190a.add(bArr);
                    if (!((bArr[0] & (-128)) != 0)) {
                        c10 = 1;
                    } else if (hVar.f3190a.size() > 1) {
                        ArrayList arrayList2 = hVar.f3190a;
                        byte[] bArr2 = (byte[]) arrayList2.get(arrayList2.size() - 2);
                        if (bArr2 != null) {
                            androidx.lifecycle.o.q().c(String.format("last segment was %s", hc.e.o(bArr2)), null, false, "TransportGather");
                            byte bA2 = (byte) ((((byte) (b2.h.a(bArr2) & 255)) + 1) % 64);
                            if (bA != bA2) {
                                androidx.lifecycle.o.q().a(String.format("received segment: %d; expected: %d", Byte.valueOf(bA), Byte.valueOf(bA2)), null, false, "TransportGather");
                            } else {
                                arrayList = hVar.f3190a;
                                if (arrayList == null) {
                                    bArrArray = null;
                                } else {
                                    it = arrayList.iterator();
                                    length = 0;
                                    while (it.hasNext()) {
                                        length += ((byte[]) it.next()).length - 1;
                                    }
                                    byteBufferAllocate = ByteBuffer.allocate(length);
                                    for (byte[] bArr3 : hVar.f3190a) {
                                        byteBufferAllocate.put(bArr3, 1, bArr3.length - 1);
                                    }
                                    bArrArray = byteBufferAllocate.array();
                                }
                                hVar.f3191b = bArrArray;
                                hVar.f3190a.clear();
                                c10 = 2;
                            }
                        }
                        c10 = 'b';
                    } else {
                        arrayList = hVar.f3190a;
                        if (arrayList == null) {
                            bArrArray = null;
                        } else {
                            it = arrayList.iterator();
                            length = 0;
                            while (it.hasNext()) {
                                length += ((byte[]) it.next()).length - 1;
                            }
                            byteBufferAllocate = ByteBuffer.allocate(length);
                            while (r8.hasNext()) {
                                byteBufferAllocate.put(bArr3, 1, bArr3.length - 1);
                            }
                            bArrArray = byteBufferAllocate.array();
                        }
                        hVar.f3191b = bArrArray;
                        hVar.f3190a.clear();
                        c10 = 2;
                    }
                }
            }
            if (c10 == 0) {
                byte[] bArr4 = (byte[]) eVar.f8458a.f3192c;
                if (bArr4 == null) {
                    eVar.e(null, 1, "RIPLEY_IS_FLOW_CONTROL without any gathered message", null);
                } else {
                    int i10 = bArr[1] & 255;
                    if (i10 == 0) {
                        int iA2 = b2.h.a(bArr4);
                        int i11 = eVar.f8467j;
                        if (i11 != iA2) {
                            eVar.e(null, 1, String.format("expected ack: %s; window ack: %s", Integer.valueOf(i11), Integer.valueOf(iA2)), null);
                        } else {
                            eVar.f8466i = iA2;
                            eVar.f8467j = (iA2 + 2) % 64;
                            p0 p0Var = eVar.f8462e;
                            int i12 = bArr4[0] & 63;
                            synchronized (p0Var) {
                                try {
                                    if (p0Var.f8614b != null && !p0Var.f8617e.isEmpty() && (aVarPeek = p0Var.f8617e.peek()) != null) {
                                        int iM = hc.e.m((byte) (aVarPeek.f8620b[0] & 63), i12);
                                        for (int i13 = 0; i13 < iM; i13++) {
                                            try {
                                                p0Var.f8617e.remove();
                                            } catch (Exception unused) {
                                                androidx.lifecycle.o.q().a(String.format("[%s] moveReceivedWindow() error removing sent txQueueItem %s", p0Var.f8616d, hc.e.o(aVarPeek.f8620b)), null, false, "TransportQueue");
                                            }
                                        }
                                        p0Var.c(false);
                                    }
                                } catch (Throwable th) {
                                    throw th;
                                }
                            }
                            eVar.b("com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED", bArr4[0] & 63);
                        }
                    } else if (i10 != 1) {
                        if (i10 == 2) {
                            eVar.e(null, 1, String.format("CoreRF flow-conrol error on sequence: %02X", Integer.valueOf(bArr[0] & 63)), null);
                            eVar.f8462e.e(bArr[0] & 63);
                        }
                        StringBuilder sbC = a0.b.c("unhandled flow control type: ");
                        sbC.append((int) bArr4[1]);
                        eVar.e(null, 2, sbC.toString(), null);
                    } else {
                        eVar.e(null, 2, String.format("resend  on sequence: %02X", Integer.valueOf(bArr[0] & 63)), null);
                        eVar.f8462e.e(bArr[0] & 63);
                    }
                }
            } else if (c10 == 'c') {
                StringBuilder sbC2 = a0.b.c("RIPLEY_UNKNOWN_PAYLOAD possibly from non-ripley service read ");
                sbC2.append(hc.e.o(bArr));
                eVar.e(null, 2, sbC2.toString(), null);
                iA = b2.h.a(bArr);
                if (eVar.f8465h > 1 && hc.e.m(eVar.f8464g, iA) == 1) {
                    try {
                        eVar.l((byte) iA);
                    } catch (kc.f unused2) {
                        eVar.e(null, 2, "Disconnect while trying to send Flow Control packet", null);
                    }
                    eVar.f8464g = iA + 1;
                }
            } else if (c10 == 2) {
                byte[] bArr5 = (byte[]) eVar.f8458a.f3191b;
                if (bArr5 == null) {
                    eVar.e(null, 1, "RIPLEY_IS_FULL_MESSAGE without any gathered message", null);
                } else if (m0.a(bArr5) == null) {
                    StringBuilder sbC3 = a0.b.c("RIPLEY_IS_FULL_MESSAGE invalid Message ");
                    sbC3.append(hc.e.o(bArr5));
                    eVar.e(null, 1, sbC3.toString(), null);
                } else {
                    eVar.c("com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE", bArr5);
                    int iA3 = b2.h.a(bArr);
                    if (eVar.f8465h > 1 && hc.e.m(eVar.f8464g, iA3) == 1) {
                        try {
                            eVar.l((byte) iA3);
                        } catch (kc.f unused3) {
                            eVar.e(null, 1, "Disconnect while trying to send flow control", null);
                        }
                        eVar.f8464g = iA3 + 1;
                    }
                }
            } else if (c10 != 3) {
                iA = b2.h.a(bArr);
                if (eVar.f8465h > 1) {
                    eVar.l((byte) iA);
                    eVar.f8464g = iA + 1;
                }
            } else {
                eVar.c("com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE", bArr);
                StringBuilder sbC4 = a0.b.c("RIPLEY_UNKNOWN_PAYLOAD possibly from non-ripley service read ");
                sbC4.append(hc.e.o(bArr));
                eVar.e(null, 2, sbC4.toString(), null);
                iA = b2.h.a(bArr);
                if (eVar.f8465h > 1) {
                    eVar.l((byte) iA);
                    eVar.f8464g = iA + 1;
                }
            }
        }
        this.f8550k.c("com.nike.corerf.ACTION_RAW_DATA_AVAILABLE", bArr);
    }

    @Override // hc.l0
    public final void d(nc.a<Boolean> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11002n, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.USER_ANIMATION_START_ANIMATION;
            this.f8550k.j("Start Custom 2.0 Animation", new m0((byte) 236, m0.a.REQUEST, null), new pc.b(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void e(nc.a<String> aVar) {
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ic.k) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SYS_CONFIG_GET_MCU_FW_VERSION;
            this.f8550k.j("Get Current Firmware Version", new m0((byte) 214, m0.a.REQUEST, null), new f(aVar, this));
        } catch (Throwable th) {
            ((ic.k) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void f(nc.c<Boolean, Long> cVar) {
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar = mc.e.f10997i;
        if (Y(this, str, eVar, mc.e.f11005q) != null) {
            ((ic.j) cVar).a();
            return;
        }
        try {
            gc.w.a aVarZ = gc.w.z();
            long jLongValue = ((Number) ((ic.j) cVar).getValue()).longValue();
            aVarZ.k();
            gc.w.x((gc.w) aVarZ.f10785i, jLongValue);
            gc.w wVarH = aVarZ.h();
            hc.d dVar = hc.d.RTC_TIME_SET_UTC;
            this.f8550k.j("Set RTC", new m0((byte) 42, m0.a.REQUEST, wVarH.m()), new pc.b(cVar));
        } catch (Throwable unused) {
            ((ic.j) cVar).a();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final hc.a g(nc.d<Boolean, byte[], fd.o> dVar) {
        p4.h.j(dVar, "request");
        rd.u uVar = new rd.u();
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar = mc.e.f10997i;
        if (Y(this, str, eVar, mc.e.f11005q) == null) {
            w(new z(dVar, this, dVar, uVar));
        } else {
            ((ya.h0) dVar).k(new kc.b(null, 1, null));
        }
        return new f0();
    }

    @Override // hc.l0
    public final void h(nc.a<mc.e0> aVar) {
        p4.h.j(aVar, "request");
        if (this.f8549j.compareTo(new mc.e("2.1.7")) < 0) {
            String str = this.f8547h;
            mc.e eVar = mc.e.f10998j;
            mc.e.a aVar2 = mc.e.f10997i;
            Exception excY = Y(this, str, eVar, mc.e.f11005q);
            if (excY != null) {
                ((ya.h0) aVar).k(excY);
                return;
            }
            try {
                hc.d dVar = hc.d.GET_LED_BASE;
                this.f8550k.j("Get LED Color", new m0((byte) 131, m0.a.REQUEST, null), new C0167l(aVar));
                return;
            } catch (Throwable th) {
                ((ya.h0) aVar).k(th);
                return;
            }
        }
        String str2 = this.f8547h;
        mc.e eVar2 = mc.e.f10998j;
        mc.e.a aVar3 = mc.e.f10997i;
        Exception excY2 = Y(this, str2, eVar2, mc.e.f11005q);
        if (excY2 != null) {
            ((ya.h0) aVar).k(excY2);
            return;
        }
        try {
            gc.i.a aVarF = gc.i.F();
            aVarF.k();
            gc.i.y((gc.i) aVarF.f10785i);
            gc.i iVarH = aVarF.h();
            hc.d dVar2 = hc.d.ANIMATION_GET_COLOR;
            this.f8550k.j("Get LED Color", new m0((byte) 221, m0.a.REQUEST, iVarH.m()), new m(aVar));
        } catch (Throwable th2) {
            ((ya.h0) aVar).k(th2);
        }
    }

    @Override // hc.l0
    public final void i(nc.a<Boolean> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            gc.x.a aVarZ = gc.x.z();
            gc.x.b bVar = gc.x.b.SERVO_SHORT_SEGMENT_TIGHTEN;
            aVarZ.k();
            gc.x.x((gc.x) aVarZ.f10785i, bVar);
            gc.x xVarH = aVarZ.h();
            hc.d dVar = hc.d.SERVO_MOVE;
            this.f8550k.j("Tighten", new m0((byte) 0, m0.a.REQUEST, xVarH.m()), new pc.b(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void j(nc.a<mc.f> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            gc.h0.a aVarG = gc.h0.G();
            gc.f0 f0VarE = ((gc.h0) gc.h0.G().f10785i).E();
            aVarG.k();
            gc.h0.x((gc.h0) aVarG.f10785i, f0VarE);
            gc.h0 h0VarH = aVarG.h();
            hc.d dVar = hc.d.SYSTEM_STATS_GET;
            this.f8550k.j("Get Stats", new m0((byte) 121, m0.a.REQUEST, h0VarH.m()), new s(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void k(nc.c<Boolean, Integer> cVar) throws ExecutionException, InterruptedException {
        p4.h.j(cVar, "request");
        CompletableFuture completableFuture = new CompletableFuture();
        int i10 = 2;
        CompletableFuture.runAsync(new n5.n(this, completableFuture, 2));
        if (((mc.g0) completableFuture.get()).f11029l) {
            CompletableFuture completableFuture2 = new CompletableFuture();
            CompletableFuture.runAsync(new p3.g(this, completableFuture2, i10));
            completableFuture2.get();
        }
        gc.l0.a aVarZ = gc.l0.z();
        int iIntValue = ((Number) ((ya.y) cVar).getValue()).intValue();
        aVarZ.k();
        gc.l0.x((gc.l0) aVarZ.f10785i, iIntValue);
        gc.l0 l0VarH = aVarZ.h();
        String str = this.f8547h;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11000l, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) cVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.USER_ANIMATION_START_ANIMATION;
            this.f8550k.j("Start User Animations", new m0((byte) 236, m0.a.REQUEST, l0VarH.m()), new pc.b(cVar));
        } catch (Throwable th) {
            ((ya.h0) cVar).k(th);
        }
    }

    @Override // hc.l0
    public final void l(nc.a<mc.a0> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11001m, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SESSION_GET_ACTIVE_ID;
            this.f8550k.j("Get active session id", new m0((byte) 166, m0.a.REQUEST, null), new c(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void m(nc.a<Boolean> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            Z(new y(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void n() {
        this.f8549j = new mc.e("1.1.0");
        this.f8557r.set(true);
        this.f8553n.set(false);
        k0 k0Var = this.f8554o;
        if (k0Var != null) {
            k0Var.c(true);
        }
        k0 k0Var2 = this.f8554o;
        if (k0Var2 != null) {
            k0Var2.e();
        }
        this.f8550k.g();
        this.f8554o = null;
        this.f8551l = null;
    }

    @Override // hc.l0
    public final void o() {
        this.f8553n.set(true);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void p(nc.c<Boolean, Boolean> cVar) {
        p4.h.j(cVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) cVar).k(excY);
            return;
        }
        try {
            gc.i0.a aVarZ = gc.i0.z();
            boolean zBooleanValue = ((Boolean) ((ya.d.n0) cVar).getValue()).booleanValue();
            aVarZ.k();
            gc.i0.x((gc.i0) aVarZ.f10785i, zBooleanValue);
            gc.i0 i0VarH = aVarZ.h();
            hc.d dVar = hc.d.TOGGLE_FPS;
            this.f8550k.j("Foot Presence Sensor", new m0((byte) 82, m0.a.REQUEST, i0VarH.m()), new pc.b(cVar));
        } catch (Throwable th) {
            ((ya.h0) cVar).k(th);
        }
    }

    @Override // hc.l0
    public final void q(nc.a<mc.j> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11002n, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.CUSTOM_ANIMATION_GET_ANIMATION;
            this.f8550k.j("Get User Animation", new m0((byte) 238, m0.a.REQUEST, null), new g(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void r(nc.c<mc.k, Integer> cVar) {
        p4.h.j(cVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) cVar).k(excY);
            return;
        }
        try {
            gc.s.a aVarZ = gc.s.z();
            aVarZ.m(((Number) ((ya.q) cVar).getValue()).intValue());
            gc.s sVarH = aVarZ.h();
            hc.d dVar = hc.d.FIRMWARE_GET_IMAGE_STATS;
            this.f8550k.j("Get detailed firmware image stats in slot", new m0((byte) 19, m0.a.REQUEST, sVarH.m()), new h(cVar));
        } catch (Throwable th) {
            ((ya.h0) cVar).k(th);
        }
    }

    @Override // hc.l0
    public final void s(nc.a<Boolean> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11004p, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SESSION_CLEAR_GESTURE_DETECTION_COUNT;
            this.f8550k.j("reset gesture statistics", new m0((byte) 180, m0.a.REQUEST, null), new pc.b(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void t(nc.a<Integer> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SERVO_PRESET_GET;
            this.f8550k.j("Get Preset", new m0((byte) 2, m0.a.REQUEST, null), new p(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // hc.l0
    public final void u(nc.c<Boolean, oc.e> cVar) {
        p4.h.j(cVar, "request");
        gc.k0.a aVarI = gc.k0.I();
        ya.k kVar = (ya.k) cVar;
        int i10 = ((oc.e) kVar.getValue()).f12556a;
        aVarI.k();
        gc.k0.x((gc.k0) aVarI.f10785i, i10);
        int i11 = ((oc.e) kVar.getValue()).f12557b;
        aVarI.k();
        gc.k0.F((gc.k0) aVarI.f10785i, i11);
        int i12 = ((oc.e) kVar.getValue()).f12558c;
        aVarI.k();
        gc.k0.B((gc.k0) aVarI.f10785i, i12);
        int i13 = ((oc.e) kVar.getValue()).f12559d;
        aVarI.k();
        gc.k0.y((gc.k0) aVarI.f10785i, i13);
        int iB0 = b0(((oc.e) kVar.getValue()).f12560e);
        aVarI.k();
        gc.k0.E((gc.k0) aVarI.f10785i, iB0);
        int iB1 = b0(((oc.e) kVar.getValue()).f12561f);
        aVarI.k();
        gc.k0.z((gc.k0) aVarI.f10785i, iB1);
        int iB2 = b0(((oc.e) kVar.getValue()).f12562g);
        aVarI.k();
        gc.k0.D((gc.k0) aVarI.f10785i, iB2);
        int iB3 = b0(((oc.e) kVar.getValue()).f12563h);
        aVarI.k();
        gc.k0.A((gc.k0) aVarI.f10785i, iB3);
        int iB4 = b0(((oc.e) kVar.getValue()).f12564i);
        aVarI.k();
        gc.k0.C((gc.k0) aVarI.f10785i, iB4);
        int iB5 = b0(((oc.e) kVar.getValue()).f12565j);
        aVarI.k();
        gc.k0.G((gc.k0) aVarI.f10785i, iB5);
        gc.k0 k0VarH = aVarI.h();
        String str = this.f8547h;
        mc.e.a aVar = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11000l, mc.e.f11001m);
        if (excY != null) {
            ((ya.h0) cVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.USER_ANIMATION_SET_ANIMATION;
            this.f8550k.j("Set User Animations", new m0((byte) 234, m0.a.REQUEST, k0VarH.m()), new pc.b(cVar));
        } catch (Throwable th) {
            ((ya.h0) cVar).k(th);
        }
    }

    @Override // hc.l0
    public final void v(nc.a<mc.a> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11003o, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SESSION_GET_ACTIVITY_STATE;
            this.f8550k.j("query activity state", new m0((byte) 172, m0.a.REQUEST, null), new d(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void w(nc.a<mc.c> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e eVar = mc.e.f10998j;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, eVar, mc.e.f11005q);
        if (excY != null) {
            aVar.k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.BATTERY_CHARGER_STATE_GET;
            this.f8550k.j("Battery Level", new m0((byte) 81, m0.a.REQUEST, null), new b(aVar));
        } catch (Throwable th) {
            aVar.k(th);
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [T, hc.k0] */
    @Override // hc.l0
    public final hc.a x(int i10, int i11, int i12, nc.b<Boolean, byte[]> bVar) {
        if (this.f8554o == null) {
            String str = this.f8547h;
            mc.e eVar = mc.e.f10998j;
            mc.e.a aVar = mc.e.f10997i;
            Exception excY = Y(this, str, eVar, mc.e.f11005q);
            if (excY == null) {
                try {
                    rd.w wVar = new rd.w();
                    ?? k0Var = new k0(this.f8550k, this.f8547h, new pc.a(new v(bVar, wVar)));
                    k0Var.a(i10, i11, i12);
                    this.f8554o = k0Var;
                    wVar.f14795h = k0Var;
                } catch (Throwable th) {
                    ((fb.w) bVar).k(th);
                }
            } else {
                ((fb.w) bVar).k(excY);
            }
        } else {
            ((fb.w) bVar).k(new Throwable("TransferAlreadyInProgress"));
        }
        return new w();
    }

    @Override // hc.l0
    public final void y(nc.a<String> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f10999k, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SYS_CONFIG_GET_MFG_PRODUCT_ID;
            this.f8550k.j("Get Manufacturing Product ID", new m0((byte) 231, m0.a.REQUEST, null), new n(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }

    @Override // hc.l0
    public final void z(nc.a<List<mc.n>> aVar) {
        p4.h.j(aVar, "request");
        String str = this.f8547h;
        mc.e.a aVar2 = mc.e.f10997i;
        Exception excY = Y(this, str, mc.e.f11004p, mc.e.f11005q);
        if (excY != null) {
            ((ya.h0) aVar).k(excY);
            return;
        }
        try {
            hc.d dVar = hc.d.SESSION_GET_GESTURE_CONFIGURATION;
            this.f8550k.j("query gesture config state", new m0((byte) 179, m0.a.REQUEST, null), new j(aVar));
        } catch (Throwable th) {
            ((ya.h0) aVar).k(th);
        }
    }
}
