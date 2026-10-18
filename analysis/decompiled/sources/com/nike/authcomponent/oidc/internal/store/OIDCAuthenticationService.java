package com.nike.authcomponent.oidc.internal.store;

import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import dc.e;
import p4.h;

/* JADX INFO: compiled from: OIDCAuthenticationService.kt */
/* JADX INFO: loaded from: classes.dex */
public final class OIDCAuthenticationService extends Service {
    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        h.j(intent, "intent");
        return new e(this).getIBinder();
    }
}
