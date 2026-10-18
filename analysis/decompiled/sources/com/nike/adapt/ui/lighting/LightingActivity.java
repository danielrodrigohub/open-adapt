package com.nike.adapt.ui.lighting;

import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.coordinatorlayout.widget.CoordinatorLayout;
import androidx.fragment.app.m;
import androidx.lifecycle.o;
import androidx.viewpager.widget.ViewPager;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.tabs.TabLayout;
import com.nike.adapt.R;
import com.nike.adapt.adk.AdaptConnectionStatusResult;
import com.nike.adapt.adk.AdaptEventResponderKt;
import com.nike.adapt.adk.ConnectedAndAuthenticatedToPair;
import com.nike.adapt.adk.DeviceControllerResult;
import com.nike.adapt.adk.GetAnimationResult;
import com.nike.adapt.adk.GetCurrentFirmwareVersionsResult;
import com.nike.adapt.adk.GetLedResult;
import com.nike.adapt.adk.IAdaptRequester;
import com.nike.adapt.adk.IDeviceController;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.SetLedResult;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.StartAnimationResult;
import com.nike.adapt.adk.StopAnimationNotificationResult;
import com.nike.adapt.adk.StopAnimationResult;
import com.nike.adapt.adk.model.AdaptCurrentAnimation;
import com.nike.adapt.adk.model.AdaptDeviceColor;
import com.nike.adapt.adk.model.AdaptDeviceLEDIntensityADK;
import com.nike.adapt.adk.model.AdaptShoeColor;
import com.nike.adapt.adk.model.LightColor;
import com.nike.adapt.adk.model.ShoeColor;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.helper.BottomSheet;
import com.nike.adapt.ui.helper.NotificationToast;
import h9.n;
import j0.a0;
import java.util.ArrayList;
import java.util.List;
import java.util.Objects;
import o7.f;
import o8.e;
import org.greenrobot.eventbus.ThreadMode;
import p4.h;
import p8.j;
import p8.j0;
import p8.w;
import p8.x;
import p8.y;
import q7.k;
import u8.g;
import u8.q;
import x8.s;
import y0.v;
import y8.d;

/* JADX INFO: compiled from: LightingActivity.kt */
/* JADX INFO: loaded from: classes.dex */
public final class LightingActivity extends p8.a implements d.b, ViewPager.i, s.a {
    public static final /* synthetic */ int T = 0;
    public k I;
    public y8.c J;
    public IDeviceController K;
    public IAdaptRequester L;
    public boolean O;
    public AdaptDeviceColor P;
    public AdaptDeviceColor Q;
    public final s M = new s(this);
    public s9.a N = new s9.a();
    public final fd.d R = o.w(3, b.f5762h);
    public final List<g> S = o.e(new q(this, null, 0, 30), new u8.c(R.id.activity_lighting_parent, this));

    /* JADX INFO: compiled from: LightingActivity.kt */
    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f5761a;

