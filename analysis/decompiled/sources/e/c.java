package e;

import android.content.Context;
import android.content.Intent;
import p4.h;

/* JADX INFO: compiled from: ActivityResultContracts.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends a<Intent, androidx.activity.result.a> {
    @Override // e.a
    public final Intent a(Context context, Intent intent) {
        Intent intent2 = intent;
        h.j(context, "context");
        h.j(intent2, "input");
        return intent2;
    }

    @Override // e.a
    public final androidx.activity.result.a c(int i10, Intent intent) {
        return new androidx.activity.result.a(i10, intent);
    }
}
