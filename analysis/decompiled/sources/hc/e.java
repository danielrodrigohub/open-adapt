package hc;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattService;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Parcelable;
import java.util.ArrayList;
import java.util.Formatter;
import java.util.List;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: CoreRF.java */
/* JADX INFO: loaded from: classes.dex */
public final class e implements o0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final b2.h f8458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f8459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public volatile ExecutorService f8460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public BluetoothGatt f8461d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public p0 f8462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8464g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8465h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8466i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8467j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String f8468k;

    /* JADX INFO: compiled from: CoreRF.java */
    public class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ m0 f8469a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final /* synthetic */ byte[][] f8470b;

        public a(m0 m0Var, byte[][] bArr) {
            this.f8469a = m0Var;
            this.f8470b = bArr;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            if (intent != null) {
                m0 m0VarA = m0.a(intent.getByteArrayExtra("com.nike.corerf.EXTRA_DATA"));
                String stringExtra = intent.getStringExtra("com.nike.corerf.DEVICE_ID");
                if (stringExtra == null || !stringExtra.equals(e.this.f8468k)) {
                    return;
                }
                if (m0VarA == null) {
                    e.this.e(null, 1, String.format("%s for device: %s received null message", intent.getAction(), stringExtra), null);
                    return;
                }
                byte b10 = this.f8469a.f8593a;
                byte b11 = m0VarA.f8593a;
                if (b10 != b11) {
                    d dVar = d.START_AUTH_KEY_GENERATION;
                    if (b10 == 110) {
                        d dVar2 = d.EXCHANGE_PUBLIC_KEY;
                        if (b11 == 111) {
                            synchronized (this.f8470b) {
                                this.f8470b.notifyAll();
                            }
                            return;
                        }
                    }
                    e.this.e(null, 3, String.format("received different message type (%02X) from sent (%02X)", Integer.valueOf(b11), Integer.valueOf(b10)), null);
                    return;
                }
                byte[] bArr = m0VarA.f8595c;
                if (bArr != null) {
                    byte[][] bArr2 = this.f8470b;
                    bArr2[0] = bArr;
                    synchronized (bArr2) {
                        this.f8470b.notifyAll();
                    }
                    return;
                }
                m0.a aVar = m0VarA.f8594b;
                if (aVar == m0.a.ACK) {
                    this.f8470b[0] = m0.b(m0VarA);
                    synchronized (this.f8470b) {
                        this.f8470b.notifyAll();
                    }
                    return;
                }
                if (aVar != m0.a.NAK) {
                    e.this.e(null, 1, String.format("%s for device: %s received action %s", intent.getAction(), stringExtra, m0VarA.f8594b), null);
                    return;
                }
                this.f8470b[0] = m0.b(m0VarA);
                synchronized (this.f8470b) {
                    this.f8470b.notifyAll();
                }
            }
        }
    }

    public e(String str) {
        new AtomicInteger(0);
        this.f8460c = null;
        this.f8461d = null;
        this.f8467j = 1;
        this.f8468k = str;
        this.f8458a = new b2.h();
    }

    public static int m(int i10, int i11) {
        if (i10 > i11) {
            i11 += 64;
        }
        return i11 - i10;
    }

    public static String o(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        Formatter formatter = new Formatter();
        for (byte b10 : bArr) {
            formatter.format("%02X", Byte.valueOf(b10));
        }
        return formatter.toString();
    }

    public final void a(String str) {
        if (this.f8461d != null) {
            Intent intent = new Intent(str);
            intent.putExtra("com.nike.corerf.DEVICE_ID", this.f8468k);
            w0.a.b(androidx.lifecycle.o.n()).d(intent);
        }
    }

    public final void b(String str, int i10) {
        if (this.f8461d != null) {
            Intent intent = new Intent(str);
            intent.putExtra("com.nike.corerf.EXTRA_DATA", i10);
            intent.putExtra("com.nike.corerf.DEVICE_ID", this.f8468k);
            w0.a.b(androidx.lifecycle.o.n()).d(intent);
        }
    }

    /* JADX WARN: Code duplicated, block: B:66:0x0191 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:67:0x0193 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:68:0x0195 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:69:0x0197  */
    /* JADX WARN: Code duplicated, block: B:70:0x019a  */
    /* JADX WARN: Code duplicated, block: B:71:0x019c  */
    /* JADX WARN: Code duplicated, block: B:72:0x019e  */
    /* JADX WARN: Code duplicated, block: B:73:0x019f A[PHI: r7
      0x019f: PHI (r7v4 int) = (r7v0 int), (r7v5 int), (r7v6 int), (r7v7 int) binds: [B:65:0x018f, B:72:0x019e, B:71:0x019c, B:70:0x019a] A[DONT_GENERATE, DONT_INLINE]] */
    public final void c(String str, byte[] bArr) {
        mc.m mVar;
        mc.l lVar;
        mc.a aVar;
        int i10;
        int i11;
        int iA;
        int i12;
        mc.b bVar = mc.b.DISABLED;
        if (this.f8461d == null || bArr == null) {
            return;
        }
        Intent intent = new Intent(str);
        intent.putExtra("com.nike.corerf.EXTRA_DATA", bArr);
        intent.putExtra("com.nike.corerf.DEVICE_ID", this.f8468k);
        w0.a.b(androidx.lifecycle.o.n()).d(intent);
        m0 m0VarA = m0.a(bArr);
        if (str.equals("com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE") && m0VarA != null && m0VarA.f8594b == m0.a.EVENT) {
            int i13 = 1;
            int i14 = 2;
            e("broadcastUpdate", 2, String.format("Got a notification update message:type: %s", Integer.valueOf(m0VarA.f8593a & 255)), null);
            byte b10 = m0VarA.f8593a;
            d dVar = d.BATTERY_CHARGER_STATE_GET;
            try {
                if (b10 == ((byte) 81)) {
                    gc.l lVarA = gc.l.A(m0VarA.f8595c);
                    int iOrdinal = lVarA.z().ordinal();
                    if (iOrdinal != 0) {
                        if (iOrdinal == 1) {
                            i13 = 2;
                        } else if (iOrdinal != 2) {
                            i13 = iOrdinal != 3 ? 5 : 4;
                        } else {
                            i13 = 3;
                        }
                    }
                    f(f0.f8486k, new mc.c(lVarA.y(), i13));
                    return;
                }
                d dVar2 = d.EXCHANGE_PUBLIC_KEY;
                if (b10 == ((byte) 111)) {
                    f(f0.f8483h, new mc.r());
                    return;
                }
                d dVar3 = d.SERVO_MOVE_COMPLETE_EVENT;
                if (b10 == ((byte) 5)) {
                    String str2 = f0.f8482g;
                    try {
                        f(str2, new mc.t(gc.a0.z(m0VarA.f8595c).y()));
                        return;
                    } catch (NullPointerException unused) {
                        f(str2, new mc.t(0));
                        return;
                    }
                }
                d dVar4 = d.USER_ANIMATION_GET_ANIMATION;
                if (b10 == ((byte) 235)) {
                    f(f0.f8484i, mc.g0.f11024m.a(gc.j0.C(m0VarA.f8595c)));
                    return;
                }
                d dVar5 = d.CUSTOM_ANIMATION_GET_ANIMATION;
                if (b10 == ((byte) 238)) {
                    f(f0.f8485j, mc.j.f11044l.a(gc.p.C(m0VarA.f8595c)));
                    return;
                }
                d dVar6 = d.SESSION_ENDED;
                if (b10 == ((byte) 152)) {
                    String str3 = f0.f8487l;
                    try {
                        fc.x xVarA = fc.x.A(m0VarA.f8595c);
                        int iA2 = xVarA.z().A();
                        int iA3 = xVarA.a();
                        int iOrdinal2 = xVarA.y().ordinal();
                        if (iOrdinal2 != 0) {
                            i13 = iOrdinal2 != 1 ? 3 : 2;
                        }
                        f(str3, new mc.z(iA2, iA3, i13));
                        return;
                    } catch (NullPointerException unused2) {
                        f(str3, new mc.z(0, 0, 3));
                        return;
                    }
                }
                d dVar7 = d.SESSION_DATA_METRICS_NOTIFICATION;
                if (b10 == ((byte) 159)) {
                    String str4 = f0.f8488m;
                    try {
                        fc.v vVarJ = fc.v.J(m0VarA.f8595c);
                        long jI = vVarJ.I();
                        int iA4 = vVarJ.B().a();
                        if (iA4 == 1) {
                            i10 = 2;
                        } else {
                            if (iA4 != 2) {
                                if (iA4 != 3) {
                                    i11 = 1;
                                } else {
                                    i10 = 4;
                                }
                                int iC = vVarJ.C();
                                int iD = vVarJ.D();
                                int iY = vVarJ.y();
                                int iH = vVarJ.H();
                                int iG = vVarJ.G();
                                int iF = vVarJ.F();
                                iA = vVarJ.z().a();
                                if (iA == 1) {
                                    i12 = i14;
                                } else {
                                    if (iA != 2) {
                                        i14 = 3;
                                    } else if (iA != 3) {
                                        i14 = 4;
                                    } else if (iA != 4) {
                                        i12 = 1;
                                    } else {
                                        i14 = 5;
                                    }
                                    i12 = i14;
                                }
                                f(str4, new mc.y(jI, i11, iC, iD, iY, iH, iG, iF, i12, vVarJ.E()));
                                return;
                            }
                            i10 = 3;
                        }
                        i11 = i10;
                        int iC2 = vVarJ.C();
                        int iD2 = vVarJ.D();
                        int iY2 = vVarJ.y();
                        int iH2 = vVarJ.H();
                        int iG2 = vVarJ.G();
                        int iF2 = vVarJ.F();
                        iA = vVarJ.z().a();
                        if (iA == 1) {
                            i12 = i14;
                        } else {
                            if (iA != 2) {
                                i14 = 3;
                            } else if (iA != 3) {
                                i14 = 4;
                            } else if (iA != 4) {
                                i12 = 1;
                            } else {
                                i14 = 5;
                            }
                            i12 = i14;
                        }
                        f(str4, new mc.y(jI, i11, iC2, iD2, iY2, iH2, iG2, iF2, i12, vVarJ.E()));
                        return;
                    } catch (NullPointerException unused3) {
                        f(str4, new mc.y(0L, 1, 0, 0, 0, 0, 0, 0, 1, 0));
                        return;
                    }
                }
                d dVar8 = d.SESSION_DATA_AGGREGATE_NOTIFICATION;
                if (b10 == ((byte) 160)) {
                    String str5 = f0.f8489n;
                    try {
                        fc.l lVarB = fc.l.B(m0VarA.f8595c);
                        f(str5, new mc.v(lVarB.A(), lVarB.z(), lVarB.y()));
                        return;
                    } catch (NullPointerException unused4) {
                        f(str5, new mc.v(0L, 0, 0));
                        return;
                    }
                }
                d dVar9 = d.SESSION_DATA_MEMS_NOTIFICATION;
                if (b10 == ((byte) 165)) {
                    String str6 = f0.f8490o;
                    try {
                        fc.u uVarA = fc.u.A(m0VarA.f8595c);
                        f(str6, new mc.c0(uVarA.z(), uVarA.y().C().C(), uVarA.y().C().D(), uVarA.y().C().E(), uVarA.y().A().C(), uVarA.y().A().D(), uVarA.y().A().E()));
                        return;
                    } catch (NullPointerException unused5) {
                        f(str6, new mc.c0(0L, 0, 0, 0, 0, 0, 0));
                        return;
                    }
                }
                d dVar10 = d.SESSION_DATA_CAPSENSE_NOTIFICATION;
                if (b10 == ((byte) 176)) {
                    String str7 = f0.f8491p;
                    try {
                        fc.p pVarA = fc.p.A(m0VarA.f8595c);
                        f(str7, new mc.w(pVarA.z(), pVarA.y().E(), pVarA.y().D(), pVarA.y().B()));
                        return;
                    } catch (NullPointerException unused6) {
                        f(str7, new mc.w(0L, 0, 0, 0));
                        return;
                    }
                }
                d dVar11 = d.SESSION_ACTIVITY_NOTIFICATION;
                if (b10 == ((byte) 171)) {
                    mc.a aVar2 = mc.a.ACTIVITY_UNKNOWN;
                    String str8 = f0.f8493r;
                    try {
                        int iY3 = fc.a.z(m0VarA.f8595c).y();
                        if (iY3 == 1) {
                            aVar = mc.a.ACTIVITY_IDLE;
                        } else if (iY3 == 2) {
                            aVar = mc.a.ACTIVITY_WALK;
                        } else if (iY3 == 3) {
                            aVar = mc.a.ACTIVITY_JOG;
                        } else if (iY3 != 4) {
                            aVar = iY3 != 5 ? aVar2 : mc.a.ACTIVITY_SPRINT;
                        } else {
                            aVar = mc.a.ACTIVITY_RUN;
                        }
                        f(str8, aVar);
                        return;
                    } catch (NullPointerException unused7) {
                        f(str8, aVar2);
                        return;
                    }
                }
                byte b11 = m0VarA.f8593a;
                d dVar12 = d.SESSION_AUTOADAPT_GET_CURRENT_STATE;
                if (b11 == ((byte) 173)) {
                    String str9 = f0.f8494s;
                    try {
                        f(str9, fc.d.z(m0VarA.f8595c).y() == 0 ? bVar : mc.b.ENABLED);
                        return;
                    } catch (NullPointerException unused8) {
                        f(str9, bVar);
                        return;
                    }
                }
                byte b12 = m0VarA.f8593a;
                d dVar13 = d.SESSION_DATA_TEMP_NOTIFICATION;
                if (b12 == ((byte) 177)) {
                    String str10 = f0.f8492q;
                    try {
                        fc.m mVarA = fc.m.A(m0VarA.f8595c);
                        f(str10, new mc.d0(mVarA.z(), mVarA.y()));
                        return;
                    } catch (NullPointerException unused9) {
                        f(str10, new mc.d0(0L, 0.0d));
                        return;
                    }
                }
                byte b13 = m0VarA.f8593a;
                d dVar14 = d.SESSION_GESTURE_EVENT_NOTIFICATION;
                if (b13 != ((byte) 182)) {
                    byte b14 = m0VarA.f8593a;
                    d dVar15 = d.ASCII_COMMAND;
                    if (b14 == ((byte) HttpStatusCodesKt.HTTP_OK)) {
                        byte[] bArr2 = m0VarA.f8595c;
                        e(null, 2, "posting CORERF_DEBUG_TEXT_NOTIFICATION", null);
                        try {
                            w0.a.b(androidx.lifecycle.o.n()).d(new Intent(f0.f8480e).putExtra(f0.f8496u, gc.j.B(bArr2).z()).putExtra(f0.f8481f, this.f8468k));
                            return;
                        } catch (Exception unused10) {
                            e(null, 1, "invalid payload in ASCII Command payload", null);
                            return;
                        }
                    }
                    return;
                }
                String str11 = f0.f8495t;
                try {
                    fc.f fVarB = fc.f.B(m0VarA.f8595c);
                    long jZ = fVarB.z();
                    boolean zA = fVarB.A();
                    int iA5 = fVarB.y().C().a();
                    if (iA5 == 1) {
                        mVar = mc.m.CLASSIFICATION_NONE;
                    } else if (iA5 != 2) {
                        mVar = iA5 != 3 ? mc.m.CLASSIFICATION_UNKNOWN : mc.m.CLASSIFICATION_DOUBLETAP_TRAINING;
                    } else {
                        mVar = mc.m.CLASSIFICATION_DOUBLETAP;
                    }
                    int iA6 = fVarB.y().A().a();
                    if (iA6 != 1) {
                        lVar = iA6 != 2 ? mc.l.ACTION_UNKNOWN : mc.l.ACTION_UNLACE;
                    } else {
                        lVar = mc.l.ACTION_NONE;
                    }
                    f(str11, new mc.p(jZ, zA, new mc.n(mVar, lVar)));
                } catch (NullPointerException unused11) {
                    f(str11, bVar);
                }
            } catch (Throwable unused12) {
            }
        }
    }

    public final synchronized void d(Runnable runnable) {
        ExecutorService executorService;
        synchronized (this) {
            executorService = this.f8460c;
        }
        if (executorService != null && !executorService.isShutdown()) {
            executorService.execute(runnable);
        }
    }

    public final void e(String str, int i10, String str2, Exception exc) {
        String strC = str == null ? "CoreRF" : androidx.recyclerview.widget.d.c("CoreRF:", str);
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("deviceId: ");
            sbC.append(this.f8468k);
            sbC.append(" ");
            sbC.append(str2);
            g0VarQ.a(sbC.toString(), exc, false, strC);
            return;
        }
        if (i11 == 1) {
            g0 g0VarQ2 = androidx.lifecycle.o.q();
            StringBuilder sbC2 = a0.b.c("deviceId: ");
            sbC2.append(this.f8468k);
            sbC2.append(" ");
            sbC2.append(str2);
            g0VarQ2.c(sbC2.toString(), exc, false, strC);
            return;
        }
        if (i11 != 2) {
            return;
        }
        g0 g0VarQ3 = androidx.lifecycle.o.q();
        StringBuilder sbC3 = a0.b.c("deviceId: ");
        sbC3.append(this.f8468k);
        sbC3.append(" ");
        sbC3.append(str2);
        g0VarQ3.b(sbC3.toString(), exc, strC);
    }

    public final void f(String str, Parcelable parcelable) {
        w0.a.b(androidx.lifecycle.o.n()).d(new Intent(f0.f8480e).putExtra(str, parcelable).putExtra(f0.f8481f, this.f8468k));
    }

    public final void g() {
        ExecutorService executorService;
        synchronized (this) {
            executorService = this.f8460c;
        }
        if (executorService != null) {
            try {
                try {
                    List<Runnable> listShutdownNow = executorService.shutdownNow();
                    if (!executorService.awaitTermination(5L, TimeUnit.SECONDS)) {
                        e(null, 1, "not all execution tasks were cancelled!  Dumping list: " + listShutdownNow, null);
                    }
                } catch (InterruptedException unused) {
                    e(null, 1, "interrupted while waiting for executor to terminate", null);
                }
                n(null);
            } catch (Throwable th) {
                n(null);
                throw th;
            }
        }
        p0 p0Var = this.f8462e;
        if (p0Var != null) {
            p0Var.f8618f = true;
            p0Var.f8617e.clear();
            this.f8462e = null;
        }
        this.f8466i = 0;
        this.f8463f = 0;
        this.f8467j = 1;
        this.f8464g = 0;
        this.f8465h = 0;
        this.f8461d = null;
        e(null, 3, "CoreRF has been reset", null);
    }

    public final void h(m0 m0Var) throws kc.f {
        BluetoothGatt bluetoothGatt = this.f8461d;
        if (bluetoothGatt == null || !this.f8459b) {
            e(null, 1, "not connected to device", null);
            throw new kc.f();
        }
        BluetoothGattService service = bluetoothGatt.getService(f0.f8477b);
        if (service == null) {
            StringBuilder sbC = a0.b.c("Couldn't find ripley service during NAK: ");
            sbC.append(f0.f8477b.toString());
            e(null, 1, sbC.toString(), null);
            return;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(f0.f8478c);
        q0 q0Var = new q0(this, this.f8468k, this.f8461d, characteristic);
        synchronized (this) {
            ArrayList<byte[]> arrayListB = q0Var.b(m0Var, this.f8463f);
            this.f8463f = (this.f8463f + 1) % 64;
            if (arrayListB != null && arrayListB.size() >= 1) {
                this.f8462e.d(characteristic, arrayListB.get(0));
                q0Var.a();
                return;
            }
            e(null, 1, "Invalid ACK created.", null);
        }
    }

    @Deprecated
    public final void i(m0 m0Var) throws kc.f {
        BluetoothGatt bluetoothGatt = this.f8461d;
        if (bluetoothGatt == null || !this.f8459b) {
            e(null, 1, "not connected to device", null);
            throw new kc.f();
        }
        BluetoothGattService service = bluetoothGatt.getService(f0.f8477b);
        if (service == null) {
            StringBuilder sbC = a0.b.c("Couldn't find ripley service during command: ");
            sbC.append(f0.f8477b.toString());
            e(null, 1, sbC.toString(), null);
            return;
        }
        q0 q0Var = new q0(this, this.f8468k, this.f8461d, service.getCharacteristic(f0.f8478c));
        synchronized (this) {
            ArrayList<byte[]> arrayListB = q0Var.b(m0Var, this.f8463f);
            if (arrayListB != null && arrayListB.size() >= 1) {
                int size = (this.f8463f + arrayListB.size()) % 64;
                this.f8463f = size;
                q0Var.f8627m = size;
                q0Var.f8629o = arrayListB;
                d(q0Var);
                return;
            }
            e(null, 1, "Invalid payload created.", null);
        }
    }

    public final <T> void j(String str, m0 m0Var, pc.c<T> cVar) throws TimeoutException {
        try {
            k(str, m0Var, cVar, 2000L);
        } catch (kc.f e10) {
            g();
            cVar.b(e10);
        }
    }

    public final <T> void k(String str, m0 m0Var, pc.c<T> cVar, long j10) throws kc.f, TimeoutException {
        byte[][] bArr = {null};
        BluetoothGatt bluetoothGatt = this.f8461d;
        if (bluetoothGatt == null || !this.f8459b) {
            e(null, 1, "not connected to device", null);
            throw new kc.f();
        }
        BluetoothGattService service = bluetoothGatt.getService(f0.f8477b);
        if (service == null) {
            StringBuilder sbC = a0.b.c("Couldn't find ripley service during command: ");
            sbC.append(f0.f8477b.toString());
            e(null, 1, sbC.toString(), null);
            return;
        }
        BluetoothGattCharacteristic characteristic = service.getCharacteristic(f0.f8478c);
        a aVar = new a(m0Var, bArr);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE");
        w0.a.b(androidx.lifecycle.o.n()).c(aVar, intentFilter);
        q0 q0Var = new q0(this, this.f8468k, this.f8461d, characteristic);
        synchronized (this) {
            ArrayList<byte[]> arrayListB = q0Var.b(m0Var, this.f8463f);
            if (arrayListB != null && arrayListB.size() >= 1) {
                int size = (this.f8463f + arrayListB.size()) % 64;
                this.f8463f = size;
                q0Var.f8627m = size;
                q0Var.f8629o = arrayListB;
                d(q0Var);
                try {
                    synchronized (bArr) {
                        bArr.wait(j10);
                    }
                    if (bArr[0] != null) {
                        w0.a.b(androidx.lifecycle.o.n()).e(aVar);
                        q0Var.a();
                        cVar.c(bArr[0]);
                        return;
                    }
                    Exception timeoutException = new TimeoutException(str + " TimedOut");
                    e(null, 1, "Timeout occurred when issuing request of " + str + ".", timeoutException);
                    cVar.b(timeoutException);
                    w0.a.b(androidx.lifecycle.o.n()).e(aVar);
                    throw timeoutException;
                } catch (InterruptedException unused) {
                    Exception timeoutException2 = new TimeoutException(androidx.recyclerview.widget.d.c(str, " TimedOut"));
                    e(null, 1, a0.d.c("Timeout occurred when issuing request of ", str, "."), timeoutException2);
                    w0.a.b(androidx.lifecycle.o.n()).e(aVar);
                    throw timeoutException2;
                }
            }
            e(null, 1, "Invalid payload created.", null);
        }
    }

    public final void l(byte b10) throws kc.f {
        BluetoothGatt bluetoothGatt = this.f8461d;
        if (bluetoothGatt == null || !this.f8459b) {
            e(null, 1, "not connected to device", null);
            throw new kc.f();
        }
        BluetoothGattService service = bluetoothGatt.getService(f0.f8477b);
        if (service == null) {
            e(null, 1, "Couldn't find ripley service during flow control", null);
        } else {
            this.f8462e.d(service.getCharacteristic(f0.f8478c), new byte[]{(byte) (b10 | 64 | (-128)), 0});
        }
    }

    public final synchronized void n(ExecutorService executorService) {
        this.f8460c = executorService;
    }

    public final boolean p(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr) {
        BluetoothGatt bluetoothGatt = this.f8461d;
        if (bluetoothGatt == null) {
            return false;
        }
        e(null, 2, String.format("[%s] transportSent(%s)", bluetoothGatt.getDevice().getAddress(), o(bArr)), null);
        boolean zB = b2.h.b(bArr[0]);
        int i10 = bArr[0] & 63;
        int iM = m(this.f8466i, i10);
        if (i10 > 0 && !zB && iM >= 4) {
            return false;
        }
        bluetoothGattCharacteristic.setValue(bArr);
        BluetoothGatt bluetoothGatt2 = this.f8461d;
        if (bluetoothGatt2 != null) {
            return bluetoothGatt2.writeCharacteristic(bluetoothGattCharacteristic);
        }
        return false;
    }
}
