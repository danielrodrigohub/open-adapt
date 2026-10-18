package hc;

import android.bluetooth.BluetoothGatt;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.appcompat.widget.y0;
import androidx.fragment.app.r0;
import com.newrelic.agent.android.payload.PayloadController;
import java.io.ByteArrayOutputStream;
import java.util.Arrays;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import okhttp3.internal.http.HttpStatusCodesKt;
import okhttp3.internal.http2.Settings;

/* JADX INFO: compiled from: FileTransfer.java */
/* JADX INFO: loaded from: classes.dex */
public final class k0 extends BroadcastReceiver {
    public static int F = 508 - 3;
    public ByteArrayOutputStream A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f8521a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f8522b;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f8526f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f8527g;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final e f8532l;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final String f8542v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public pc.a f8543w;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public byte[] f8546z;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public gc.a f8523c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public gc.d f8524d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f8525e = new Object();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f8528h = 0;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8529i = 0;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f8530j = 0;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f8531k = 0;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int[] f8533m = new int[3];

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public byte[] f8534n = null;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f8535o = 0;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f8536p = 0;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public int f8537q = 0;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public int f8538r = 0;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f8539s = 5;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public int f8540t = 1;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final Object f8541u = new Object();

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public AtomicInteger f8544x = new AtomicInteger(0);

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public AtomicBoolean f8545y = new AtomicBoolean(false);
    public Timer B = new Timer();
    public j0 C = null;
    public boolean E = false;
    public final boolean D = false;

    public k0(e eVar, String str, pc.a aVar) {
        this.f8532l = eVar;
        this.f8542v = str;
        this.f8543w = aVar;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED");
        intentFilter.addAction("com.nike.corerf.ACTION_RIPLEY_MESSAGE_SEND_COMPLETE");
        intentFilter.addAction("com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE");
        intentFilter.addAction("com.nike.corerf.ACTION_BIGFOOT_FILE_TRANSFER_COMPLETED");
        intentFilter.addAction("com.nike.corerf.ACTION_BIGFOOT_FIRMWARE_TRANSFER_CHECK_VALIDATED");
        w0.a.b(androidx.lifecycle.o.n()).c(this, intentFilter);
    }

    public final void a(int i10, int i11, int i12) {
        if (this.f8532l == null) {
            return;
        }
        this.f8543w.f13422b.g();
        this.A = new ByteArrayOutputStream(i12);
        this.f8536p = 0;
        this.f8537q = i12;
        j();
        j0 j0Var = new j0(this);
        this.C = j0Var;
        this.B.schedule(j0Var, PayloadController.PAYLOAD_COLLECTOR_TIMEOUT);
        gc.e.a aVarE = gc.e.E();
        aVarE.k();
        gc.e.y((gc.e) aVarE.f10785i, i10);
        aVarE.k();
        gc.e.x((gc.e) aVarE.f10785i, i11);
        aVarE.k();
        gc.e.z((gc.e) aVarE.f10785i, i12);
        gc.e eVarH = aVarE.h();
        d dVar = d.SESSION_PULL_REQUEST;
        try {
            this.f8532l.i(new m0((byte) 161, m0.a.REQUEST, eVarH.m()));
        } catch (kc.f e10) {
            e();
            g(e10);
        }
    }

