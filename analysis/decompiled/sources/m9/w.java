package m9;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.telephony.PhoneNumberUtils;
import android.view.View;
import androidx.preference.Preference;
import androidx.preference.PreferenceScreen;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.settings.PreferenceWithBadge;
import h9.x0;
import h9.y0;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import org.greenrobot.eventbus.ThreadMode;

/* JADX INFO: compiled from: SettingsFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public class w extends p8.c implements androidx.preference.c.f {
    public static final a K0 = new a();
    public IAdaptRequester H0;
    public IDeviceController I0;

    /* JADX INFO: renamed from: m0, reason: collision with root package name */
    public ea.m f10932m0;

    /* JADX INFO: renamed from: l0, reason: collision with root package name */
    public final String f10931l0 = "SettingsFragment";

    /* JADX INFO: renamed from: n0, reason: collision with root package name */
    public final h8.c f10933n0 = h8.c.f8298b;

    /* JADX INFO: renamed from: o0, reason: collision with root package name */
    public final String f10934o0 = androidx.lifecycle.o.r(R.string.adapt_support_pref_key);

    /* JADX INFO: renamed from: p0, reason: collision with root package name */
    public final String f10935p0 = androidx.lifecycle.o.r(R.string.adapt_support_tips_pref_key);

    /* JADX INFO: renamed from: q0, reason: collision with root package name */
    public final String f10936q0 = androidx.lifecycle.o.r(R.string.adapt_support_browse_faqs_pref_key);

    /* JADX INFO: renamed from: r0, reason: collision with root package name */
    public final String f10937r0 = androidx.lifecycle.o.r(R.string.adapt_support_call_nike_pref_key);

    /* JADX INFO: renamed from: s0, reason: collision with root package name */
    public final String f10938s0 = androidx.lifecycle.o.r(R.string.adapt_support_delete_account_key);

    /* JADX INFO: renamed from: t0, reason: collision with root package name */
    public final String f10939t0 = androidx.lifecycle.o.r(R.string.adapt_about_pref_key);

    /* JADX INFO: renamed from: u0, reason: collision with root package name */
    public final String f10940u0 = androidx.lifecycle.o.r(R.string.adapt_submit_feedback_pref_key);

    /* JADX INFO: renamed from: v0, reason: collision with root package name */
    public final String f10941v0 = androidx.lifecycle.o.r(R.string.adapt_settings_about_version_pref_key);

    /* JADX INFO: renamed from: w0, reason: collision with root package name */
    public final String f10942w0 = androidx.lifecycle.o.r(R.string.adapt_settings_voice_pref_key);

    /* JADX INFO: renamed from: x0, reason: collision with root package name */
    public final String f10943x0 = androidx.lifecycle.o.r(R.string.adapt_privacy_policy_pref_key);

    /* JADX INFO: renamed from: y0, reason: collision with root package name */
    public final String f10944y0 = androidx.lifecycle.o.r(R.string.adapt_terms_of_use_pref_key);

    /* JADX INFO: renamed from: z0, reason: collision with root package name */
    public final String f10945z0 = androidx.lifecycle.o.r(R.string.adapt_regulatory_screen_pref_key);
    public final String A0 = androidx.lifecycle.o.r(R.string.adapt_logout_pref_key);
    public final String B0 = androidx.lifecycle.o.r(R.string.adapt_acknowledgement_key);
    public final String C0 = androidx.lifecycle.o.r(R.string.adapt_settings_app_icon_pref_key);
    public final String D0 = androidx.lifecycle.o.r(R.string.adapt_privacy_pref_key);
    public final String E0 = androidx.lifecycle.o.r(R.string.adapt_notifications_pref_key);
    public final String F0 = androidx.lifecycle.o.r(R.string.adapt_partners_pref_key);
    public final String G0 = androidx.lifecycle.o.r(R.string.adapt_app_retiring_pref_key);
    public final fd.h J0 = (fd.h) androidx.lifecycle.o.x(new b());

    /* JADX INFO: compiled from: SettingsFragment.kt */
    public static final class a {
    }

    /* JADX INFO: compiled from: SettingsFragment.kt */
    public static final class b extends rd.o implements qd.a<ArrayList<? extends u8.g>> {
        public b() {
            super(0);
        }

        @Override // qd.a
        public final ArrayList<? extends u8.g> invoke() {
            w wVar = w.this;
            a aVar = w.K0;
            Objects.requireNonNull(wVar);
            return new ArrayList<>();
        }
    }

    /* JADX INFO: compiled from: SettingsFragment.kt */
    public static final class c extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final c f10947h = new c();

        public c() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            dVar2.dismiss();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: SettingsFragment.kt */
    public static final class d extends rd.o implements qd.l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final d f10948h = new d();

        public d() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            p4.h.j(dVar, "it");
            TrackManager.INSTANCE.isLogout();
            s9.m mVar = s9.m.f15208a;
            s9.m.b(true, false, 6);
            return fd.o.f7408a;
        }
    }

    @Override // p8.c, p8.i, androidx.preference.c, androidx.fragment.app.m
    public final void S() {
        super.S();
        Preference preferenceA = this.f2320b0.a(this.C0);
        if (preferenceA != null) {
            ((PreferenceWithBadge) preferenceA).L();
        }
    }

    @Override // androidx.preference.c, androidx.fragment.app.m
    public final void U(View view, Bundle bundle) {
        p4.h.j(view, "view");
        super.U(view, bundle);
        if (bundle == null && (bundle = this.f1971n) == null) {
            bundle = Bundle.EMPTY;
            p4.h.i(bundle, "EMPTY");
        }
        Object obj = bundle.get("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT");
        boolean zC = p4.h.c(bundle.get("androidx.preference.PreferenceFragmentCompat.PREFERENCE_ROOT"), this.f10945z0);
        fd.o oVar = null;
        if (zC) {
            q0(null);
        }
        if (obj != null) {
            if (obj instanceof String) {
                androidx.fragment.app.p pVarI = i();
                p4.h.h(pVarI, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
                f.a aVarI0 = ((f.e) pVarI).i0();
                if (aVarI0 != null) {
                    Preference preferenceB = b((CharSequence) obj);
                    aVarI0.o(preferenceB != null ? preferenceB.f2278n : null);
                }
            }
            oVar = fd.o.f7408a;
        }
        if (oVar == null) {
            androidx.fragment.app.p pVarI2 = i();
            p4.h.h(pVarI2, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
            f.a aVarI1 = ((f.e) pVarI2).i0();
            if (aVarI1 != null) {
                aVarI1.o(androidx.lifecycle.o.r(R.string.adapt_settings_title));
            }
        }
        this.H0 = ((o7.f) androidx.lifecycle.o.m()).a(this, this.f13344i0, y.f10950h, new x(this));
        IDeviceController iDeviceControllerB = ((o7.f) androidx.lifecycle.o.m()).b(this, this.f13344i0);
        p4.h.j(iDeviceControllerB, "<set-?>");
        this.I0 = iDeviceControllerB;
    }

    @Override // androidx.preference.c, androidx.preference.f.c
    public final boolean c(Preference preference) {
        String str;
        Intent intent;
        s9.f fVar;
        p4.h.j(preference, "preference");
        String str2 = preference.f2282r;
        int i10 = 0;
        if (str2 == null) {
            return false;
        }
        o7.x.f12420a.a(this.f10931l0 + " " + ((Object) preference.f2278n));
        if (!p4.h.c(str2, this.A0)) {
            TrackManager.INSTANCE.isSettingsAccessed(str2);
        }
        if (p4.h.c(str2, this.A0)) {
            s9.y.f15252a.h(d0(), c.f10947h, d.f10948h);
        } else if (p4.h.c(str2, this.f10934o0)) {
            h9.m0.f8342c.e(d0());
        } else if (p4.h.c(str2, this.f10935p0)) {
            y0.f8370c.e(d0());
        } else {
            Activity activity = null;
            if (p4.h.c(str2, this.f10937r0)) {
                String country = w().getConfiguration().getLocales().get(0).getCountry();
                p4.h.i(country, "countryCode");
                s9.f[] fVarArrValues = s9.f.values();
                int length = fVarArrValues.length;
                while (true) {
                    if (i10 >= length) {
                        fVar = s9.f.USA;
                        break;
                    }
                    fVar = fVarArrValues[i10];
                    if (p4.h.c(fVar.f15193h, country)) {
                        break;
                    }
                    i10++;
                }
                String strStripSeparators = PhoneNumberUtils.stripSeparators(androidx.lifecycle.o.r(fVar.f15194i));
                Intent intent2 = new Intent("android.intent.action.DIAL");
                intent2.setData(Uri.parse("tel: " + strStripSeparators));
                if (intent2.resolveActivity(d0().getPackageManager()) != null) {
                    androidx.fragment.app.u<?> uVar = this.A;
                    if (uVar == null) {
                        throw new IllegalStateException("Fragment " + this + " not attached to Activity");
                    }
                    Context context = uVar.f2037i;
                    Object obj = y.a.f18143a;
                    y.a.C0318a.b(context, intent2, null);
                }
            } else if (p4.h.c(str2, this.f10938s0)) {
                x0.f8368c.e(d0());
            } else if (p4.h.c(str2, this.f10936q0)) {
                new h9.p0(v7.m.FAQS).e(d0());
            } else if (p4.h.c(str2, this.f10939t0)) {
                h9.e0.f8322c.e(d0());
            } else if (p4.h.c(str2, this.f10940u0)) {
                new h9.p0(v7.m.SUBMIT_FEEDBACK).e(d0());
            } else if (p4.h.c(str2, this.f10942w0)) {
                h9.o0.f8347c.e(d0());
            } else if (p4.h.c(str2, this.F0)) {
                h9.i0.f8335c.e(d0());
            } else if (p4.h.c(str2, this.f10943x0)) {
                new h9.p0(v7.m.PRIVACY_POLICY).e(d0());
            } else if (p4.h.c(str2, this.f10944y0)) {
                new h9.p0(v7.m.TERMS_OF_USE).e(d0());
            } else if (p4.h.c(str2, this.f10945z0)) {
                ea.m mVar = this.f10932m0;
                if (mVar != null && (str = mVar.f6670n) != null) {
                    Context baseContext = preference.f2272h;
                    p4.h.i(baseContext, "context");
                    while (baseContext instanceof ContextWrapper) {
                        if (baseContext instanceof Activity) {
                            activity = (Activity) baseContext;
                            break;
                        }
                        baseContext = ((ContextWrapper) baseContext).getBaseContext();
                        p4.h.i(baseContext, "context.baseContext");
                    }
                    if (activity != null && (intent = activity.getIntent()) != null) {
                        intent.putExtra("COLORWAY", str);
                    }
                }
            } else if (p4.h.c(str2, this.f10941v0)) {
                new h9.n0(v7.n.ABOUT_THIS_VERSION).e(d0());
            } else if (p4.h.c(str2, this.B0)) {
                h9.f0.f8324c.e(d0());
            } else if (p4.h.c(str2, this.D0)) {
                TrackManager.INSTANCE.dataOptInPageViewed();
                h9.j0.f8337c.e(d0());
            } else if (p4.h.c(str2, this.C0)) {
                h9.f.f8323c.e(d0());
                this.f10933n0.i(false);
                Preference preferenceA = this.f2320b0.a(this.C0);
                if (preferenceA != null) {
                    ((PreferenceWithBadge) preferenceA).L();
                }
            } else {
                if (p4.h.c(str2, this.E0)) {
                    h9.h0.f8333c.e(d0());
                    return true;
                }
                if (!p4.h.c(str2, this.G0)) {
                    return super.c(preference);
                }
                new h9.p0(v7.m.DECOMMISSION).e(d0());
            }
        }
        return true;
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        p4.h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.f13344i0)) {
            return;
        }
        m6.e.c(t0(), adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        this.f10932m0 = adaptConnectionStatusResult.getDevice();
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.util.ArrayList, java.util.List<androidx.preference.Preference>] */
    @Override // androidx.preference.c
    public final void p0(String str) {
        Preference preference;
        String string;
        Preference preferenceA;
        Preference preferenceL;
        androidx.preference.f fVar = this.f2320b0;
        if (fVar == null) {
            throw new RuntimeException("This should be called after super.onCreate.");
        }
        PreferenceScreen preferenceScreenE = fVar.e(f0());
        if (str != null) {
            preferenceL = preferenceScreenE.L(str);
            if (!(preferenceL instanceof PreferenceScreen)) {
                preference = preferenceScreenE;
                preference = preferenceL;
                throw new IllegalArgumentException(a0.d.c("Preference object with key ", str, " is not a PreferenceScreen"));
            }
        }
        preference = preferenceScreenE;
        preference = preferenceL;
        preference = preferenceScreenE;
        r0((PreferenceScreen) preference);
        if (!p4.h.c(Locale.getDefault(), Locale.US) && (preferenceA = this.f2320b0.a("adapt_settings_voice_pref_key")) != null) {
            PreferenceScreen preferenceScreen = this.f2320b0.f2351h;
            synchronized (preferenceScreen) {
                preferenceA.K();
                if (preferenceA.O == preferenceScreen) {
                    preferenceA.O = null;
                }
                if (preferenceScreen.V.remove(preferenceA)) {
                    String str2 = preferenceA.f2282r;
                    if (str2 != null) {
                        preferenceScreen.T.put(str2, Long.valueOf(preferenceA.i()));
                        preferenceScreen.U.removeCallbacks(preferenceScreen.f2293a0);
                        preferenceScreen.U.post(preferenceScreen.f2293a0);
                    }
                    if (preferenceScreen.Y) {
                        preferenceA.z();
                    }
                }
            }
            preferenceScreen.t();
        }
        Bundle bundle = this.f1971n;
        if (bundle == null || (string = bundle.getString("PREF_KEY")) == null) {
            return;
        }
        Preference preferenceA2 = this.f2320b0.a(string);
        if (!(preferenceA2 instanceof PreferenceScreen)) {
            if (preferenceA2 != null) {
                c(preferenceA2);
            }
        } else {
            j0.g.a aVarD0 = d0();
            if (aVarD0 instanceof androidx.preference.c.f) {
                ((androidx.preference.c.f) aVarD0).q(this, (PreferenceScreen) preferenceA2);
            }
        }
    }

    @Override // androidx.preference.c.f
    public final void q(androidx.preference.c cVar, PreferenceScreen preferenceScreen) {
        p4.h.j(cVar, "caller");
        p4.h.j(preferenceScreen, "pref");
        cVar.r0(preferenceScreen);
    }

    @Override // p8.i
    public final String s0() {
        return this.f10931l0;
    }

    @Override // p8.c
    public final List<u8.g> t0() {
        return (List) this.J0.getValue();
    }
}
