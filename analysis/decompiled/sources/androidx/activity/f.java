package androidx.activity;

import android.content.Intent;
import android.content.IntentSender;

/* JADX INFO: compiled from: ComponentActivity.java */
/* JADX INFO: loaded from: classes.dex */
public final class f implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ int f698h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final /* synthetic */ IntentSender.SendIntentException f699i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final /* synthetic */ ComponentActivity.b f700j;

    public f(ComponentActivity.b bVar, int i10, IntentSender.SendIntentException sendIntentException) {
        this.f700j = bVar;
        this.f698h = i10;
        this.f699i = sendIntentException;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.f700j.b(this.f698h, 0, new Intent().setAction("androidx.activity.result.contract.action.INTENT_SENDER_REQUEST").putExtra("androidx.activity.result.contract.extra.SEND_INTENT_EXCEPTION", this.f699i));
    }
}
