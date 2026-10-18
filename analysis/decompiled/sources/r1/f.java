package r1;

import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import java.util.Objects;
import k1.l;

/* JADX INFO: compiled from: StorageNotLowTracker.java */
/* JADX INFO: loaded from: classes.dex */
public final class f extends c<Boolean> {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final String f14214i = l.e("StorageNotLowTracker");

    public f(Context context, w1.a aVar) {
        super(context, aVar);
    }

    @Override // r1.d
    public final Object a() {
        Context context = this.f14204b;
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        Intent intentRegisterReceiver = context.registerReceiver(null, intentFilter);
        if (intentRegisterReceiver == null || intentRegisterReceiver.getAction() == null) {
            return Boolean.TRUE;
        }
        String action = intentRegisterReceiver.getAction();
        Objects.requireNonNull(action);
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            return Boolean.FALSE;
        }
        if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
            return Boolean.TRUE;
        }
        return null;
    }

    @Override // r1.c
    public final IntentFilter f() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // r1.c
    public final void g(Intent intent) {
        if (intent.getAction() == null) {
            return;
        }
        l.c().a(f14214i, String.format("Received %s", intent.getAction()), new Throwable[0]);
        String action = intent.getAction();
        Objects.requireNonNull(action);
        if (action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
            c(Boolean.FALSE);
        } else if (action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
            c(Boolean.TRUE);
        }
    }
}
