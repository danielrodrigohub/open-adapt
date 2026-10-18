package p8;

import android.os.Bundle;
import com.nike.adapt.coroutine.MainCoroutineScope;
import java.util.UUID;

/* JADX INFO: compiled from: EventBasedFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class r extends h implements s7.a {

    /* JADX INFO: renamed from: b0, reason: collision with root package name */
    public final MainCoroutineScope f13342b0 = new MainCoroutineScope();

    /* JADX INFO: renamed from: c0, reason: collision with root package name */
    public boolean f13343c0;
    public final i8.d d0;

    public r() {
        String simpleName = getClass().getSimpleName();
        UUID uuidRandomUUID = UUID.randomUUID();
        p4.h.i(uuidRandomUUID, "randomUUID()");
        this.d0 = new i8.d(simpleName, uuidRandomUUID);
    }

    private final void q0() {
        if (this.f13343c0) {
            return;
        }
        this.f13343c0 = true;
        s7.b.f15149a.b(this);
        r0();
    }

    @Override // p8.h, androidx.fragment.app.m
    public void H(Bundle bundle) {
        super.H(bundle);
        q0();
        this.U.a(this.f13342b0);
    }

    @Override // androidx.fragment.app.m
    public final void K() {
        this.U.c(this.f13342b0);
        this.K = true;
    }

    @Override // p8.h, androidx.fragment.app.m
    public final void O() {
        if (this.f13343c0) {
            this.f13343c0 = false;
            s7.b.f15149a.c(this);
            s0();
        }
        super.O();
    }

    @Override // p8.h, androidx.fragment.app.m
    public void Q() {
        super.Q();
        q0();
    }

    @Override // p8.h, androidx.fragment.app.m
    public void S() {
        super.S();
        q0();
    }

    public void r0() {
    }

    public void s0() {
    }
}
