package aa;

import android.os.Build;
import androidx.lifecycle.o;
import java.util.List;

/* JADX INFO: compiled from: BluetoothPermissionKtx.kt */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final List<String> f549a = o.z("android.permission.BLUETOOTH_CONNECT", "android.permission.BLUETOOTH_SCAN");

    public static final boolean a() {
        return Build.VERSION.SDK_INT >= 31;
    }
}
