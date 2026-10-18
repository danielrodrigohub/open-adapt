package com.nike.adapt.ui.settings;

import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcelable;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import androidx.appcompat.widget.Toolbar;
import androidx.lifecycle.o;
import com.newrelic.agent.android.api.v2.TraceFieldInterface;
import com.newrelic.agent.android.background.ApplicationStateMonitor;
import com.newrelic.agent.android.instrumentation.Instrumented;
import com.newrelic.agent.android.tracing.TraceMachine;
import com.nike.adapt.R;
import com.nike.adapt.coroutine.MainCoroutineScope;
import f.a;
import f.e;
import g7.b;
import java.util.Locale;
import java.util.Objects;
import m9.g0;
import p4.h;
import q.g;
import q7.d0;
import q7.e2;
import v7.m;

/* JADX INFO: compiled from: SettingsWebViewActivity.kt */
/* JADX INFO: loaded from: classes.dex */
@Instrumented
public final class SettingsWebViewActivity extends e implements TraceFieldInterface {
    public m A;
    public d0 B;
    public final MainCoroutineScope C = new MainCoroutineScope();

    /* JADX WARN: Code duplicated, block: B:17:0x0030  */
    public static final void l0(SettingsWebViewActivity settingsWebViewActivity, WebView webView, Uri uri) {
        int i10;
        Objects.requireNonNull(settingsWebViewActivity);
        String scheme = uri.getScheme();
        if (scheme == null) {
            i10 = 3;
        } else {
            int iHashCode = scheme.hashCode();
            if (iHashCode != -1081572750) {
                if (iHashCode == 114715 && scheme.equals("tel")) {
                    i10 = 2;
                } else {
                    i10 = 3;
                }
            } else if (scheme.equals("mailto")) {
                i10 = 1;
            } else {
                i10 = 3;
            }
        }
        int iA = g.a(i10);
        if (iA == 0) {
            settingsWebViewActivity.startActivity(new Intent("android.intent.action.SENDTO", uri));
            return;
        }
        if (iA != 1) {
            if (iA != 2) {
                return;
            }
            webView.loadUrl(uri.toString());
        } else {
            Intent intent = new Intent("android.intent.action.DIAL", uri);
            if (intent.resolveActivity(settingsWebViewActivity.getPackageManager()) != null) {
                settingsWebViewActivity.startActivity(intent);
            }
        }
    }

    public final d0 m0() {
        d0 d0Var = this.B;
        if (d0Var != null) {
            return d0Var;
        }
        h.C("binding");
        throw null;
    }

    public final m n0() {
        m mVar = this.A;
        if (mVar != null) {
            return mVar;
        }
        h.C("state");
        throw null;
    }

