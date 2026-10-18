package androidx.appcompat.widget;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffColorFilter;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.LayerDrawable;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import android.util.Xml;
import androidx.appcompat.R;
import java.lang.ref.WeakReference;
import java.util.Objects;
import java.util.WeakHashMap;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;

/* JADX INFO: compiled from: ResourceManagerInternal.java */
/* JADX INFO: loaded from: classes.dex */
public final class u0 {

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static u0 f1456i;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public WeakHashMap<Context, p.h<ColorStateList>> f1458a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public p.g<String, b> f1459b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public p.h<String> f1460c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final WeakHashMap<Context, p.d<WeakReference<Drawable.ConstantState>>> f1461d = new WeakHashMap<>(0);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public TypedValue f1462e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f1463f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public c f1464g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final PorterDuff.Mode f1455h = PorterDuff.Mode.SRC_IN;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public static final a f1457j = new a();

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    public static class a extends p.e<Integer, PorterDuffColorFilter> {
        public a() {
            super(6);
        }
    }

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    public interface b {
        Drawable a(Context context, XmlPullParser xmlPullParser, AttributeSet attributeSet, Resources.Theme theme);
    }

    /* JADX INFO: compiled from: ResourceManagerInternal.java */
    public interface c {
    }

    public static synchronized u0 c() {
        if (f1456i == null) {
            f1456i = new u0();
        }
        return f1456i;
    }

    public static synchronized PorterDuffColorFilter g(int i10, PorterDuff.Mode mode) {
        PorterDuffColorFilter porterDuffColorFilterA;
        a aVar = f1457j;
        Objects.requireNonNull(aVar);
        int i11 = (i10 + 31) * 31;
        porterDuffColorFilterA = aVar.a(Integer.valueOf(mode.hashCode() + i11));
        if (porterDuffColorFilterA == null) {
            porterDuffColorFilterA = new PorterDuffColorFilter(i10, mode);
            Objects.requireNonNull(aVar);
            aVar.b(Integer.valueOf(mode.hashCode() + i11), porterDuffColorFilterA);
        }
        return porterDuffColorFilterA;
    }

    public final synchronized boolean a(Context context, long j10, Drawable drawable) {
        Drawable.ConstantState constantState = drawable.getConstantState();
        if (constantState == null) {
            return false;
        }
        p.d<WeakReference<Drawable.ConstantState>> dVar = this.f1461d.get(context);
        if (dVar == null) {
            dVar = new p.d<>();
            this.f1461d.put(context, dVar);
        }
        dVar.f(j10, new WeakReference<>(constantState));
        return true;
    }

    public final Drawable b(Context context, int i10) {
        if (this.f1462e == null) {
            this.f1462e = new TypedValue();
        }
        TypedValue typedValue = this.f1462e;
        context.getResources().getValue(i10, typedValue, true);
        long j10 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        Drawable drawableD = d(context, j10);
        if (drawableD != null) {
            return drawableD;
        }
        c cVar = this.f1464g;
        LayerDrawable layerDrawableC = null;
        if (cVar != null) {
            k.a aVar = (k.a) cVar;
            Objects.requireNonNull(aVar);
            if (i10 == R.drawable.abc_cab_background_top_material) {
                layerDrawableC = new LayerDrawable(new Drawable[]{e(context, R.drawable.abc_cab_background_internal_bg), e(context, R.drawable.abc_cab_background_top_mtrl_alpha)});
            } else if (i10 == R.drawable.abc_ratingbar_material) {
                layerDrawableC = aVar.c(this, context, R.dimen.abc_star_big);
            } else if (i10 == R.drawable.abc_ratingbar_indicator_material) {
                layerDrawableC = aVar.c(this, context, R.dimen.abc_star_medium);
            } else if (i10 == R.drawable.abc_ratingbar_small_material) {
                layerDrawableC = aVar.c(this, context, R.dimen.abc_star_small);
            }
        }
        if (layerDrawableC != null) {
            layerDrawableC.setChangingConfigurations(typedValue.changingConfigurations);
            a(context, j10, layerDrawableC);
        }
        return layerDrawableC;
    }

    public final synchronized Drawable d(Context context, long j10) {
        p.d<WeakReference<Drawable.ConstantState>> dVar = this.f1461d.get(context);
        if (dVar == null) {
            return null;
        }
        WeakReference<Drawable.ConstantState> weakReferenceD = dVar.d(j10, null);
        if (weakReferenceD != null) {
            Drawable.ConstantState constantState = weakReferenceD.get();
            if (constantState != null) {
                return constantState.newDrawable(context.getResources());
            }
            int iF = androidx.lifecycle.k0.f(dVar.f12585i, dVar.f12587k, j10);
            if (iF >= 0) {
                Object[] objArr = dVar.f12586j;
                Object obj = objArr[iF];
                Object obj2 = p.d.f12583l;
                if (obj != obj2) {
                    objArr[iF] = obj2;
                    dVar.f12584h = true;
                }
            }
        }
        return null;
    }

