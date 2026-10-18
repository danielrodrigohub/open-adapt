package u5;

import android.content.res.ColorStateList;
import android.graphics.PorterDuff;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.InsetDrawable;
import android.graphics.drawable.LayerDrawable;
import android.graphics.drawable.RippleDrawable;
import android.view.View;
import com.google.android.material.R;
import com.google.android.material.button.MaterialButton;
import j0.a0;
import j0.g0;
import java.util.WeakHashMap;
import m6.f;
import m6.i;
import m6.l;

/* JADX INFO: compiled from: MaterialButtonHelper.java */
/* JADX INFO: loaded from: classes.dex */
public final class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final MaterialButton f15860a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public i f15861b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f15862c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f15863d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f15864e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f15865f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f15866g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f15867h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public PorterDuff.Mode f15868i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public ColorStateList f15869j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public ColorStateList f15870k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public ColorStateList f15871l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public f f15872m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f15873n = false;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f15874o = false;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public boolean f15875p = false;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public boolean f15876q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public RippleDrawable f15877r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f15878s;

    public a(MaterialButton materialButton, i iVar) {
        this.f15860a = materialButton;
        this.f15861b = iVar;
    }

    public final l a() {
        RippleDrawable rippleDrawable = this.f15877r;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 1) {
            return null;
        }
        return this.f15877r.getNumberOfLayers() > 2 ? (l) this.f15877r.getDrawable(2) : (l) this.f15877r.getDrawable(1);
    }

    public final f b(boolean z10) {
        RippleDrawable rippleDrawable = this.f15877r;
        if (rippleDrawable == null || rippleDrawable.getNumberOfLayers() <= 0) {
            return null;
        }
        return (f) ((LayerDrawable) ((InsetDrawable) this.f15877r.getDrawable(0)).getDrawable()).getDrawable(!z10 ? 1 : 0);
    }

    public final void c(i iVar) {
        this.f15861b = iVar;
        if (b(false) != null) {
            b(false).setShapeAppearanceModel(iVar);
        }
        if (b(true) != null) {
            b(true).setShapeAppearanceModel(iVar);
        }
        if (a() != null) {
            a().setShapeAppearanceModel(iVar);
        }
    }

    public final void d(int i10, int i11) {
        MaterialButton materialButton = this.f15860a;
        WeakHashMap<View, g0> weakHashMap = a0.f9147a;
        int iF = a0.e.f(materialButton);
        int paddingTop = this.f15860a.getPaddingTop();
        int iE = a0.e.e(this.f15860a);
        int paddingBottom = this.f15860a.getPaddingBottom();
        int i12 = this.f15864e;
        int i13 = this.f15865f;
        this.f15865f = i11;
        this.f15864e = i10;
        if (!this.f15874o) {
            e();
        }
        a0.e.k(this.f15860a, iF, (paddingTop + i10) - i12, iE, (paddingBottom + i11) - i13);
    }

    public final void e() {
        MaterialButton materialButton = this.f15860a;
        f fVar = new f(this.f15861b);
        fVar.m(this.f15860a.getContext());
        b0.a.b.h(fVar, this.f15869j);
        PorterDuff.Mode mode = this.f15868i;
        if (mode != null) {
            b0.a.b.i(fVar, mode);
        }
        fVar.r(this.f15867h, this.f15870k);
        f fVar2 = new f(this.f15861b);
        fVar2.setTint(0);
        fVar2.q(this.f15867h, this.f15873n ? a6.a.b(this.f15860a, R.attr.colorSurface) : 0);
        f fVar3 = new f(this.f15861b);
        this.f15872m = fVar3;
        b0.a.b.g(fVar3, -1);
        RippleDrawable rippleDrawable = new RippleDrawable(k6.a.b(this.f15871l), new InsetDrawable((Drawable) new LayerDrawable(new Drawable[]{fVar2, fVar}), this.f15862c, this.f15864e, this.f15863d, this.f15865f), this.f15872m);
        this.f15877r = rippleDrawable;
        materialButton.setInternalBackground(rippleDrawable);
        f fVarB = b(false);
        if (fVarB != null) {
            fVarB.n(this.f15878s);
        }
    }

    public final void f() {
        f fVarB = b(false);
        f fVarB2 = b(true);
        if (fVarB != null) {
            fVarB.r(this.f15867h, this.f15870k);
            if (fVarB2 != null) {
                fVarB2.q(this.f15867h, this.f15873n ? a6.a.b(this.f15860a, R.attr.colorSurface) : 0);
            }
        }
    }
}
