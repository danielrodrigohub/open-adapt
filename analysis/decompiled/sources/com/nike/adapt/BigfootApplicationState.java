package com.nike.adapt;

import androidx.lifecycle.a0;
import androidx.lifecycle.b;
import androidx.lifecycle.q;

/* JADX INFO: compiled from: BigfootApplicationState.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BigfootApplicationState implements b {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final BigfootApplicationState f5662h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static boolean f5663i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static boolean f5664j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public static boolean f5665k;

    static {
        BigfootApplicationState bigfootApplicationState = new BigfootApplicationState();
        f5662h = bigfootApplicationState;
        a0.f2161m.f2165k.a(bigfootApplicationState);
        f5665k = true;
    }

    private BigfootApplicationState() {
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public final void onStart(q qVar) {
        f5665k = false;
    }

    @Override // androidx.lifecycle.b, androidx.lifecycle.e
    public final void onStop(q qVar) {
        f5665k = true;
        f5663i = false;
        f5664j = false;
    }
}
