package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.util.AttributeSet;
import android.view.View;
import android.view.accessibility.CaptioningManager;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import m5.g0;

/* JADX INFO: loaded from: classes.dex */
public final class SubtitleView extends FrameLayout {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public List<z4.a> f4846h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public k5.b f4847i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4848j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f4849k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f4850l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public boolean f4851m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public boolean f4852n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f4853o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public a f4854p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public View f4855q;

    public interface a {
        void a(List<z4.a> list, k5.b bVar, float f10, int i10, float f11);
    }

    public SubtitleView(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f4846h = Collections.emptyList();
        this.f4847i = k5.b.f9691g;
        this.f4848j = 0;
        this.f4849k = 0.0533f;
        this.f4850l = 0.08f;
        this.f4851m = true;
        this.f4852n = true;
        com.google.android.exoplayer2.ui.a aVar = new com.google.android.exoplayer2.ui.a(context, null);
        this.f4854p = aVar;
        this.f4855q = aVar;
        addView(aVar);
        this.f4853o = 1;
    }

    private List<z4.a> getCuesWithStylingPreferencesApplied() {
        if (this.f4851m && this.f4852n) {
            return this.f4846h;
        }
        ArrayList arrayList = new ArrayList(this.f4846h.size());
        for (int i10 = 0; i10 < this.f4846h.size(); i10++) {
            z4.a.C0332a c0332aB = this.f4846h.get(i10).b();
            if (!this.f4851m) {
                c0332aB.f19324n = false;
                CharSequence charSequence = c0332aB.f19311a;
                if (charSequence instanceof Spanned) {
                    if (!(charSequence instanceof Spannable)) {
                        c0332aB.f19311a = SpannableString.valueOf(charSequence);
                    }
                    CharSequence charSequence2 = c0332aB.f19311a;
                    Objects.requireNonNull(charSequence2);
                    Spannable spannable = (Spannable) charSequence2;
                    for (Object obj : spannable.getSpans(0, spannable.length(), Object.class)) {
                        if (!(obj instanceof d5.b)) {
                            spannable.removeSpan(obj);
                        }
                    }
                }
                k5.e.a(c0332aB);
            } else if (!this.f4852n) {
                k5.e.a(c0332aB);
            }
            arrayList.add(c0332aB.a());
        }
        return arrayList;
    }

    private float getUserCaptionFontScale() {
        CaptioningManager captioningManager;
        if (g0.f10384a < 19 || isInEditMode() || (captioningManager = (CaptioningManager) getContext().getSystemService("captioning")) == null || !captioningManager.isEnabled()) {
            return 1.0f;
        }
        return captioningManager.getFontScale();
    }

    private k5.b getUserCaptionStyle() {
        int i10 = g0.f10384a;
        if (i10 < 19 || isInEditMode()) {
            return k5.b.f9691g;
        }
        CaptioningManager captioningManager = (CaptioningManager) getContext().getSystemService("captioning");
        if (captioningManager == null || !captioningManager.isEnabled()) {
            return k5.b.f9691g;
        }
        CaptioningManager.CaptionStyle userStyle = captioningManager.getUserStyle();
        if (i10 >= 21) {
            return new k5.b(userStyle.hasForegroundColor() ? userStyle.foregroundColor : -1, userStyle.hasBackgroundColor() ? userStyle.backgroundColor : -16777216, userStyle.hasWindowColor() ? userStyle.windowColor : 0, userStyle.hasEdgeType() ? userStyle.edgeType : 0, userStyle.hasEdgeColor() ? userStyle.edgeColor : -1, userStyle.getTypeface());
        }
        return new k5.b(userStyle.foregroundColor, userStyle.backgroundColor, 0, userStyle.edgeType, userStyle.edgeColor, userStyle.getTypeface());
    }

    private <T extends View & a> void setView(T t10) {
        removeView(this.f4855q);
        View view = this.f4855q;
        if (view instanceof g) {
            ((g) view).f4941i.destroy();
        }
        this.f4855q = t10;
        this.f4854p = t10;
        addView(t10);
    }

    public final void a() {
        setStyle(getUserCaptionStyle());
    }

    public final void b() {
        setFractionalTextSize(getUserCaptionFontScale() * 0.0533f);
    }

    public final void c() {
        this.f4854p.a(getCuesWithStylingPreferencesApplied(), this.f4847i, this.f4849k, this.f4848j, this.f4850l);
    }

    public void setApplyEmbeddedFontSizes(boolean z10) {
        this.f4852n = z10;
        c();
    }

    public void setApplyEmbeddedStyles(boolean z10) {
        this.f4851m = z10;
        c();
    }

    public void setBottomPaddingFraction(float f10) {
        this.f4850l = f10;
        c();
    }

    public void setCues(List<z4.a> list) {
        if (list == null) {
            list = Collections.emptyList();
        }
        this.f4846h = list;
        c();
    }

    public void setFractionalTextSize(float f10) {
        this.f4848j = 0;
        this.f4849k = f10;
        c();
    }

    public void setStyle(k5.b bVar) {
        this.f4847i = bVar;
        c();
    }

    public void setViewType(int i10) {
        if (this.f4853o == i10) {
            return;
        }
        if (i10 == 1) {
            setView(new com.google.android.exoplayer2.ui.a(getContext(), null));
        } else {
            if (i10 != 2) {
                throw new IllegalArgumentException();
            }
            setView(new g(getContext()));
        }
        this.f4853o = i10;
    }
}
