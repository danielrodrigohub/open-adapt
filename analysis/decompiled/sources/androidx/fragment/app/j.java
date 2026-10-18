package androidx.fragment.app;

import java.util.ArrayList;

/* JADX INFO: compiled from: DefaultSpecialEffectsController.java */
/* JADX INFO: loaded from: classes.dex */
public final class j implements Runnable {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final /* synthetic */ ArrayList f1933h;

    public j(ArrayList arrayList) {
        this.f1933h = arrayList;
    }

    @Override // java.lang.Runnable
    public final void run() {
        h0.c(this.f1933h, 4);
    }
}