    @Override // androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        if (m0().f13751c.canGoBack()) {
            m0().f13751c.goBack();
        } else {
            super.onBackPressed();
            overridePendingTransition(R.anim.enter_bottom_parallax_left_to_right, R.anim.exit_top_left_to_right);
        }
    }

    @Override // androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        m mVar;
        TraceMachine.startTracing("SettingsWebViewActivity");
        while (true) {
            try {
                TraceMachine.enterMethod(null, "SettingsWebViewActivity#onCreate", null);
                break;
            } catch (NoSuchFieldError unused) {
            }
        }
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_settings_webview, (ViewGroup) null, false);
        int i10 = R.id.activity_settings_web_view_container;
        FrameLayout frameLayout = (FrameLayout) b.d(viewInflate, R.id.activity_settings_web_view_container);
        if (frameLayout != null) {
            i10 = R.id.activity_settings_web_view_holder;
            WebView webView = (WebView) b.d(viewInflate, R.id.activity_settings_web_view_holder);
            if (webView != null) {
                i10 = R.id.view_toolbar;
                View viewD = b.d(viewInflate, R.id.view_toolbar);
                if (viewD != null) {
                    e2.a(viewD);
                    this.B = new d0((LinearLayout) viewInflate, frameLayout, webView);
                    setContentView(m0().f13749a);
                    this.f662k.a(this.C);
                    if (bundle == null) {
                        mVar = (m) getIntent().getParcelableExtra("web_view_state");
                        if (mVar == null) {
                            mVar = m.FAQS;
                        }
                    } else {
                        Parcelable parcelable = bundle.getParcelable("web_view_state");
                        h.h(parcelable, "null cannot be cast to non-null type com.nike.adapt.model.SettingsNavigation.State");
                        mVar = (m) parcelable;
                    }
                    this.A = mVar;
                    WebView webView2 = m0().f13751c;
                    h.i(webView2, "binding.activitySettingsWebViewHolder");
                    m mVarN0 = n0();
                    Locale locale = getResources().getConfiguration().getLocales().get(0) != null ? getResources().getConfiguration().getLocales().get(0) : Locale.US;
                    WebSettings settings = webView2.getSettings();
                    h.i(settings, "webView.settings");
                    settings.setJavaScriptEnabled(true);
                    settings.setAllowContentAccess(false);
                    settings.setAllowFileAccess(false);
                    settings.setAllowFileAccessFromFileURLs(false);
                    settings.setAllowUniversalAccessFromFileURLs(false);
                    settings.setDomStorageEnabled(true);
                    webView2.setWebViewClient(new g0(this));
                    int iOrdinal = mVarN0.ordinal();
                    if (iOrdinal == 0) {
                        webView2.loadUrl("https://www.nike.com/" + o.r(R.string.bigfoot_cic_localized_url_parameter) + "/help/a/adapt");
                    } else if (iOrdinal == 1) {
                        webView2.loadUrl("https://www.nike.com/help/mobile/feedback/adapt");
                    } else if (iOrdinal == 2) {
                        webView2.loadUrl(a0.b.a("https://agreementservice.svs.nike.com/rest/agreement?agreementType=privacyPolicy&uxId=com.nike.bigfoot.droid&country=", locale.getCountry(), "&mobileStatus=true&language=", locale.getLanguage(), "&requestType=styled_body"));
                    } else if (iOrdinal == 3) {
                        webView2.loadUrl(a0.b.a("https://agreementservice.svs.nike.com/rest/agreement?agreementType=termsOfUse&uxId=com.nike.bigfoot.droid&country=", locale.getCountry(), "&mobileStatus=true&language=", locale.getLanguage(), "&requestType=styled_body"));
                    } else if (iOrdinal == 4) {
                        webView2.loadUrl("https://www.nike.com/adapt");
                    } else if (iOrdinal == 5) {
                        webView2.loadUrl("https://www.nike.com/" + o.r(R.string.bigfoot_cic_localized_url_parameter) + "/help/a/adapt-app");
                    }
                    String strR = o.r(n0().f16434h);
                    View viewFindViewById = findViewById(R.id.bgf_toolbar);
                    h.h(viewFindViewById, "null cannot be cast to non-null type androidx.appcompat.widget.Toolbar");
                    k0((Toolbar) viewFindViewById);
                    a aVarI0 = i0();
                    if (aVarI0 != null) {
                        aVarI0.o(strR);
                        aVarI0.m(true);
                    }
                    TraceMachine.exitMethod();
                    return;
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // android.app.Activity
    public final boolean onOptionsItemSelected(MenuItem menuItem) {
        h.j(menuItem, "item");
        if (menuItem.getItemId() == 16908332) {
            onBackPressed();
        }
        return super.onOptionsItemSelected(menuItem);
    }

    @Override // androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onSaveInstanceState(Bundle bundle) {
        h.j(bundle, "outState");
        super.onSaveInstanceState(bundle);
        bundle.putParcelable("web_view_state", n0());
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStart() {
        super.onStart();
        ApplicationStateMonitor.getInstance().activityStarted();
    }

    @Override // f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        super.onStop();
        ApplicationStateMonitor.getInstance().activityStopped();
    }
}
