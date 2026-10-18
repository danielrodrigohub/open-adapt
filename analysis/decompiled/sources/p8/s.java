package p8;

import android.os.Bundle;
import com.nike.adapt.coroutine.MainCoroutineScope;
import java.util.UUID;

/* JADX INFO: compiled from: EventBasedPreferenceFragment.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class s extends i implements s7.a {

    /* JADX INFO: renamed from: i0, reason: collision with root package name */
    public final i8.d f13344i0;

    /* JADX INFO: renamed from: j0, reason: collision with root package name */
    public boolean f13345j0;

    public s() {
        new MainCoroutineScope();
        String simpleName = getClass().getSimpleName();
        UUID uuidRandomUUID = UUID.randomUUID();
        p4.h.i(uuidRandomUUID, "randomUUID()");
        this.f13344i0 = new i8.d(simpleName, uuidRandomUUID);
    }

    @Override // p8.i, androidx.preference.c, androidx.fragment.app.m
    public final void H(Bundle bundle) {
        super.H(bundle);
        if (this.f13345j0) {
            return;
        }
        this.f13345j0 = true;
        s7.b.f15149a.b(this);
    }

    @Override // p8.i, androidx.fragment.app.m
    public final void O() {
        if (this.f13345j0) {
            this.f13345j0 = false;
            s7.b.f15149a.c(this);
        }
        super.O();
    }

    @Override // p8.i, androidx.fragment.app.m
    public final void Q() {
        super.Q();
        if (this.f13345j0) {
            return;
        }
        this.f13345j0 = true;
        s7.b.f15149a.b(this);
    }
}