    public final void b(byte[] bArr) {
        this.f8546z = bArr;
        if (rc.a.b(bArr)) {
            byte[] bArr2 = this.f8546z;
            try {
                this.f8523c = gc.a.E(Arrays.copyOfRange(bArr2, 4, ((short) (bArr2[2] | ((bArr2[3] & 255) << 8))) + 4));
            } catch (m7.z e10) {
                androidx.lifecycle.o.q().c("InvalidProtocolBufferException", e10, false, "FileTransfer");
            }
            for (gc.c cVar : this.f8523c.C()) {
                this.f8522b = (cVar.E() / HttpStatusCodesKt.HTTP_LOOP_DETECTED) + 1 + this.f8522b;
            }
            if (this.f8523c.B() == 1 && this.f8523c.A(0).F().a() > gc.c.b.BLE_GOLD.a()) {
                this.f8546z = Arrays.copyOfRange(this.f8546z, this.f8523c.a() + 4, this.f8546z.length);
            }
        }
        if (this.f8526f != 0 || this.f8523c == null) {
            return;
        }
        gc.d.a aVarC = gc.d.C();
        int iHashCode = Arrays.hashCode(this.f8546z) & Integer.MAX_VALUE;
        aVarC.k();
        gc.d.x((gc.d) aVarC.f10785i, iHashCode);
        gc.a aVar = this.f8523c;
        aVarC.k();
        gc.d.y((gc.d) aVarC.f10785i, aVar);
        gc.d dVarH = aVarC.h();
        this.f8524d = dVarH;
        d dVar = d.FIRMWARE_AVAILABLE;
        try {
            this.f8532l.i(new m0((byte) 10, m0.a.REQUEST, dVarH.m()));
        } catch (kc.f e11) {
            e();
            g(e11);
        }
        androidx.lifecycle.o.q().c("sent initial FIRMWARE_AVAILABLE command", null, false, "FileTransfer");
        androidx.lifecycle.o.q().c(this.f8524d.toString(), null, false, "FileTransfer");
    }

    public final void c(boolean z10) {
        BluetoothGatt bluetoothGatt;
        if (!z10 && this.D && (bluetoothGatt = this.f8532l.f8461d) != null) {
            bluetoothGatt.requestConnectionPriority(0);
        }
        if (!z10) {
            h(gc.g.b.SUCCESS);
        }
        this.f8545y.set(true);
        this.A = null;
        this.f8536p = 0;
        this.f8543w.b(new kc.c.h(this.f8542v));
        j();
    }

    public final kc.c d(int i10, gc.r rVar) {
        int i11;
        if (i10 != 0) {
            i11 = i10 != 1 ? 3 : 2;
        } else {
            i11 = 1;
        }
        if (rVar == null) {
            return new kc.c.d(this.f8542v, y0.a(this.f8540t), this.f8540t != 1);
        }
        int i12 = this.f8540t;
        if (i12 == 0) {
            throw null;
        }
        if (i12 == 2) {
            StringBuilder sbH = r0.h("POST_UPLOAD_INFO", " deviceId: ");
            sbH.append(this.f8542v);
            sbH.append(" Image Slot: ");
            if (i10 == 0) {
                sbH.append("MCU");
            } else if (i10 == 1) {
                sbH.append("BLE");
            } else {
                sbH.append("CAPSENSE");
            }
            sbH.append(" Expected Image Checksum: ");
            sbH.append(this.f8533m[i10]);
            sbH.append(" Actual Image Checksum: ");
            sbH.append(rVar.z());
            sbH.append(" Image Status: ");
            sbH.append(rVar.F().toString());
            androidx.lifecycle.o.q().c(sbH.toString(), null, false, "ImageStats");
        }
        androidx.lifecycle.o.q().c(String.format("checksum for slot:%d; local:%d = remote:%d", Integer.valueOf(y0.b(this.f8540t) + i10), Integer.valueOf(this.f8533m[i10]), Integer.valueOf(rVar.z())), null, false, "FileTransfer");
        if (this.f8533m[i10] != rVar.z()) {
            androidx.lifecycle.o.q().c(String.format("checksum for slot is not correct!!!:%d; local:%d != remote:%d", Integer.valueOf(y0.b(this.f8540t) + i10), Integer.valueOf(this.f8533m[i10]), Integer.valueOf(rVar.z())), null, false, "FileTransfer");
            return new kc.c.e.a(this.f8542v, i11, this.f8533m[i10], rVar.z(), y0.a(this.f8540t));
        }
        if (rVar.F() != gc.r.b.FW_IMG_CURRENT && rVar.F() != gc.r.b.FW_IMG_READY) {
            androidx.lifecycle.o.q().c(String.format("status for slot:%d failed with %s", Integer.valueOf(y0.b(this.f8540t) + i10), rVar.F().toString()), null, false, "FileTransfer");
            return new kc.c.e.b(this.f8542v, i11, rVar.F().toString(), y0.a(this.f8540t));
        }
        String str = String.format("%d.%d.%d", Integer.valueOf(rVar.C()), Integer.valueOf(rVar.D()), Integer.valueOf(rVar.E()));
        if (!str.equalsIgnoreCase(this.f8524d.B().A(i10).G())) {
            androidx.lifecycle.o.q().c(String.format("version mis-match for slot:%d failed version from fw header: %s uploadedVersionString %s", Integer.valueOf(y0.b(this.f8540t) + i10), this.f8524d.B().A(i10).G(), str), null, false, "FileTransfer");
            return new kc.c.e.C0191c(this.f8542v, i11, this.f8524d.B().A(i10).G(), str, y0.a(this.f8540t));
        }
        g0 g0VarQ = androidx.lifecycle.o.q();
        StringBuilder sbC = a0.b.c("valid state for slot ");
        sbC.append(y0.b(this.f8540t) + i10);
        g0VarQ.c(sbC.toString(), null, false, "FileTransfer");
        return null;
    }

