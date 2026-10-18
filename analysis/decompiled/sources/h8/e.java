package h8;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.GsonInstrumentation;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.nike.adapt.BigfootApplication;
import fd.h;
import o7.x;
import s9.r;
import v7.g;

/* JADX INFO: compiled from: BigfootOnBoardingPreferenceHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class e implements d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final e f8306b = new e();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final String f8307c = e.class.getSimpleName();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final h f8308d = (h) o.x(a.f8309h);

    /* JADX INFO: compiled from: BigfootOnBoardingPreferenceHelper.kt */
    public static final class a extends rd.o implements qd.a<SharedPreferences> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final a f8309h = new a();

        public a() {
            super(0);
        }

        @Override // qd.a
        public final SharedPreferences invoke() {
            return BigfootApplication.f5638p.a().getSharedPreferences("bigfoot_on_boarding_preferences", 0);
        }
    }

    @Override // h8.d
    public final void a(String str) {
        l().edit().putString("PREF_ON_BOARDING_COLORWAY_CODE", str).apply();
    }

    @Override // h8.d
    public final s9.d b(d.a aVar) {
        try {
            return (s9.d) GsonInstrumentation.fromJson(new e7.h(), l().getString(aVar.f8305h, null), s9.d.class);
        } catch (Throwable th) {
            if (th instanceof NullPointerException) {
                return null;
            }
            x.f12420a.d(f8307c, "getBigfootShoe had invalid data type");
            return null;
        }
    }

    @Override // h8.d
    public final v7.h c() {
        String string = l().getString("PREF_ON_BOARDING_TYPE", v7.h.NORMAL.name());
        p4.h.h(string, "null cannot be cast to non-null type kotlin.String");
        return v7.h.valueOf(string);
    }

    @Override // h8.d
    public final r d() {
        String string = l().getString("PREF_ON_BOARDING_SHOE_TYPE", null);
        if (string == null) {
            return null;
        }
        return r.valueOf(string);
    }

    @Override // h8.d
    public final void e(r rVar) {
        l().edit().putString("PREF_ON_BOARDING_SHOE_TYPE", rVar != null ? rVar.name() : null).apply();
    }

    @Override // h8.d
    public final String f() {
        return l().getString("PREF_ON_BOARDING_COLORWAY_CODE", null);
    }

    @Override // h8.d
    @SuppressLint({"ApplySharedPref"})
    public final void g() {
        r rVarD = d();
        l().edit().clear().commit();
        e(rVarD);
        SharedPreferences.Editor editorEdit = l().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("PREF_LEFT_PAIR", null);
        editorEdit.putString("PREF_RIGHT_PAIR", null);
        editorEdit.apply();
    }

    @Override // h8.d
    public final void h(g gVar) {
        SharedPreferences.Editor editorEdit = l().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("PREF_ON_BOARDING_STATE", gVar.name());
        editorEdit.apply();
    }

    @Override // h8.d
    public final void i(v7.h hVar) {
        p4.h.j(hVar, "onBoardingType");
        l().edit().putString("PREF_ON_BOARDING_TYPE", hVar.name()).apply();
    }

    @Override // h8.d
    public final void j() {
        l().edit().remove("PREF_ON_BOARDING_COLORWAY_CODE").apply();
    }

    @Override // h8.d
    public final g k() {
        String string = l().getString("PREF_ON_BOARDING_STATE", "NOT_STARTED");
        p4.h.h(string, "null cannot be cast to non-null type kotlin.String");
        return g.valueOf(string);
    }

    public final SharedPreferences l() {
        Object value = f8308d.getValue();
        p4.h.i(value, "<get-sharedPreferences>(...)");
        return (SharedPreferences) value;
    }
}
