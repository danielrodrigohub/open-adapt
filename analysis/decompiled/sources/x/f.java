package x;

import android.app.Activity;
import android.app.Application;
import android.content.res.Configuration;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Looper;
import android.util.Log;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.util.List;

/* JADX INFO: compiled from: ActivityRecreator.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Class<?> f17618a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Field f17619b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Field f17620c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Method f17621d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Method f17622e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Method f17623f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Handler f17624g = new Handler(Looper.getMainLooper());

    /* JADX INFO: compiled from: ActivityRecreator.java */
    public static final class a implements Application.ActivityLifecycleCallbacks {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public Object f17625h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public Activity f17626i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final int f17627j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f17628k = false;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public boolean f17629l = false;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public boolean f17630m = false;

        public a(Activity activity) {
            this.f17626i = activity;
            this.f17627j = activity.hashCode();
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityCreated(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityDestroyed(Activity activity) {
            if (this.f17626i == activity) {
                this.f17626i = null;
                this.f17629l = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityPaused(Activity activity) {
            if (!this.f17629l || this.f17630m || this.f17628k) {
                return;
            }
            Object obj = this.f17625h;
            int i10 = this.f17627j;
            boolean z10 = false;
            try {
                Object obj2 = f.f17620c.get(activity);
                if (obj2 == obj && activity.hashCode() == i10) {
                    f.f17624g.postAtFrontOfQueue(new e(f.f17619b.get(activity), obj2));
                    z10 = true;
                }
            } catch (Throwable th) {
                Log.e("ActivityRecreator", "Exception while fetching field values", th);
            }
            if (z10) {
                this.f17630m = true;
                this.f17625h = null;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityResumed(Activity activity) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStarted(Activity activity) {
            if (this.f17626i == activity) {
                this.f17628k = true;
            }
        }

        @Override // android.app.Application.ActivityLifecycleCallbacks
        public final void onActivityStopped(Activity activity) {
        }
    }

    static {
        Class<?> cls;
        Field declaredField;
        Field declaredField2;
        Method declaredMethod;
        Method declaredMethod2;
        Method method = null;
        try {
            cls = Class.forName("android.app.ActivityThread");
        } catch (Throwable unused) {
            cls = null;
        }
        f17618a = cls;
        try {
            declaredField = Activity.class.getDeclaredField("mMainThread");
            declaredField.setAccessible(true);
        } catch (Throwable unused2) {
            declaredField = null;
        }
        f17619b = declaredField;
        try {
            declaredField2 = Activity.class.getDeclaredField("mToken");
            declaredField2.setAccessible(true);
        } catch (Throwable unused3) {
            declaredField2 = null;
        }
        f17620c = declaredField2;
        Class<?> cls2 = f17618a;
        if (cls2 == null) {
            declaredMethod = null;
        } else {
            try {
                declaredMethod = cls2.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE, String.class);
                declaredMethod.setAccessible(true);
            } catch (Throwable unused4) {
                declaredMethod = null;
            }
        }
        f17621d = declaredMethod;
        Class<?> cls3 = f17618a;
        if (cls3 == null) {
            declaredMethod2 = null;
        } else {
            try {
                declaredMethod2 = cls3.getDeclaredMethod("performStopActivity", IBinder.class, Boolean.TYPE);
                declaredMethod2.setAccessible(true);
            } catch (Throwable unused5) {
                declaredMethod2 = null;
            }
        }
        f17622e = declaredMethod2;
        Class<?> cls4 = f17618a;
        if (a() && cls4 != null) {
            try {
                Class<?> cls5 = Boolean.TYPE;
                Method declaredMethod3 = cls4.getDeclaredMethod("requestRelaunchActivity", IBinder.class, List.class, List.class, Integer.TYPE, cls5, Configuration.class, Configuration.class, cls5, cls5);
                declaredMethod3.setAccessible(true);
                method = declaredMethod3;
            } catch (Throwable unused6) {
            }
        }
        f17623f = method;
    }

    public static boolean a() {
        int i10 = Build.VERSION.SDK_INT;
        return i10 == 26 || i10 == 27;
    }
}