    public final void e() {
        w0.a.b(androidx.lifecycle.o.n()).e(this);
        j();
        this.A = null;
    }

    public final gc.r f(int i10) {
        gc.r rVarG = null;
        androidx.lifecycle.o.q().c(androidx.appcompat.widget.e0.d("requesting slot stats for #", i10), null, false, "FileTransfer");
        gc.s.a aVarZ = gc.s.z();
        aVarZ.m(y0.b(this.f8540t) + i10);
        gc.s sVarH = aVarZ.h();
        d dVar = d.FIRMWARE_GET_IMAGE_STATS;
        try {
            this.f8532l.i(new m0((byte) 19, m0.a.REQUEST, sVarH.m()));
        } catch (kc.f e10) {
            e();
            g(e10);
        }
        synchronized (this.f8541u) {
            try {
                this.f8541u.wait(3000L);
            } catch (InterruptedException unused) {
                androidx.lifecycle.o.q().c("interruption waiting for stats object from peripheral", null, false, "FileTransfer");
            }
            byte[] bArr = this.f8534n;
            if (bArr != null) {
                try {
                    rVarG = gc.r.G(bArr);
                } catch (m7.z unused2) {
                    androidx.lifecycle.o.q().c("couldn't get stats for slot " + (i10 + y0.b(this.f8540t)), null, false, "FileTransfer");
                }
            }
        }
        return rVarG;
    }

    public final void g(Throwable th) {
        if (this.E) {
            return;
        }
        this.E = true;
        this.f8543w.b(th);
    }

    public final void h(gc.g.b bVar) {
        gc.g.a aVarA = gc.g.A();
        aVarA.k();
        gc.g.x((gc.g) aVarA.f10785i, bVar);
        gc.g gVarH = aVarA.h();
        d dVar = d.FIRMWARE_STOP_TRANSFER;
        try {
            this.f8532l.i(new m0((byte) 17, m0.a.EVENT, gVarH.m()));
        } catch (kc.f unused) {
        }
    }

    public final void i() {
        int i10 = this.f8526f;
        int i11 = HttpStatusCodesKt.HTTP_LOOP_DETECTED;
        int i12 = i10 * HttpStatusCodesKt.HTTP_LOOP_DETECTED;
        int i13 = this.f8528h + i12;
        int i14 = this.f8529i - i12;
        if (i14 > 0 && i14 < 508) {
            i11 = i14;
        }
        this.f8530j += i11;
        if (this.f8545y.get()) {
            g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("transfer cancelled isGoldSlot=");
            sbC.append(y0.a(this.f8540t));
            g0VarQ.c(sbC.toString(), null, false, "FileTransfer");
            h(gc.g.b.POWERING_DOWN);
            this.f8526f = 0;
            this.f8521a = 0;
            return;
        }
        this.f8543w.f13422b.i(this.f8527g, this.f8522b);
        int i15 = this.f8526f;
        int i16 = i11 + 2;
        byte[] bArr = new byte[i16];
        System.arraycopy(this.f8546z, i13, bArr, 2, i11);
        int i17 = (i13 + i11) - this.f8528h >= this.f8529i ? 128 : 0;
        bArr[0] = (byte) (i15 & 255);
        bArr[1] = (byte) ((i15 >> 8) | ((byte) i17));
        this.f8526f++;
        this.f8527g++;
        androidx.lifecycle.o.q().c(String.format("sending FIRMWARE_TRANSMIT_SEGMENT isGoldSlot=%s deviceId=%s slotOffset=%d; overAlloffset=%d; slotSize=%d; totalSize=%d; buffersize=%d", Boolean.valueOf(y0.a(this.f8540t)), this.f8542v, Integer.valueOf(this.f8526f), Integer.valueOf(this.f8527g), Integer.valueOf(this.f8521a), Integer.valueOf(this.f8522b), Integer.valueOf(i16)), null, false, "FileTransfer");
        this.f8544x.incrementAndGet();
        d dVar = d.FIRMWARE_TRANSMIT_SEGMENT;
        try {
            this.f8532l.i(new m0((byte) 15, m0.a.EVENT, bArr));
        } catch (kc.f e10) {
            e();
            g(e10);
        }
    }

