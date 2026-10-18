package p8;

import android.os.Bundle;
import com.nike.adapt.coroutine.MainCoroutineScope;

/* JADX INFO: compiled from: CoroutineFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class m extends h {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final MainCoroutineScope f13338b0 = new MainCoroutineScope();

    @Override // p8.h, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        this.U.a(this.f13338b0);
    }

    @Override // androidx.fragment.app.m
    public final void K() {
        this.U.c(this.f13338b0);
        this.K = true;
    }
}
