package h9;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: ActivityDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class a<A extends Activity> extends f8.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Class<A> f8311a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final boolean f8312b;

    public /* synthetic */ a(Class cls) {
        this(cls, false, null);
    }

    public final void e(Activity activity) {
        p4.h.j(activity, "from");
        Intent intentF = f(activity);
        if (h()) {
            activity.startActivityForResult(intentF, 23);
        } else {
            activity.startActivity(intentF);
        }
        if (g()) {
            activity.finish();
        }
        activity.overridePendingTransition(b(), c());
    }

    public final Intent f(Context context) {
        p4.h.j(context, "context");
        Intent intent = new Intent(context, (Class<?>) this.f8311a);
        a(intent);
        if (g()) {
            intent.addFlags(268468224);
        }
        return intent;
    }

    public boolean g() {
        return this instanceof i;
    }

    public boolean h() {
        return this.f8312b;
    }

    public a(Class cls, boolean z10, rd.h hVar) {
        this.f8311a = cls;
        this.f8312b = z10;
    }
}
