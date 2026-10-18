package com.nike.adapt.coroutine;

import androidx.lifecycle.b;
import androidx.lifecycle.q;
import jd.f;
import kotlinx.coroutines.CompletableJob;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.JobKt__JobKt;
import kotlinx.coroutines.SupervisorKt;

/* JADX INFO: compiled from: MainCoroutineScope.kt */
/* JADX INFO: loaded from: classes.dex */
public final class MainCoroutineScope implements b, CoroutineScope {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final CompletableJob f5680h = SupervisorKt.SupervisorJob$default(null, 1, null);

    @Override // kotlinx.coroutines.CoroutineScope
    public final f getCoroutineContext() {
        return this.f5680h.plus(Dispatchers.getMain());
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public final void onStop(q qVar) {
        JobKt__JobKt.cancelChildren$default(getCoroutineContext(), null, 1, null);
    }
}