    public final synchronized Drawable e(Context context, int i10) {
        return f(context, i10, false);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0028, code lost:
    
        if (r0 != false) goto L15;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final synchronized Drawable f(Context context, int i10, boolean z10) {
        Drawable drawableI;
        if (!this.f1463f) {
            boolean z11 = true;
            this.f1463f = true;
            Drawable drawableE = e(context, androidx.appcompat.resources.R.drawable.abc_vector_test);
            if (drawableE != null) {
                if (!(drawableE instanceof h1.b) && !"android.graphics.drawable.VectorDrawable".equals(drawableE.getClass().getName())) {
                    z11 = false;
                }
            }
            this.f1463f = false;
            throw new IllegalStateException("This app has been built with an incorrect configuration. Please configure your build for VectorDrawableCompat.");
        }
        drawableI = i(context, i10);
        if (drawableI == null) {
            drawableI = b(context, i10);
        }
        if (drawableI == null) {
            Object obj = y.a.f18143a;
            drawableI = y.a.b.b(context, i10);
        }
        if (drawableI != null) {
            drawableI = j(context, i10, z10, drawableI);
        }
        if (drawableI != null) {
            l0.a(drawableI);
        }
        return drawableI;
    }

    public final synchronized ColorStateList h(Context context, int i10) {
        ColorStateList colorStateListC;
        p.h<ColorStateList> hVar;
        WeakHashMap<Context, p.h<ColorStateList>> weakHashMap = this.f1458a;
        ColorStateList colorStateListD = null;
        colorStateListC = (weakHashMap == null || (hVar = weakHashMap.get(context)) == null) ? null : hVar.c(i10, null);
        if (colorStateListC == null) {
            c cVar = this.f1464g;
            if (cVar != null) {
                colorStateListD = ((k.a) cVar).d(context, i10);
            }
            if (colorStateListD != null) {
                if (this.f1458a == null) {
                    this.f1458a = new WeakHashMap<>();
                }
                p.h<ColorStateList> hVar2 = this.f1458a.get(context);
                if (hVar2 == null) {
                    hVar2 = new p.h<>();
                    this.f1458a.put(context, hVar2);
                }
                hVar2.a(i10, colorStateListD);
            }
            colorStateListC = colorStateListD;
        }
        return colorStateListC;
    }

    public final Drawable i(Context context, int i10) {
        int next;
        p.g<String, b> gVar = this.f1459b;
        if (gVar == null || gVar.isEmpty()) {
            return null;
        }
        p.h<String> hVar = this.f1460c;
        if (hVar != null) {
            String strC = hVar.c(i10, null);
            if ("appcompat_skip_skip".equals(strC) || (strC != null && this.f1459b.getOrDefault(strC, null) == null)) {
                return null;
            }
        } else {
            this.f1460c = new p.h<>();
        }
        if (this.f1462e == null) {
            this.f1462e = new TypedValue();
        }
        TypedValue typedValue = this.f1462e;
        Resources resources = context.getResources();
        resources.getValue(i10, typedValue, true);
        long j10 = (((long) typedValue.assetCookie) << 32) | ((long) typedValue.data);
        Drawable drawableD = d(context, j10);
        if (drawableD != null) {
            return drawableD;
        }
        CharSequence charSequence = typedValue.string;
        if (charSequence != null && charSequence.toString().endsWith(".xml")) {
            try {
                XmlResourceParser xml = resources.getXml(i10);
                AttributeSet attributeSetAsAttributeSet = Xml.asAttributeSet(xml);
                do {
                    next = xml.next();
                    if (next == 2) {
                        break;
                    }
                } while (next != 1);
                if (next != 2) {
                    throw new XmlPullParserException("No start tag found");
                }
                String name = xml.getName();
                this.f1460c.a(i10, name);
                b orDefault = this.f1459b.getOrDefault(name, null);
                if (orDefault != null) {
                    drawableD = orDefault.a(context, xml, attributeSetAsAttributeSet, context.getTheme());
                }
                if (drawableD != null) {
                    drawableD.setChangingConfigurations(typedValue.changingConfigurations);
                    a(context, j10, drawableD);
                }
            } catch (Exception e10) {
                Log.e("ResourceManagerInternal", "Exception while inflating drawable", e10);
            }
        }
        if (drawableD == null) {
            this.f1460c.a(i10, "appcompat_skip_skip");
        }
        return drawableD;
    }

    public final Drawable j(Context context, int i10, boolean z10, Drawable drawable) {
        ColorStateList colorStateListH = h(context, i10);
        PorterDuff.Mode mode = null;
        if (colorStateListH != null) {
            int[] iArr = l0.f1334a;
            Drawable drawableMutate = drawable.mutate();
            b0.a.b.h(drawableMutate, colorStateListH);
            if (this.f1464g != null && i10 == R.drawable.abc_switch_thumb_material) {
                mode = PorterDuff.Mode.MULTIPLY;
            }
            if (mode == null) {
                return drawableMutate;
            }
            b0.a.b.i(drawableMutate, mode);
            return drawableMutate;
        }
        c cVar = this.f1464g;
        if (cVar != null) {
            k.a aVar = (k.a) cVar;
            boolean z11 = true;
            if (i10 == R.drawable.abc_seekbar_track_material) {
                LayerDrawable layerDrawable = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId = layerDrawable.findDrawableByLayerId(android.R.id.background);
                int i11 = R.attr.colorControlNormal;
                int iC = a1.c(context, i11);
                PorterDuff.Mode mode2 = k.f1318b;
                aVar.e(drawableFindDrawableByLayerId, iC, mode2);
                aVar.e(layerDrawable.findDrawableByLayerId(android.R.id.secondaryProgress), a1.c(context, i11), mode2);
                aVar.e(layerDrawable.findDrawableByLayerId(android.R.id.progress), a1.c(context, R.attr.colorControlActivated), mode2);
            } else if (i10 == R.drawable.abc_ratingbar_material || i10 == R.drawable.abc_ratingbar_indicator_material || i10 == R.drawable.abc_ratingbar_small_material) {
                LayerDrawable layerDrawable2 = (LayerDrawable) drawable;
                Drawable drawableFindDrawableByLayerId2 = layerDrawable2.findDrawableByLayerId(android.R.id.background);
                int iB = a1.b(context, R.attr.colorControlNormal);
                PorterDuff.Mode mode3 = k.f1318b;
                aVar.e(drawableFindDrawableByLayerId2, iB, mode3);
                Drawable drawableFindDrawableByLayerId3 = layerDrawable2.findDrawableByLayerId(android.R.id.secondaryProgress);
                int i12 = R.attr.colorControlActivated;
                aVar.e(drawableFindDrawableByLayerId3, a1.c(context, i12), mode3);
                aVar.e(layerDrawable2.findDrawableByLayerId(android.R.id.progress), a1.c(context, i12), mode3);
            } else {
                z11 = false;
            }
            if (z11) {
                return drawable;
            }
        }
        if (k(context, i10, drawable) || !z10) {
            return drawable;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x004b  */
    /* JADX WARN: Code duplicated, block: B:24:0x005e  */
    /* JADX WARN: Code duplicated, block: B:26:0x0063  */
    /* JADX WARN: Code duplicated, block: B:31:? A[RETURN, SYNTHETIC] */
    public final boolean k(Context context, int i10, Drawable drawable) {
        int i11;
        boolean z10;
        int iRound;
        boolean z11;
        Drawable drawableMutate;
        c cVar = this.f1464g;
        if (cVar != null) {
            k.a aVar = (k.a) cVar;
            PorterDuff.Mode mode = k.f1318b;
            boolean zA = aVar.a(aVar.f1321a, i10);
            int i12 = android.R.attr.colorBackground;
            if (zA) {
                i12 = R.attr.colorControlNormal;
            } else if (aVar.a(aVar.f1323c, i10)) {
                i12 = R.attr.colorControlActivated;
            } else if (aVar.a(aVar.f1324d, i10)) {
                mode = PorterDuff.Mode.MULTIPLY;
            } else {
                if (i10 == R.drawable.abc_list_divider_mtrl_alpha) {
                    i11 = android.R.attr.colorForeground;
                    iRound = Math.round(40.8f);
                    z10 = true;
                } else if (i10 != R.drawable.abc_dialog_material_background) {
                    i11 = 0;
                    z10 = false;
                    iRound = -1;
                }
                if (z10) {
                    int[] iArr = l0.f1334a;
                    drawableMutate = drawable.mutate();
                    drawableMutate.setColorFilter(k.c(a1.c(context, i11), mode));
                    if (iRound != -1) {
                        drawableMutate.setAlpha(iRound);
                    }
                    z11 = true;
                } else {
                    z11 = false;
                }
                if (z11) {
                    return true;
                }
            }
            i11 = i12;
            iRound = -1;
            z10 = true;
            if (z10) {
                int[] iArr2 = l0.f1334a;
                drawableMutate = drawable.mutate();
                drawableMutate.setColorFilter(k.c(a1.c(context, i11), mode));
                if (iRound != -1) {
                    drawableMutate.setAlpha(iRound);
                }
                z11 = true;
            } else {
                z11 = false;
            }
            if (z11) {
                return true;
            }
        }
        return false;
    }
}
