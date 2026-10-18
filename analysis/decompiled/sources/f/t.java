package f;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.util.Log;

/* JADX INFO: compiled from: TwilightManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class t {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static t f6916d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f6917a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final LocationManager f6918b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a f6919c = new a();

    /* JADX INFO: compiled from: TwilightManager.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public boolean f6920a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public long f6921b;
    }

    public t(Context context, LocationManager locationManager) {
        this.f6917a = context;
        this.f6918b = locationManager;
    }

    public final Location a(String str) {
        try {
            if (this.f6918b.isProviderEnabled(str)) {
                return this.f6918b.getLastKnownLocation(str);
            }
            return null;
        } catch (Exception e10) {
            Log.d("TwilightManager", "Failed to get last known location", e10);
            return null;
        }
    }
}
