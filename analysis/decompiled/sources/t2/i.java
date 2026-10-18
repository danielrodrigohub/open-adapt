package t2;

import android.app.ActivityManager;
import android.content.Context;
import android.os.Build;
import android.text.format.Formatter;
import android.util.DisplayMetrics;
import android.util.Log;

/* JADX INFO: compiled from: MemorySizeCalculator.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f15398a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f15399b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Context f15400c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f15401d;

    /* JADX INFO: compiled from: MemorySizeCalculator.java */
    public static final class a {

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final int f15402e;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final Context f15403a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public ActivityManager f15404b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public b f15405c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public float f15406d;

        static {
            f15402e = Build.VERSION.SDK_INT < 26 ? 4 : 1;
        }

        public a(Context context) {
            this.f15406d = f15402e;
            this.f15403a = context;
            this.f15404b = (ActivityManager) context.getSystemService("activity");
            this.f15405c = new b(context.getResources().getDisplayMetrics());
            if (Build.VERSION.SDK_INT < 26 || !this.f15404b.isLowRamDevice()) {
                return;
            }
            this.f15406d = 0.0f;
        }
    }

    /* JADX INFO: compiled from: MemorySizeCalculator.java */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final DisplayMetrics f15407a;

        public b(DisplayMetrics displayMetrics) {
            this.f15407a = displayMetrics;
        }
    }

    public i(a aVar) {
        this.f15400c = aVar.f15403a;
        int i10 = aVar.f15404b.isLowRamDevice() ? 2097152 : 4194304;
        this.f15401d = i10;
        ActivityManager activityManager = aVar.f15404b;
        int iRound = Math.round(activityManager.getMemoryClass() * 1024 * 1024 * (activityManager.isLowRamDevice() ? 0.33f : 0.4f));
        DisplayMetrics displayMetrics = aVar.f15405c.f15407a;
        float f10 = displayMetrics.widthPixels * displayMetrics.heightPixels * 4;
        int iRound2 = Math.round(aVar.f15406d * f10);
        int iRound3 = Math.round(f10 * 2.0f);
        int i11 = iRound - i10;
        int i12 = iRound3 + iRound2;
        if (i12 <= i11) {
            this.f15399b = iRound3;
            this.f15398a = iRound2;
        } else {
            float f11 = i11 / (aVar.f15406d + 2.0f);
            this.f15399b = Math.round(2.0f * f11);
            this.f15398a = Math.round(f11 * aVar.f15406d);
        }
        if (Log.isLoggable("MemorySizeCalculator", 3)) {
            StringBuilder sbC = a0.b.c("Calculation complete, Calculated memory cache size: ");
            sbC.append(a(this.f15399b));
            sbC.append(", pool size: ");
            sbC.append(a(this.f15398a));
            sbC.append(", byte array size: ");
            sbC.append(a(i10));
            sbC.append(", memory class limited? ");
            sbC.append(i12 > iRound);
            sbC.append(", max size: ");
            sbC.append(a(iRound));
            sbC.append(", memoryClass: ");
            sbC.append(aVar.f15404b.getMemoryClass());
            sbC.append(", isLowMemoryDevice: ");
            sbC.append(aVar.f15404b.isLowRamDevice());
            Log.d("MemorySizeCalculator", sbC.toString());
        }
    }

    public final String a(int i10) {
        return Formatter.formatFileSize(this.f15400c, i10);
    }
}
