package m9;

import android.annotation.TargetApi;
import android.content.Context;
import android.net.Uri;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.FrameLayout;
import com.nike.adapt.R;
import com.nike.adapt.coroutine.MainCoroutineScope;
import com.nike.adapt.ui.settings.SettingsWebViewActivity;
import kotlinx.coroutines.BuildersKt__Builders_commonKt;
import kotlinx.coroutines.CoroutineScope;
import o7.x;
import okhttp3.internal.http.HttpStatusCodesKt;

/* JADX INFO: compiled from: SettingsWebViewActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class g0 extends WebViewClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SettingsWebViewActivity f10868a;

    public g0(SettingsWebViewActivity settingsWebViewActivity) {
        this.f10868a = settingsWebViewActivity;
    }

    @Override // android.webkit.WebViewClient
    public final void onReceivedError(final WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
        CharSequence description;
        p4.h.j(webView, "view");
        p4.h.j(webResourceRequest, "request");
        super.onReceivedError(webView, webResourceRequest, webResourceError);
        if ((webResourceError == null || (description = webResourceError.getDescription()) == null || !yd.s.k0(description, "ERR_INTERNET_DISCONNECTED")) ? false : true) {
            final FrameLayout frameLayout = this.f10868a.m0().f13750b;
            p4.h.i(frameLayout, "binding.activitySettingsWebViewContainer");
            final MainCoroutineScope mainCoroutineScope = this.f10868a.C;
            p4.h.i(webResourceRequest.getUrl().toString(), "request.url.toString()");
            p4.h.j(mainCoroutineScope, "coroutineScope");
            Context context = frameLayout.getContext();
            p4.h.i(context, "context");
            final u8.r rVar = new u8.r(context);
            rVar.setLayoutParams(frameLayout.getLayoutParams());
            rVar.setOnClickListener(new r9.a(new View.OnClickListener() { // from class: u8.s
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    r rVar2 = rVar;
                    CoroutineScope coroutineScope = mainCoroutineScope;
                    WebView webView2 = webView;
                    ViewGroup viewGroup = frameLayout;
                    p4.h.j(rVar2, "$noInternet");
                    p4.h.j(coroutineScope, "$coroutineScope");
                    p4.h.j(webView2, "$webView");
                    p4.h.j(viewGroup, "$this_showNoInternetWebView");
                    x.f12420a.a("Pressed: Try Again");
                    rVar2.findViewById(R.id.view_no_internet_try_again).setEnabled(false);
                    BuildersKt__Builders_commonKt.launch$default(coroutineScope, null, null, new t(rVar2, webView2, viewGroup, null), 3, null);
                }
            }, HttpStatusCodesKt.HTTP_INTERNAL_SERVER_ERROR));
            frameLayout.addView(rVar);
        }
    }

    @Override // android.webkit.WebViewClient
    public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
        p4.h.j(webView, "view");
        p4.h.j(str, "url");
        SettingsWebViewActivity settingsWebViewActivity = this.f10868a;
        Uri uri = Uri.parse(str);
        p4.h.i(uri, "parse(url)");
        SettingsWebViewActivity.l0(settingsWebViewActivity, webView, uri);
        return true;
    }

    @Override // android.webkit.WebViewClient
    @TargetApi(24)
    public final boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
        p4.h.j(webView, "view");
        p4.h.j(webResourceRequest, "request");
        SettingsWebViewActivity settingsWebViewActivity = this.f10868a;
        Uri url = webResourceRequest.getUrl();
        p4.h.i(url, "request.url");
        SettingsWebViewActivity.l0(settingsWebViewActivity, webView, url);
        return true;
    }
}
