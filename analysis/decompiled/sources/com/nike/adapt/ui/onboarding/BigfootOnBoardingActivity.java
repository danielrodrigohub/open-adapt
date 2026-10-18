package com.nike.adapt.ui.onboarding;

import android.content.Intent;
import android.os.Bundle;
import androidx.fragment.app.m;
import androidx.lifecycle.o;
import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import com.nike.adapt.R;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.shoecontroller.ShoeControllerActivity;
import fd.h;
import fe.k;
import h9.c0;
import h9.v0;
import h9.w0;
import i9.a0;
import i9.e0;
import j8.f;
import java.util.ArrayList;
import java.util.Objects;
import o7.u;
import o7.x;
import o7.y;
import org.greenrobot.eventbus.ThreadMode;
import p8.q;
import qd.l;
import v7.g;
import v7.i;
import v7.j;

/* JADX INFO: compiled from: BigfootOnBoardingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BigfootOnBoardingActivity extends q implements a0, y {
    public static final /* synthetic */ int I = 0;
    public final fd.d E = o.w(3, e.f5829h);
    public final h F = (h) o.x(new d());
    public v7.h G;
    public v7.o H;

    /* JADX INFO: compiled from: BigfootOnBoardingActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5824a;

        static {
            int[] iArr = new int[i.values().length];
            iArr[0] = 1;
            iArr[1] = 2;
            iArr[2] = 3;
            iArr[3] = 4;
            int[] iArr2 = new int[g.values().length];
            iArr2[0] = 1;
            iArr2[1] = 2;
            iArr2[2] = 3;
            iArr2[3] = 4;
            iArr2[4] = 5;
            iArr2[9] = 6;
            iArr2[11] = 7;
            f5824a = iArr2;
        }
    }

    /* JADX INFO: compiled from: BigfootOnBoardingActivity.kt */
    public static final class b extends rd.o implements l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5825h = new b();

        public b() {
            super(1);
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            x.f12420a.a("Multi-Pair Go Back - Pressed: Dismiss");
            dVar2.dismiss();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: BigfootOnBoardingActivity.kt */
    public static final class c extends rd.o implements l<androidx.appcompat.app.d, fd.o> {

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ g f5827i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(g gVar) {
            super(1);
            this.f5827i = gVar;
        }

        @Override // qd.l
        public final fd.o invoke(androidx.appcompat.app.d dVar) {
            androidx.appcompat.app.d dVar2 = dVar;
            p4.h.j(dVar2, "it");
            x.f12420a.a("Multi-Pair Go Back - Pressed: Okay");
            BigfootOnBoardingActivity bigfootOnBoardingActivity = BigfootOnBoardingActivity.this;
            g gVar = this.f5827i;
            int i10 = BigfootOnBoardingActivity.I;
            g gVar2 = g.COMPLETED;
            if (gVar == gVar2) {
                bigfootOnBoardingActivity.q0(gVar2, i.NONE);
            } else {
                bigfootOnBoardingActivity.p0(i.BACKWARD, gVar);
            }
            TrackManager.INSTANCE.multipairOnBackPressed();
            dVar2.dismiss();
            return fd.o.f7408a;
        }
    }

    /* JADX INFO: compiled from: BigfootOnBoardingActivity.kt */
    public static final class d extends rd.o implements qd.a<j8.a> {
        public d() {
            super(0);
        }

        @Override // qd.a
        public final j8.a invoke() {
            int i10 = j8.a.f9465c;
            BigfootOnBoardingActivity bigfootOnBoardingActivity = BigfootOnBoardingActivity.this;
            int i11 = BigfootOnBoardingActivity.I;
            i8.d dVar = bigfootOnBoardingActivity.B;
            p4.h.j(dVar, "eventUUID");
            return new j8.b(dVar);
        }
    }

    /* JADX INFO: compiled from: BigfootOnBoardingActivity.kt */
    public static final class e extends rd.o implements qd.a<h8.d> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final e f5829h = new e();

        public e() {
            super(0);
        }

        @Override // qd.a
        public final h8.d invoke() {
            int i10 = h8.d.f8301a;
            return h8.e.f8306b;
        }
    }

    @Override // i9.a0
    public final v7.h Y() {
        v7.h hVar = this.G;
        if (hVar != null) {
            return hVar;
        }
        p4.h.C("currentType");
        throw null;
    }

    @Override // p8.q
    public final void m0() {
        ((j8.a) this.F.getValue()).d(j8.d.f9472h);
    }

    public final h8.d o0() {
        return (h8.d) this.E.getValue();
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        m mVarF = d0().F("ON_BOARDING_FRAGMENT");
        e0 e0Var = mVarF instanceof e0 ? (e0) mVarF : null;
        if (e0Var != null) {
            g gVarK = e0Var.u0().k();
            g gVar = g.WELCOME;
            if (gVarK != gVar) {
                gVar = g.FETCH_PROFILE;
            }
            v7.h hVar = this.G;
            if (hVar == null) {
                p4.h.C("currentType");
                throw null;
            }
            if (hVar == v7.h.SETTINGS_ADD_PAIR && (gVar == g.PAIR_FIRST_SHOE || gVar == g.CONNECTED_FIRST_SHOE || gVar == g.PAIR_SECOND_SHOE)) {
                s9.y yVar = s9.y.f15252a;
                b bVar = b.f5825h;
                c cVar = new c(gVar);
                p4.h.j(bVar, "cancel");
                s9.y.d(yVar, this, R.string.adapt_logout_confirmation_title, null, R.string.adapt_pairingCancelDialogue_body_Android, 0, R.string.adapt_dismiss_button_title, R.string.adapt_ok_cta_button, false, bVar, cVar, new s9.y.a("MULTIPAIRING_ON_BACK_PRESSES_DIALOG", "DISMISS", "OK", 8), 148);
                return;
            }
            g gVar2 = g.COMPLETED;
            if (gVar == gVar2) {
                q0(gVar2, i.NONE);
            } else {
                p0(i.BACKWARD, gVar);
            }
        }
    }

    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.activity_frag_holder);
        getWindow().addFlags(128);
    }

    @k(threadMode = ThreadMode.MAIN)
    public final void onOnBoardingStateActionResult(f fVar) {
        p4.h.j(fVar, "result");
        if (fVar instanceof j8.c) {
            j8.c cVar = (j8.c) fVar;
            this.H = new v7.o(cVar.f9471j.f16411h);
            this.G = cVar.f9471j;
            p0(i.NONE, cVar.f9470i);
        }
    }

    @Override // p8.q, f.e, androidx.fragment.app.p, android.app.Activity
    public final void onStop() {
        for (m mVar : d0().I()) {
            androidx.fragment.app.a aVar = new androidx.fragment.app.a(d0());
            aVar.n(mVar);
            aVar.d();
        }
        super.onStop();
    }

    public final void p0(i iVar, g gVar) {
        g gVarC = g.COMPLETED;
        if (gVar == gVarC) {
            q0(gVar, i.NONE);
            return;
        }
        int iOrdinal = iVar.ordinal();
        if (iOrdinal == 0) {
            v7.o oVar = this.H;
            if (oVar == null) {
                p4.h.C("stateEngine");
                throw null;
            }
            p4.h.j(gVar, "currentState");
            j jVar = oVar.f16440h;
            Objects.requireNonNull(jVar);
            jVar.f16418j = gVar;
            p.h<g> hVar = jVar.f16416h;
            gVarC = hVar.c(jVar.b() + hVar.f12616h[hVar.d(gVar)], null);
        } else if (iOrdinal == 1) {
            v7.o oVar2 = this.H;
            if (oVar2 == null) {
                p4.h.C("stateEngine");
                throw null;
            }
            p4.h.j(gVar, "currentState");
            j jVar2 = oVar2.f16440h;
            Objects.requireNonNull(jVar2);
            jVar2.f16418j = gVar;
            p.h<g> hVar2 = jVar2.f16416h;
            gVarC = hVar2.c(jVar2.a() + hVar2.f12616h[hVar2.d(gVar)], null);
        } else if (iOrdinal != 2) {
            if (iOrdinal != 3) {
                throw new j2.a();
            }
            gVarC = gVar;
        }
        if (gVarC != null) {
            j8.a aVar = (j8.a) this.F.getValue();
            v7.h hVar3 = this.G;
            if (hVar3 == null) {
                p4.h.C("currentType");
                throw null;
            }
            aVar.d(new j8.g(gVarC, hVar3));
        }
        x xVar = x.f12420a;
        x.f12420a.h("BigfootOnBoardingActivity", gVar + "\t" + iVar + "\t" + gVarC, (120 & 4) != 0 ? u.DEBUG : u.DEBUG, (120 & 8) != 0 ? null : null, null, (120 & 32) != 0 ? null : null, (120 & 64) != 0 ? false : true);
        q0(gVarC, iVar);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x003f  */
    /* JADX WARN: Multi-variable type inference failed */
    public final void q0(g gVar, i iVar) {
        fd.e eVar;
        g gVar2 = g.COMPLETED;
        int iOrdinal = iVar.ordinal();
        boolean z10 = true;
        if (iOrdinal == 0) {
            eVar = new fd.e(Integer.valueOf(R.anim.slide_in_right_onboarding), Integer.valueOf(R.anim.slide_out_left_onboarding));
        } else if (iOrdinal == 1) {
            eVar = new fd.e(Integer.valueOf(R.anim.slide_in_left_onboarding), Integer.valueOf(R.anim.slide_out_right_onboarding));
        } else if (iOrdinal == 2) {
            eVar = new fd.e(Integer.valueOf(R.anim.slide_in_right_onboarding), Integer.valueOf(R.anim.slide_out_left_onboarding));
        } else {
            if (iOrdinal != 3) {
                throw new j2.a();
            }
            eVar = new fd.e(Integer.valueOf(R.anim.fade_in), 0);
        }
        int iIntValue = ((Number) eVar.f7388h).intValue();
        int iIntValue2 = ((Number) eVar.f7389i).intValue();
        switch (gVar == null ? -1 : a.f5824a[gVar.ordinal()]) {
            case 1:
                finish();
                o0().g();
                o0().h(gVar2);
                o0().i(v7.h.NORMAL);
                return;
            case 2:
                s9.m mVar = s9.m.f15208a;
                s9.m.b(false, false, 7);
                return;
            case 3:
            case 4:
                androidx.fragment.app.a aVar = new androidx.fragment.app.a(d0());
                aVar.g(iIntValue, iIntValue2);
                aVar.f(R.id.activity_frag_holder_container, new e0(), "ON_BOARDING_FRAGMENT");
                aVar.d();
                return;
            case 5:
                new c0(false, false, 3, null).e(this);
                return;
            case 6:
                new h9.m(false, 1, null).e(this);
                return;
            case 7:
                v7.h hVar = this.G;
                if (hVar == null) {
                    p4.h.C("currentType");
                    throw null;
                }
                if (hVar.b()) {
                    TrackManager.INSTANCE.multipairCalibrateFitCompleted();
                }
                new v0(false, 1, null).e(this);
                return;
            default:
                v7.h hVar2 = this.G;
                if (hVar2 == null) {
                    p4.h.C("currentType");
                    throw null;
                }
                if (!(hVar2 == v7.h.NORMAL || hVar2 == v7.h.NORMAL_WITH_ORTHOTICS)) {
                    if (hVar2 == null) {
                        p4.h.C("currentType");
                        throw null;
                    }
                    if (!(hVar2 == v7.h.SETTINGS_ADD_PAIR || hVar2 == v7.h.ADD_PAIR_WITH_ORTHOTICS)) {
                        o0().g();
                        o0().h(gVar2);
                        v7.h hVar3 = this.G;
                        if (hVar3 == null) {
                            p4.h.C("currentType");
                            throw null;
                        }
                        if (hVar3.b()) {
                            ArrayList arrayList = new ArrayList();
                            Intent intent = new Intent(this, (Class<?>) ShoeControllerActivity.class);
                            intent.putExtra("extra_unlace_gesture_on", false);
                            intent.addFlags(268468224);
                            arrayList.add(intent);
                            arrayList.add(w0.f8366c.f(this));
                            if (arrayList.isEmpty()) {
                                throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
                            }
                            Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
                            intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
                            Object obj = y.a.f18143a;
                            y.a.C0318a.a(this, intentArr, null);
                        } else {
                            v7.h hVar4 = this.G;
                            if (hVar4 == null) {
                                p4.h.C("currentType");
                                throw null;
                            }
                            if (hVar4 != v7.h.MODES_CALIBRATE && hVar4 != v7.h.MODES_CALIBRATE_WITH_ORTHOTICS) {
                                z10 = false;
                            }
                            if (z10) {
                                ArrayList arrayList2 = new ArrayList();
                                Intent intent2 = new Intent(this, (Class<?>) ShoeControllerActivity.class);
                                intent2.putExtra("extra_unlace_gesture_on", false);
                                intent2.addFlags(268468224);
                                arrayList2.add(intent2);
                                arrayList2.add(h9.a0.f8313c.f(this));
                                if (arrayList2.isEmpty()) {
                                    throw new IllegalStateException("No intents added to TaskStackBuilder; cannot startActivities");
                                }
                                Intent[] intentArr2 = (Intent[]) arrayList2.toArray(new Intent[0]);
                                intentArr2[0] = new Intent(intentArr2[0]).addFlags(268484608);
                                Object obj2 = y.a.f18143a;
                                y.a.C0318a.a(this, intentArr2, null);
                            }
                        }
                        overridePendingTransition(R.anim.fade_in, R.anim.fade_out);
                        return;
                    }
                }
                o0().h(g.WELCOME);
                finish();
                return;
        }
    }

    @Override // i9.a0
    public final void v(v7.h hVar, g gVar) {
        i iVar = i.FORWARD;
        p4.h.j(hVar, AnalyticsAttribute.TYPE_ATTRIBUTE);
        this.G = hVar;
        this.H = new v7.o(hVar.f16411h);
        p0(iVar, gVar);
    }
}
