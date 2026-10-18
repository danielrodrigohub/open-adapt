package j0;

import android.annotation.SuppressLint;
import android.app.ActionBar;
import android.app.Activity;
import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.util.SparseArray;
import android.view.KeyEvent;
import android.view.View;
import android.view.Window;
import androidx.core.R;
import java.lang.ref.WeakReference;
import java.lang.reflect.Field;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.WeakHashMap;

/* JADX INFO: compiled from: KeyEventDispatcher.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f9186a = false;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static Method f9187b = null;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static boolean f9188c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static Field f9189d;

    /* JADX INFO: compiled from: KeyEventDispatcher.java */
    public interface a {
        boolean j(KeyEvent keyEvent);
    }

    public static boolean a(View view, KeyEvent keyEvent) {
        int iIndexOfKey;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        if (Build.VERSION.SDK_INT < 28) {
            ArrayList<WeakReference<View>> arrayList = a0.s.f9162d;
            int i10 = R.id.tag_unhandled_key_event_manager;
            a0.s sVar = (a0.s) view.getTag(i10);
            if (sVar == null) {
                sVar = new a0.s();
                view.setTag(i10, sVar);
            }
            WeakReference<KeyEvent> weakReference = sVar.f9165c;
            if (weakReference == null || weakReference.get() != keyEvent) {
                sVar.f9165c = new WeakReference<>(keyEvent);
                WeakReference<View> weakReferenceValueAt = null;
                if (sVar.f9164b == null) {
                    sVar.f9164b = new SparseArray<>();
                }
                SparseArray<WeakReference<View>> sparseArray = sVar.f9164b;
                if (keyEvent.getAction() == 1 && (iIndexOfKey = sparseArray.indexOfKey(keyEvent.getKeyCode())) >= 0) {
                    weakReferenceValueAt = sparseArray.valueAt(iIndexOfKey);
                    sparseArray.removeAt(iIndexOfKey);
                }
                if (weakReferenceValueAt == null) {
                    weakReferenceValueAt = sparseArray.get(keyEvent.getKeyCode());
                }
                if (weakReferenceValueAt != null) {
                    View view2 = weakReferenceValueAt.get();
                    if (view2 == null || !a0.g.b(view2)) {
                        return true;
                    }
                    sVar.b(view2, keyEvent);
                    return true;
                }
            }
        }
        return false;
    }

    @SuppressLint({"LambdaLast"})
    public static boolean b(a aVar, View view, Window.Callback callback, KeyEvent keyEvent) {
        DialogInterface.OnKeyListener onKeyListener;
        boolean zBooleanValue = false;
        if (aVar == null) {
            return false;
        }
        if (Build.VERSION.SDK_INT >= 28) {
            return aVar.j(keyEvent);
        }
        if (callback instanceof Activity) {
            Activity activity = (Activity) callback;
            activity.onUserInteraction();
            Window window = activity.getWindow();
            if (window.hasFeature(8)) {
                ActionBar actionBar = activity.getActionBar();
                if (keyEvent.getKeyCode() == 82 && actionBar != null) {
                    if (!f9186a) {
                        try {
                            f9187b = actionBar.getClass().getMethod("onMenuKeyEvent", KeyEvent.class);
                        } catch (NoSuchMethodException unused) {
                        }
                        f9186a = true;
                    }
                    Method method = f9187b;
                    if (method != null) {
                        try {
                            Object objInvoke = method.invoke(actionBar, keyEvent);
                            if (objInvoke != null) {
                                zBooleanValue = ((Boolean) objInvoke).booleanValue();
                            }
                        } catch (IllegalAccessException | InvocationTargetException unused2) {
                        }
                    }
                    if (zBooleanValue) {
                        return true;
                    }
                }
            }
            if (window.superDispatchKeyEvent(keyEvent)) {
                return true;
            }
            View decorView = window.getDecorView();
            if (a0.d(decorView, keyEvent)) {
                return true;
            }
            return keyEvent.dispatch(activity, decorView != null ? decorView.getKeyDispatcherState() : null, activity);
        }
        if (!(callback instanceof Dialog)) {
            return (view != null && a0.d(view, keyEvent)) || aVar.j(keyEvent);
        }
        Dialog dialog = (Dialog) callback;
        if (!f9188c) {
            try {
                Field declaredField = Dialog.class.getDeclaredField("mOnKeyListener");
                f9189d = declaredField;
                declaredField.setAccessible(true);
            } catch (NoSuchFieldException unused3) {
            }
            f9188c = true;
        }
        Field field = f9189d;
        if (field != null) {
            try {
                onKeyListener = (DialogInterface.OnKeyListener) field.get(dialog);
            } catch (IllegalAccessException unused4) {
                onKeyListener = null;
            }
        } else {
            onKeyListener = null;
        }
        if (onKeyListener != null && onKeyListener.onKey(dialog, keyEvent.getKeyCode(), keyEvent)) {
            return true;
        }
        Window window2 = dialog.getWindow();
        if (window2.superDispatchKeyEvent(keyEvent)) {
            return true;
        }
        View decorView2 = window2.getDecorView();
        if (a0.d(decorView2, keyEvent)) {
            return true;
        }
        return keyEvent.dispatch(dialog, decorView2 != null ? decorView2.getKeyDispatcherState() : null, dialog);
    }
}
