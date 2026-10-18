package b9;

import android.app.Activity;
import android.content.Intent;

/* JADX INFO: compiled from: MessagingCenter.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class j extends e {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final Intent f3597h;

    public j(Intent intent) {
        p4.h.j(intent, "intent");
        this.f3597h = intent;
    }

    public Intent a() {
        return this.f3597h;
    }

    public abstract void b(Activity activity);
}
