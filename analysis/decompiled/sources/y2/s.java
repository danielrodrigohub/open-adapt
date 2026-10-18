package y2;

import android.annotation.TargetApi;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.Log;
import java.io.File;
import java.util.Arrays;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: compiled from: HardwareConfigState.java */
/* JADX INFO: loaded from: classes.dex */
public final class s {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final boolean f18480g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final boolean f18481h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final File f18482i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static volatile s f18483j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static volatile int f18484k;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f18485a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f18486b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f18487c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f18488d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f18489e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final AtomicBoolean f18490f = new AtomicBoolean(false);

    static {
        int i10 = Build.VERSION.SDK_INT;
        f18480g = i10 < 29;
        f18481h = i10 >= 26;
        f18482i = new File("/proc/self/fd");
        f18484k = -1;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x00a1  */
    public s() {
        boolean z10;
        boolean z11;
        if (Build.VERSION.SDK_INT == 26) {
            Iterator it = Arrays.asList("SC-04J", "SM-N935", "SM-J720", "SM-G570F", "SM-G570M", "SM-G960", "SM-G965", "SM-G935", "SM-G930", "SM-A520", "SM-A720F", "moto e5", "moto e5 play", "moto e5 plus", "moto e5 cruise", "moto g(6) forge", "moto g(6) play").iterator();
            while (true) {
                if (!it.hasNext()) {
                    z10 = false;
                    break;
                } else {
                    if (Build.MODEL.startsWith((String) it.next())) {
                        z10 = true;
                        break;
                    }
                }
            }
        } else {
            z10 = false;
            break;
        }
        if (!z10) {
            z11 = Build.VERSION.SDK_INT != 27 ? false : Arrays.asList("LG-M250", "LG-M320", "LG-Q710AL", "LG-Q710PL", "LGM-K121K", "LGM-K121L", "LGM-K121S", "LGM-X320K", "LGM-X320L", "LGM-X320S", "LGM-X401L", "LGM-X401S", "LM-Q610.FG", "LM-Q610.FGN", "LM-Q617.FG", "LM-Q617.FGN", "LM-Q710.FG", "LM-Q710.FGN", "LM-X220PM", "LM-X220QMA", "LM-X410PM").contains(Build.MODEL) ? false : true;
        }
        this.f18485a = z11;
        if (Build.VERSION.SDK_INT >= 28) {
            this.f18486b = 20000;
            this.f18487c = 0;
        } else {
            this.f18486b = 700;
            this.f18487c = 128;
        }
    }

    public static s a() {
        if (f18483j == null) {
            synchronized (s.class) {
                if (f18483j == null) {
                    f18483j = new s();
                }
            }
        }
        return f18483j;
    }

    public final boolean b(int i10, int i11, boolean z10, boolean z11) {
        boolean z12;
        if (!z10) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by caller");
            }
            return false;
        }
        if (!this.f18485a) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by device model");
            }
            return false;
        }
        if (!f18481h) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by sdk");
            }
            return false;
        }
        if (f18480g && !this.f18490f.get()) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed by app state");
            }
            return false;
        }
        if (z11) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed because exif orientation is required");
            }
            return false;
        }
        int i12 = this.f18487c;
        if (i10 < i12) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed because width is too small");
            }
            return false;
        }
        if (i11 < i12) {
            if (Log.isLoggable("HardwareConfig", 2)) {
                Log.v("HardwareConfig", "Hardware config disallowed because height is too small");
            }
            return false;
        }
        synchronized (this) {
            int i13 = this.f18488d + 1;
            this.f18488d = i13;
            if (i13 >= 50) {
                this.f18488d = 0;
                int length = f18482i.list().length;
                long j10 = f18484k != -1 ? f18484k : this.f18486b;
                boolean z13 = ((long) length) < j10;
                this.f18489e = z13;
                if (!z13 && Log.isLoggable("Downsampler", 5)) {
                    Log.w("Downsampler", "Excluding HARDWARE bitmap config because we're over the file descriptor limit, file descriptors " + length + ", limit " + j10);
                }
            }
            z12 = this.f18489e;
        }
        if (z12) {
            return true;
        }
        if (Log.isLoggable("HardwareConfig", 2)) {
            Log.v("HardwareConfig", "Hardware config disallowed because there are insufficient FDs");
        }
        return false;
    }

    @TargetApi(26)
    public final boolean c(int i10, int i11, BitmapFactory.Options options, boolean z10, boolean z11) {
        boolean zB = b(i10, i11, z10, z11);
        if (zB) {
            options.inPreferredConfig = Bitmap.Config.HARDWARE;
            options.inMutable = false;
        }
        return zB;
    }
}
