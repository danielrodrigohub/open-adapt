package z8;

import android.util.Pair;
import android.widget.TextView;
import androidx.lifecycle.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.InMemoryCache;

/* JADX INFO: compiled from: LightPacksSubtitleManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f19432a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h8.a f19433b;

    public n(TextView textView, h8.a aVar) {
        p4.h.j(aVar, "preferenceHelper");
        this.f19432a = textView;
        this.f19433b = aVar;
    }

    public final void a() {
        c(this.f19432a);
    }

    public final void b(TextView textView, String str) {
        textView.clearAnimation();
        textView.setAlpha(0.0f);
        textView.setText(str);
        textView.animate().alpha(1.0f).setDuration(500L).start();
    }

    public final void c(TextView textView) {
        textView.clearAnimation();
        textView.animate().alpha(0.0f).setDuration(500L).withEndAction(new w8.j(textView, 1)).start();
    }

    public final String d(a aVar) {
        return aVar == a.MY_LIGHTS ? o.r(R.string.adapt_lights_off) : s9.e.b(o.r(R.string.light_pack_is_off), new Pair("lightPack", o.r(aVar.f19393j)));
    }

    /* JADX WARN: Code duplicated, block: B:21:0x008e  */
    public final void e(a aVar, a aVar2) {
        String strB;
        p4.h.j(aVar, "activeLightPack");
        a aVar3 = a.MY_LIGHTS;
        if (aVar != aVar3) {
            strB = s9.e.b(o.r(R.string.adapt_lighting_animation_activated), new Pair("animation", o.r(aVar.f19393j)));
        } else if (aVar2 != aVar3) {
            strB = d(aVar2);
        } else {
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            if (p4.h.c(inMemoryCache.getActiveLightEffect(), v7.c.d.f16370c)) {
                strB = this.f19433b.S().isOff() ? o.r(R.string.adapt_lights_off) : "";
            } else {
                String strS = o.s(inMemoryCache.getActiveLightEffect());
                if (strS == null) {
                    strB = null;
                } else {
                    if (inMemoryCache.getNeedToDisplayEffectsSubtitleForFirstTime()) {
                        int iJ = this.f19433b.j();
                        int i10 = 4;
                        for (int i11 : q.g.b(4)) {
                            if (androidx.appcompat.widget.o.a(i11) == iJ) {
                                i10 = i11;
                                break;
                            }
                        }
                        strB = s9.e.b(o.r(R.string.effect_for_minutes), new Pair("effect", strS), new Pair("minutes", String.valueOf(androidx.appcompat.widget.o.a(i10))));
                    } else {
                        strB = s9.e.b(o.r(R.string.adapt_lighting_animation_activated), new Pair("animation", strS));
                    }
                    if (strB == null) {
                        strB = null;
                    }
                }
            }
        }
        if (strB != null) {
            this.f19432a.setText(strB);
            this.f19432a.setAlpha(1.0f);
        }
        InMemoryCache.INSTANCE.setNeedToDisplayEffectsSubtitleForFirstTime(false);
    }

    /* JADX WARN: Code duplicated, block: B:12:0x0047  */
    public final void f(a aVar) {
        String strB;
        a aVar2 = a.MY_LIGHTS;
        fd.o oVar = null;
        if (aVar == aVar2) {
            InMemoryCache inMemoryCache = InMemoryCache.INSTANCE;
            if (!p4.h.c(inMemoryCache.getActiveLightEffect(), v7.c.d.f16370c)) {
                strB = s9.e.b(o.r(R.string.adapt_lighting_animation_activated), new Pair("animation", o.s(inMemoryCache.getActiveLightEffect())));
                if (strB == null) {
                    strB = null;
                }
            } else if (this.f19433b.S().isOff()) {
                strB = d(aVar2);
            } else {
                strB = null;
            }
        } else {
            strB = s9.e.b(o.r(R.string.adapt_light_packs_activated_60_minutes), new Pair("lightPack", o.r(aVar.f19393j)));
        }
        if (strB != null) {
            b(this.f19432a, strB);
            oVar = fd.o.f7408a;
        }
        if (oVar == null) {
            c(this.f19432a);
        }
    }

    public final void g(a aVar) {
        String strB = aVar == a.MY_LIGHTS ? null : s9.e.b(o.r(R.string.adapt_light_packs_temporarily_disabled), new Pair("lightPack", o.r(aVar.f19393j)));
        if (strB != null) {
            b(this.f19432a, strB);
        }
    }

    public final void h(a aVar) {
        String strD = d(aVar);
        if (strD != null) {
            b(this.f19432a, strD);
        }
    }

    public final void i(a aVar) {
        String strB = aVar == a.MY_LIGHTS ? null : s9.e.b(o.r(R.string.adapt_light_packs_activating), new Pair("lightPack", o.r(aVar.f19393j)));
        if (strB != null) {
            b(this.f19432a, strB);
        }
    }
}
