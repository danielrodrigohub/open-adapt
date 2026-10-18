package y8;

import android.app.Activity;
import android.content.Context;
import android.graphics.Color;
import android.graphics.ColorFilter;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.cardview.widget.CardView;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.lifecycle.o;
import androidx.recyclerview.widget.RecyclerView;
import com.airbnb.lottie.LottieAnimationView;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.Shoe;
import com.nike.adapt.adk.model.LightColor;
import com.nike.adapt.analytics.TrackManager;
import com.nike.adapt.ui.lighting.LightingEffectsActivity;
import java.util.ArrayList;
import java.util.List;
import o7.x;
import okhttp3.internal.http.HttpStatusCodesKt;
import p8.j0;
import q7.f1;
import s9.y;
import y1.i0;

/* JADX INFO: compiled from: LightingEffectsAdapter.kt */
/* JADX INFO: loaded from: classes.dex */
public final class i extends RecyclerView.e<c> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final List<a> f18699h = o.z(new a(v7.c.e.f16371c, false), new a(v7.c.f.f16373c, false), new a(v7.c.C0294c.f16368c, false));

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Context f18700d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public List<a> f18701e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18702f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final h8.c f18703g;

    /* JADX INFO: compiled from: LightingEffectsAdapter.kt */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final v7.c f18704a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final boolean f18705b;

        public a(v7.c cVar, boolean z10) {
            p4.h.j(cVar, "effectType");
            this.f18704a = cVar;
            this.f18705b = z10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return p4.h.c(this.f18704a, aVar.f18704a) && this.f18705b == aVar.f18705b;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v3, types: [int] */
        /* JADX WARN: Type inference failed for: r1v1, types: [int] */
        /* JADX WARN: Type inference failed for: r1v2 */
        /* JADX WARN: Type inference failed for: r1v3 */
        public final int hashCode() {
            int iHashCode = this.f18704a.hashCode() * 31;
            boolean z10 = this.f18705b;
            ?? r10 = z10;
            if (z10) {
                r10 = 1;
            }
            return iHashCode + r10;
        }

        public final String toString() {
            return "LightsEffect(effectType=" + this.f18704a + ", isSelected=" + this.f18705b + ")";
        }
    }

    /* JADX INFO: compiled from: LightingEffectsAdapter.kt */
    public static final class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final a f18706a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f18707b;

        public b(a aVar, int i10) {
            androidx.appcompat.widget.o.d(i10, "duration");
            this.f18706a = aVar;
            this.f18707b = i10;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return p4.h.c(this.f18706a, bVar.f18706a) && this.f18707b == bVar.f18707b;
        }

        public final int hashCode() {
            return q.g.a(this.f18707b) + (this.f18706a.hashCode() * 31);
        }

        public final String toString() {
            return "LightsEffectStore(data=" + this.f18706a + ", duration=" + androidx.appcompat.widget.o.m(this.f18707b) + ")";
        }
    }

    /* JADX INFO: compiled from: LightingEffectsAdapter.kt */
    public static final class c extends RecyclerView.b0 {
        public final FrameLayout A;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public final CardView f18708u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public final CardView f18709v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public final TextView f18710w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public final TextView f18711x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public final LottieAnimationView f18712y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public final ImageView f18713z;

        public c(f1 f1Var) {
            super(f1Var.f13813a);
            CardView cardView = f1Var.f13818f;
            p4.h.i(cardView, "binding.effectSelectedContainer");
            this.f18708u = cardView;
            CardView cardView2 = f1Var.f13814b;
            p4.h.i(cardView2, "binding.effectContainer");
            this.f18709v = cardView2;
            TextView textView = f1Var.f13820h;
            p4.h.i(textView, "binding.effectSelectedName");
            this.f18710w = textView;
            TextView textView2 = f1Var.f13816d;
            p4.h.i(textView2, "binding.effectName");
            this.f18711x = textView2;
            LottieAnimationView lottieAnimationView = f1Var.f13819g;
            p4.h.i(lottieAnimationView, "binding.effectSelectedIcon");
            this.f18712y = lottieAnimationView;
            ImageView imageView = f1Var.f13815c;
            p4.h.i(imageView, "binding.effectIcon");
            this.f18713z = imageView;
            FrameLayout frameLayout = f1Var.f13817e;
            p4.h.i(frameLayout, "binding.effectRowBackground");
            this.A = frameLayout;
        }
    }

    /* JADX INFO: compiled from: LightingEffectsAdapter.kt */
    public /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f18714a;

        static {
            int[] iArr = new int[q.g.b(3).length];
            iArr[0] = 1;
            iArr[1] = 2;
            iArr[2] = 3;
            f18714a = iArr;
        }
    }

    public i(b bVar, Context context) {
        p4.h.j(context, "context");
        this.f18700d = context;
        this.f18702f = s9.g.f15195a.b();
        this.f18703g = h8.c.f8298b;
        this.f18701e = f18699h;
        m(bVar);
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final int a() {
        return this.f18701e.size();
    }

    /* JADX WARN: Code duplicated, block: B:70:0x01b8  */
    /* JADX WARN: Code duplicated, block: B:85:0x01f4  */
    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final void h(RecyclerView.b0 b0Var, final int i10) {
        final c cVar = (c) b0Var;
        a aVar = this.f18701e.get(i10);
        TextView textView = cVar.f18711x;
        y8.b bVar = y8.b.f18683a;
        textView.setText(bVar.c(aVar.f18704a));
        cVar.f18710w.setText(bVar.c(aVar.f18704a));
        cVar.f18709v.setVisibility(aVar.f18705b ? 8 : 0);
        cVar.f18708u.setVisibility(aVar.f18705b ? 0 : 8);
        if (aVar.f18705b) {
            cVar.f18708u.animate().alpha(1.0f).setDuration(500L).start();
        } else {
            cVar.f18708u.setAlpha(0.0f);
        }
        int iB = s9.g.f15195a.b();
        try {
            cVar.f18712y.setAnimation(bVar.g(aVar.f18704a));
        } catch (Exception e10) {
            String message = e10.getMessage();
            if (message != null) {
                a1.d.d("updateLightEffects : ", message, x.f12420a);
            }
            cVar.f18712y.setAnimation("gradient_icon_animations/gradient_single_hero_blue.json");
        }
        y8.b bVar2 = y8.b.f18683a;
        LottieAnimationView lottieAnimationView = cVar.f18712y;
        v7.c cVar2 = aVar.f18704a;
        p4.h.j(lottieAnimationView, "view");
        p4.h.j(cVar2, "effectType");
        v7.c.d dVar = v7.c.d.f16370c;
        if (!p4.h.c(cVar2, dVar) && !p4.h.c(cVar2, v7.c.C0294c.f16368c)) {
            LightColor lightColorF = bVar2.f(true);
            LightColor lightColorF2 = bVar2.f(false);
            LightColor lightColor = LightColor.WHITE;
            int iO = lightColorF == lightColor ? o.o(R.color.shoe_color_white_alternative) : o.o(lightColorF.getPaletteHex());
            int iO2 = lightColorF2 == lightColor ? o.o(R.color.shoe_color_white_alternative) : o.o(lightColorF2.getPaletteHex());
            final int iRgb = Color.rgb(Color.red(iO), Color.green(iO), Color.blue(iO));
            final int iRgb2 = Color.rgb(Color.red(iO2), Color.green(iO2), Color.blue(iO2));
            d2.e eVar = new d2.e("Oval_1", "**");
            ColorFilter colorFilter = i0.K;
            lottieAnimationView.f4393o.a(eVar, colorFilter, new y1.h(new l2.e() { // from class: y0.b
                @Override // l2.e
                public final Object getValue() {
                    int i11 = iRgb;
                    y8.b bVar3 = y8.b.f18683a;
                    return new PorterDuffColorFilter(i11, PorterDuff.Mode.SRC_ATOP);
                }
            }));
            lottieAnimationView.f4393o.a(new d2.e("Oval_2", "**"), colorFilter, new y1.h(new l2.e() { // from class: y8.a
                @Override // l2.e
                public final Object getValue() {
                    return new PorterDuffColorFilter(iRgb2, PorterDuff.Mode.SRC_ATOP);
                }
            }));
        }
        ImageView imageView = cVar.f18713z;
        v7.c cVar3 = aVar.f18704a;
        p4.h.j(cVar3, "effectType");
        v7.c.e eVar2 = v7.c.e.f16371c;
        boolean zC = p4.h.c(cVar3, eVar2);
        int i11 = R.drawable.ic_effect_pulsing_disable;
        if (zC) {
            if (a0.d.a(iB) >= 1) {
                i11 = R.drawable.ic_effect_pulsing_inactive;
            }
        } else if (p4.h.c(cVar3, v7.c.f.f16373c)) {
            i11 = a0.d.a(iB) >= 2 ? R.drawable.ic_effect_strobe_inactive : R.drawable.ic_effect_strobe_disable;
        } else if (p4.h.c(cVar3, v7.c.C0294c.f16368c)) {
            i11 = a0.d.a(iB) >= 2 ? R.drawable.ic_effect_gradient_inactive : R.drawable.ic_effect_gradient_disable;
        } else if (!p4.h.c(cVar3, dVar)) {
            throw new j2.a();
        }
        imageView.setImageResource(i11);
        FrameLayout frameLayout = cVar.A;
        v7.c cVar4 = aVar.f18704a;
        p4.h.j(cVar4, "effectType");
        boolean zC2 = p4.h.c(cVar4, eVar2);
        int i12 = R.color.button_light_background_color;
        if (zC2) {
            if (a0.d.a(iB) < 1) {
                i12 = R.color.disabled_lighting_background;
            }
        } else if (!p4.h.c(cVar4, v7.c.f.f16373c)) {
            if (p4.h.c(cVar4, v7.c.C0294c.f16368c)) {
                if (a0.d.a(iB) < 2) {
                }
            } else if (!p4.h.c(cVar4, dVar)) {
                throw new j2.a();
            }
            i12 = R.color.disabled_lighting_background;
        } else if (a0.d.a(iB) < 2) {
            i12 = R.color.disabled_lighting_background;
        }
        frameLayout.setBackgroundColor(o.o(i12));
        TextView textView2 = cVar.f18711x;
        v7.c cVar5 = aVar.f18704a;
        p4.h.j(cVar5, "effectType");
        boolean zC3 = p4.h.c(cVar5, eVar2);
        float f10 = 0.45f;
        if (zC3) {
            if (a0.d.a(iB) >= 1) {
                f10 = 1.0f;
            }
        } else if (p4.h.c(cVar5, v7.c.f.f16373c)) {
            if (a0.d.a(iB) >= 2) {
                f10 = 1.0f;
            }
        } else if (p4.h.c(cVar5, v7.c.C0294c.f16368c)) {
            if (a0.d.a(iB) >= 2) {
                f10 = 1.0f;
            }
        } else if (!p4.h.c(cVar5, dVar)) {
            throw new j2.a();
        }
        textView2.setAlpha(f10);
        cVar.f18709v.setOnClickListener(new r9.a(new View.OnClickListener() { // from class: y8.g
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i iVar = this.f18694h;
                int i13 = i10;
                i.c cVar6 = cVar;
                p4.h.j(iVar, "this$0");
                p4.h.j(cVar6, "$holder");
                boolean z10 = true;
                if (!iVar.f18701e.get(i13).f18705b) {
                    InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
                    if (!(inMemoryCache.getLeftDevice().getBattery().getPercent() > 20 && inMemoryCache.getRightDevice().getBattery().getPercent() > 20)) {
                        TrackManager.INSTANCE.lightingEffectsBatteryLow();
                        y yVar = y.f15252a;
                        Context context = iVar.f18700d;
                        p4.h.h(context, "null cannot be cast to non-null type android.app.Activity");
                        yVar.g((Activity) context, j.f18715h);
                        return;
                    }
                }
                v7.c cVar7 = iVar.f18701e.get(i13).f18704a;
                if (p4.h.c(cVar7, v7.c.f.f16373c) ? true : p4.h.c(cVar7, v7.c.C0294c.f16368c)) {
                    if (i.d.f18714a[q.g.a(iVar.f18702f)] == 1) {
                        iVar.f18703g.p0(cVar7);
                        Context context2 = iVar.f18700d;
                        p4.h.h(context2, "null cannot be cast to non-null type com.nike.adapt.ui.lighting.LightingEffectsActivity");
                        ((LightingEffectsActivity) context2).x0(iVar.f18701e.get(i13));
                        LightingEffectsActivity.t0((LightingEffectsActivity) iVar.f18700d, cVar7);
                    } else {
                        Context context3 = iVar.f18700d;
                        p4.h.h(context3, "null cannot be cast to non-null type com.nike.adapt.ui.lighting.LightingEffectsActivity");
                        ((LightingEffectsActivity) context3).q0(iVar.f18701e.get(i13).f18704a);
                        z10 = false;
                    }
                } else {
                    v7.c.e eVar3 = v7.c.e.f16371c;
                    if (p4.h.c(cVar7, eVar3)) {
                        int iA = q.g.a(iVar.f18702f);
                        if (iA == 0) {
                            iVar.f18703g.p0(cVar7);
                            Context context4 = iVar.f18700d;
                            p4.h.h(context4, "null cannot be cast to non-null type com.nike.adapt.ui.lighting.LightingEffectsActivity");
                            ((LightingEffectsActivity) context4).x0(iVar.f18701e.get(i13));
                            LightingEffectsActivity.t0((LightingEffectsActivity) iVar.f18700d, eVar3);
                        } else if (iA != 1) {
                            if (iA == 2) {
                                Context context5 = iVar.f18700d;
                                p4.h.h(context5, "null cannot be cast to non-null type com.nike.adapt.ui.lighting.LightingEffectsActivity");
                                ((LightingEffectsActivity) context5).q0(iVar.f18701e.get(i13).f18704a);
                            }
                            z10 = false;
                        } else {
                            iVar.f18703g.p0(cVar7);
                            Context context6 = iVar.f18700d;
                            p4.h.h(context6, "null cannot be cast to non-null type com.nike.adapt.ui.lighting.LightingEffectsActivity");
                            ((LightingEffectsActivity) context6).y0(iVar.f18701e.get(i13));
                            LightingEffectsActivity.t0((LightingEffectsActivity) iVar.f18700d, eVar3);
                        }
                    } else {
                        z10 = false;
                    }
                }
                if (z10) {
                    cVar6.f18709v.setVisibility(8);
                    cVar6.f18708u.setVisibility(0);
                }
            }
        }, HttpStatusCodesKt.HTTP_OK));
        cVar.f18708u.setOnClickListener(new r9.a(new View.OnClickListener() { // from class: y8.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                i iVar = this.f18697h;
                i.c cVar6 = cVar;
                p4.h.j(iVar, "this$0");
                p4.h.j(cVar6, "$holder");
                Context context = iVar.f18700d;
                p4.h.h(context, "null cannot be cast to non-null type com.nike.adapt.ui.lighting.LightingEffectsActivity");
                LightingEffectsActivity lightingEffectsActivity = (LightingEffectsActivity) context;
                lightingEffectsActivity.f5773j0 = true;
                lightingEffectsActivity.u0(v7.c.d.f16370c, 4);
                lightingEffectsActivity.s0().requestTo(Shoe.BOTH, j0.f13335a);
                InMemoryCache.INSTANCE.setNeedToDisplayEffectsSubtitleForFirstTime(false);
                cVar6.f18709v.setVisibility(0);
                cVar6.f18708u.setVisibility(8);
            }
        }, HttpStatusCodesKt.HTTP_OK));
    }

    @Override // androidx.recyclerview.widget.RecyclerView.e
    public final RecyclerView.b0 j(ViewGroup viewGroup, int i10) {
        p4.h.j(viewGroup, "parent");
        View viewInflate = LayoutInflater.from(viewGroup.getContext()).inflate(R.layout.item_lights_effects, viewGroup, false);
        int i11 = R.id.effect_container;
        CardView cardView = (CardView) g7.b.d(viewInflate, R.id.effect_container);
        if (cardView != null) {
            i11 = R.id.effect_icon;
            ImageView imageView = (ImageView) g7.b.d(viewInflate, R.id.effect_icon);
            if (imageView != null) {
                i11 = R.id.effect_name;
                TextView textView = (TextView) g7.b.d(viewInflate, R.id.effect_name);
                if (textView != null) {
                    i11 = R.id.effect_row_background;
                    FrameLayout frameLayout = (FrameLayout) g7.b.d(viewInflate, R.id.effect_row_background);
                    if (frameLayout != null) {
                        i11 = R.id.effect_selected_container;
                        CardView cardView2 = (CardView) g7.b.d(viewInflate, R.id.effect_selected_container);
                        if (cardView2 != null) {
                            i11 = R.id.effect_selected_icon;
                            LottieAnimationView lottieAnimationView = (LottieAnimationView) g7.b.d(viewInflate, R.id.effect_selected_icon);
                            if (lottieAnimationView != null) {
                                i11 = R.id.effect_selected_name;
                                TextView textView2 = (TextView) g7.b.d(viewInflate, R.id.effect_selected_name);
                                if (textView2 != null) {
                                    i11 = R.id.selected;
                                    if (((ConstraintLayout) g7.b.d(viewInflate, R.id.selected)) != null) {
                                        return new c(new f1((LinearLayout) viewInflate, cardView, imageView, textView, frameLayout, cardView2, lottieAnimationView, textView2));
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(viewInflate.getResources().getResourceName(i11)));
    }

    public final void m(b bVar) {
        ArrayList arrayList = new ArrayList();
        int i10 = 0;
        for (Object obj : f18699h) {
            int i11 = i10 + 1;
            if (i10 < 0) {
                o.L();
                throw null;
            }
            a aVar = (a) obj;
            if (p4.h.c(bVar.f18706a.f18704a, aVar.f18704a)) {
                arrayList.add(i10, new a(aVar.f18704a, bVar.f18706a.f18705b));
            } else {
                arrayList.add(aVar);
            }
            i10 = i11;
        }
        this.f18701e = arrayList;
        d();
    }
}
