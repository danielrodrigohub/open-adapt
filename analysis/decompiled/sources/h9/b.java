package h9;

import android.content.Intent;
import android.net.Uri;
import com.nike.adapt.BigfootApplication;

/* JADX INFO: compiled from: ExternalActionDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final b f8314a = new b();

    @Override // f8.b
    public final void a(Intent intent) {
        intent.setData(Uri.parse("package:" + BigfootApplication.f5638p.a().getPackageName()));
    }
}
