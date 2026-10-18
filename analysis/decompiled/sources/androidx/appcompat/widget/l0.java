package androidx.appcompat.widget;

import android.R;
import android.graphics.Insets;
import android.graphics.PorterDuff;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: DrawableUtils.java */
/* JADX INFO: loaded from: classes.dex */
public final class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final int[] f1334a = {R.attr.state_checked};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final int[] f1335b = new int[0];

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final Rect f1336c = new Rect();

    /* JADX INFO: compiled from: DrawableUtils.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final boolean f1337a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public static final Method f1338b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public static final Field f1339c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public static final Field f1340d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public static final Field f1341e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public static final Field f1342f;

        /* JADX WARN: Code duplicated, block: B:25:0x004b  */
        /* JADX WARN: Code duplicated, block: B:26:0x0058  */
        static {
            Method method;
            Field field;
            Field field2;
            Field field3;
            boolean z10;
            Field field4;
            try {
                Class<?> cls = Class.forName("android.graphics.Insets");
                method = Drawable.class.getMethod("getOpticalInsets", new Class[0]);
                try {
                    field = cls.getField("left");
                    try {
                        field2 = cls.getField("top");
                        try {
                            field3 = cls.getField("right");
                            try {
                                field4 = cls.getField("bottom");
                                z10 = true;
                            } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused) {
                                z10 = false;
                                field4 = null;
                            }
                        } catch (ClassNotFoundException | NoSuchFieldException | NoSuchMethodException unused2) {
                            field3 = null;
                        }
                    } catch (ClassNotFoundException unused3) {
                        field2 = null;
                        field3 = field2;
                        z10 = false;
                        field4 = null;
                        if (z10) {
                            f1338b = method;
                            f1339c = field;
                            f1340d = field2;
                            f1341e = field3;
                            f1342f = field4;
                            f1337a = true;
                            return;
                        }
                        f1338b = null;
                        f1339c = null;
                        f1340d = null;
                        f1341e = null;
                        f1342f = null;
                        f1337a = false;
                    } catch (NoSuchFieldException unused4) {
                        field2 = null;
                        field3 = field2;
                        z10 = false;
                        field4 = null;
                        if (z10) {
                            f1338b = method;
                            f1339c = field;
                            f1340d = field2;
                            f1341e = field3;
                            f1342f = field4;
                            f1337a = true;
                            return;
                        }
                        f1338b = null;
                        f1339c = null;
                        f1340d = null;
                        f1341e = null;
                        f1342f = null;
                        f1337a = false;
                    } catch (NoSuchMethodException unused5) {
                        field2 = null;
                        field3 = field2;
                        z10 = false;
                        field4 = null;
                        if (z10) {
                            f1338b = method;
                            f1339c = field;
                            f1340d = field2;
                            f1341e = field3;
                            f1342f = field4;
                            f1337a = true;
                            return;
                        }
                        f1338b = null;
                        f1339c = null;
                        f1340d = null;
                        f1341e = null;
                        f1342f = null;
                        f1337a = false;
                    }
                } catch (ClassNotFoundException unused6) {
                    field = null;
                    field2 = field;
                    field3 = field2;
                    z10 = false;
                    field4 = null;
                    if (z10) {
                        f1338b = method;
                        f1339c = field;
                        f1340d = field2;
                        f1341e = field3;
                        f1342f = field4;
                        f1337a = true;
                        return;
                    }
                    f1338b = null;
                    f1339c = null;
                    f1340d = null;
                    f1341e = null;
                    f1342f = null;
                    f1337a = false;
                } catch (NoSuchFieldException unused7) {
                    field = null;
                    field2 = field;
                    field3 = field2;
                    z10 = false;
                    field4 = null;
                    if (z10) {
                        f1338b = method;
                        f1339c = field;
                        f1340d = field2;
                        f1341e = field3;
                        f1342f = field4;
                        f1337a = true;
                        return;
                    }
                    f1338b = null;
                    f1339c = null;
                    f1340d = null;
                    f1341e = null;
                    f1342f = null;
                    f1337a = false;
                } catch (NoSuchMethodException unused8) {
                    field = null;
                    field2 = field;
                    field3 = field2;
                    z10 = false;
                    field4 = null;
                    if (z10) {
                        f1338b = method;
                        f1339c = field;
                        f1340d = field2;
                        f1341e = field3;
                        f1342f = field4;
                        f1337a = true;
                        return;
                    }
                    f1338b = null;
                    f1339c = null;
                    f1340d = null;
                    f1341e = null;
                    f1342f = null;
                    f1337a = false;
                }
            } catch (ClassNotFoundException unused9) {
                method = null;
                field = null;
            } catch (NoSuchFieldException unused10) {
                method = null;
                field = null;
            } catch (NoSuchMethodException unused11) {
                method = null;
                field = null;
            }
            if (z10) {
                f1338b = method;
                f1339c = field;
                f1340d = field2;
                f1341e = field3;
                f1342f = field4;
                f1337a = true;
                return;
            }
            f1338b = null;
            f1339c = null;
            f1340d = null;
            f1341e = null;
            f1342f = null;
            f1337a = false;
        }
    }

    /* JADX INFO: compiled from: DrawableUtils.java */
    public static class b {
        public static Insets a(Drawable drawable) {
            return drawable.getOpticalInsets();
        }
    }

    public static void a(Drawable drawable) {
        String name = drawable.getClass().getName();
        int i10 = Build.VERSION.SDK_INT;
        if (i10 < 29 || i10 >= 31 || !"android.graphics.drawable.ColorStateListDrawable".equals(name)) {
            return;
        }
        b(drawable);
    }

    public static void b(Drawable drawable) {
        int[] state = drawable.getState();
        if (state == null || state.length == 0) {
            drawable.setState(f1334a);
        } else {
            drawable.setState(f1335b);
        }
        drawable.setState(state);
    }

    public static Rect c(Drawable drawable) {
        int i10 = Build.VERSION.SDK_INT;
        if (i10 >= 29) {
            Insets insetsA = b.a(drawable);
            return new Rect(insetsA.left, insetsA.top, insetsA.right, insetsA.bottom);
        }
        Drawable drawableA = b0.a.a(drawable);
        boolean z10 = a.f1337a;
        if (i10 < 29 && a.f1337a) {
            try {
                Object objInvoke = a.f1338b.invoke(drawableA, new Object[0]);
                if (objInvoke != null) {
                    return new Rect(a.f1339c.getInt(objInvoke), a.f1340d.getInt(objInvoke), a.f1341e.getInt(objInvoke), a.f1342f.getInt(objInvoke));
                }
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
        }
        return f1336c;
    }

    public static PorterDuff.Mode d(int i10, PorterDuff.Mode mode) {
        if (i10 == 3) {
            return PorterDuff.Mode.SRC_OVER;
        }
        if (i10 == 5) {
            return PorterDuff.Mode.SRC_IN;
        }
        if (i10 == 9) {
            return PorterDuff.Mode.SRC_ATOP;
        }
        switch (i10) {
            case 14:
                return PorterDuff.Mode.MULTIPLY;
            case 15:
                return PorterDuff.Mode.SCREEN;
            case 16:
                return PorterDuff.Mode.ADD;
            default:
                return mode;
        }
    }
}
