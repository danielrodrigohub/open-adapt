package hc;

import android.bluetooth.BluetoothGattCharacteristic;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: compiled from: TransportQueue.java */
/* JADX INFO: loaded from: classes.dex */
public final class p0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public o0 f8613a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public a f8614b;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public String f8616d;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LinkedBlockingQueue<a> f8615c = new LinkedBlockingQueue<>();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public LinkedBlockingQueue<a> f8617e = new LinkedBlockingQueue<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f8618f = true;

    /* JADX INFO: compiled from: TransportQueue.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final BluetoothGattCharacteristic f8619a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final byte[] f8620b;

        public a(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr) {
            this.f8619a = bluetoothGattCharacteristic;
            this.f8620b = bArr;
        }
    }

    public final void a(a aVar) {
        if (b2.h.b(aVar.f8620b[0])) {
            try {
                this.f8615c.put(aVar);
            } catch (IndexOutOfBoundsException unused) {
                androidx.lifecycle.o.q().a(String.format("[%s] unable to add flow-control to transmit queue because of an invalid index", this.f8616d), null, false, "TransportQueue");
            } catch (InterruptedException unused2) {
                androidx.lifecycle.o.q().a(String.format("[%s] unable to add flow-control item to QOS queue because of an interruption", this.f8616d), null, false, "TransportQueue");
            } catch (NullPointerException unused3) {
                androidx.lifecycle.o.q().a(String.format("[%s] unable to add flow-control to transmit queue because of a null", this.f8616d), null, false, "TransportQueue");
            }
        } else {
            try {
                this.f8617e.put(aVar);
            } catch (InterruptedException unused4) {
                androidx.lifecycle.o.q().a(String.format("[%s] unable to add item to transmit queue", this.f8616d), null, false, "TransportQueue");
            }
        }
        c(false);
    }

    public final a b() {
        boolean z10 = false;
        try {
            a aVarPeek = this.f8615c.peek();
            if (aVarPeek != null) {
                return aVarPeek;
            }
        } catch (IndexOutOfBoundsException | NullPointerException unused) {
            androidx.lifecycle.o.q().a(String.format("[%s] unable to access flow-control to transmit queue", this.f8616d), null, false, "TransportQueue");
        }
        a aVar = this.f8614b;
        if (aVar == null) {
            return this.f8617e.peek();
        }
        if (aVar.equals(this.f8617e.peek()) && this.f8617e.size() == 1) {
            return null;
        }
        for (a aVar2 : this.f8617e) {
            if (z10) {
                if (Arrays.equals(aVar2.f8620b, this.f8614b.f8620b)) {
                    return null;
                }
                return aVar2;
            }
            if (aVar2.equals(this.f8614b)) {
                z10 = true;
            }
        }
        return null;
    }

    public final synchronized void c(boolean z10) {
        if (this.f8617e.size() <= 0) {
            if (z10) {
                this.f8618f = true;
            }
            if (this.f8615c.size() <= 0) {
                return;
            }
        }
        a aVarB = b();
        if (aVarB == null) {
            if (z10) {
                this.f8618f = true;
            }
            return;
        }
        o0 o0Var = this.f8613a;
        if (o0Var == null) {
            androidx.lifecycle.o.q().a(String.format("[%s] writeReady is NULL!", this.f8616d), null, false, "TransportQueue");
        } else if (z10 || this.f8618f) {
            if (((e) o0Var).p(aVarB.f8619a, aVarB.f8620b)) {
                this.f8618f = false;
                if ((aVarB.f8620b[0] & 192) == 192) {
                    this.f8615c.remove();
                } else {
                    this.f8614b = aVarB;
                }
            } else if (z10) {
                this.f8618f = true;
            }
        }
    }

    public final synchronized void d(BluetoothGattCharacteristic bluetoothGattCharacteristic, byte[] bArr) {
        a(new a(bluetoothGattCharacteristic, bArr));
    }

    public final synchronized void e(int i10) {
        boolean z10;
        if (this.f8617e.peek() == null) {
            androidx.lifecycle.o.q().a(String.format("[%s] Transmit queue empty, can't roll back to retransmit!", this.f8616d), null, false, "TransportQueue");
            return;
        }
        Iterator<a> it = this.f8617e.iterator();
        a aVar = null;
        while (true) {
            if (!it.hasNext()) {
                z10 = false;
                break;
            }
            a next = it.next();
            if ((next.f8620b[0] & 63) == i10) {
                this.f8614b = aVar;
                z10 = true;
                break;
            }
            aVar = next;
        }
        if (z10) {
            androidx.lifecycle.o.q().a(String.format("[%s] REWIND OCCURRED FOR: %02X in transmit queue!", this.f8616d, Integer.valueOf(i10)), null, false, "TransportQueue");
        } else {
            androidx.lifecycle.o.q().a(String.format("[%s] couldn't find index: %02X in transmit queue!", this.f8616d, Integer.valueOf(i10)), null, false, "TransportQueue");
        }
        c(false);
    }
}