        static {
            int[] iArr = new int[AdaptCurrentAnimation.AnimationEndingState.values().length];
            iArr[AdaptCurrentAnimation.AnimationEndingState.CRITICAL_BATTERY.ordinal()] = 1;
            iArr[AdaptCurrentAnimation.AnimationEndingState.BATTERY_OVERTEMP.ordinal()] = 2;
            f5761a = iArr;
        }
    }

    /* JADX INFO: compiled from: LightingActivity.kt */
    public static final class b extends rd.o implements qd.a<h8.a> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public static final b f5762h = new b();

        public b() {
            super(0);
        }

        @Override // qd.a
        public final h8.a invoke() {
            int i10 = h8.a.f8296a;
            return h8.c.f8298b;
        }
    }

    /* JADX INFO: compiled from: LightingActivity.kt */
    public static final class c extends rd.o implements qd.a<fd.o> {
        public c() {
            super(0);
        }

        @Override // qd.a
        public final fd.o invoke() {
            new n(true, false).e(LightingActivity.this);
            return fd.o.f7408a;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.i
    public final void D(int i10, float f10) {
    }

    @Override // x8.s.a
    public final void d(boolean z10) {
        if (z10) {
            this.N.b();
        } else {
            TrackManager.INSTANCE.pulsingLightsTurnedOff();
        }
        s0().requestTo(Shoe.BOTH, j0.f13335a);
    }

    @Override // androidx.fragment.app.p
    public final void f0(m mVar) {
        if (mVar instanceof d) {
            ((d) mVar).f18691c0 = this;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager.i
    public final void i(int i10) {
    }

    @Override // androidx.viewpager.widget.ViewPager.i
    public final void n(int i10) {
        if (i10 == 1 && !s9.g.f15195a.d()) {
            BottomSheet bottomSheet = r0().f13891e;
            x8.q.e eVar = x8.q.f17954b;
            Objects.requireNonNull(bottomSheet);
            bottomSheet.B = eVar;
            View view = r0().f13896j;
            h.i(view, "binding.shadedBackground");
            bottomSheet.C = view;
            bottomSheet.D = true;
            bottomSheet.x();
        }
        if (i10 == 0) {
            TrackManager.INSTANCE.lightingSingleColorScreenViewed();
        } else {
            TrackManager.INSTANCE.lightingDuoColorScreenViewed();
        }
    }

    @Override // p8.a
    public final List<g> o0() {
        return this.S;
    }

    @Override // p8.a
    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceConnectionActionResult(AdaptConnectionStatusResult adaptConnectionStatusResult) {
        h.j(adaptConnectionStatusResult, "result");
        if (AdaptEventResponderKt.block(adaptConnectionStatusResult, this.B)) {
            return;
        }
        super.onAdaptDeviceConnectionActionResult(adaptConnectionStatusResult);
        if (!(adaptConnectionStatusResult instanceof ConnectedAndAuthenticatedToPair) || adaptConnectionStatusResult.getDevice() == null) {
            return;
        }
        s0().subscribe(adaptConnectionStatusResult.getDevice());
        s0().requestTo(adaptConnectionStatusResult.getShoe(), y.f13350a);
        s0().requestTo(adaptConnectionStatusResult.getShoe(), x.f13349a);
        s0().requestTo(adaptConnectionStatusResult.getShoe(), new w(null, 1, null));
        r7.g gVar = r7.g.f14668a;
        InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
        gVar.c(inMemoryCache.getRightDevice().isConnected(), inMemoryCache.getLeftDevice().isConnected());
    }

    @fe.k(threadMode = ThreadMode.MAIN)
    public void onAdaptDeviceControllerActionResult(DeviceControllerResult deviceControllerResult) {
        AdaptDeviceColor adaptDeviceColor;
        h.j(deviceControllerResult, "result");
        if (AdaptEventResponderKt.block(deviceControllerResult, this.B)) {
            return;
        }
        this.G.d(deviceControllerResult);
        if (deviceControllerResult instanceof GetLedResult) {
            GetLedResult getLedResult = (GetLedResult) deviceControllerResult;
            boolean zIsRight = getLedResult.getShoe().isRight();
            AdaptDeviceColor shoeLed = getLedResult.getShoeLed();
            if (zIsRight) {
                this.Q = shoeLed;
            } else {
                this.P = shoeLed;
            }
            AdaptDeviceColor adaptDeviceColor2 = this.P;
            if (adaptDeviceColor2 == null || (adaptDeviceColor = this.Q) == null) {
                return;
            }
            AdaptShoeColor adaptShoeColorCreate = AdaptShoeColor.Companion.create(adaptDeviceColor2, adaptDeviceColor);
            q0().b0(adaptShoeColorCreate);
            this.M.d(adaptShoeColorCreate);
            p7.b bVar = p7.b.f13281a;
            CoordinatorLayout coordinatorLayout = r0().f13888b;
            h.i(coordinatorLayout, "binding.activityLightingParent");
            p7.b.f13281a.e(coordinatorLayout, InMemoryCache.INSTANCE.getActiveLightPack());
            if (!adaptShoeColorCreate.isOff()) {
                y8.c cVar = this.J;
                if (cVar == null) {
                    h.C("lightingAdapter");
                    throw null;
                }
                cVar.k(ShoeColor.Companion.valueOf(adaptShoeColorCreate));
            }
            this.P = null;
            this.Q = null;
            return;
        }
        if (deviceControllerResult instanceof SetLedResult) {
            if (this.O) {
                t9.b bVar2 = this.G;
                if ((bVar2.f15576g == null || bVar2.f15577h == null) ? false : true) {
                    SetLedResult setLedResult = (SetLedResult) deviceControllerResult;
                    LightColor lightColorValueOf = LightColor.Companion.valueOf(setLedResult.getShoeLed().getAdaptColorPreset());
                    AdaptShoeColor adaptShoeColor = new AdaptShoeColor(lightColorValueOf.getAdaptColorPreset(), lightColorValueOf.getAdaptColorPreset(), AdaptDeviceLEDIntensityADK.HIGHEST);
                    ShoeColor shoeColorValueOf = ShoeColor.Companion.valueOf(adaptShoeColor);
                    q0().b0(adaptShoeColor);
                    if (InMemoryCache.INSTANCE.getActiveLightPack() != z8.a.MY_LIGHTS) {
                        s0().requestTo(setLedResult.getShoe(), j0.f13335a);
                    } else {
                        this.N.b();
                        s0().requestTo(setLedResult.getShoe(), j0.f13335a);
                    }
                    p0(shoeColorValueOf.getTitle());
                    if (!adaptShoeColor.isOff()) {
                        y8.c cVar2 = this.J;
                        if (cVar2 == null) {
                            h.C("lightingAdapter");
                            throw null;
                        }
                        cVar2.k(shoeColorValueOf);
                    }
                    p7.b bVar3 = p7.b.f13281a;
                    FrameLayout frameLayout = r0().f13897k;
                    h.i(frameLayout, "binding.transitionToView");
                    p7.b.f13281a.e(frameLayout, InMemoryCache.INSTANCE.getActiveLightPack());
                    return;
                }
                return;
            }
            return;
        }
        if (deviceControllerResult instanceof GetCurrentFirmwareVersionsResult) {
            y8.c cVar3 = this.J;
            if (cVar3 == null) {
                h.C("lightingAdapter");
                throw null;
            }
            boolean zD = s9.g.f15195a.d();
            d dVar = cVar3.f18688h;
            if (dVar != null) {
                dVar.q0(zD);
                return;
            }
            return;
        }
        if (deviceControllerResult instanceof StartAnimationResult) {
            this.M.e(3);
            return;
        }
        if (deviceControllerResult instanceof StopAnimationResult) {
            this.N.c(((StopAnimationResult) deviceControllerResult).getShoe(), this.M, s0());
            if (this.O) {
                p7.b bVar4 = p7.b.f13281a;
                FrameLayout frameLayout2 = r0().f13897k;
                h.i(frameLayout2, "binding.transitionToView");
                p7.b.f13281a.e(frameLayout2, InMemoryCache.INSTANCE.getActiveLightPack());
                this.O = false;
                return;
            }
            return;
        }
        if (deviceControllerResult instanceof StopAnimationNotificationResult) {
            if (this.N.c(((StopAnimationNotificationResult) deviceControllerResult).getShoe(), this.M, s0())) {
                return;
            }
            this.M.e(2);
        } else if (deviceControllerResult instanceof GetAnimationResult) {
            GetAnimationResult getAnimationResult = (GetAnimationResult) deviceControllerResult;
            int i10 = a.f5761a[getAnimationResult.getAnimation().getEndingState().ordinal()];
            if (i10 == 1 || i10 == 2) {
                s0().requestTo(Shoe.BOTH, j0.f13335a);
            } else {
                this.M.f(getAnimationResult.getAnimation());
            }
        }
    }

    @Override // p8.q, androidx.activity.ComponentActivity, android.app.Activity
    public final void onBackPressed() {
        BottomSheetBehavior<ConstraintLayout> bottomSheetBehavior = r0().f13891e.A;
        boolean z10 = false;
        if (bottomSheetBehavior != null && bottomSheetBehavior.J == 3) {
            z10 = true;
        }
        if (z10) {
            r0().f13891e.t();
        } else {
            super.onBackPressed();
        }
    }

    /* JADX WARN: Type inference failed for: r0v19, types: [java.util.ArrayList, java.util.List<androidx.viewpager.widget.ViewPager$i>] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // p8.q, androidx.fragment.app.p, androidx.activity.ComponentActivity, x.j, android.app.Activity
    public final void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        View viewInflate = getLayoutInflater().inflate(R.layout.activity_lighting, (ViewGroup) null, false);
        CoordinatorLayout coordinatorLayout = (CoordinatorLayout) viewInflate;
        int i10 = R.id.done_parent;
        FrameLayout frameLayout = (FrameLayout) g7.b.d(viewInflate, R.id.done_parent);
        if (frameLayout != null) {
            i10 = R.id.done_text;
            if (((TextView) g7.b.d(viewInflate, R.id.done_text)) != null) {
                i10 = R.id.lighting_activity_notification_toast;
                NotificationToast notificationToast = (NotificationToast) g7.b.d(viewInflate, R.id.lighting_activity_notification_toast);
                if (notificationToast != null) {
                    i10 = R.id.lighting_bottom_sheet;
                    BottomSheet bottomSheet = (BottomSheet) g7.b.d(viewInflate, R.id.lighting_bottom_sheet);
                    if (bottomSheet != null) {
                        i10 = R.id.lighting_icons_tab_layout;
                        TabLayout tabLayout = (TabLayout) g7.b.d(viewInflate, R.id.lighting_icons_tab_layout);
                        if (tabLayout != null) {
                            i10 = R.id.lighting_icons_view_pager;
                            ViewPager viewPager = (ViewPager) g7.b.d(viewInflate, R.id.lighting_icons_view_pager);
                            if (viewPager != null) {
                                i10 = R.id.lighting_page_title;
                                TextView textView = (TextView) g7.b.d(viewInflate, R.id.lighting_page_title);
                                if (textView != null) {
                                    i10 = R.id.lighting_screen_subtitle;
                                    TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.lighting_screen_subtitle);
                                    if (textView2 != null) {
                                        i10 = R.id.shaded_background;
                                        View viewD = g7.b.d(viewInflate, R.id.shaded_background);
                                        if (viewD != null) {
                                            i10 = R.id.transition_to_view;
                                            FrameLayout frameLayout2 = (FrameLayout) g7.b.d(viewInflate, R.id.transition_to_view);
                                            if (frameLayout2 != null) {
                                                this.I = new k(coordinatorLayout, coordinatorLayout, frameLayout, notificationToast, bottomSheet, tabLayout, viewPager, textView, textView2, viewD, frameLayout2);
                                                setContentView(r0().f13887a);
                                                AdaptShoeColor adaptShoeColorS = q0().S();
                                                ShoeColor shoeColorValueOf = ShoeColor.Companion.valueOf(adaptShoeColorS);
                                                r0().f13895i.setText(adaptShoeColorS.isOff() ? o.r(R.string.adapt_lights_off) : shoeColorValueOf.getTitle());
                                                ViewPager viewPager2 = r0().f13893g;
                                                androidx.fragment.app.x xVarD0 = d0();
                                                h.i(xVarD0, "supportFragmentManager");
                                                y8.c cVar = new y8.c(xVarD0);
                                                this.J = cVar;
                                                viewPager2.setAdapter(cVar);
                                                r0().f13893g.setCurrentItem(shoeColorValueOf.isDuo() ? 1 : 0);
                                                ViewPager viewPager3 = r0().f13893g;
                                                if (viewPager3.f2974b0 == null) {
                                                    viewPager3.f2974b0 = new ArrayList();
                                                }
                                                viewPager3.f2974b0.add(this);
                                                r0().f13892f.n(r0().f13893g, false);
                                                r0().f13889c.setOnClickListener(new e(this, 2));
                                                IAdaptRequester iAdaptRequesterA = ((f) o.m()).a(this, this.B, o7.s.a.C0221a.f12405h, o7.s.a.b.f12406h);
                                                h.j(iAdaptRequesterA, "<set-?>");
                                                this.L = iAdaptRequesterA;
                                                IDeviceController iDeviceControllerB = ((f) o.m()).b(this, this.B);
                                                h.j(iDeviceControllerB, "<set-?>");
                                                this.K = iDeviceControllerB;
                                                r7.g.f14668a.d(getIntent(), s0());
                                                Intent intent = getIntent();
                                                this.O = (intent != null ? intent.getSerializableExtra("deep_link_action") : null) != null;
                                                TrackManager.INSTANCE.isColorPaletteColorSelected(r0().f13895i.getText().toString());
                                                p7.b bVar = p7.b.f13281a;
                                                CoordinatorLayout coordinatorLayout2 = r0().f13888b;
                                                h.i(coordinatorLayout2, "binding.activityLightingParent");
                                                p7.b.f13281a.e(coordinatorLayout2, InMemoryCache.INSTANCE.getActiveLightPack());
                                                FrameLayout frameLayout3 = r0().f13897k;
                                                h.i(frameLayout3, "binding.transitionToView");
                                                p7.b.f13281a.e(frameLayout3, InMemoryCache.INSTANCE.getActiveLightPack());
                                                TabLayout.g gVarH = r0().f13892f.h(0);
                                                if (gVarH != null) {
                                                    gVarH.c(o.r(R.string.adapt_lighting_single_color_lights));
                                                }
                                                TabLayout.g gVarH2 = r0().f13892f.h(1);
                                                if (gVarH2 != null) {
                                                    gVarH2.c(o.r(R.string.adapt_lighting_duo_color_lights));
                                                }
                                                a0.q(r0().f13894h, true);
                                                return;
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i10)));
    }

    @Override // y8.d.b
    public void onLightIconClicked(View view) {
        h.j(view, "view");
        ShoeColor shoeColorB = y8.k.f18716a.b(view.getId());
        if (ShoeColor.Companion.valueOf(q0().S()) == shoeColorB) {
            return;
        }
        if (shoeColorB.isDuo() && !s9.g.f15195a.d()) {
            TrackManager.INSTANCE.firmwareUpdateNotificationToastShown("Lighting Palette View");
            NotificationToast notificationToast = r0().f13890d;
            notificationToast.d(new c());
            notificationToast.a();
            return;
        }
        TrackManager.INSTANCE.isColorPaletteColorSelected(shoeColorB.getTitle());
        p7.b bVar = p7.b.f13281a;
        FrameLayout frameLayout = r0().f13897k;
        h.i(frameLayout, "binding.transitionToView");
        p7.b.f13281a.e(frameLayout, InMemoryCache.INSTANCE.getActiveLightPack());
        r0().f13897k.setAlpha(1.0f);
        AdaptDeviceColor adaptDeviceColor = new AdaptDeviceColor(shoeColorB.getLeftLightColor().getAdaptColorPreset(), null, 2, null);
        AdaptDeviceColor adaptDeviceColor2 = new AdaptDeviceColor(shoeColorB.getRightLightColor().getAdaptColorPreset(), null, 2, null);
        s0().requestTo(Shoe.LEFT, new j(adaptDeviceColor));
        s0().requestTo(Shoe.RIGHT, new j(adaptDeviceColor2));
        h8.a aVarQ0 = q0();
        AdaptShoeColor.Companion companion = AdaptShoeColor.Companion;
        aVarQ0.b0(AdaptShoeColor.Companion.create$default(companion, shoeColorB, null, 2, null));
        CoordinatorLayout coordinatorLayout = r0().f13888b;
        h.i(coordinatorLayout, "binding.activityLightingParent");
        p7.b.f13281a.e(coordinatorLayout, InMemoryCache.INSTANCE.getActiveLightPack());
        r0().f13897k.animate().alpha(0.0f).setDuration(500L).withEndAction(new y0.x(this, 7));
        this.M.a(AdaptShoeColor.Companion.create$default(companion, shoeColorB, null, 2, null));
        p0(shoeColorB.getTitle());
    }

    public final void p0(String str) {
        TextView textView = r0().f13895i;
        textView.animate().alpha(0.0f).setDuration((long) (r0().f13895i.getAlpha() * 250)).withEndAction(new v(textView, str, 5)).start();
    }

    public final h8.a q0() {
        return (h8.a) this.R.getValue();
    }

    public final k r0() {
        k kVar = this.I;
        if (kVar != null) {
            return kVar;
        }
        h.C("binding");
        throw null;
    }

    public final IDeviceController s0() {
        IDeviceController iDeviceController = this.K;
        if (iDeviceController != null) {
            return iDeviceController;
        }
        h.C("deviceController");
        throw null;
    }
}
