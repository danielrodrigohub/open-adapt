package ic;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCallback;
import android.bluetooth.BluetoothGattCharacteristic;
import android.bluetooth.BluetoothGattDescriptor;
import android.bluetooth.BluetoothManager;
import android.content.Context;
import androidx.appcompat.widget.y0;
import androidx.lifecycle.m0;
import hc.f0;
import hc.g0;
import hc.l0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

/* JADX INFO: compiled from: ConnectionManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g implements s {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final g f9016b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Map<String, p> f9017c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final List<a> f9018d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Object f9019e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final List<q> f9020f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Map<String, Long> f9021g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Object f9022h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static volatile CountDownLatch f9023i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final AtomicLong f9024j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static final long f9025k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static final AtomicInteger f9026l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public static final ExecutorService f9027m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final Map<String, o> f9028n;

    /* JADX INFO: compiled from: ConnectionManager.kt */
    public static final class a extends BluetoothGattCallback {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f9029a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Context f9030b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final String f9031c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final l0 f9032d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public volatile boolean f9033e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f9034f;

        public a(String str, Context context, String str2, l0 l0Var) {
            p4.h.j(str, "deviceId");
            p4.h.j(str2, "address");
            p4.h.j(l0Var, "coreRFBigfoot");
            this.f9029a = str;
            this.f9030b = context;
            this.f9031c = str2;
            this.f9032d = l0Var;
            this.f9033e = true;
            this.f9034f = false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!p4.h.c(a.class, obj != null ? obj.getClass() : null)) {
                return false;
            }
            p4.h.h(obj, "null cannot be cast to non-null type com.nike.corerf.bigfoot.connection.ConnectionManager.DeviceCallback");
            a aVar = (a) obj;
            return p4.h.c(this.f9029a, aVar.f9029a) && p4.h.c(this.f9031c, aVar.f9031c) && this.f9033e == aVar.f9033e;
        }

        public final int hashCode() {
            return Boolean.hashCode(this.f9033e) + a1.f.c(this.f9031c, this.f9029a.hashCode() * 31, 31);
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onCharacteristicChanged(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
            p4.h.j(bluetoothGatt, "gatt");
            p4.h.j(bluetoothGattCharacteristic, "characteristic");
            if (this.f9033e) {
                l0 l0Var = this.f9032d;
                byte[] value = bluetoothGattCharacteristic.getValue();
                p4.h.i(value, "characteristic.value");
                l0Var.c(value);
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onCharacteristicRead(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i10) {
            p4.h.j(bluetoothGatt, "gatt");
            p4.h.j(bluetoothGattCharacteristic, "characteristic");
            if (this.f9033e) {
                l0 l0Var = this.f9032d;
                byte[] value = bluetoothGattCharacteristic.getValue();
                p4.h.i(value, "characteristic.value");
                l0Var.R(value);
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onCharacteristicWrite(BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic, int i10) {
            p4.h.j(bluetoothGatt, "gatt");
            p4.h.j(bluetoothGattCharacteristic, "characteristic");
            if (this.f9033e) {
                this.f9032d.H(i10);
            }
        }

        /* JADX WARN: Code duplicated, block: B:49:0x01d1  */
        /* JADX WARN: Type inference failed for: r11v7, types: [java.util.Map<java.lang.String, ic.p>, java.util.concurrent.ConcurrentHashMap] */
        /* JADX WARN: Type inference failed for: r12v13, types: [java.util.Map<java.lang.String, ic.p>, java.util.concurrent.ConcurrentHashMap] */
        @Override // android.bluetooth.BluetoothGattCallback
        public final void onConnectionStateChange(BluetoothGatt bluetoothGatt, int i10, int i11) throws InterruptedException {
            f8.b rVar;
            p4.h.j(bluetoothGatt, "gatt");
            g0 g0VarQ = androidx.lifecycle.o.q();
            String str = "callbackInstance: " + this + ", gatt:" + bluetoothGatt.getDevice().getAddress() + ", status:" + i10 + ", 🧐🧐newState:" + i11 + "\tcallbackAddr=" + System.identityHashCode(this) + "\ncallback=" + this + "\ncallbackAddr:" + System.identityHashCode(this);
            g gVar = g.f9016b;
            g0.a.a(g0VarQ, str, null, false, "g", 6, null);
            g0 g0VarQ2 = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("ConnectionChange: deviceId: ");
            sbC.append(this.f9029a);
            sbC.append(" gatt:");
            sbC.append(bluetoothGatt.getDevice().getAddress());
            sbC.append(", status:");
            sbC.append(i10);
            sbC.append(", newState:");
            sbC.append(i11);
            g0VarQ2.d(sbC.toString());
            if (!this.f9033e && i11 == 0) {
                this.f9032d.n();
                return;
            }
            if (this.f9033e) {
                if (!this.f9034f && i11 != 0) {
                    this.f9034f = true;
                }
                if (i11 == 0) {
                    g0 g0VarQ3 = androidx.lifecycle.o.q();
                    StringBuilder sbC2 = y0.c("Bluetooth State ", i10, " on devicedId: ");
                    sbC2.append(this.f9029a);
                    g0.a.a(g0VarQ3, sbC2.toString(), null, false, null, 14, null);
                    if (i10 == 257) {
                        androidx.lifecycle.o.q().a(a0.d.b("Unexpected status of : ", i10, ". Killing connection"), new Exception("GATT_FAILURE 257"), true, "OnConnectionStateChanged");
                        rVar = new r(this.f9029a);
                    } else if (i10 == 22) {
                        rVar = new v(this.f9029a);
                    } else if (i10 != 19) {
                        rVar = new r(this.f9029a);
                    } else {
                        p pVar = (p) g.f9017c.get(this.f9029a);
                        if ((pVar != null ? pVar.f9068f : null) instanceof d) {
                            rVar = new c(this.f9029a);
                        } else {
                            rVar = new r(this.f9029a);
                        }
                    }
                } else if (i11 == 1) {
                    rVar = new f(this.f9029a);
                } else if (i11 != 2) {
                    if (i11 != 3) {
                        androidx.lifecycle.o.q().a(a0.d.b("Unexpected newState: ", i11, ". Killing connection"), new Exception("Connection Callback indeterminate"), true, "OnConnectionStateChanged");
                        rVar = new v(this.f9029a);
                    } else {
                        rVar = new r(this.f9029a);
                    }
                } else if (i10 != 0) {
                    g0.a.b(androidx.lifecycle.o.q(), "BluetoothProfile " + i11 + ", status: " + i10 + ", this was not expected.", null, false, null, 14, null);
                    rVar = new r(this.f9029a);
                } else if (bluetoothGatt.getServices().isEmpty()) {
                    l0 l0Var = this.f9032d;
                    if (l0Var != null) {
                        l0Var.G(bluetoothGatt);
                    }
                    bluetoothGatt.discoverServices();
                    rVar = new f(this.f9029a);
                } else {
                    p pVar2 = (p) g.f9017c.get(this.f9029a);
                    if (pVar2 != null) {
                        pVar2.f9063a.G(bluetoothGatt);
                        pVar2.f9063a.o();
                        g gVar2 = g.f9016b;
                        g.f(pVar2);
                    }
                    rVar = new f(this.f9029a);
                }
                g.f9016b.l(rVar);
            }
        }

        @Override // android.bluetooth.BluetoothGattCallback
        public final void onDescriptorWrite(BluetoothGatt bluetoothGatt, BluetoothGattDescriptor bluetoothGattDescriptor, int i10) {
            if (this.f9033e) {
                super.onDescriptorWrite(bluetoothGatt, bluetoothGattDescriptor, i10);
                this.f9032d.O();
            }
        }

        /* JADX WARN: Type inference failed for: r1v3, types: [java.util.Map<java.lang.String, ic.p>, java.util.concurrent.ConcurrentHashMap] */
        @Override // android.bluetooth.BluetoothGattCallback
        public final void onServicesDiscovered(BluetoothGatt bluetoothGatt, int i10) throws InterruptedException {
            p4.h.j(bluetoothGatt, "gatt");
            if (this.f9033e) {
                g0 g0VarQ = androidx.lifecycle.o.q();
                StringBuilder sbC = a0.b.c("onServicesDiscovered(), deviceId: ");
                sbC.append(this.f9029a);
                sbC.append(", status: ");
                sbC.append(i10);
                sbC.append("\ncallback=");
                sbC.append(this);
                sbC.append("\ncallbackAddr:");
                sbC.append(System.identityHashCode(this));
                g0.a.a(g0VarQ, sbC.toString(), null, false, null, 14, null);
                if (i10 != 0) {
                    g.f9016b.l(new v(this.f9029a));
                    return;
                }
                g0.a.a(androidx.lifecycle.o.q(), "Discovered ", null, true, "New State", 2, null);
                if (bluetoothGatt.getService(f0.f8477b) == null) {
                    g.f9016b.l(new v(this.f9029a));
                    return;
                }
                p pVar = (p) g.f9017c.get(this.f9029a);
                if (pVar != null) {
                    pVar.f9063a.o();
                    g gVar = g.f9016b;
                    g.f(pVar);
                }
            }
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("DeviceCallback(deviceId=");
            sbC.append(this.f9029a);
            sbC.append(", context=");
            sbC.append(this.f9030b);
            sbC.append(", address=");
            sbC.append(this.f9031c);
            sbC.append(", coreRFBigfoot=");
            sbC.append(this.f9032d);
            sbC.append(", isAlive=");
            sbC.append(this.f9033e);
            sbC.append(", hasConnected=");
            sbC.append(this.f9034f);
            sbC.append(')');
            return sbC.toString();
        }
    }

    /* JADX INFO: compiled from: ConnectionManager.kt */
    public static final class b extends rd.o implements qd.l<a, CharSequence> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f9035h = new b();

        public b() {
            super(1);
        }

        @Override // qd.l
        public final CharSequence invoke(a aVar) {
            a aVar2 = aVar;
            p4.h.j(aVar2, "it");
            return aVar2 + "\ncallbackAddr:" + System.identityHashCode(aVar2);
        }
    }

    static {
        g gVar = new g();
        f9016b = gVar;
        f9017c = new ConcurrentHashMap();
        f9018d = new CopyOnWriteArrayList();
        f9019e = new Object();
        f9020f = new CopyOnWriteArrayList();
        f9021g = new ConcurrentHashMap();
        f9022h = new Object();
        f9023i = new CountDownLatch(0);
        f9025k = TimeUnit.SECONDS.toMillis(60L);
        f9024j = new AtomicLong(gVar.j());
        m0.d(null, 0, i.f9037h, 31);
        f9026l = new AtomicInteger(0);
        ExecutorService executorServiceNewCachedThreadPool = Executors.newCachedThreadPool(o7.w.f12418d);
        p4.h.i(executorServiceNewCachedThreadPool, "newCachedThreadPool {\n  …ock = { it.run() })\n    }");
        f9027m = executorServiceNewCachedThreadPool;
        f9028n = new ConcurrentHashMap();
    }

    public static final void f(p pVar) throws InterruptedException {
        g gVar = f9016b;
        g0.a.a(androidx.lifecycle.o.q(), "subscribeAndAuthenticate: pre lock, requesting with " + pVar, null, false, null, 14, null);
        synchronized (f9022h) {
            f9023i.await();
            AtomicLong atomicLong = f9024j;
            synchronized (atomicLong) {
                atomicLong.set(System.currentTimeMillis());
            }
            f9023i = new CountDownLatch(1);
        }
        if ((pVar.f9068f instanceof d) || (pVar.f9068f instanceof e) || (pVar.f9068f instanceof ic.b)) {
            g0 g0VarQ = androidx.lifecycle.o.q();
            StringBuilder sbC = a0.b.c("subscribeAndAuthenticate, had ");
            sbC.append(pVar.f9068f);
            sbC.append(", preventing a second authentication attempt");
            g0.a.a(g0VarQ, sbC.toString(), null, false, null, 14, null);
            gVar.h();
            return;
        }
        String str = pVar.f9065c;
        l0 l0Var = pVar.f9063a;
        g0.a.a(androidx.lifecycle.o.q(), "subscribeAndAuthenticate: post lock, requesting with " + pVar, null, false, null, 14, null);
        String address = pVar.f9064b.getDevice().getAddress();
        g0.a.a(androidx.lifecycle.o.q(), "subscribeAndAuthenticate:" + str + '\t' + address + "\t🗝:" + g7.b.e(pVar.f9066d), null, false, null, 14, null);
        boolean zEquals = Arrays.equals(pVar.f9066d, hc.b.f8408j);
        if (zEquals) {
            gVar.l(new d(str));
            g0.a.a(androidx.lifecycle.o.q(), "CONNECTED_AND_REQUIRES_AUTHENTICATION:" + str + '\t' + address + "\t🗝", null, false, null, 14, null);
        } else {
            gVar.l(new e(str));
            g0.a.a(androidx.lifecycle.o.q(), "CONNECTED_AND_STARTING_AUTHENTICATION_FLOW:" + str + '\t' + address + "\t🗝", null, false, null, 14, null);
        }
        Thread.sleep(20L);
        pVar.f9063a.W(zEquals, new m(str, zEquals, l0Var, pVar, address));
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Map<java.lang.String, ic.p>, java.util.concurrent.ConcurrentHashMap] */
    @Override // ic.s
    public final f8.b a(String str) {
        f8.b bVar;
        p4.h.j(str, "deviceId");
        p pVar = (p) f9017c.get(str);
        if (pVar != null && (bVar = pVar.f9068f) != null) {
            return bVar;
        }
        t tVar = new t(str);
        g0.a.a(androidx.lifecycle.o.q(), "ConnectionManager.currentState " + str + " state " + tVar, null, false, null, 14, null);
        return tVar;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    @Override // ic.s
    public final void b(String str) {
        p4.h.j(str, "deviceId");
        synchronized (i(str)) {
            p pVar = f9017c.get(str);
            if (pVar != null) {
                g0.a.a(androidx.lifecycle.o.q(), "shutdownDevice with " + pVar, null, false, null, 14, null);
                Object[] array = f9018d.toArray(new a[0]);
                p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
                ArrayList arrayList = new ArrayList();
                for (a aVar : (a[]) array) {
                    boolean z10 = !p4.h.c(aVar.f9029a, str);
                    if (!z10) {
                        aVar.f9033e = false;
                    }
                    if (!z10) {
                        arrayList.add(aVar);
                    }
                }
                f9018d.removeAll(arrayList);
                f9016b.l(new t(str));
                f9017c.remove(str);
                pVar.f9064b.close();
                pVar.f9063a.n();
            }
        }
    }

    @Override // ic.s
    public final boolean c(Context context, String str, String str2, l0 l0Var, byte[] bArr) {
        p4.h.j(str, "deviceId");
        p4.h.j(str2, "address");
        p4.h.j(l0Var, "coreRFBigfoot");
        return g(context, str, str2, l0Var, bArr);
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Map<java.lang.String, ic.o>, java.util.concurrent.ConcurrentHashMap] */
    @Override // ic.s
    public final void d(String str, o oVar) {
        p4.h.j(str, "deviceId");
        p4.h.j(oVar, "connectionStateListener");
        f9028n.put(str, oVar);
    }

    @Override // ic.s
    public final boolean e(Context context, String str, String str2, l0 l0Var, byte[] bArr) {
        p4.h.j(str, "deviceId");
        p4.h.j(str2, "address");
        p4.h.j(l0Var, "coreRFBigfoot");
        return g(context, str, str2, l0Var, bArr);
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [java.util.Map<java.lang.String, ic.p>, java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference failed for: r6v2, types: [java.util.Map<java.lang.String, java.lang.Long>, java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference failed for: r6v9, types: [java.util.Map<java.lang.String, ic.p>, java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference failed for: r7v7, types: [java.lang.Iterable, java.util.List<ic.g$a>, java.util.concurrent.CopyOnWriteArrayList] */
    public final boolean g(Context context, String str, String str2, l0 l0Var, byte[] bArr) {
        synchronized (i(str)) {
            try {
                g0.a.a(androidx.lifecycle.o.q(), "Establishing Connection with: " + str + '\t' + str2 + '\t' + g7.b.e(bArr), null, false, "g", 6, null);
                g0 g0VarQ = androidx.lifecycle.o.q();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Establishing Connection has ");
                sb2.append(f9017c);
                g0.a.a(g0VarQ, sb2.toString(), null, false, null, 14, null);
                Long l10 = (Long) f9021g.get(str);
                long jCurrentTimeMillis = System.currentTimeMillis() - (l10 != null ? l10.longValue() : 0L);
                if (jCurrentTimeMillis < 3000) {
                    try {
                        Thread.sleep(((long) 3000) - jCurrentTimeMillis);
                    } catch (InterruptedException unused) {
                        g0.a.a(androidx.lifecycle.o.q(), "Unexpected Interupt when attempting to reconnect", null, true, null, 10, null);
                    }
                }
                if (f9017c.containsKey(str)) {
                    return f9016b.k(str);
                }
                List<BluetoothDevice> connectedDevices = ((BluetoothManager) context.getSystemService(BluetoothManager.class)).getConnectedDevices(7);
                p4.h.i(connectedDevices, "context.getSystemService…es(BluetoothProfile.GATT)");
                Iterator<T> it = connectedDevices.iterator();
                while (it.hasNext()) {
                    if (p4.h.c(((BluetoothDevice) it.next()).getAddress(), str2)) {
                        g0.a.b(androidx.lifecycle.o.q(), "💣 Found a currently connected device from a previous application session!", null, false, null, 14, null);
                    }
                }
                a aVar = new a(str, context, str2, l0Var);
                ?? r10 = f9018d;
                r10.add(aVar);
                g0.a.a(androidx.lifecycle.o.q(), "BluetoothCallback Created, " + aVar + "\ncallbackAddr:" + System.identityHashCode(aVar), null, false, null, 14, null);
                g0 g0VarQ2 = androidx.lifecycle.o.q();
                StringBuilder sb3 = new StringBuilder();
                sb3.append("BluetoothCallback Created, All Callbacks, ");
                sb3.append(gd.n.d0(r10, "\n", null, null, b.f9035h, 30));
                g0.a.a(g0VarQ2, sb3.toString(), null, false, null, 14, null);
                boolean z10 = false;
                BluetoothGatt bluetoothGattConnectGatt = ((BluetoothManager) context.getSystemService(BluetoothManager.class)).getAdapter().getRemoteDevice(str2).connectGatt(context, false, aVar, 2);
                if (bluetoothGattConnectGatt == null) {
                    f9016b.l(new w(str));
                } else {
                    ?? r11 = f9017c;
                    p pVar = new p(l0Var, bluetoothGattConnectGatt, str, bArr);
                    f9016b.l(new n(str));
                    r11.put(str, pVar);
                    z10 = true;
                }
                return z10;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h() {
        AtomicLong atomicLong = f9024j;
        synchronized (atomicLong) {
            atomicLong.set(f9016b.j());
            try {
                f9023i.countDown();
            } catch (Throwable unused) {
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.List<ic.q>, java.util.concurrent.CopyOnWriteArrayList] */
    /* JADX WARN: Type inference failed for: r9v2, types: [java.util.List<ic.q>, java.util.concurrent.CopyOnWriteArrayList] */
    /* JADX WARN: Type inference failed for: r9v6, types: [java.util.List<ic.q>, java.util.concurrent.CopyOnWriteArrayList] */
    public final q i(String str) {
        q qVar;
        ?? r10;
        int iIndexOf;
        synchronized (f9019e) {
            Object[] array = f9020f.toArray(new q[0]);
            p4.h.h(array, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
            q[] qVarArr = (q[]) array;
            q qVar2 = new q(str);
            int length = qVarArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    qVar = null;
                    break;
                }
                qVar = qVarArr[i10];
                if (p4.h.c(qVar.f9069a, str)) {
                    break;
                }
                i10++;
            }
            if (qVar == null) {
                f9020f.add(qVar2);
            }
            r10 = f9020f;
            iIndexOf = r10.indexOf(qVar2);
        }
        Object[] array2 = r10.toArray(new q[0]);
        p4.h.h(array2, "null cannot be cast to non-null type kotlin.Array<T of kotlin.collections.ArraysKt__ArraysJVMKt.toTypedArray>");
        return ((q[]) array2)[iIndexOf];
    }

    public final long j() {
        return TimeUnit.SECONDS.toMillis(f9025k) + System.currentTimeMillis();
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.Map<java.lang.String, ic.p>, java.util.concurrent.ConcurrentHashMap] */
    public final boolean k(String str) {
        fd.o oVar;
        synchronized (i(str)) {
            p pVar = (p) f9017c.get(str);
            if (pVar != null) {
                g0.a.a(androidx.lifecycle.o.q(), "Reconnecting called w/ state:\t" + pVar.f9068f, null, false, "g", 6, null);
                if (!(pVar.f9068f instanceof f) && !(pVar.f9068f instanceof e) && !(pVar.f9068f instanceof d) && !(pVar.f9068f instanceof ic.b)) {
                    f9016b.l(new f(str));
                    return pVar.f9064b.connect();
                }
                f9016b.l(pVar.f9068f);
                oVar = fd.o.f7408a;
            } else {
                oVar = null;
            }
            if (oVar == null) {
                g0.a.b(androidx.lifecycle.o.q(), "Reconnection called without device being connected to", null, false, "g", 2, null);
            }
            return false;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.Map<java.lang.String, ic.p>, java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference failed for: r1v1, types: [java.util.Map<java.lang.String, ic.o>, java.util.concurrent.ConcurrentHashMap] */
    /* JADX WARN: Type inference failed for: r2v5, types: [java.util.Map<java.lang.String, java.lang.Long>, java.util.concurrent.ConcurrentHashMap] */
    public final void l(f8.b bVar) {
        p pVar = (p) f9017c.get(bVar.d());
        if (pVar != null) {
            o oVar = (o) f9028n.get(pVar.f9065c);
            g0.a.a(androidx.lifecycle.o.q(), "updatedCoreRFConnectionState: " + bVar, null, false, null, 14, null);
            if (p4.h.c(pVar.f9068f, bVar)) {
                g0.a.a(androidx.lifecycle.o.q(), "updateBigfootConnection: " + bVar + ", Same connection was logged twice in a row.", null, false, null, 14, null);
                if (oVar != null) {
                    oVar.a(pVar.f9065c, g7.b.e(pVar.f9066d), bVar);
                    return;
                }
                return;
            }
            pVar.f9068f = bVar;
            boolean z10 = bVar instanceof r;
            if (z10 ? true : bVar instanceof c ? true : bVar instanceof w ? true : bVar instanceof v) {
                f9027m.execute(new y0.x(pVar, 8));
            }
            if ((bVar instanceof t) || z10) {
                f9021g.put(bVar.d(), Long.valueOf(System.currentTimeMillis()));
            }
            if (oVar != null) {
                oVar.a(pVar.f9065c, g7.b.e(pVar.f9066d), bVar);
            }
        }
    }
}
