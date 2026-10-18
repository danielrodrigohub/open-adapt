package androidx.activity;

import android.app.Activity;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import androidx.lifecycle.n;
import androidx.lifecycle.q;
import java.lang.reflect.Field;

/* JADX INFO: loaded from: classes.dex */
final class ImmLeaksCleaner implements n {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static int f678i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static Field f679j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static Field f680k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public static Field f681l;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public Activity f682h;

    @Override // androidx.lifecycle.n
    public final void a(q qVar, androidx.lifecycle.i.b bVar) {
        if (bVar != androidx.lifecycle.i.b.ON_DESTROY) {
            return;
        }
        if (f678i == 0) {
            try {
                f678i = 2;
                Field declaredField = InputMethodManager.class.getDeclaredField("mServedView");
                f680k = declaredField;
                declaredField.setAccessible(true);
                Field declaredField2 = InputMethodManager.class.getDeclaredField("mNextServedView");
                f681l = declaredField2;
                declaredField2.setAccessible(true);
                Field declaredField3 = InputMethodManager.class.getDeclaredField("mH");
                f679j = declaredField3;
                declaredField3.setAccessible(true);
                f678i = 1;
            } catch (NoSuchFieldException unused) {
            }
        }
        if (f678i == 1) {
            InputMethodManager inputMethodManager = (InputMethodManager) this.f682h.getSystemService("input_method");
            try {
                Object obj = f679j.get(inputMethodManager);
                if (obj == null) {
                    return;
                }
                synchronized (obj) {
                    try {
                        try {
                            View view = (View) f680k.get(inputMethodManager);
                            if (view == null) {
                                return;
                            }
                            if (view.isAttachedToWindow()) {
                                return;
                            }
                            try {
                                f681l.set(inputMethodManager, null);
                                inputMethodManager.isActive();
                            } catch (IllegalAccessException unused2) {
                            }
                        } catch (ClassCastException unused3) {
                        } catch (IllegalAccessException unused4) {
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            } catch (IllegalAccessException unused5) {
            }
        }
    }
}
