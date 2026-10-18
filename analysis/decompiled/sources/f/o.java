package f;

import android.R;
import android.content.Context;
import android.content.ContextWrapper;
import android.util.AttributeSet;
import android.view.InflateException;
import android.view.View;
import androidx.appcompat.widget.AppCompatTextView;
import androidx.appcompat.widget.w;
import java.lang.reflect.Constructor;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

/* JADX INFO: compiled from: AppCompatViewInflater.java */
/* JADX INFO: loaded from: classes.dex */
public class o {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final Class<?>[] f6876b = {Context.class, AttributeSet.class};

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final int[] f6877c = {R.attr.onClick};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final int[] f6878d = {R.attr.accessibilityHeading};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f6879e = {R.attr.accessibilityPaneTitle};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final int[] f6880f = {R.attr.screenReaderFocusable};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final String[] f6881g = {"android.widget.", "android.view.", "android.webkit."};

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final p.g<String, Constructor<? extends View>> f6882h = new p.g<>();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Object[] f6883a = new Object[2];

    /* JADX INFO: compiled from: AppCompatViewInflater.java */
    public static class a implements View.OnClickListener {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final View f6884h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final String f6885i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public Method f6886j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public Context f6887k;

        public a(View view, String str) {
            this.f6884h = view;
            this.f6885i = str;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            String string;
            Method method;
            if (this.f6886j != null) {
                break;
            }
            Context context = this.f6884h.getContext();
            while (true) {
                if (context == null) {
                    int id2 = this.f6884h.getId();
                    if (id2 == -1) {
                        string = "";
                    } else {
                        StringBuilder sbC = a0.b.c(" with id '");
                        sbC.append(this.f6884h.getContext().getResources().getResourceEntryName(id2));
                        sbC.append("'");
                        string = sbC.toString();
                    }
                    StringBuilder sbC2 = a0.b.c("Could not find method ");
                    sbC2.append(this.f6885i);
                    sbC2.append("(View) in a parent or ancestor Context for android:onClick attribute defined on view ");
                    sbC2.append(this.f6884h.getClass());
                    sbC2.append(string);
                    throw new IllegalStateException(sbC2.toString());
                }
                try {
                    if (!context.isRestricted() && (method = context.getClass().getMethod(this.f6885i, View.class)) != null) {
                        this.f6886j = method;
                        this.f6887k = context;
                        break;
                    }
                } catch (NoSuchMethodException unused) {
                }
                context = context instanceof ContextWrapper ? ((ContextWrapper) context).getBaseContext() : null;
            }
            try {
                this.f6886j.invoke(this.f6887k, view);
            } catch (IllegalAccessException e10) {
                throw new IllegalStateException("Could not execute non-public method for android:onClick", e10);
            } catch (InvocationTargetException e11) {
                throw new IllegalStateException("Could not execute method for android:onClick", e11);
            }
        }
    }

    public androidx.appcompat.widget.d a(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.d(context, attributeSet);
    }

    public androidx.appcompat.widget.f b(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.f(context, attributeSet);
    }

    public androidx.appcompat.widget.g c(Context context, AttributeSet attributeSet) {
        return new androidx.appcompat.widget.g(context, attributeSet);
    }

    public w d(Context context, AttributeSet attributeSet) {
        return new w(context, attributeSet, androidx.appcompat.R.attr.radioButtonStyle);
    }

    public AppCompatTextView e(Context context, AttributeSet attributeSet) {
        return new AppCompatTextView(context, attributeSet);
    }

    public final View f(Context context, String str, String str2) throws InflateException, ClassNotFoundException {
        String str3;
        p.g<String, Constructor<? extends View>> gVar = f6882h;
        Constructor<? extends View> orDefault = gVar.getOrDefault(str, null);
        if (orDefault == null) {
            if (str2 != null) {
                try {
                    str3 = str2 + str;
                } catch (Exception unused) {
                    return null;
                }
            } else {
                str3 = str;
            }
            orDefault = Class.forName(str3, false, context.getClassLoader()).asSubclass(View.class).getConstructor(f6876b);
            gVar.put(str, orDefault);
        }
        orDefault.setAccessible(true);
        return orDefault.newInstance(this.f6883a);
    }

    public final void g(View view, String str) {
        if (view != null) {
            return;
        }
        throw new IllegalStateException(getClass().getName() + " asked to inflate view for <" + str + ">, but returned null");
    }
}
