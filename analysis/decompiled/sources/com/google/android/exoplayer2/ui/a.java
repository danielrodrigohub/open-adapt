package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.StaticLayout;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.util.AttributeSet;
import android.view.View;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import m5.g0;
import m5.p;

/* JADX INFO: compiled from: CanvasSubtitleOutput.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends View implements SubtitleView.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<k5.d> f4871h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public List<z4.a> f4872i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f4873j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public float f4874k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public k5.b f4875l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public float f4876m;

    public a(Context context, AttributeSet attributeSet) {
        super(context, null);
        this.f4871h = new ArrayList();
        this.f4872i = Collections.emptyList();
        this.f4873j = 0;
        this.f4874k = 0.0533f;
        this.f4875l = k5.b.f9691g;
        this.f4876m = 0.08f;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.ArrayList, java.util.List<k5.d>] */
    /* JADX WARN: Type inference failed for: r2v3, types: [java.util.ArrayList, java.util.List<k5.d>] */
    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public final void a(List<z4.a> list, k5.b bVar, float f10, int i10, float f11) {
        this.f4872i = list;
        this.f4875l = bVar;
        this.f4874k = f10;
        this.f4873j = i10;
        this.f4876m = f11;
        while (this.f4871h.size() < list.size()) {
            this.f4871h.add(new k5.d(getContext()));
        }
        invalidate();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x0210  */
    /* JADX WARN: Code duplicated, block: B:104:0x026d  */
    /* JADX WARN: Code duplicated, block: B:106:0x0278  */
    /* JADX WARN: Code duplicated, block: B:107:0x027b  */
    /* JADX WARN: Code duplicated, block: B:110:0x02ad  */
    /* JADX WARN: Code duplicated, block: B:113:0x02b4  */
    /* JADX WARN: Code duplicated, block: B:114:0x02ca  */
    /* JADX WARN: Code duplicated, block: B:116:0x02d4  */
    /* JADX WARN: Code duplicated, block: B:117:0x02eb  */
    /* JADX WARN: Code duplicated, block: B:120:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:122:0x030a A[LOOP:1: B:121:0x0308->B:122:0x030a, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:125:0x031e  */
    /* JADX WARN: Code duplicated, block: B:131:0x033a  */
    /* JADX WARN: Code duplicated, block: B:132:0x034e  */
    /* JADX WARN: Code duplicated, block: B:135:0x0354  */
    /* JADX WARN: Code duplicated, block: B:138:0x0383 A[LOOP:2: B:137:0x0381->B:138:0x0383, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:143:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:146:0x03b4  */
    /* JADX WARN: Code duplicated, block: B:148:0x03c2  */
    /* JADX WARN: Code duplicated, block: B:151:0x03c6  */
    /* JADX WARN: Code duplicated, block: B:152:0x03c8  */
    /* JADX WARN: Code duplicated, block: B:154:0x03d9  */
    /* JADX WARN: Code duplicated, block: B:157:0x03e3  */
    /* JADX WARN: Code duplicated, block: B:158:0x03ee  */
    /* JADX WARN: Code duplicated, block: B:160:0x03f7  */
    /* JADX WARN: Code duplicated, block: B:162:0x03fb  */
    /* JADX WARN: Code duplicated, block: B:164:0x0409  */
    /* JADX WARN: Code duplicated, block: B:165:0x040c  */
    /* JADX WARN: Code duplicated, block: B:167:0x040f  */
    /* JADX WARN: Code duplicated, block: B:169:0x0416  */
    /* JADX WARN: Code duplicated, block: B:171:0x042b  */
    /* JADX WARN: Code duplicated, block: B:172:0x0435  */
    /* JADX WARN: Code duplicated, block: B:176:0x0447  */
    /* JADX WARN: Code duplicated, block: B:177:0x044a  */
    /* JADX WARN: Code duplicated, block: B:180:0x044f  */
    /* JADX WARN: Code duplicated, block: B:183:0x049a  */
    /* JADX WARN: Code duplicated, block: B:185:0x04d9  */
    /* JADX WARN: Code duplicated, block: B:186:0x04df  */
    /* JADX WARN: Code duplicated, block: B:189:0x04f5  */
    /* JADX WARN: Code duplicated, block: B:190:0x04f7  */
    /* JADX WARN: Code duplicated, block: B:192:0x04fa  */
    /* JADX WARN: Code duplicated, block: B:196:0x0507  */
    /* JADX WARN: Code duplicated, block: B:197:0x0509  */
    /* JADX WARN: Code duplicated, block: B:199:0x050c  */
    /* JADX WARN: Code duplicated, block: B:49:0x012f  */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.util.ArrayList, java.util.List<k5.d>] */
    @Override // android.view.View
    public final void dispatchDraw(Canvas canvas) {
        CharSequence charSequence;
        CharSequence charSequence2;
        boolean z10;
        int i10;
        int i11;
        int i12;
        int i13;
        float f10;
        int i14;
        int i15;
        int i16;
        int i17;
        boolean z11;
        Bitmap bitmap;
        float f11;
        int iRound;
        float f12;
        int iRound2;
        int i18;
        float f13;
        int i19;
        float f14;
        CharSequence charSequence3;
        SpannableStringBuilder spannableStringBuilder;
        int i20;
        int i21;
        int i22;
        int i23;
        int i24;
        float f15;
        int i25;
        SpannableStringBuilder spannableStringBuilder2;
        Layout.Alignment alignment;
        int height;
        int lineCount;
        int i26;
        int iMax;
        int i27;
        float f16;
        int iMax2;
        int iMin;
        int i28;
        float f17;
        int iRound3;
        int i29;
        int lineBottom;
        float f18;
        int i30;
        int i31;
        int i32;
        int i33;
        int i34;
        int i35;
        ForegroundColorSpan[] foregroundColorSpanArr;
        int length;
        int i36;
        Canvas canvas2;
        float f19;
        int i37;
        a aVar = this;
        List<z4.a> list = aVar.f4872i;
        if (list.isEmpty()) {
            return;
        }
        int height2 = getHeight();
        int paddingLeft = getPaddingLeft();
        int paddingTop = getPaddingTop();
        int width = getWidth() - getPaddingRight();
        int paddingBottom = height2 - getPaddingBottom();
        if (paddingBottom <= paddingTop || width <= paddingLeft) {
            return;
        }
        int i38 = paddingBottom - paddingTop;
        float fB = k5.e.b(aVar.f4873j, aVar.f4874k, height2, i38);
        if (fB <= 0.0f) {
            return;
        }
        int size = list.size();
        Canvas canvas3 = canvas;
        int i39 = 0;
        while (i39 < size) {
            z4.a aVar2 = list.get(i39);
            if (aVar2.f19309w != Integer.MIN_VALUE) {
                CharSequence charSequence4 = aVar2.f19294h;
                Bitmap bitmap2 = aVar2.f19297k;
                Layout.Alignment alignment2 = aVar2.f19296j;
                int i40 = aVar2.f19300n;
                int i41 = aVar2.f19307u;
                float f20 = aVar2.f19308v;
                float f21 = aVar2.f19303q;
                float f22 = aVar2.f19304r;
                boolean z12 = aVar2.f19305s;
                int i42 = aVar2.f19306t;
                int i43 = aVar2.f19309w;
                float f23 = aVar2.f19310x;
                if (aVar2.f19299m == 0) {
                    f19 = 1.0f - aVar2.f19298l;
                    i37 = 0;
                } else {
                    f19 = (-aVar2.f19298l) - 1.0f;
                    i37 = 1;
                }
                int i44 = aVar2.f19300n;
                aVar2 = new z4.a(charSequence4, null, alignment2, bitmap2, f19, i37, i44 != 0 ? i44 != 2 ? i40 : 0 : 2, -3.4028235E38f, Integer.MIN_VALUE, i41, f20, f21, f22, z12, i42, i43, f23);
            }
            float fB2 = k5.e.b(aVar2.f19307u, aVar2.f19308v, height2, i38);
            int i45 = i39;
            k5.d dVar = (k5.d) aVar.f4871h.get(i45);
            k5.b bVar = aVar.f4875l;
            float f24 = aVar.f4876m;
            Objects.requireNonNull(dVar);
            boolean z13 = aVar2.f19297k == null;
            int i46 = -16777216;
            if (z13) {
                if (TextUtils.isEmpty(aVar2.f19294h)) {
                    canvas2 = canvas3;
                    i10 = paddingBottom;
                    i11 = width;
                    i12 = paddingTop;
                    i13 = paddingLeft;
                } else {
                    i46 = aVar2.f19305s ? aVar2.f19306t : bVar.f9694c;
                    charSequence = dVar.f9707i;
                    charSequence2 = aVar2.f19294h;
                    if (charSequence != charSequence2) {
                        z10 = true;
                    } else {
                        z10 = true;
                    }
                    if (!z10) {
                        i10 = paddingBottom;
                        i11 = width;
                        i12 = paddingTop;
                        i13 = paddingLeft;
                    } else {
                        i10 = paddingBottom;
                        i11 = width;
                        i12 = paddingTop;
                        i13 = paddingLeft;
                    }
                    dVar.f9707i = aVar2.f19294h;
                    dVar.f9708j = aVar2.f19295i;
                    dVar.f9709k = aVar2.f19297k;
                    dVar.f9710l = aVar2.f19298l;
                    dVar.f9711m = aVar2.f19299m;
                    dVar.f9712n = aVar2.f19300n;
                    dVar.f9713o = aVar2.f19301o;
                    dVar.f9714p = aVar2.f19302p;
                    dVar.f9715q = aVar2.f19303q;
                    dVar.f9716r = aVar2.f19304r;
                    dVar.f9717s = bVar.f9692a;
                    dVar.f9718t = bVar.f9693b;
                    dVar.f9719u = i46;
                    dVar.f9721w = bVar.f9695d;
                    dVar.f9720v = bVar.f9696e;
                    dVar.f9704f.setTypeface(bVar.f9697f);
                    f10 = fB;
                    dVar.f9722x = f10;
                    dVar.f9723y = fB2;
                    dVar.f9724z = f24;
                    dVar.A = i13;
                    dVar.B = i12;
                    dVar.C = i11;
                    dVar.D = i10;
                    if (z13) {
                        Objects.requireNonNull(dVar.f9707i);
                        charSequence3 = dVar.f9707i;
                        if (charSequence3 instanceof SpannableStringBuilder) {
                            spannableStringBuilder = (SpannableStringBuilder) charSequence3;
                        } else {
                            spannableStringBuilder = new SpannableStringBuilder(dVar.f9707i);
                        }
                        i20 = dVar.C - dVar.A;
                        i21 = dVar.D - dVar.B;
                        dVar.f9704f.setTextSize(dVar.f9722x);
                        i22 = (int) ((dVar.f9722x * 0.125f) + 0.5f);
                        i23 = i22 * 2;
                        fB = f10;
                        i24 = i20 - i23;
                        i14 = height2;
                        f15 = dVar.f9715q;
                        if (f15 != -3.4028235E38f) {
                            i24 = (int) (i24 * f15);
                        }
                        if (i24 <= 0) {
                            p.g("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
                            i15 = i38;
                            i13 = i13;
                            i16 = i45;
                            i12 = i12;
                            i11 = i11;
                            i17 = i10;
                            z11 = false;
                            canvas3 = canvas3;
                        } else {
                            i15 = i38;
                            if (dVar.f9723y > 0.0f) {
                                i25 = 0;
                                spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) dVar.f9723y), 0, spannableStringBuilder.length(), 16711680);
                            } else {
                                i25 = 0;
                            }
                            spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
                            if (dVar.f9721w == 1) {
                                foregroundColorSpanArr = (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(i25, spannableStringBuilder2.length(), ForegroundColorSpan.class);
                                i36 = 0;
                                for (length = foregroundColorSpanArr.length; i36 < length; length = length) {
                                    spannableStringBuilder2.removeSpan(foregroundColorSpanArr[i36]);
                                    i36++;
                                }
                            }
                            if (Color.alpha(dVar.f9718t) <= 0) {
                                i35 = dVar.f9721w;
                                if (i35 != 0) {
                                    spannableStringBuilder.setSpan(new BackgroundColorSpan(dVar.f9718t), 0, spannableStringBuilder.length(), 16711680);
                                } else {
                                    spannableStringBuilder.setSpan(new BackgroundColorSpan(dVar.f9718t), 0, spannableStringBuilder.length(), 16711680);
                                }
                            }
                            alignment = dVar.f9708j;
                            if (alignment == null) {
                                alignment = Layout.Alignment.ALIGN_CENTER;
                            }
                            i17 = i10;
                            StaticLayout staticLayout = new StaticLayout(spannableStringBuilder, dVar.f9704f, i24, alignment, dVar.f9702d, dVar.f9703e, true);
                            dVar.E = staticLayout;
                            height = staticLayout.getHeight();
                            lineCount = dVar.E.getLineCount();
                            i26 = 0;
                            iMax = 0;
                            while (i26 < lineCount) {
                                iMax = Math.max((int) Math.ceil(dVar.E.getLineWidth(i26)), iMax);
                                i26++;
                                lineCount = lineCount;
                                i45 = i45;
                            }
                            i16 = i45;
                            if (dVar.f9715q != -3.4028235E38f) {
                                i24 = iMax;
                            } else {
                                i24 = iMax;
                            }
                            i27 = i24 + i23;
                            f16 = dVar.f9713o;
                            if (f16 != -3.4028235E38f) {
                                int iRound4 = Math.round(i20 * f16);
                                int i47 = dVar.A;
                                i33 = iRound4 + i47;
                                i34 = dVar.f9714p;
                                if (i34 != 1) {
                                    i33 = ((i33 * 2) - i27) / 2;
                                } else if (i34 == 2) {
                                    i33 -= i27;
                                }
                                iMax2 = Math.max(i33, i47);
                                iMin = Math.min(i27 + iMax2, dVar.C);
                            } else {
                                iMax2 = ((i20 - i27) / 2) + dVar.A;
                                iMin = i27 + iMax2;
                            }
                            i28 = iMin - iMax2;
                            if (i28 <= 0) {
                                p.g("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
                                canvas3 = canvas;
                                z11 = false;
                            } else {
                                f17 = dVar.f9710l;
                                if (f17 != -3.4028235E38f) {
                                    if (dVar.f9711m == 0) {
                                        iRound3 = Math.round(i21 * f17) + dVar.B;
                                        i32 = dVar.f9712n;
                                        if (i32 == 2) {
                                            z11 = false;
                                            iRound3 -= height;
                                        } else {
                                            if (i32 == 1) {
                                                iRound3 = ((iRound3 * 2) - height) / 2;
                                            }
                                            z11 = false;
                                        }
                                    } else {
                                        lineBottom = dVar.E.getLineBottom(0) - dVar.E.getLineTop(0);
                                        f18 = dVar.f9710l;
                                        z11 = false;
                                        if (f18 >= 0.0f) {
                                            iRound3 = Math.round(f18 * lineBottom) + dVar.B;
                                        } else {
                                            iRound3 = Math.round((f18 + 1.0f) * lineBottom) + dVar.D;
                                            iRound3 -= height;
                                        }
                                    }
                                    i30 = iRound3 + height;
                                    i31 = dVar.D;
                                    if (i30 > i31) {
                                        iRound3 = i31 - height;
                                    } else {
                                        i29 = dVar.B;
                                        if (iRound3 >= i29) {
                                        }
                                        Layout.Alignment alignment3 = alignment;
                                        dVar.E = new StaticLayout(spannableStringBuilder, dVar.f9704f, i28, alignment3, dVar.f9702d, dVar.f9703e, true);
                                        dVar.F = new StaticLayout(spannableStringBuilder2, dVar.f9704f, i28, alignment3, dVar.f9702d, dVar.f9703e, true);
                                        dVar.G = iMax2;
                                        dVar.H = i29;
                                        dVar.I = i22;
                                    }
                                } else {
                                    z11 = false;
                                    iRound3 = (dVar.D - height) - ((int) (i21 * dVar.f9724z));
                                }
                                i29 = iRound3;
                                Layout.Alignment alignment4 = alignment;
                                dVar.E = new StaticLayout(spannableStringBuilder, dVar.f9704f, i28, alignment4, dVar.f9702d, dVar.f9703e, true);
                                dVar.F = new StaticLayout(spannableStringBuilder2, dVar.f9704f, i28, alignment4, dVar.f9702d, dVar.f9703e, true);
                                dVar.G = iMax2;
                                dVar.H = i29;
                                dVar.I = i22;
                            }
                        }
                        dVar.a(canvas3, z13);
                    } else {
                        fB = f10;
                        i14 = height2;
                        i15 = i38;
                        i13 = i13;
                        i16 = i45;
                        i12 = i12;
                        i11 = i11;
                        i17 = i10;
                        z11 = false;
                        Objects.requireNonNull(dVar.f9709k);
                        bitmap = dVar.f9709k;
                        int i48 = dVar.C;
                        int i49 = dVar.A;
                        int i50 = dVar.D;
                        int i51 = dVar.B;
                        float f25 = i48 - i49;
                        float f26 = (dVar.f9713o * f25) + i49;
                        f11 = i50 - i51;
                        float f27 = (dVar.f9710l * f11) + i51;
                        iRound = Math.round(f25 * dVar.f9715q);
                        f12 = dVar.f9716r;
                        if (f12 != -3.4028235E38f) {
                            iRound2 = Math.round(f11 * f12);
                        } else {
                            iRound2 = Math.round((bitmap.getHeight() / bitmap.getWidth()) * iRound);
                        }
                        i18 = dVar.f9714p;
                        if (i18 == 2) {
                            f13 = iRound;
                        } else {
                            if (i18 == 1) {
                                f13 = iRound / 2;
                            }
                            int iRound5 = Math.round(f26);
                            i19 = dVar.f9712n;
                            if (i19 == 2) {
                                f14 = iRound2;
                            } else {
                                if (i19 == 1) {
                                    f14 = iRound2 / 2;
                                }
                                int iRound6 = Math.round(f27);
                                dVar.J = new Rect(iRound5, iRound6, iRound + iRound5, iRound2 + iRound6);
                            }
                            f27 -= f14;
                            int iRound7 = Math.round(f27);
                            dVar.J = new Rect(iRound5, iRound7, iRound + iRound5, iRound2 + iRound7);
                        }
                        f26 -= f13;
                        int iRound8 = Math.round(f26);
                        i19 = dVar.f9712n;
                        if (i19 == 2) {
                            f14 = iRound2;
                        } else {
                            if (i19 == 1) {
                                f14 = iRound2 / 2;
                            }
                            int iRound9 = Math.round(f27);
                            dVar.J = new Rect(iRound8, iRound9, iRound + iRound8, iRound2 + iRound9);
                        }
                        f27 -= f14;
                        int iRound10 = Math.round(f27);
                        dVar.J = new Rect(iRound8, iRound10, iRound + iRound8, iRound2 + iRound10);
                    }
                    canvas3 = canvas;
                    dVar.a(canvas3, z13);
                }
                i14 = height2;
                i15 = i38;
                i13 = i13;
                i16 = i45;
                i12 = i12;
                i11 = i11;
                i17 = i10;
                z11 = false;
                canvas3 = canvas2;
            } else {
                charSequence = dVar.f9707i;
                charSequence2 = aVar2.f19294h;
                if (charSequence != charSequence2 || (charSequence != null && charSequence.equals(charSequence2))) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (!z10 && g0.a(dVar.f9708j, aVar2.f19295i) && dVar.f9709k == aVar2.f19297k && dVar.f9710l == aVar2.f19298l && dVar.f9711m == aVar2.f19299m && g0.a(Integer.valueOf(dVar.f9712n), Integer.valueOf(aVar2.f19300n)) && dVar.f9713o == aVar2.f19301o && g0.a(Integer.valueOf(dVar.f9714p), Integer.valueOf(aVar2.f19302p)) && dVar.f9715q == aVar2.f19303q && dVar.f9716r == aVar2.f19304r && dVar.f9717s == bVar.f9692a && dVar.f9718t == bVar.f9693b && dVar.f9719u == i46 && dVar.f9721w == bVar.f9695d && dVar.f9720v == bVar.f9696e && g0.a(dVar.f9704f.getTypeface(), bVar.f9697f) && dVar.f9722x == fB && dVar.f9723y == fB2 && dVar.f9724z == f24) {
                    i13 = paddingLeft;
                    if (dVar.A == i13) {
                        i12 = paddingTop;
                        if (dVar.B == i12) {
                            i11 = width;
                            if (dVar.C == i11) {
                                i10 = paddingBottom;
                                if (dVar.D == i10) {
                                    canvas2 = canvas3;
                                    dVar.a(canvas2, z13);
                                    i14 = height2;
                                    i15 = i38;
                                    i13 = i13;
                                    i16 = i45;
                                    i12 = i12;
                                    i11 = i11;
                                    i17 = i10;
                                    z11 = false;
                                    canvas3 = canvas2;
                                }
                            } else {
                                i10 = paddingBottom;
                            }
                        } else {
                            i10 = paddingBottom;
                            i11 = width;
                        }
                    } else {
                        i10 = paddingBottom;
                        i11 = width;
                        i12 = paddingTop;
                    }
                } else {
                    i10 = paddingBottom;
                    i11 = width;
                    i12 = paddingTop;
                    i13 = paddingLeft;
                }
                dVar.f9707i = aVar2.f19294h;
                dVar.f9708j = aVar2.f19295i;
                dVar.f9709k = aVar2.f19297k;
                dVar.f9710l = aVar2.f19298l;
                dVar.f9711m = aVar2.f19299m;
                dVar.f9712n = aVar2.f19300n;
                dVar.f9713o = aVar2.f19301o;
                dVar.f9714p = aVar2.f19302p;
                dVar.f9715q = aVar2.f19303q;
                dVar.f9716r = aVar2.f19304r;
                dVar.f9717s = bVar.f9692a;
                dVar.f9718t = bVar.f9693b;
                dVar.f9719u = i46;
                dVar.f9721w = bVar.f9695d;
                dVar.f9720v = bVar.f9696e;
                dVar.f9704f.setTypeface(bVar.f9697f);
                f10 = fB;
                dVar.f9722x = f10;
                dVar.f9723y = fB2;
                dVar.f9724z = f24;
                dVar.A = i13;
                dVar.B = i12;
                dVar.C = i11;
                dVar.D = i10;
                if (z13) {
                    Objects.requireNonNull(dVar.f9707i);
                    charSequence3 = dVar.f9707i;
                    if (charSequence3 instanceof SpannableStringBuilder) {
                        spannableStringBuilder = (SpannableStringBuilder) charSequence3;
                    } else {
                        spannableStringBuilder = new SpannableStringBuilder(dVar.f9707i);
                    }
                    i20 = dVar.C - dVar.A;
                    i21 = dVar.D - dVar.B;
                    dVar.f9704f.setTextSize(dVar.f9722x);
                    i22 = (int) ((dVar.f9722x * 0.125f) + 0.5f);
                    i23 = i22 * 2;
                    fB = f10;
                    i24 = i20 - i23;
                    i14 = height2;
                    f15 = dVar.f9715q;
                    if (f15 != -3.4028235E38f) {
                        i24 = (int) (i24 * f15);
                    }
                    if (i24 <= 0) {
                        p.g("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
                        i15 = i38;
                        i13 = i13;
                        i16 = i45;
                        i12 = i12;
                        i11 = i11;
                        i17 = i10;
                        z11 = false;
                        canvas3 = canvas3;
                    } else {
                        i15 = i38;
                        if (dVar.f9723y > 0.0f) {
                            i25 = 0;
                            spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) dVar.f9723y), 0, spannableStringBuilder.length(), 16711680);
                        } else {
                            i25 = 0;
                        }
                        spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
                        if (dVar.f9721w == 1) {
                            foregroundColorSpanArr = (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(i25, spannableStringBuilder2.length(), ForegroundColorSpan.class);
                            i36 = 0;
                            while (i36 < length) {
                                spannableStringBuilder2.removeSpan(foregroundColorSpanArr[i36]);
                                i36++;
                            }
                        }
                        if (Color.alpha(dVar.f9718t) <= 0) {
                            i35 = dVar.f9721w;
                            if (i35 != 0 || i35 == 2) {
                                spannableStringBuilder.setSpan(new BackgroundColorSpan(dVar.f9718t), 0, spannableStringBuilder.length(), 16711680);
                            } else {
                                spannableStringBuilder2.setSpan(new BackgroundColorSpan(dVar.f9718t), 0, spannableStringBuilder2.length(), 16711680);
                            }
                        }
                        alignment = dVar.f9708j;
                        if (alignment == null) {
                            alignment = Layout.Alignment.ALIGN_CENTER;
                        }
                        i17 = i10;
                        StaticLayout staticLayout2 = new StaticLayout(spannableStringBuilder, dVar.f9704f, i24, alignment, dVar.f9702d, dVar.f9703e, true);
                        dVar.E = staticLayout2;
                        height = staticLayout2.getHeight();
                        lineCount = dVar.E.getLineCount();
                        i26 = 0;
                        iMax = 0;
                        while (i26 < lineCount) {
                            iMax = Math.max((int) Math.ceil(dVar.E.getLineWidth(i26)), iMax);
                            i26++;
                            lineCount = lineCount;
                            i45 = i45;
                        }
                        i16 = i45;
                        if (dVar.f9715q != -3.4028235E38f || iMax >= i24) {
                            i24 = iMax;
                        }
                        i27 = i24 + i23;
                        f16 = dVar.f9713o;
                        if (f16 != -3.4028235E38f) {
                            int iRound11 = Math.round(i20 * f16);
                            int i410 = dVar.A;
                            i33 = iRound11 + i410;
                            i34 = dVar.f9714p;
                            if (i34 != 1) {
                                i33 = ((i33 * 2) - i27) / 2;
                            } else if (i34 == 2) {
                                i33 -= i27;
                            }
                            iMax2 = Math.max(i33, i410);
                            iMin = Math.min(i27 + iMax2, dVar.C);
                        } else {
                            iMax2 = ((i20 - i27) / 2) + dVar.A;
                            iMin = i27 + iMax2;
                        }
                        i28 = iMin - iMax2;
                        if (i28 <= 0) {
                            p.g("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
                            canvas3 = canvas;
                            z11 = false;
                        } else {
                            f17 = dVar.f9710l;
                            if (f17 != -3.4028235E38f) {
                                if (dVar.f9711m == 0) {
                                    iRound3 = Math.round(i21 * f17) + dVar.B;
                                    i32 = dVar.f9712n;
                                    if (i32 == 2) {
                                        z11 = false;
                                        iRound3 -= height;
                                    } else {
                                        if (i32 == 1) {
                                            iRound3 = ((iRound3 * 2) - height) / 2;
                                        }
                                        z11 = false;
                                    }
                                } else {
                                    lineBottom = dVar.E.getLineBottom(0) - dVar.E.getLineTop(0);
                                    f18 = dVar.f9710l;
                                    z11 = false;
                                    if (f18 >= 0.0f) {
                                        iRound3 = Math.round(f18 * lineBottom) + dVar.B;
                                    } else {
                                        iRound3 = Math.round((f18 + 1.0f) * lineBottom) + dVar.D;
                                        iRound3 -= height;
                                    }
                                }
                                i30 = iRound3 + height;
                                i31 = dVar.D;
                                if (i30 > i31) {
                                    iRound3 = i31 - height;
                                } else {
                                    i29 = dVar.B;
                                    if (iRound3 >= i29) {
                                    }
                                    Layout.Alignment alignment5 = alignment;
                                    dVar.E = new StaticLayout(spannableStringBuilder, dVar.f9704f, i28, alignment5, dVar.f9702d, dVar.f9703e, true);
                                    dVar.F = new StaticLayout(spannableStringBuilder2, dVar.f9704f, i28, alignment5, dVar.f9702d, dVar.f9703e, true);
                                    dVar.G = iMax2;
                                    dVar.H = i29;
                                    dVar.I = i22;
                                }
                            } else {
                                z11 = false;
                                iRound3 = (dVar.D - height) - ((int) (i21 * dVar.f9724z));
                            }
                            i29 = iRound3;
                            Layout.Alignment alignment6 = alignment;
                            dVar.E = new StaticLayout(spannableStringBuilder, dVar.f9704f, i28, alignment6, dVar.f9702d, dVar.f9703e, true);
                            dVar.F = new StaticLayout(spannableStringBuilder2, dVar.f9704f, i28, alignment6, dVar.f9702d, dVar.f9703e, true);
                            dVar.G = iMax2;
                            dVar.H = i29;
                            dVar.I = i22;
                        }
                    }
                    dVar.a(canvas3, z13);
                } else {
                    fB = f10;
                    i14 = height2;
                    i15 = i38;
                    i13 = i13;
                    i16 = i45;
                    i12 = i12;
                    i11 = i11;
                    i17 = i10;
                    z11 = false;
                    Objects.requireNonNull(dVar.f9709k);
                    bitmap = dVar.f9709k;
                    int i411 = dVar.C;
                    int i412 = dVar.A;
                    int i52 = dVar.D;
                    int i53 = dVar.B;
                    float f28 = i411 - i412;
                    float f29 = (dVar.f9713o * f28) + i412;
                    f11 = i52 - i53;
                    float f210 = (dVar.f9710l * f11) + i53;
                    iRound = Math.round(f28 * dVar.f9715q);
                    f12 = dVar.f9716r;
                    if (f12 != -3.4028235E38f) {
                        iRound2 = Math.round(f11 * f12);
                    } else {
                        iRound2 = Math.round((bitmap.getHeight() / bitmap.getWidth()) * iRound);
                    }
                    i18 = dVar.f9714p;
                    if (i18 == 2) {
                        f13 = iRound;
                    } else {
                        if (i18 == 1) {
                            f13 = iRound / 2;
                        }
                        int iRound12 = Math.round(f29);
                        i19 = dVar.f9712n;
                        if (i19 == 2) {
                            f14 = iRound2;
                        } else {
                            if (i19 == 1) {
                                f14 = iRound2 / 2;
                            }
                            int iRound13 = Math.round(f210);
                            dVar.J = new Rect(iRound12, iRound13, iRound + iRound12, iRound2 + iRound13);
                        }
                        f210 -= f14;
                        int iRound14 = Math.round(f210);
                        dVar.J = new Rect(iRound12, iRound14, iRound + iRound12, iRound2 + iRound14);
                    }
                    f29 -= f13;
                    int iRound15 = Math.round(f29);
                    i19 = dVar.f9712n;
                    if (i19 == 2) {
                        f14 = iRound2;
                    } else {
                        if (i19 == 1) {
                            f14 = iRound2 / 2;
                        }
                        int iRound16 = Math.round(f210);
                        dVar.J = new Rect(iRound15, iRound16, iRound + iRound15, iRound2 + iRound16);
                    }
                    f210 -= f14;
                    int iRound17 = Math.round(f210);
                    dVar.J = new Rect(iRound15, iRound17, iRound + iRound15, iRound2 + iRound17);
                }
                canvas3 = canvas;
                dVar.a(canvas3, z13);
            }
            height2 = i14;
            i38 = i15;
            list = list;
            size = size;
            paddingBottom = i17;
            width = i11;
            paddingTop = i12;
            paddingLeft = i13;
            fB = fB;
            i39 = i16 + 1;
            aVar = this;
        }
    }
}
