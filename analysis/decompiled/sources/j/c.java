package j;

import android.content.Context;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import android.view.LayoutInflater;
import androidx.appcompat.R;

/* JADX INFO: compiled from: ContextThemeWrapper.java */
/* JADX INFO: loaded from: classes.dex */
public final class c extends ContextWrapper {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static Configuration f9080f;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public int f9081a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public Resources.Theme f9082b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public LayoutInflater f9083c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public Configuration f9084d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public Resources f9085e;

    /* JADX INFO: compiled from: ContextThemeWrapper.java */
    public static class a {
        public static Context a(c cVar, Configuration configuration) {
            return cVar.createConfigurationContext(configuration);
        }
    }

    public c() {
        super(null);
    }

    public final void a(Configuration configuration) {
        if (this.f9085e != null) {
            throw new IllegalStateException("getResources() or getAssets() has already been called");
        }
        if (this.f9084d != null) {
            throw new IllegalStateException("Override configuration has already been set");
        }
        this.f9084d = new Configuration(configuration);
    }

    @Override // android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    public final void b() {
        if (this.f9082b == null) {
            this.f9082b = getResources().newTheme();
            Resources.Theme theme = getBaseContext().getTheme();
            if (theme != null) {
                this.f9082b.setTo(theme);
            }
        }
        this.f9082b.applyStyle(this.f9081a, true);
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final AssetManager getAssets() {
        return getResources().getAssets();
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0032  */
    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources getResources() {
        if (this.f9085e == null) {
            Configuration configuration = this.f9084d;
            if (configuration == null) {
                this.f9085e = super.getResources();
            } else {
                if (Build.VERSION.SDK_INT >= 26) {
                    if (f9080f == null) {
                        Configuration configuration2 = new Configuration();
                        configuration2.fontScale = 0.0f;
                        f9080f = configuration2;
                    }
                    if (configuration.equals(f9080f)) {
                        this.f9085e = super.getResources();
                    }
                }
                this.f9085e = a.a(this, this.f9084d).getResources();
            }
        }
        return this.f9085e;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Object getSystemService(String str) {
        if (!"layout_inflater".equals(str)) {
            return getBaseContext().getSystemService(str);
        }
        if (this.f9083c == null) {
            this.f9083c = LayoutInflater.from(getBaseContext()).cloneInContext(this);
        }
        return this.f9083c;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final Resources.Theme getTheme() {
        Resources.Theme theme = this.f9082b;
        if (theme != null) {
            return theme;
        }
        if (this.f9081a == 0) {
            this.f9081a = R.style.Theme_AppCompat_Light;
        }
        b();
        return this.f9082b;
    }

    @Override // android.content.ContextWrapper, android.content.Context
    public final void setTheme(int i10) {
        if (this.f9081a != i10) {
            this.f9081a = i10;
            b();
        }
    }

    public c(Context context, int i10) {
        super(context);
        this.f9081a = i10;
    }

    public c(Context context, Resources.Theme theme) {
        super(context);
        this.f9082b = theme;
    }
}
