package h8;

import android.content.SharedPreferences;
import androidx.lifecycle.o;
import com.newrelic.agent.android.instrumentation.GsonInstrumentation;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.nike.adapt.BigfootApplication;
import com.nike.adapt.adk.AdaptMarshaller;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.network.assets.model.Manifest;
import com.nike.adapt.presenter.profile.AdaptUser;
import com.nike.adapt.ui.settings.AppIconsActivity;
import fd.h;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.util.ArrayList;
import o7.x;
import s9.r;
import v7.k;

/* JADX INFO: compiled from: AdaptPreferenceHelper.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class c implements h8.a {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final c f8298b = new c();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public static final h f8299c = (h) o.x(b.f8300h);

    /* JADX INFO: compiled from: AdaptPreferenceHelper.kt */
    public static final class a extends l7.a<ArrayList<k>> {
    }

    /* JADX INFO: compiled from: AdaptPreferenceHelper.kt */
    public static final class b extends rd.o implements qd.a<SharedPreferences> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f8300h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final SharedPreferences invoke() {
            return BigfootApplication.f5638p.a().getSharedPreferences("adapt_preferences", 0);
        }
    }

    @Override // h8.a
    public final void A() {
        ca.a.f(this, "editor", "PREF_HAS_SEEN_SPLASH_SCREEN", true);
    }

    @Override // h8.a
    public final void B(v7.d dVar) {
        m0().edit().putString("PREF_FW_UPGRADE_RECORD", GsonInstrumentation.toJson(new e7.h(), dVar)).apply();
    }

    @Override // h8.a
    public final void C(boolean z10) {
        ca.a.f(this, "editor", "PREF_CAN_SHOW_BATTERY_NOTIFICATION_CHARGED", z10);
    }

    @Override // h8.a
    public final boolean D() {
        return m0().getBoolean("PREF_HAS_SEEN_VOICE_SETTINGS_PROMPT", false);
    }

    @Override // h8.a
    public final boolean E() {
        return m0().getBoolean("PREF_HAS_SEEN_LIGHT_PACKS_ACTIVATED_BOTTOM_SHEET", false);
    }

    @Override // h8.a
    public final void F(Manifest manifest) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("pref_last_cached_manifest", GsonInstrumentation.toJson(new e7.h(), manifest));
        editorEdit.apply();
    }

    @Override // h8.a
    public final int G() {
        return m0().getInt("PARAM_IS_DATA_OPT_IN_SESSIONS", 0);
    }

    @Override // h8.a
    public final void H() {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("PREF_APP_VERSION", "1.29.3");
        editorEdit.apply();
    }

    @Override // h8.a
    public final void I(boolean z10) {
        ca.a.f(this, "editor", "PREF_CONNECT_ATTEMPT_AFTER_FW_UPGRADE", z10);
    }

    @Override // h8.a
    public final boolean J() {
        return m0().getBoolean("PREF_CAN_SHOW_APP_DECOMMISSION_DIALOG", true);
    }

    @Override // h8.a
    public final Manifest K() {
        e7.h hVar = new e7.h();
        SharedPreferences sharedPreferencesM0 = m0();
        p7.a aVar = p7.a.f13271a;
        String str = null;
        try {
            InputStream inputStreamOpen = BigfootApplication.f5638p.b().getAssets().open("default_manifest.json");
            p4.h.i(inputStreamOpen, "context.assets.open(\"default_manifest.json\")");
            Reader inputStreamReader = new InputStreamReader(inputStreamOpen, yd.a.f19171b);
            BufferedReader bufferedReader = inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192);
            try {
                String strE = o.E(bufferedReader);
                d3.e.d(bufferedReader, null);
                str = strE;
            } catch (Throwable th) {
                try {
                    throw th;
                } catch (Throwable th2) {
                    d3.e.d(bufferedReader, th);
                    throw th2;
                }
            }
        } catch (IOException e10) {
            e10.printStackTrace();
            x.f12420a.a("Unable to fetch the default manifest");
        }
        Object objFromJson = GsonInstrumentation.fromJson(hVar, sharedPreferencesM0.getString("pref_last_cached_manifest", str), (Class<Object>) Manifest.class);
        p4.h.i(objFromJson, "Gson().fromJson(sharedPr…)), Manifest::class.java)");
        return (Manifest) objFromJson;
    }

    @Override // h8.a
    public final void L(AppIconsActivity.a aVar) {
        p4.h.j(aVar, "icon");
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("PREF_APP_ICON_SELECTION", aVar.name());
        editorEdit.apply();
    }

    @Override // h8.a
    public final long M() {
        return m0().getLong("PREF_FIRMWARE_LFT_PROGRESS_ERROR_TIME", 0L);
    }

    @Override // h8.a
    public final boolean N() {
        return m0().getBoolean("PREF_HAS_SEEN_LIGHT_PACKS_TUTORIAL2", false);
    }

    @Override // h8.a
    public final ArrayList<k> O() {
        return (ArrayList) GsonInstrumentation.fromJson(new e7.h(), m0().getString("PREF_SHOE_DATA_LIST", null), new a().f10168b);
    }

    @Override // h8.a
    public final int P() {
        return m0().getInt("PREF_GOOGLE_VOICE_LACING_NOTIFICATION_COUNT", 0);
    }

    @Override // h8.a
    public final AppIconsActivity.a Q() {
        String string = m0().getString("PREF_APP_ICON_SELECTION", "Adapt");
        return AppIconsActivity.a.valueOf(string != null ? string : "Adapt");
    }

    @Override // h8.a
    public final AdaptUser R() {
        String string = m0().getString("PREF_BIGFOOT_USER", null);
        if (string == null) {
            return null;
        }
        AdaptUser adaptUser = (AdaptUser) GsonInstrumentation.fromJson(new e7.h(), string, AdaptUser.class);
        if ((adaptUser != null ? adaptUser.getNuid() : null) != null) {
            return adaptUser;
        }
        return null;
    }

    @Override // h8.a
    public final AdaptShoeColor S() {
        AdaptShoeColor adaptShoeColor = (AdaptShoeColor) GsonInstrumentation.fromJson(new e7.h(), m0().getString("PREF_SHOE_COLOR", null), AdaptShoeColor.class);
        if (adaptShoeColor != null) {
            return adaptShoeColor;
        }
        AdaptMarshaller.AdaptPreset adaptPreset = AdaptMarshaller.AdaptPreset.HERO_BLUE;
        return new AdaptShoeColor(adaptPreset, adaptPreset, null, 4, null);
    }

    @Override // h8.a
    public final boolean T() {
        return m0().getBoolean("PREF_IS_DATA_OPT_IN_ENABLED", false);
    }

    @Override // h8.a
    public final boolean U() {
        return m0().getBoolean("PREF_ANIMATION_ERROR_ALREADY_DISPLAYED", false);
    }

    @Override // h8.a
    public final void V(int i10) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putInt("PARAM_IS_DATA_OPT_IN_SESSIONS", i10);
        editorEdit.apply();
    }

    @Override // h8.a
    public final v7.d W() {
        return (v7.d) GsonInstrumentation.fromJson(new e7.h(), m0().getString("PREF_FW_UPGRADE_RECORD", null), v7.d.class);
    }

    @Override // h8.a
    public final void X() {
        ca.a.f(this, "editor", "PREF_HAS_SEEN_GESTURES_INTRO", true);
    }

    @Override // h8.a
    public final boolean Y() {
        return m0().getBoolean("PREF_FIRMWARE_UPDATE_RETRY_AFTER_FAILURE", false);
    }

    @Override // h8.a
    public final void Z() {
        ca.a.f(this, "editor", "PREF_HAS_SEEN_LIGHT_PACKS_FIRMWARE_UPDATE_BOTTOM_SHEET", true);
    }

    @Override // h8.a
    public final void a(ArrayList<k> arrayList) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("PREF_SHOE_DATA_LIST", GsonInstrumentation.toJson(new e7.h(), arrayList));
        editorEdit.apply();
    }

    @Override // h8.a
    public final void a0() {
        ca.a.f(this, "editor", "PREF_HAS_SEEN_LIGHT_PACKS_TUTORIAL1", true);
    }

    @Override // h8.a
    public final void b() {
        ca.a.f(this, "editor", "PREF_HAS_SEEN_LIGHT_PACKS_TUTORIAL2", true);
    }

    @Override // h8.a
    public final void b0(AdaptShoeColor adaptShoeColor) {
        p4.h.j(adaptShoeColor, "adaptShoeColor");
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("PREF_SHOE_COLOR", GsonInstrumentation.toJson(new e7.h(), adaptShoeColor));
        editorEdit.apply();
    }

    @Override // h8.a
    public final AdaptShoeColor c() {
        AdaptShoeColor adaptShoeColor = (AdaptShoeColor) GsonInstrumentation.fromJson(new e7.h(), m0().getString("PREF_LAST_NON_OFF_SHOE_COLOR", null), AdaptShoeColor.class);
        if (adaptShoeColor != null) {
            return adaptShoeColor;
        }
        AdaptMarshaller.AdaptPreset adaptPreset = AdaptMarshaller.AdaptPreset.HERO_BLUE;
        return new AdaptShoeColor(adaptPreset, adaptPreset, null, 4, null);
    }

    @Override // h8.a
    public final void c0(int i10) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putInt("last_known_pulsing_duration", i10);
        editorEdit.apply();
    }

    @Override // h8.a
    public final void d(int i10) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putInt("PREF_GOOGLE_VOICE_PROMPT", i10);
        editorEdit.apply();
    }

    @Override // h8.a
    public final boolean d0() {
        return m0().getBoolean("PARAM_MODES_SAVED", false);
    }

    @Override // h8.a
    public final boolean e() {
        return m0().getBoolean("PREF_HAS_SEEN_LIGHT_PACKS_FIRMWARE_UPDATE_BOTTOM_SHEET", false);
    }

    @Override // h8.a
    public final boolean e0() {
        return m0().getBoolean("PREF_HAS_SEEN_GESTURES_INTRO", false);
    }

    @Override // h8.a
    public final boolean f() {
        return m0().getBoolean("PREF_CONNECT_ATTEMPT_AFTER_FW_UPGRADE", false);
    }

    @Override // h8.a
    public final void f0() {
        ca.a.f(this, "editor", "PREF_CAN_SHOW_APP_DECOMMISSION_DIALOG", false);
    }

    @Override // h8.a
    public final void g(boolean z10) {
        ca.a.f(this, "editor", "PREF_CAN_SHOW_BATTERY_NOTIFICATION_LOW", z10);
    }

    @Override // h8.a
    public final void g0(boolean z10) {
        ca.a.f(this, "editor", "PREF_CAN_SHOW_BATTERY_NOTIFICATION_CRITICAL", z10);
    }

    @Override // h8.a
    public final r getShoeType() {
        SharedPreferences sharedPreferencesM0 = m0();
        String string = m0().getString("PREF_RIGHT_SHOE_TYPE", "ADAPT_BB");
        if (string == null) {
            string = "ADAPT_BB";
        }
        String string2 = sharedPreferencesM0.getString("PREF_LEFT_SHOE_TYPE", string);
        return r.valueOf(string2 != null ? string2 : "ADAPT_BB");
    }

    @Override // h8.a
    public final boolean h() {
        return m0().getBoolean("PREF_GOOGLE_VOICE_LACING_NOTIFICATION", false);
    }

    @Override // h8.a
    public final void h0(boolean z10) {
        ca.a.f(this, "editor", "PREF_FIRMWARE_UPDATE_RETRY_AFTER_FAILURE", z10);
    }

    @Override // h8.a
    public final void i(boolean z10) {
        ca.a.f(this, "editor", "PREF_SHOULD_SHOW_JORDAN_APP_ICON_BADGE", z10);
    }

    @Override // h8.a
    public final boolean i0() {
        return m0().getBoolean("PREF_SHOULD_SHOW_JORDAN_APP_ICON_BADGE", true);
    }

    @Override // h8.a
    public final int j() {
        return m0().getInt("last_known_pulsing_duration", -50);
    }

    @Override // h8.a
    public final void j0(int i10) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putInt("PREF_IS_DATA_OPT_IN_STATE", i10);
        editorEdit.apply();
    }

    @Override // h8.a
    public final void k() {
        ca.a.f(this, "editor", "PREF_HAS_SEEN_LIGHT_PACKS_ACTIVATED_BOTTOM_SHEET", true);
    }

    @Override // h8.a
    public final void k0(AdaptShoeColor adaptShoeColor) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("PREF_LAST_NON_OFF_SHOE_COLOR", GsonInstrumentation.toJson(new e7.h(), adaptShoeColor));
        editorEdit.apply();
    }

    @Override // h8.a
    public final boolean l() {
        return m0().getBoolean("PREF_HAS_SEEN_SPLASH_SCREEN", false);
    }

    /* JADX WARN: Code duplicated, block: B:10:0x002f  */
    /* JADX WARN: Code duplicated, block: B:14:? A[RETURN, SYNTHETIC] */
    public final v7.c l0() {
        v7.c.b bVar = v7.c.f16365a;
        SharedPreferences sharedPreferencesM0 = m0();
        v7.c.e eVar = v7.c.e.f16371c;
        String string = sharedPreferencesM0.getString("PREF_DEFAULT_EFFECT", v7.c.e.f16372d);
        for (v7.c cVar : v7.c.f16366b.getValue()) {
            if (p4.h.c(cVar.b(), string)) {
                if (cVar == null) {
                    return v7.c.d.f16370c;
                }
                return cVar;
            }
        }
        cVar = null;
        if (cVar == null) {
            return v7.c.d.f16370c;
        }
        return cVar;
    }

    @Override // h8.a
    public final void m() {
        ca.a.f(this, "editor", "PREF_HAS_SEEN_VOICE_SETTINGS_PROMPT", true);
    }

    public final SharedPreferences m0() {
        Object value = f8299c.getValue();
        p4.h.i(value, "<get-sharedPreferences>(...)");
        return (SharedPreferences) value;
    }

    @Override // h8.a
    public final void n(long j10) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putLong("PREF_FIRMWARE_LFT_PROGRESS_ERROR_TIME", j10);
        editorEdit.commit();
    }

    public final void n0(boolean z10) {
        ca.a.f(this, "editor", "PREF_ANIMATION_ERROR_ALREADY_DISPLAYED", z10);
    }

    @Override // h8.a
    public final void o(int i10) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putInt("PREF_GOOGLE_VOICE_LACING_NOTIFICATION_COUNT", i10);
        editorEdit.apply();
    }

    public final void o0(boolean z10) {
        ca.a.f(this, "editor", "PREF_IS_BATTERY_REMINDERS_ENABLED", z10);
    }

    @Override // h8.a
    public final int p() {
        return m0().getInt("PARAM_LFT_PROGRESS", 0);
    }

    public final void p0(v7.c cVar) {
        p4.h.j(cVar, "effectType");
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("PREF_DEFAULT_EFFECT", cVar.b());
        editorEdit.apply();
    }

    @Override // h8.a
    public final void q(int i10) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putInt("PARAM_LFT_PROGRESS", i10);
        editorEdit.apply();
    }

    public final void q0(boolean z10) {
        ca.a.f(this, "editor", "PREF_USER_LOGGED_IN", z10);
    }

    @Override // h8.a
    public final boolean r() {
        return m0().getBoolean("PREF_HAS_SEEN_JORDAN_APP_ICON", false);
    }

    @Override // h8.a
    public final void s(boolean z10) {
        ca.a.f(this, "editor", "PARAM_MODES_SAVED", z10);
    }

    @Override // h8.a
    public final void setShoeType(r rVar) {
        SharedPreferences.Editor editorEdit = m0().edit();
        p4.h.i(editorEdit, "editor");
        editorEdit.putString("PREF_LEFT_SHOE_TYPE", rVar != null ? rVar.name() : null);
        editorEdit.apply();
        SharedPreferences.Editor editorEdit2 = m0().edit();
        p4.h.i(editorEdit2, "editor");
        editorEdit2.putString("PREF_RIGHT_SHOE_TYPE", rVar != null ? rVar.name() : null);
        editorEdit2.apply();
    }

    @Override // h8.a
    public final void t() {
        ca.a.f(this, "editor", "PREF_HAS_SEEN_JORDAN_APP_ICON", true);
    }

    @Override // h8.a
    public final boolean u() {
        return m0().getBoolean("PREF_HAS_SEEN_LIGHT_PACKS_TUTORIAL1", false);
    }

    @Override // h8.a
    public final int v() {
        return m0().getInt("PREF_GOOGLE_VOICE_PROMPT", 0);
    }

    @Override // h8.a
    public final void w(boolean z10) {
        ca.a.f(this, "editor", "PREF_IS_DATA_OPT_IN_ENABLED", z10);
    }

    @Override // h8.a
    public final void x() {
        ca.a.f(this, "editor", "PREF_GOOGLE_VOICE_LACING_NOTIFICATION", true);
    }

    @Override // h8.a
    public final int y() {
        return m0().getInt("PREF_IS_DATA_OPT_IN_STATE", 0);
    }

    @Override // h8.a
    public final boolean z() {
        return m0().getBoolean("PREF_IS_MULTI_PAIR", false);
    }
}