    public final void j() {
        j0 j0Var = this.C;
        if (j0Var != null) {
            j0Var.cancel();
        }
        this.B.purge();
        this.C = null;
    }

    /* JADX WARN: Type inference failed for: r5v4, types: [java.util.HashMap, java.util.Map<java.lang.Integer, hc.d>] */
    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        String stringExtra;
        gc.e eVarF;
        gc.d dVar;
        gc.b.EnumC0159b enumC0159bY;
        gc.h hVarZ;
        byte[] bArrR;
        short s10;
        boolean z10;
        gc.f fVarH;
        gc.g.b bVarZ;
        gc.g.b bVar = gc.g.b.SUCCESS;
        if (intent == null || (stringExtra = intent.getStringExtra("com.nike.corerf.DEVICE_ID")) == null || !stringExtra.equals(this.f8542v)) {
            return;
        }
        if (intent.getAction().equals("com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED")) {
            while (this.f8544x.get() > 0) {
                synchronized (this.f8525e) {
                    this.f8544x.decrementAndGet();
                    this.f8525e.notifyAll();
                }
            }
            if (this.f8526f == this.f8521a) {
                g0 g0VarQ = androidx.lifecycle.o.q();
                StringBuilder sbC = a0.b.c("finished sending slot: ");
                sbC.append(this.f8526f);
                sbC.append(" of total: ");
                sbC.append(this.f8521a);
                g0VarQ.c(sbC.toString(), null, false, "FileTransfer");
                return;
            }
            return;
        }
        if (!intent.getAction().equals("com.nike.corerf.ACTION_RIPLEY_MESSAGE_AVAILABLE")) {
            if (!intent.getAction().equals("com.nike.corerf.ACTION_RIPLEY_MESSAGE_SEND_COMPLETE")) {
                if (intent.getAction().equals("com.nike.corerf.ACTION_BIGFOOT_FIRMWARE_TRANSFER_CHECK_VALIDATED") || intent.getAction().equals("com.nike.corerf.ACTION_BIGFOOT_FILE_TRANSFER_COMPLETED")) {
                    g0 g0VarQ2 = androidx.lifecycle.o.q();
                    StringBuilder sbC2 = a0.b.c("firmware post-upload check appears valid isGoldSlot=");
                    sbC2.append(y0.a(this.f8540t));
                    g0VarQ2.c(sbC2.toString(), null, false, "FileTransfer");
                    this.f8543w.f13422b.b(fd.o.f7408a);
                    e();
                    return;
                }
                return;
            }
            int intExtra = intent.getIntExtra("com.nike.corerf.EXTRA_DATA", -1);
            d dVar2 = d.FIRMWARE_TRANSMIT_SEGMENT;
            if (intExtra == 15 && this.f8526f < this.f8521a) {
                androidx.lifecycle.o.q().c("calling next sendHandler()", null, false, "FileTransfer");
                while (this.f8544x.get() > 0) {
                    synchronized (this.f8525e) {
                        try {
                            androidx.lifecycle.o.q().c(String.format("waiting for segment %d sent notification on ThreadID: %d", Integer.valueOf(this.f8526f), Long.valueOf(Thread.currentThread().getId())), null, false, "FileTransfer");
                            this.f8525e.wait();
                        } catch (InterruptedException e10) {
                            e10.printStackTrace();
                        }
                    }
                }
                i();
                return;
            }
            return;
        }
        m0 m0VarA = m0.a(intent.getByteArrayExtra("com.nike.corerf.EXTRA_DATA"));
        if (m0VarA == null) {
            androidx.lifecycle.o.q().a("null message sent to onRipleyMessageReceived()", null, false, "FileTransfer");
            return;
        }
        androidx.lifecycle.o.q().c(String.format("parsing state: %d", Byte.valueOf(m0VarA.f8593a)), null, false, "FileTransfer");
        byte b10 = m0VarA.f8593a;
        ?? r10 = d.f8448t0;
        if (((d) r10.get(Integer.valueOf(b10))) == null) {
            return;
        }
        int iOrdinal = ((d) r10.get(Integer.valueOf(m0VarA.f8593a))).ordinal();
        int i10 = 4;
        switch (iOrdinal) {
            case 9:
                if (m0VarA.f8594b == m0.a.NAK) {
                    g(new kc.c.b(this.f8542v, y0.a(this.f8540t), this.f8540t != 1));
                    return;
                }
                return;
            case 10:
                if (m0VarA.f8594b == m0.a.NAK) {
                    g(new kc.c.C0190c(this.f8542v, y0.a(this.f8540t), this.f8540t != 1));
                    c(false);
                    e();
                    return;
                }
                if (this.D) {
                    this.f8532l.f8461d.requestConnectionPriority(1);
                }
                if (m0VarA.f8594b == m0.a.ACK) {
                    androidx.lifecycle.o.q().c(a1.f.d(a0.b.c("FIRMWARE_PULL deviceId="), this.f8542v, " received ACK with pull."), null, false, "FileTransfer");
                    i();
                    return;
                }
                if (m0VarA.f8595c != null) {
                    g0 g0VarQ3 = androidx.lifecycle.o.q();
                    StringBuilder sbC3 = a0.b.c("FIRMWARE_PULL deviceId=");
                    sbC3.append(this.f8542v);
                    sbC3.append(" received message action: ");
                    sbC3.append(m0VarA.f8594b);
                    g0VarQ3.c(sbC3.toString(), null, false, "FileTransfer");
                    try {
                        eVarF = gc.e.F(m0VarA.f8595c);
                        break;
                    } catch (m7.z e11) {
                        g0 g0VarQ4 = androidx.lifecycle.o.q();
                        StringBuilder sbC4 = a0.b.c("FIRMWARE_PULL deviceId=");
                        sbC4.append(this.f8542v);
                        sbC4.append(" badPayload: ");
                        sbC4.append(e11.getLocalizedMessage());
                        g0VarQ4.c(sbC4.toString(), null, false, "FileTransfer");
                        eVarF = null;
                    }
                    if (this.f8546z == null || this.f8523c == null || (dVar = this.f8524d) == null || eVarF == null || dVar.A() != eVarF.C() || this.f8546z.length < eVarF.D() + eVarF.B()) {
                        g0 g0VarQ5 = androidx.lifecycle.o.q();
                        String strD = a1.f.d(a0.b.c("FIRMWARE_PULL deviceId="), this.f8542v, " invalid size (%d != %d); file ID %d != %d; or no local data available");
                        Object[] objArr = new Object[4];
                        byte[] bArr = this.f8546z;
                        objArr[0] = Integer.valueOf(bArr == null ? 0 : bArr.length);
                        objArr[1] = Integer.valueOf(eVarF.D() + eVarF.B());
                        objArr[2] = Integer.valueOf(this.f8524d.A());
                        objArr[3] = Integer.valueOf(eVarF.C());
                        g0VarQ5.a(String.format(strD, objArr), null, false, "FileTransfer");
                        d dVar3 = d.FIRMWARE_PULL;
                        try {
                            this.f8532l.h(new m0((byte) 11, m0.a.NAK, null));
                            return;
                        } catch (kc.f e12) {
                            e();
                            g(e12);
                            return;
                        }
                    }
                    this.f8528h = eVarF.B();
                    int iD = eVarF.D();
                    this.f8529i = iD;
                    this.f8526f = 0;
                    this.f8521a = (iD / HttpStatusCodesKt.HTTP_LOOP_DETECTED) + 1;
                    this.f8531k += iD;
                    this.f8533m[this.f8535o] = rc.a.a(this.f8546z, this.f8528h, iD);
                    androidx.lifecycle.o.q().c(String.format(a1.f.d(a0.b.c("FIRMWARE_PULL deviceId="), this.f8542v, " PULL request id=%d; offset=%d; size=%d; chksum=%d"), Integer.valueOf(eVarF.C()), Integer.valueOf(this.f8528h), Integer.valueOf(this.f8529i), Integer.valueOf(this.f8533m[this.f8535o])), null, false, "FileTransfer");
                    try {
                        e eVar = this.f8532l;
                        d dVar4 = d.FIRMWARE_PULL;
                        eVar.h(new m0((byte) 11, m0.a.ACK, null));
                        break;
                    } catch (kc.f e13) {
                        e();
                        g(e13);
                    }
                    androidx.lifecycle.o.q().c(a1.f.d(a0.b.c("FIRMWARE_PULL deviceId="), this.f8542v, " PULL ack sent"), null, false, "FileTransfer");
                    return;
                }
                return;
            case 11:
            case 13:
            case 17:
            default:
                g0 g0VarQ6 = androidx.lifecycle.o.q();
                StringBuilder sbC5 = a0.b.c("FIRMWARE_UNKNOWN deviceId=");
                sbC5.append(this.f8542v);
                sbC5.append(" received unhandled command: ");
                sbC5.append(m0VarA.toString());
                g0VarQ6.c(sbC5.toString(), null, false, "FileTransfer");
                return;
            case 12:
                if (this.D) {
                    this.f8532l.f8461d.requestConnectionPriority(0);
                }
                androidx.lifecycle.o.q().c(String.format("received FIRMWARE_DOWNLOAD_COMPLETE isGoldSlot=%s deviceId=%s, command - sent %d of %d (excluding FA header)", Boolean.valueOf(y0.a(this.f8540t)), this.f8542v, Integer.valueOf(this.f8530j), Integer.valueOf(this.f8531k)), null, false, "FileTransfer");
                try {
                    enumC0159bY = gc.b.z(m0VarA.f8595c).y();
                    break;
                } catch (m7.z unused) {
                    g0 g0VarQ7 = androidx.lifecycle.o.q();
                    StringBuilder sbC6 = a0.b.c("FIRMWARE_DOWNLOAD_COMPLETE Firmware update completed with invalid status deviceId=");
                    sbC6.append(this.f8542v);
                    g0VarQ7.c(sbC6.toString(), null, false, "FileTransfer");
                    enumC0159bY = null;
                }
                if (this.f8527g == this.f8522b) {
                    if (enumC0159bY != null && enumC0159bY == gc.b.EnumC0159b.SUCCESS) {
                        if (this.f8523c.B() != 1 || this.f8523c.A(0).F().a() <= gc.c.b.BLE_GOLD.a()) {
                            new Thread(new x.a(this, i10)).start();
                            return;
                        } else {
                            this.f8532l.a("com.nike.corerf.ACTION_BIGFOOT_FILE_TRANSFER_COMPLETED");
                            return;
                        }
                    }
                    String string = enumC0159bY != null ? enumC0159bY.toString() : "no_reason_supplied";
                    g0 g0VarQ8 = androidx.lifecycle.o.q();
                    StringBuilder sbC7 = a0.b.c("FIRMWARE_DOWNLOAD_COMPLETE deviceId=");
                    sbC7.append(this.f8542v);
                    sbC7.append(" Firmware update completed with error status: ");
                    sbC7.append(string);
                    g0VarQ8.a(sbC7.toString(), null, false, "FileTransfer");
                    g(new kc.c.a(this.f8542v, y0.a(this.f8540t), this.f8540t != 1, string));
                    e();
                    return;
                }
                return;
            case 14:
                break;
            case 15:
                if (m0VarA.f8594b != m0.a.EVENT) {
                    g0 g0VarQ9 = androidx.lifecycle.o.q();
                    StringBuilder sbC8 = a0.b.c("FIRMWARE_RETRANSMIT_SEGMENT non-event received: ");
                    sbC8.append(m0VarA.f8594b.toString());
                    g0VarQ9.a(sbC8.toString(), null, false, "FileTransfer");
                    return;
                }
                androidx.lifecycle.o.q().c(a1.f.d(a0.b.c("received FIRMWARE_RETRANSMIT_SEGMENT  deviceId="), this.f8542v, " command"), null, false, "FileTransfer");
                try {
                    byte[] bArr2 = m0VarA.f8595c;
                    if (bArr2 == null) {
                        gc.f.a aVarA = gc.f.A();
                        aVarA.m(0);
                        fVarH = aVarA.h();
                    } else {
                        fVarH = gc.f.B(bArr2);
                    }
                    break;
                } catch (m7.z unused2) {
                    androidx.lifecycle.o.q().a(a1.f.d(a0.b.c("received invalid FIRMWARE_RETRANSMIT_SEGMENT  deviceId="), this.f8542v, " command"), null, false, "FileTransfer");
                    gc.f.a aVarA2 = gc.f.A();
                    aVarA2.m(0);
                    fVarH = aVarA2.h();
                }
                g0 g0VarQ10 = androidx.lifecycle.o.q();
                StringBuilder sbC9 = a0.b.c("resending FIRMWARE_RETRANSMIT_SEGMENT deviceId=");
                sbC9.append(this.f8542v);
                sbC9.append(" index: ");
                sbC9.append(fVarH.z());
                g0VarQ10.c(sbC9.toString(), null, false, "FileTransfer");
                this.f8526f = fVarH.z();
                return;
            case 16:
                androidx.lifecycle.o.q().c(a1.f.d(a0.b.c("received FIRMWARE_STOP_TRANSFER deviceId="), this.f8542v, " command"), null, false, "FileTransfer");
                this.f8535o++;
                if (this.D) {
                    this.f8532l.f8461d.requestConnectionPriority(0);
                }
                try {
                    byte[] bArr3 = m0VarA.f8595c;
                    bVarZ = bArr3 != null ? gc.g.B(bArr3).z() : bVar;
                    try {
                        androidx.lifecycle.o.q().a("FIRMWARE_STOP_TRANSFER Firmware stop transfer received deviceId=" + this.f8542v + " stopReason:" + bVarZ, null, false, "FileTransfer");
                    } catch (m7.z unused3) {
                        g0 g0VarQ11 = androidx.lifecycle.o.q();
                        StringBuilder sbC10 = a0.b.c("FIRMWARE_STOP_TRANSFER Firmware stop transfer received with invalid status deviceId=");
                        sbC10.append(this.f8542v);
                        g0VarQ11.a(sbC10.toString(), null, false, "FileTransfer");
                    }
                    break;
                } catch (m7.z unused4) {
                    bVarZ = null;
                }
                if (bVarZ == null || bVarZ == bVar) {
                    return;
                }
                g0 g0VarQ12 = androidx.lifecycle.o.q();
                StringBuilder sbC11 = a0.b.c("FIRMWARE_STOP_TRANSFER Firmware deviceId=");
                sbC11.append(this.f8542v);
                sbC11.append(" stop transfer received with invalid status: ");
                sbC11.append(bVarZ.toString());
                g0VarQ12.a(sbC11.toString(), null, false, "FileTransfer");
                g(new kc.c.f(this.f8542v, y0.a(this.f8540t), this.f8540t != 1, bVarZ.toString()));
                if (m0VarA.f8594b == m0.a.EVENT) {
                    g0 g0VarQ13 = androidx.lifecycle.o.q();
                    StringBuilder sbC12 = a0.b.c("FIRMWARE_STOP_TRANSFER received unexpected stop from peripheral deviceId=");
                    sbC12.append(this.f8542v);
                    sbC12.append(" stopReason:");
                    sbC12.append(bVarZ);
                    g0VarQ13.c(sbC12.toString(), null, false, "FileTransfer");
                    c(false);
                    e();
                    return;
                }
                return;
            case 18:
                if (m0VarA.f8594b == m0.a.ACK && m0VarA.f8595c != null) {
                    synchronized (this.f8541u) {
                        byte[] bArr4 = m0VarA.f8595c;
                        byte[] bArr5 = new byte[bArr4.length];
                        this.f8534n = bArr5;
                        System.arraycopy(bArr4, 0, bArr5, 0, bArr4.length);
                        this.f8541u.notifyAll();
                    }
                }
                break;
        }
        m0.a aVar = m0VarA.f8594b;
        if (aVar == m0.a.ACK) {
            this.f8544x.decrementAndGet();
            synchronized (this.f8525e) {
                this.f8525e.notifyAll();
            }
            return;
        }
        if (aVar == m0.a.EVENT) {
            try {
                hVarZ = gc.h.z(m0VarA.f8595c);
            } catch (m7.z e14) {
                androidx.lifecycle.o.q().a(String.format("TRANSMIT_SEGMENT received with invalid payload (size of %d): %s", Integer.valueOf(m0VarA.f8595c.length), e14.getLocalizedMessage()), null, false, "FileTransfer");
                hVarZ = null;
            }
            if (hVarZ == null) {
                androidx.lifecycle.o.q().a("TRANSMIT_SEGMENT received with empty payload", null, false, "FileTransfer");
            }
            if (hVarZ != null) {
                bArrR = hVarZ.y().r();
                s10 = (short) ((((bArrR[1] & 127) << 8) | (bArrR[0] & 255)) & Settings.DEFAULT_INITIAL_WINDOW_SIZE);
                z10 = -128 == (bArrR[1] & (-128));
                androidx.lifecycle.o.q().c(String.format("valid segmentReceived %d segmentBytes[0]=%d segmentBytes[1]=%d", Short.valueOf(s10), Byte.valueOf(bArrR[0]), Byte.valueOf(bArrR[1])), null, false, "FileTransfer");
            } else {
                bArrR = null;
                s10 = 0;
                z10 = false;
            }
            if (bArrR == null || s10 != this.f8536p) {
                androidx.lifecycle.o.q().a(String.format("invalid segment %d (expecting %d)", Short.valueOf(s10), Integer.valueOf(this.f8536p)), null, false, "FileTransfer");
                if (this.f8538r > 5) {
                    h(gc.g.b.FILE_ERROR);
                    this.f8532l.a("com.nike.corerf.ACTION_BIGFOOT_TRANSFER_RECEIVE_FAILED");
                }
                int i11 = this.f8539s;
                this.f8539s = i11 + 1;
                if (i11 < 3) {
                    androidx.lifecycle.o.q().a(String.format("dropping segment %d, waiting for retransmit of %d", Short.valueOf(s10), Integer.valueOf(this.f8536p)), null, false, "FileTransfer");
                    return;
                }
                this.f8538r++;
                this.f8539s = 0;
                int i12 = this.f8536p;
                if (this.f8532l == null) {
                    return;
                }
                androidx.lifecycle.o.q().b(String.format("sendRetransmit(%d)", Integer.valueOf(i12)), null, "FileTransfer");
                new Thread(new i0(this, i12)).run();
                return;
            }
            this.A.write(bArrR, 2, bArrR.length - 2);
            this.f8536p++;
            ByteArrayOutputStream byteArrayOutputStream = this.A;
            if (byteArrayOutputStream != null && byteArrayOutputStream.size() != 0) {
                j();
                j0 j0Var = new j0(this);
                this.C = j0Var;
                this.B.schedule(j0Var, PayloadController.PAYLOAD_COLLECTOR_TIMEOUT);
                float f10 = ((this.f8536p + 1) * F) / this.f8537q;
                this.f8543w.f13422b.i(f10, f10);
            }
            this.f8539s = 3;
            if (z10) {
                g0 g0VarQ14 = androidx.lifecycle.o.q();
                StringBuilder sbC13 = a0.b.c("FileTransfer.endLargeReceive() ");
                sbC13.append(this.f8542v);
                g0VarQ14.b(sbC13.toString(), null, "FileTransfer");
                j();
                h(bVar);
                this.f8532l.a("com.nike.corerf.ACTION_BIGFOOT_TRANSFER_RECEIVE_COMPLETE");
                this.f8543w.f13422b.b(fd.o.f7408a);
            }
        }
    }
}
