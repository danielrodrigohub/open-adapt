package hc;

import android.bluetooth.BluetoothGatt;
import android.bluetooth.BluetoothGattCharacteristic;
import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: compiled from: TransportScatter.java */
/* JADX INFO: loaded from: classes.dex */
public final class q0 implements Runnable {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public int f8623i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public BluetoothGattCharacteristic f8624j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public BluetoothGatt f8625k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public byte f8626l;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public e f8631q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public a f8632r;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Object f8622h = new Object();

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f8627m = 0;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f8628n = 0;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public List<byte[]> f8629o = null;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f8630p = 0;

    /* JADX INFO: compiled from: TransportScatter.java */
    public class a extends BroadcastReceiver {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final /* synthetic */ String f8633a;

        public a(String str) {
            this.f8633a = str;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String stringExtra;
            if (intent != null && (stringExtra = intent.getStringExtra("com.nike.corerf.DEVICE_ID")) != null && stringExtra.equals(this.f8633a) && intent.getAction().equals("com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED")) {
                q0.this.f8623i = intent.getIntExtra("com.nike.corerf.EXTRA_DATA", 0);
                synchronized (q0.this.f8622h) {
                    q0.this.f8622h.notifyAll();
                }
            }
        }
    }

    public q0(e eVar, String str, BluetoothGatt bluetoothGatt, BluetoothGattCharacteristic bluetoothGattCharacteristic) {
        this.f8623i = 0;
        this.f8624j = null;
        this.f8625k = null;
        if (bluetoothGatt == null || bluetoothGattCharacteristic == null) {
            return;
        }
        this.f8624j = bluetoothGattCharacteristic;
        this.f8625k = bluetoothGatt;
        this.f8631q = eVar;
        this.f8623i = eVar.f8466i;
        this.f8632r = new a(str);
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("com.nike.corerf.ACTION_RIPLEY_TRANSPORT_WINDOW_MOVED");
        w0.a.b(androidx.lifecycle.o.n()).c(this.f8632r, intentFilter);
    }

    public final void a() {
        w0.a.b(androidx.lifecycle.o.n()).e(this.f8632r);
    }

    public final ArrayList<byte[]> b(m0 m0Var, int i10) {
        this.f8627m = i10;
        this.f8628n = i10;
        this.f8626l = m0Var.f8593a;
        byte[] bArrB = m0.b(m0Var);
        int length = bArrB.length;
        if (length < 1) {
            return null;
        }
        ArrayList<byte[]> arrayList = new ArrayList<>();
        int i11 = 19;
        for (int i12 = 0; i12 < length; i12 += 19) {
            if (i12 + i11 > length) {
                i11 = length % 19;
            }
            byte[] bArr = new byte[i11 + 1];
            System.arraycopy(bArrB, i12, bArr, 1, i11);
            bArr[0] = (byte) (this.f8628n & 255);
            arrayList.add(bArr);
            this.f8628n = (this.f8628n + 1) % 64;
        }
        byte[] bArr2 = arrayList.get(arrayList.size() - 1);
        bArr2[0] = (byte) (bArr2[0] | (-128));
        return arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        int i10;
        if (Thread.currentThread().isInterrupted() || this.f8625k == null || this.f8629o == null) {
            return;
        }
        this.f8628n = this.f8627m;
        do {
            byte[] bArr = this.f8629o.get(this.f8630p);
            if (bArr == null || Thread.currentThread().isInterrupted()) {
                return;
            }
            this.f8631q.f8462e.d(this.f8624j, bArr);
            if (bArr[0] > 0 && ((byte) (e.m(this.f8623i, bArr[0] & 63) & 255)) >= 4) {
                synchronized (this.f8622h) {
                    try {
                        try {
                            this.f8622h.wait(3000L);
                        } catch (InterruptedException unused) {
                            return;
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
            i10 = this.f8630p + 1;
            this.f8630p = i10;
        } while (i10 < this.f8629o.size());
        this.f8631q.b("com.nike.corerf.ACTION_RIPLEY_MESSAGE_SEND_COMPLETE", this.f8626l & 255);
        a();
    }
}
