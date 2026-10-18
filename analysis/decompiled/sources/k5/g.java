package k5;

import android.content.Context;
import android.view.MotionEvent;
import android.webkit.WebView;

/* JADX INFO: compiled from: WebViewSubtitleOutput.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends WebView {
    public g(Context context) {
        super(context, null);
    }

    @Override // android.webkit.WebView, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        super.onTouchEvent(motionEvent);
        return false;
    }

    @Override // android.view.View
    public final boolean performClick() {
        super.performClick();
        return false;
    }
}
