package ic;

import android.bluetooth.BluetoothGatt;
import hc.l0;
import java.util.Arrays;

/* JADX INFO: compiled from: CoreRFDeviceManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class p {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l0 f9063a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final BluetoothGatt f9064b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f9065c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public volatile byte[] f9066d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f9067e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public volatile f8.b f9068f;

    public p(l0 l0Var, BluetoothGatt bluetoothGatt, String str, byte[] bArr) {
        Object obj = new Object();
        p4.h.j(l0Var, "coreRFBigfoot");
        p4.h.j(str, "deviceId");
        this.f9063a = l0Var;
        this.f9064b = bluetoothGatt;
        this.f9065c = str;
        this.f9066d = bArr;
        this.f9067e = obj;
        this.f9068f = new t(str);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!p4.h.c(p.class, obj != null ? obj.getClass() : null)) {
            return false;
        }
        p4.h.h(obj, "null cannot be cast to non-null type com.nike.corerf.bigfoot.connection.CoreRFDeviceManager");
        p pVar = (p) obj;
        return p4.h.c(this.f9068f, pVar.f9068f) && p4.h.c(this.f9063a, pVar.f9063a) && p4.h.c(this.f9064b, pVar.f9064b) && p4.h.c(this.f9065c, pVar.f9065c) && Arrays.equals(this.f9066d, pVar.f9066d) && p4.h.c(this.f9067e, pVar.f9067e);
    }

    public final int hashCode() {
        return this.f9067e.hashCode() + ((Arrays.hashCode(this.f9066d) + a1.f.c(this.f9065c, (this.f9064b.hashCode() + ((this.f9063a.hashCode() + (this.f9068f.hashCode() * 31)) * 31)) * 31, 31)) * 31);
    }

    public final String toString() {
        StringBuilder sbC = a0.b.c("CoreRFDeviceManager(coreRFBigfoot=");
        sbC.append(this.f9063a);
        sbC.append(", bluetoothGatt=");
        sbC.append(this.f9064b);
        sbC.append(", deviceId='");
        sbC.append(this.f9065c);
        sbC.append("', authKey=");
        sbC.append(g7.b.e(this.f9066d));
        sbC.append(" authLock=");
        sbC.append(this.f9067e);
        sbC.append(", connectionState=");
        sbC.append(this.f9068f);
        sbC.append(')');
        return sbC.toString();
    }
}
