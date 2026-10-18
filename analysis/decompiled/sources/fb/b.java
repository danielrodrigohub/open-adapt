package fb;

import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.content.Context;

/* JADX INFO: compiled from: AdaptBluetoothAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Context f7251b;

    public b(Context context) {
        this.f7251b = context;
    }

    @Override // fb.a
    public final boolean a(String str) {
        p4.h.j(str, "address");
        return BluetoothAdapter.checkBluetoothAddress(str);
    }

    @Override // fb.a
    public final boolean isEnabled() {
        return ((BluetoothManager) this.f7251b.getSystemService(BluetoothManager.class)).getAdapter().isEnabled();
    }
}
