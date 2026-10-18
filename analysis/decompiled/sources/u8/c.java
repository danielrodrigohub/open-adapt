package u8;

import android.os.Bundle;
import androidx.fragment.app.x;
import com.nike.adapt.R;

/* JADX INFO: compiled from: BlurConnectingErrorDisplay.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c extends g {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f16029d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final x f16030e;

    /* JADX WARN: Illegal instructions before constructor call */
    public c(int i10, f.e eVar) {
        a aVar = a.f16027h;
        p4.h.j(eVar, "activity");
        p4.h.j(aVar, "runtimeOverride");
        x xVarD0 = eVar.d0();
        p4.h.i(xVarD0, "activity.supportFragmentManager");
        super(aVar);
        this.f16029d = i10;
        this.f16030e = xVarD0;
    }

    @Override // u8.g
    public final void a() {
        androidx.fragment.app.m mVarF = this.f16030e.F("CONNECTING_FRAGMENT_TAG");
        if (mVarF != null) {
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(this.f16030e);
            aVar.g(0, R.anim.fade_out);
            aVar.n(mVarF);
            aVar.d();
        }
        super.a();
    }

    @Override // u8.g
    public final boolean b() {
        androidx.fragment.app.m mVarF = this.f16030e.F("CONNECTING_FRAGMENT_TAG");
        boolean z10 = this.f16047c;
        if (z10 && this.f16046b && mVarF != null) {
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(this.f16030e);
            aVar.g(0, R.anim.fade_out);
            aVar.n(mVarF);
            aVar.d();
            return false;
        }
        if ((z10 && this.f16046b) || mVarF != null) {
            if (mVarF == null || !(mVarF instanceof e)) {
                return false;
            }
            ((e) mVarF).q0();
            return true;
        }
        try {
            androidx.fragment.app.a aVar2 = new androidx.fragment.app.a(this.f16030e);
            int i10 = this.f16029d;
            e.a aVar3 = e.f16032h0;
            e eVar = new e();
            Bundle bundle = new Bundle();
            bundle.putInt("PARAM_CONTAINER_ID", i10);
            eVar.j0(bundle);
            aVar2.f(i10, eVar, "CONNECTING_FRAGMENT_TAG");
            aVar2.c();
            return true;
        } catch (Throwable unused) {
            return false;
        }
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public c(int i10, androidx.fragment.app.m mVar) {
        b bVar = b.f16028h;
        p4.h.j(mVar, "fragment");
        p4.h.j(bVar, "runtimeOverride");
        x xVarK = mVar.k();
        p4.h.i(xVarK, "fragment.childFragmentManager");
        super(bVar);
        this.f16029d = i10;
        this.f16030e = xVarK;
    }
}
