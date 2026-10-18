package androidx.preference;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.XmlResourceParser;

/* JADX INFO: compiled from: PreferenceManager.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Context f2344a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public long f2345b = 0;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public SharedPreferences f2346c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public SharedPreferences.Editor f2347d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f2348e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public String f2349f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f2350g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public PreferenceScreen f2351h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c f2352i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a f2353j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public b f2354k;

    /* JADX INFO: compiled from: PreferenceManager.java */
    public interface a {
    }

    /* JADX INFO: compiled from: PreferenceManager.java */
    public interface b {
    }

    /* JADX INFO: compiled from: PreferenceManager.java */
    public interface c {
        boolean c(Preference preference);
    }

    public f(Context context) {
        this.f2344a = context;
        this.f2349f = b(context);
    }

    public static String b(Context context) {
        return context.getPackageName() + "_preferences";
    }

    public final <T extends Preference> T a(CharSequence charSequence) {
        PreferenceScreen preferenceScreen = this.f2351h;
        if (preferenceScreen == null) {
            return null;
        }
        return (T) preferenceScreen.L(charSequence);
    }

    public final SharedPreferences.Editor c() {
        if (!this.f2348e) {
            return d().edit();
        }
        if (this.f2347d == null) {
            this.f2347d = d().edit();
        }
        return this.f2347d;
    }

    public final SharedPreferences d() {
        if (this.f2346c == null) {
            this.f2346c = this.f2344a.getSharedPreferences(this.f2349f, this.f2350g);
        }
        return this.f2346c;
    }

    public final PreferenceScreen e(Context context) {
        this.f2348e = true;
        x0.d dVar = new x0.d(context, this);
        XmlResourceParser xml = context.getResources().getXml(com.nike.adapt.R.xml.settings_preferences);
        try {
            Preference preferenceC = dVar.c(xml);
            xml.close();
            PreferenceScreen preferenceScreen = (PreferenceScreen) preferenceC;
            preferenceScreen.w(this);
            SharedPreferences.Editor editor = this.f2347d;
            if (editor != null) {
                editor.apply();
            }
            this.f2348e = false;
            return preferenceScreen;
        } catch (Throwable th) {
            xml.close();
            throw th;
        }
    }
}
