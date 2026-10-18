package wa;

import android.bluetooth.BluetoothManager;
import android.content.Context;
import android.location.LocationManager;
import android.os.Build;
import android.provider.Settings;
import java.util.List;

/* JADX INFO: compiled from: AdaptKitRequirementsReceiver.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k implements j {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final k f17583b = new k();

    @Override // wa.j
    public final ja.b a(Context context) {
        android.support.v4.media.a fVar;
        android.support.v4.media.a dVar;
        android.support.v4.media.a eVar;
        android.support.v4.media.a eVar2;
        p4.h.j(context, "context");
        if (aa.a.a()) {
            fVar = new ja.f();
        } else {
            boolean z10 = context.checkSelfPermission("android.permission.ACCESS_FINE_LOCATION") == 0;
            if (z10) {
                fVar = ja.c.f9485a;
            } else {
                if (z10) {
                    throw new j2.a();
                }
                fVar = new ja.d("User has not accepted the location permission.  Prompt user to accept (or link to permission screen)");
            }
        }
        android.support.v4.media.a aVar = fVar;
        if (aa.a.a()) {
            dVar = new ja.f();
        } else if (Build.VERSION.SDK_INT >= 28) {
            try {
                dVar = ((LocationManager) context.getSystemService(LocationManager.class)).isLocationEnabled() ? ja.c.f9485a : new ja.d("User has turned off the location services.  Prompt them to turn it back on.");
            } catch (Throwable unused) {
                dVar = new ja.d("User has turned off the location services.  Prompt them to turn it back on.");
            }
        } else {
            try {
                dVar = Settings.Secure.getInt(context.getContentResolver(), "location_mode") != 0 ? ja.c.f9485a : new ja.d("User has turned off the location services.  Prompt them to turn it back on.");
            } catch (Throwable unused2) {
                dVar = new ja.d("User has turned off the location services.  Prompt them to turn it back on.");
            }
        }
        android.support.v4.media.a aVar2 = dVar;
        android.support.v4.media.a dVar2 = ((BluetoothManager) context.getSystemService(BluetoothManager.class)).getAdapter().isEnabled() ? ja.c.f9485a : new ja.d("User has turned off the bluetooth service.  Prompt them to turn it back on.");
        if (aa.a.a()) {
            List<String> list = aa.a.f549a;
            eVar = context.checkSelfPermission("android.permission.BLUETOOTH_SCAN") == 0 ? ja.c.f9485a : new ja.d("User has not accepted the scan bluetooth devices permission.  Prompt user to accept (or link to permission screen)");
        } else {
            eVar = new ja.e();
        }
        android.support.v4.media.a aVar3 = eVar;
        if (aa.a.a()) {
            List<String> list2 = aa.a.f549a;
            eVar2 = context.checkSelfPermission("android.permission.BLUETOOTH_CONNECT") == 0 ? ja.c.f9485a : new ja.d("User has not accepted the bluetooth connect to device permission.  Prompt user to accept (or link to permission screen)");
        } else {
            eVar2 = new ja.e();
        }
        return new ja.a(aVar, aVar2, dVar2, aVar3, eVar2);
    }
}
