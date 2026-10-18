package com.google.android.exoplayer2.ui;

import android.content.Context;
import android.text.Layout;
import android.text.Spanned;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.text.style.RelativeSizeSpan;
import android.text.style.StrikethroughSpan;
import android.text.style.StyleSpan;
import android.text.style.TypefaceSpan;
import android.text.style.UnderlineSpan;
import android.util.Base64;
import android.util.SparseArray;
import android.widget.FrameLayout;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.regex.Pattern;
import m5.g0;
import u6.q0;

/* JADX INFO: compiled from: WebViewSubtitleOutput.java */
/* JADX INFO: loaded from: classes.dex */
public final class g extends FrameLayout implements SubtitleView.a {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final com.google.android.exoplayer2.ui.a f4940h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final k5.g f4941i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public List<z4.a> f4942j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public k5.b f4943k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public float f4944l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f4945m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public float f4946n;

    /* JADX INFO: compiled from: WebViewSubtitleOutput.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f4947a;

        static {
            int[] iArr = new int[Layout.Alignment.values().length];
            f4947a = iArr;
            try {
                iArr[Layout.Alignment.ALIGN_NORMAL.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f4947a[Layout.Alignment.ALIGN_OPPOSITE.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f4947a[Layout.Alignment.ALIGN_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
        }
    }

    public g(Context context) {
        super(context, null);
        this.f4942j = Collections.emptyList();
        this.f4943k = k5.b.f9691g;
        this.f4944l = 0.0533f;
        this.f4945m = 0;
        this.f4946n = 0.08f;
        com.google.android.exoplayer2.ui.a aVar = new com.google.android.exoplayer2.ui.a(context, null);
        this.f4940h = aVar;
        k5.g gVar = new k5.g(context);
        this.f4941i = gVar;
        gVar.setBackgroundColor(0);
        addView(aVar);
        addView(gVar);
    }

    public static int b(int i10) {
        if (i10 != 1) {
            return i10 != 2 ? 0 : -100;
        }
        return -50;
    }

    public static String c(Layout.Alignment alignment) {
        if (alignment == null) {
            return "center";
        }
        int i10 = a.f4947a[alignment.ordinal()];
        if (i10 != 1) {
            return i10 != 2 ? "center" : "end";
        }
        return "start";
    }

    @Override // com.google.android.exoplayer2.ui.SubtitleView.a
    public final void a(List<z4.a> list, k5.b bVar, float f10, int i10, float f11) {
        this.f4943k = bVar;
        this.f4944l = f10;
        this.f4945m = i10;
        this.f4946n = f11;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i11 = 0; i11 < list.size(); i11++) {
            z4.a aVar = list.get(i11);
            if (aVar.f19297k != null) {
                arrayList.add(aVar);
            } else {
                arrayList2.add(aVar);
            }
        }
        if (!this.f4942j.isEmpty() || !arrayList2.isEmpty()) {
            this.f4942j = arrayList2;
            e();
        }
        this.f4940h.a(arrayList, bVar, f10, i10, f11);
        invalidate();
    }

    public final String d(int i10, float f10) {
        float fB = k5.e.b(i10, f10, getHeight(), (getHeight() - getPaddingTop()) - getPaddingBottom());
        return fB == -3.4028235E38f ? "unset" : g0.m("%.2fpx", Float.valueOf(fB / getContext().getResources().getDisplayMetrics().density));
    }

    /* JADX WARN: Code duplicated, block: B:111:0x0375  */
    /* JADX WARN: Code duplicated, block: B:204:0x04a2  */
    /* JADX WARN: Code duplicated, block: B:231:0x0589  */
    /* JADX WARN: Code duplicated, block: B:237:0x05aa  */
    /* JADX WARN: Code duplicated, block: B:241:0x05f9  */
    /* JADX WARN: Code duplicated, block: B:246:0x0605  */
    /* JADX WARN: Code duplicated, block: B:248:0x0619  */
    /* JADX WARN: Code duplicated, block: B:251:0x063b  */
    /* JADX WARN: Code duplicated, block: B:252:0x0657  */
    /* JADX WARN: Code duplicated, block: B:59:0x01b2  */
    /* JADX WARN: Type inference failed for: r0v32, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.ui.e$c>] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.ui.e$c>] */
    /* JADX WARN: Type inference failed for: r6v14, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.ui.e$c>] */
    /* JADX WARN: Type inference failed for: r9v10, types: [java.util.ArrayList, java.util.List<com.google.android.exoplayer2.ui.e$c>] */
    public final void e() {
        String strM;
        String strM2;
        int iB;
        int i10;
        String strM3;
        int i11;
        String str;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        e.b bVar;
        String str7;
        String str8;
        int i12;
        String strM4;
        String strM5;
        String string;
        float f10;
        int i13;
        String strM6;
        Layout.Alignment alignment;
        String str9;
        int i14;
        String str10;
        String str11;
        boolean z10;
        g gVar = this;
        StringBuilder sb2 = new StringBuilder();
        Object[] objArr = new Object[4];
        int i15 = 0;
        objArr[0] = f1.b.u(gVar.f4943k.f9692a);
        objArr[1] = gVar.d(gVar.f4945m, gVar.f4944l);
        float f11 = 1.2f;
        objArr[2] = Float.valueOf(1.2f);
        k5.b bVar2 = gVar.f4943k;
        int i16 = bVar2.f9695d;
        if (i16 == 1) {
            strM = g0.m("1px 1px 0 %1$s, 1px -1px 0 %1$s, -1px 1px 0 %1$s, -1px -1px 0 %1$s", f1.b.u(bVar2.f9696e));
        } else if (i16 == 2) {
            strM = g0.m("0.1em 0.12em 0.15em %s", f1.b.u(bVar2.f9696e));
        } else if (i16 != 3) {
            strM = i16 != 4 ? "unset" : g0.m("-0.05em -0.05em 0.15em %s", f1.b.u(bVar2.f9696e));
        } else {
            strM = g0.m("0.06em 0.08em 0.15em %s", f1.b.u(bVar2.f9696e));
        }
        objArr[3] = strM;
        sb2.append(g0.m("<body><div style='-webkit-user-select:none;position:fixed;top:0;bottom:0;left:0;right:0;color:%s;font-size:%s;line-height:%.2f;text-shadow:%s;'>", objArr));
        HashMap map = new HashMap();
        String str12 = "default_bg";
        String str13 = "background-color:%s;";
        map.put(f1.b.f("default_bg"), g0.m("background-color:%s;", f1.b.u(gVar.f4943k.f9693b)));
        int i17 = 1;
        int i18 = 0;
        while (i15 < gVar.f4942j.size()) {
            z4.a aVar = gVar.f4942j.get(i15);
            float f12 = aVar.f19301o;
            float f13 = f12 != -3.4028235E38f ? f12 * 100.0f : 50.0f;
            int iB2 = b(aVar.f19302p);
            float f14 = aVar.f19298l;
            if (f14 == -3.4028235E38f) {
                Object[] objArr2 = new Object[i17];
                objArr2[i18] = Float.valueOf((1.0f - gVar.f4946n) * 100.0f);
                strM2 = g0.m("%.2f%%", objArr2);
                iB = -100;
                i10 = i18;
            } else if (aVar.f19299m != i17) {
                Object[] objArr3 = new Object[i17];
                objArr3[i18] = Float.valueOf(f14 * 100.0f);
                strM2 = g0.m("%.2f%%", objArr3);
                i10 = i18;
                iB = aVar.f19309w == i17 ? -b(aVar.f19300n) : b(aVar.f19300n);
            } else if (f14 >= 0.0f) {
                Object[] objArr4 = new Object[i17];
                Float fValueOf = Float.valueOf(f14 * f11);
                i10 = 0;
                objArr4[0] = fValueOf;
                strM2 = g0.m("%.2fem", objArr4);
                i18 = 0;
                iB = 0;
            } else {
                Object[] objArr5 = new Object[i17];
                objArr5[0] = Float.valueOf(((-f14) - 1.0f) * f11);
                strM2 = g0.m("%.2fem", objArr5);
                i18 = 0;
                iB = 0;
                i10 = i17;
            }
            float f15 = aVar.f19303q;
            if (f15 != -3.4028235E38f) {
                Object[] objArr6 = new Object[i17];
                objArr6[i18] = Float.valueOf(f15 * 100.0f);
                strM3 = g0.m("%.2f%%", objArr6);
            } else {
                strM3 = "fit-content";
            }
            String strC = c(aVar.f19295i);
            int i19 = aVar.f19309w;
            String str14 = i19 != i17 ? i19 != 2 ? "horizontal-tb" : "vertical-lr" : "vertical-rl";
            String strD = gVar.d(aVar.f19307u, aVar.f19308v);
            String strU = f1.b.u(aVar.f19305s ? aVar.f19306t : gVar.f4943k.f9694c);
            int i20 = aVar.f19309w;
            String str15 = "left";
            String str16 = str12;
            if (i20 == 1) {
                if (i10 == 0) {
                    str15 = "right";
                }
                i11 = 2;
                str = str15;
                str15 = "top";
            } else if (i20 != 2) {
                str = i10 != 0 ? "bottom" : "top";
                i11 = 2;
            } else {
                if (i10 != 0) {
                    str15 = "right";
                }
                i11 = 2;
                str = str15;
                str15 = "top";
            }
            if (i20 == i11 || i20 == 1) {
                str2 = "height";
            } else {
                str2 = "width";
                iB2 = iB;
                iB = iB2;
            }
            CharSequence charSequence = aVar.f19294h;
            float f16 = getContext().getResources().getDisplayMetrics().density;
            Pattern pattern = e.f4929a;
            StringBuilder sb3 = sb2;
            String str17 = "";
            if (charSequence == null) {
                bVar = new e.b("", q0.f15971n, null);
            } else {
                if (charSequence instanceof Spanned) {
                    str17 = "";
                    Spanned spanned = (Spanned) charSequence;
                    HashSet hashSet = new HashSet();
                    BackgroundColorSpan[] backgroundColorSpanArr = (BackgroundColorSpan[]) spanned.getSpans(0, spanned.length(), BackgroundColorSpan.class);
                    int length = backgroundColorSpanArr.length;
                    int i21 = 0;
                    while (i21 < length) {
                        hashSet.add(Integer.valueOf(backgroundColorSpanArr[i21].getBackgroundColor()));
                        i21++;
                        backgroundColorSpanArr = backgroundColorSpanArr;
                    }
                    HashMap map2 = new HashMap();
                    for (Iterator it = hashSet.iterator(); it.hasNext(); it = it) {
                        int iIntValue = ((Integer) it.next()).intValue();
                        map2.put(f1.b.f("bg_" + iIntValue), g0.m(str13, f1.b.u(iIntValue)));
                    }
                    SparseArray sparseArray = new SparseArray();
                    Object[] spans = spanned.getSpans(0, spanned.length(), Object.class);
                    int length2 = spans.length;
                    int i22 = 0;
                    while (i22 < length2) {
                        int i23 = length2;
                        Object obj = spans[i22];
                        Object[] objArr7 = spans;
                        boolean z11 = obj instanceof StrikethroughSpan;
                        if (z11) {
                            str8 = strC;
                            strM4 = "<span style='text-decoration:line-through;'>";
                            str7 = str14;
                        } else {
                            str7 = str14;
                            if (obj instanceof ForegroundColorSpan) {
                                str8 = strC;
                                strM5 = g0.m("<span style='color:%s;'>", f1.b.u(((ForegroundColorSpan) obj).getForegroundColor()));
                            } else {
                                str8 = strC;
                                if (obj instanceof BackgroundColorSpan) {
                                    strM5 = g0.m("<span class='bg_%s'>", Integer.valueOf(((BackgroundColorSpan) obj).getBackgroundColor()));
                                } else if (obj instanceof d5.a) {
                                    strM5 = "<span style='text-combine-upright:all;'>";
                                } else if (obj instanceof AbsoluteSizeSpan) {
                                    AbsoluteSizeSpan absoluteSizeSpan = (AbsoluteSizeSpan) obj;
                                    strM5 = g0.m("<span style='font-size:%.2fpx;'>", Float.valueOf(absoluteSizeSpan.getDip() ? absoluteSizeSpan.getSize() : absoluteSizeSpan.getSize() / f16));
                                } else {
                                    if (obj instanceof RelativeSizeSpan) {
                                        strM5 = g0.m("<span style='font-size:%.2f%%;'>", Float.valueOf(((RelativeSizeSpan) obj).getSizeChange() * 100.0f));
                                    } else if (obj instanceof TypefaceSpan) {
                                        String family = ((TypefaceSpan) obj).getFamily();
                                        if (family != null) {
                                            strM5 = g0.m("<span style='font-family:\"%s\";'>", family);
                                        } else {
                                            strM4 = null;
                                        }
                                    } else if (obj instanceof StyleSpan) {
                                        int style = ((StyleSpan) obj).getStyle();
                                        if (style == 1) {
                                            strM5 = "<b>";
                                        } else if (style == 2) {
                                            strM5 = "<i>";
                                        } else if (style != 3) {
                                            strM4 = null;
                                        } else {
                                            strM5 = "<b><i>";
                                        }
                                    } else if (obj instanceof d5.c) {
                                        int i24 = ((d5.c) obj).f6042b;
                                        if (i24 == -1) {
                                            strM5 = "<ruby style='ruby-position:unset;'>";
                                        } else if (i24 == 1) {
                                            strM5 = "<ruby style='ruby-position:over;'>";
                                        } else if (i24 != 2) {
                                            strM4 = null;
                                        } else {
                                            strM5 = "<ruby style='ruby-position:under;'>";
                                        }
                                    } else if (obj instanceof UnderlineSpan) {
                                        strM5 = "<u>";
                                    } else if (obj instanceof d5.d) {
                                        d5.d dVar = (d5.d) obj;
                                        int i25 = dVar.f6043a;
                                        int i26 = dVar.f6044b;
                                        StringBuilder sb4 = new StringBuilder();
                                        if (i26 != 1) {
                                            i12 = 2;
                                            if (i26 == 2) {
                                                sb4.append("open ");
                                            }
                                        } else {
                                            i12 = 2;
                                            sb4.append("filled ");
                                        }
                                        if (i25 == 0) {
                                            sb4.append("none");
                                        } else if (i25 == 1) {
                                            sb4.append("circle");
                                        } else if (i25 == i12) {
                                            sb4.append("dot");
                                        } else if (i25 != 3) {
                                            sb4.append("unset");
                                        } else {
                                            sb4.append("sesame");
                                        }
                                        strM4 = g0.m("<span style='-webkit-text-emphasis-style:%1$s;text-emphasis-style:%1$s;-webkit-text-emphasis-position:%2$s;text-emphasis-position:%2$s;display:inline-block;'>", sb4.toString(), dVar.f6045c != 2 ? "over right" : "under left");
                                    } else {
                                        strM4 = null;
                                    }
                                    strM4 = strM5;
                                }
                            }
                            strM4 = strM5;
                        }
                        if (z11 || (obj instanceof ForegroundColorSpan) || (obj instanceof BackgroundColorSpan) || (obj instanceof d5.a) || (obj instanceof AbsoluteSizeSpan) || (obj instanceof RelativeSizeSpan) || (obj instanceof d5.d)) {
                            string = "</span>";
                        } else {
                            if (obj instanceof TypefaceSpan) {
                                if (((TypefaceSpan) obj).getFamily() != null) {
                                    string = "</span>";
                                }
                            } else if (obj instanceof StyleSpan) {
                                int style2 = ((StyleSpan) obj).getStyle();
                                if (style2 == 1) {
                                    string = "</b>";
                                } else if (style2 == 2) {
                                    string = "</i>";
                                } else if (style2 == 3) {
                                    string = "</i></b>";
                                }
                            } else if (obj instanceof d5.c) {
                                StringBuilder sbC = a0.b.c("<rt>");
                                sbC.append(e.a(((d5.c) obj).f6041a));
                                sbC.append("</rt></ruby>");
                                string = sbC.toString();
                            } else if (obj instanceof UnderlineSpan) {
                                string = "</u>";
                            }
                            string = null;
                        }
                        int spanStart = spanned.getSpanStart(obj);
                        int spanEnd = spanned.getSpanEnd(obj);
                        if (strM4 != null) {
                            Objects.requireNonNull(string);
                            e.c cVar = new e.c(spanStart, spanEnd, strM4, string);
                            e.d dVar2 = (e.d) sparseArray.get(spanStart);
                            if (dVar2 == null) {
                                dVar2 = new e.d();
                                sparseArray.put(spanStart, dVar2);
                            }
                            dVar2.f4938a.add(cVar);
                            e.d dVar3 = (e.d) sparseArray.get(spanEnd);
                            if (dVar3 == null) {
                                dVar3 = new e.d();
                                sparseArray.put(spanEnd, dVar3);
                            }
                            dVar3.f4939b.add(cVar);
                        }
                        i22++;
                        length2 = i23;
                        spans = objArr7;
                        str14 = str7;
                        strC = str8;
                        f16 = f16;
                        strM3 = strM3;
                        str2 = str2;
                    }
                    str3 = str2;
                    str4 = strM3;
                    str5 = str14;
                    str6 = strC;
                    StringBuilder sb5 = new StringBuilder(spanned.length());
                    int i27 = 0;
                    int i28 = 0;
                    while (i27 < sparseArray.size()) {
                        int iKeyAt = sparseArray.keyAt(i27);
                        sb5.append(e.a(spanned.subSequence(i28, iKeyAt)));
                        e.d dVar4 = (e.d) sparseArray.get(iKeyAt);
                        Collections.sort(dVar4.f4939b, e.c.f4933f);
                        Iterator it2 = dVar4.f4939b.iterator();
                        while (it2.hasNext()) {
                            sb5.append(((e.c) it2.next()).f4937d);
                        }
                        Collections.sort(dVar4.f4938a, e.c.f4932e);
                        Iterator it3 = dVar4.f4938a.iterator();
                        while (it3.hasNext()) {
                            sb5.append(((e.c) it3.next()).f4936c);
                        }
                        i27++;
                        i28 = iKeyAt;
                    }
                    sb5.append(e.a(spanned.subSequence(i28, spanned.length())));
                    bVar = new e.b(sb5.toString(), map2, null);
                } else {
                    bVar = new e.b(e.a(charSequence), q0.f15971n, null);
                }
                for (String str18 : map.keySet()) {
                    str11 = (String) map.put(str18, (String) map.get(str18));
                    if (str11 != null || str11.equals(map.get(str18))) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    m5.a.e(z10);
                }
                Object[] objArr8 = new Object[14];
                objArr8[0] = Integer.valueOf(i15);
                objArr8[1] = str15;
                objArr8[2] = Float.valueOf(f13);
                objArr8[3] = str;
                objArr8[4] = strM2;
                objArr8[5] = str3;
                objArr8[6] = str4;
                objArr8[7] = str6;
                objArr8[8] = str5;
                objArr8[9] = strD;
                objArr8[10] = strU;
                objArr8[11] = Integer.valueOf(iB);
                objArr8[12] = Integer.valueOf(iB2);
                f10 = aVar.f19310x;
                if (f10 != 0.0f) {
                    i14 = aVar.f19309w;
                    i13 = 1;
                    if (i14 != 2 || i14 == 1) {
                        str10 = "skewY";
                    } else {
                        str10 = "skewX";
                    }
                    strM6 = g0.m("%s(%.2fdeg)", str10, Float.valueOf(f10));
                } else {
                    i13 = 1;
                    strM6 = str17;
                }
                objArr8[13] = strM6;
                sb2 = sb3;
                sb2.append(g0.m("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", objArr8));
                Object[] objArr9 = new Object[i13];
                objArr9[0] = str16;
                sb2.append(g0.m("<span class='%s'>", objArr9));
                alignment = aVar.f19296j;
                if (alignment != null) {
                    Object[] objArr10 = new Object[i13];
                    objArr10[0] = c(alignment);
                    sb2.append(g0.m("<span style='display:inline-block; text-align:%s;'>", objArr10));
                    sb2.append(bVar.f4930a);
                    str9 = "</span>";
                    sb2.append(str9);
                } else {
                    str9 = "</span>";
                    sb2.append(bVar.f4930a);
                }
                sb2.append(str9);
                sb2.append("</div>");
                i15++;
                f11 = 1.2f;
                i18 = 0;
                i17 = 1;
                gVar = this;
                str12 = str16;
                str13 = str13;
            }
            str3 = str2;
            str4 = strM3;
            str5 = str14;
            str6 = strC;
            while (r0.hasNext()) {
                str11 = (String) map.put(str18, (String) map.get(str18));
                if (str11 != null) {
                    z10 = true;
                } else {
                    z10 = true;
                }
                m5.a.e(z10);
            }
            Object[] objArr11 = new Object[14];
            objArr11[0] = Integer.valueOf(i15);
            objArr11[1] = str15;
            objArr11[2] = Float.valueOf(f13);
            objArr11[3] = str;
            objArr11[4] = strM2;
            objArr11[5] = str3;
            objArr11[6] = str4;
            objArr11[7] = str6;
            objArr11[8] = str5;
            objArr11[9] = strD;
            objArr11[10] = strU;
            objArr11[11] = Integer.valueOf(iB);
            objArr11[12] = Integer.valueOf(iB2);
            f10 = aVar.f19310x;
            if (f10 != 0.0f) {
                i14 = aVar.f19309w;
                i13 = 1;
                if (i14 != 2) {
                    str10 = "skewY";
                } else {
                    str10 = "skewY";
                }
                strM6 = g0.m("%s(%.2fdeg)", str10, Float.valueOf(f10));
            } else {
                i13 = 1;
                strM6 = str17;
            }
            objArr11[13] = strM6;
            sb2 = sb3;
            sb2.append(g0.m("<div style='position:absolute;z-index:%s;%s:%.2f%%;%s:%s;%s:%s;text-align:%s;writing-mode:%s;font-size:%s;background-color:%s;transform:translate(%s%%,%s%%)%s;'>", objArr11));
            Object[] objArr12 = new Object[i13];
            objArr12[0] = str16;
            sb2.append(g0.m("<span class='%s'>", objArr12));
            alignment = aVar.f19296j;
            if (alignment != null) {
                Object[] objArr13 = new Object[i13];
                objArr13[0] = c(alignment);
                sb2.append(g0.m("<span style='display:inline-block; text-align:%s;'>", objArr13));
                sb2.append(bVar.f4930a);
                str9 = "</span>";
                sb2.append(str9);
            } else {
                str9 = "</span>";
                sb2.append(bVar.f4930a);
            }
            sb2.append(str9);
            sb2.append("</div>");
            i15++;
            f11 = 1.2f;
            i18 = 0;
            i17 = 1;
            gVar = this;
            str12 = str16;
            str13 = str13;
        }
        sb2.append("</div></body></html>");
        StringBuilder sb6 = new StringBuilder();
        sb6.append("<html><head><style>");
        for (String str19 : map.keySet()) {
            sb6.append(str19);
            sb6.append("{");
            sb6.append((String) map.get(str19));
            sb6.append("}");
        }
        sb6.append("</style></head>");
        sb2.insert(0, sb6.toString());
        this.f4941i.loadData(Base64.encodeToString(sb2.toString().getBytes(t6.c.f15538c), 1), "text/html", "base64");
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    public final void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        super.onLayout(z10, i10, i11, i12, i13);
        if (!z10 || this.f4942j.isEmpty()) {
            return;
        }
        e();
    }
}
