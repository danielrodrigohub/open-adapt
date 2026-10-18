package fb;

import android.bluetooth.BluetoothDevice;
import android.bluetooth.BluetoothManager;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: compiled from: BluetoothConnectedDevices.kt */
/* JADX INFO: loaded from: classes.dex */
public final class j implements i {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final j f7261b = new j();

    @Override // fb.i
    public final boolean a(String str) {
        p4.h.j(str, "connectionAddress");
        List<BluetoothDevice> devicesMatchingConnectionStates = ((BluetoothManager) v9.t.f16822a.d().getSystemService(BluetoothManager.class)).getDevicesMatchingConnectionStates(7, new int[]{2, 1, 3, 0});
        p4.h.i(devicesMatchingConnectionStates, "AdaptKitModule.applicati…file.STATE_DISCONNECTED))");
        ArrayList arrayList = new ArrayList(gd.j.T(devicesMatchingConnectionStates, 10));
        Iterator<T> it = devicesMatchingConnectionStates.iterator();
        while (it.hasNext()) {
            arrayList.add(((BluetoothDevice) it.next()).getAddress());
        }
        return arrayList.contains(str);
    }
}
