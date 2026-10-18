package jc;

import android.app.Application;
import android.bluetooth.BluetoothAdapter;
import android.bluetooth.BluetoothManager;
import android.bluetooth.le.BluetoothLeScanner;
import android.location.LocationManager;
import android.os.Build;
import android.provider.Settings;
import androidx.lifecycle.o;
import java.util.ArrayList;

/* JADX INFO: compiled from: DiscoverUtilties.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b implements f {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Application f9495b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public d f9496c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public c f9497d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f9498e;

    public b(Application application) {
        this.f9495b = application;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x002c  */
    @Override // jc.f
    public final void a(c cVar) {
        boolean zIsLocationEnabled;
        p4.h.j(cVar, "deviceResults");
        try {
            this.f9497d = cVar;
            BluetoothAdapter adapter = ((BluetoothManager) this.f9495b.getSystemService(BluetoothManager.class)).getAdapter();
            if (!adapter.isEnabled()) {
                cVar.c(false, new g());
                return;
            }
            int i10 = Build.VERSION.SDK_INT;
            if (i10 >= 31) {
                zIsLocationEnabled = true;
            } else if (i10 >= 28) {
                zIsLocationEnabled = ((LocationManager) this.f9495b.getSystemService(LocationManager.class)).isLocationEnabled();
            } else {
                try {
                    if (Settings.Secure.getInt(this.f9495b.getContentResolver(), "location_mode") != 0) {
                        zIsLocationEnabled = true;
                    } else {
                        zIsLocationEnabled = false;
                    }
                } catch (Settings.SettingNotFoundException unused) {
                }
            }
            if (!zIsLocationEnabled) {
                cVar.c(false, new h());
                return;
            }
            BluetoothLeScanner bluetoothLeScanner = adapter.getBluetoothLeScanner();
            c cVar2 = this.f9497d;
            if (cVar2 == null) {
                p4.h.C("bigfootDiscoveryListener");
                throw null;
            }
            d dVar = new d(cVar2);
            this.f9496c = dVar;
            bluetoothLeScanner.startScan(Build.VERSION.SDK_INT < 26 ? new ArrayList() : o.e(e.f9504c), e.f9503b, dVar);
            this.f9498e = true;
            cVar.c(true, null);
        } catch (Throwable th) {
            cVar.c(false, th);
        }
    }

    @Override // jc.f
    public final void b() {
        if (!this.f9498e) {
            return;
        }
        try {
            BluetoothLeScanner bluetoothLeScanner = ((BluetoothManager) this.f9495b.getSystemService(BluetoothManager.class)).getAdapter().getBluetoothLeScanner();
            d dVar = this.f9496c;
            if (dVar == null) {
                p4.h.C("scanCallback");
                throw null;
            }
            bluetoothLeScanner.stopScan(dVar);
            c cVar = this.f9497d;
            if (cVar == null) {
                p4.h.C("bigfootDiscoveryListener");
                throw null;
            }
            cVar.b(null);
            this.f9498e = false;
        } catch (Throwable th) {
            c cVar2 = this.f9497d;
            if (cVar2 == null) {
                p4.h.C("bigfootDiscoveryListener");
                throw null;
            }
            cVar2.b(th);
        }
    }
}
