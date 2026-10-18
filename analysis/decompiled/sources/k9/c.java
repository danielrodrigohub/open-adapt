package k9;

import android.content.SharedPreferences;
import com.nike.adapt.BigfootApplication;
import p4.h;

/* JADX INFO: compiled from: RateDialogPreferences.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c implements b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final c f9752a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final SharedPreferences f9753b;

    static {
        SharedPreferences sharedPreferences = BigfootApplication.f5638p.a().getSharedPreferences("RATE_DIALOG_SETTINGS_KEY", 0);
        h.i(sharedPreferences, "BigfootApplication.APPLI…EY, Context.MODE_PRIVATE)");
        f9753b = sharedPreferences;
    }

    @Override // k9.b
    public final void a() {
        SharedPreferences.Editor editorEdit = f9753b.edit();
        h.i(editorEdit, "editor");
        editorEdit.putBoolean("WAITING_FOR_NEW_SESSION_BEFORE_RATE_DIALOG", true);
        editorEdit.apply();
    }

    @Override // k9.b
    public final int b() {
        return f9753b.getInt("DONT_SHOW_RATE_DIALOG_VERSION", -1);
    }

    @Override // k9.b
    public final void c() {
        SharedPreferences.Editor editorEdit = f9753b.edit();
        h.i(editorEdit, "editor");
        editorEdit.putInt("HAS_RATED_APP_VERSION", 1);
        editorEdit.apply();
    }

    @Override // k9.b
    public final int d() {
        return f9753b.getInt("VISITS_BEFORE_SHOW_RATE_DIALOG", 1);
    }

    @Override // k9.b
    public final boolean e() {
        return f9753b.getBoolean("WAITING_FOR_NEW_SESSION_BEFORE_RATE_DIALOG", false);
    }

    @Override // k9.b
    public final void f(int i10) {
        SharedPreferences.Editor editorEdit = f9753b.edit();
        h.i(editorEdit, "editor");
        editorEdit.putInt("VISITS_BEFORE_SHOW_RATE_DIALOG", i10);
        editorEdit.apply();
    }

    @Override // k9.b
    public final int g() {
        return f9753b.getInt("HAS_RATED_APP_VERSION", -1);
    }

    @Override // k9.b
    public final void h() {
        SharedPreferences.Editor editorEdit = f9753b.edit();
        h.i(editorEdit, "editor");
        editorEdit.putInt("DONT_SHOW_RATE_DIALOG_VERSION", 1);
        editorEdit.apply();
    }
}
