package h9;

import android.content.Context;
import android.content.Intent;

/* JADX INFO: compiled from: ExternalActionDoNavigate.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class l extends f8.b {
    public final void e(Context context) {
        p4.h.j(context, "from");
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.addFlags(268435456);
        intent.addFlags(1073741824);
        intent.addFlags(8388608);
        a(intent);
        context.startActivity(intent);
    }
}
