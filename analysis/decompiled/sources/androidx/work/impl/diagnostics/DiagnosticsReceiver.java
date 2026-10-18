package androidx.work.impl.diagnostics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import androidx.work.impl.workers.DiagnosticsWorker;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import k1.l;
import k1.n;
import l1.g;
import l1.k;

/* JADX INFO: loaded from: classes.dex */
public class DiagnosticsReceiver extends BroadcastReceiver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f3120a = l.e("DiagnosticsRcvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent == null) {
            return;
        }
        l.c().a(f3120a, "Requesting diagnostics", new Throwable[0]);
        try {
            k kVarA = k.a(context);
            n nVarA = new n.a(DiagnosticsWorker.class).a();
            Objects.requireNonNull(kVarA);
            List listSingletonList = Collections.singletonList(nVarA);
            if (listSingletonList.isEmpty()) {
                throw new IllegalArgumentException("enqueue needs at least one WorkRequest.");
            }
            new g(kVarA, null, 2, listSingletonList, null).c();
        } catch (IllegalStateException e10) {
            l.c().b(f3120a, "WorkManager is not initialized", e10);
        }
    }
}
