package androidx.constraintlayout.widget;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.util.AttributeSet;
import android.util.Log;
import android.util.SparseArray;
import android.util.SparseIntArray;
import android.view.View;
import android.view.ViewGroup;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Objects;
import okhttp3.internal.http2.Http2Connection;
import s.i;
import t.j;
import t.l;
import t.n;
import t.p;

/* JADX INFO: loaded from: classes.dex */
public class ConstraintLayout extends ViewGroup {

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public static v.b f1513y;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public SparseArray<View> f1514h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ArrayList<androidx.constraintlayout.widget.b> f1515i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public s.e f1516j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f1517k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public int f1518l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public int f1519m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public int f1520n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public boolean f1521o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public int f1522p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public d f1523q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public c f1524r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public int f1525s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public HashMap<String, Integer> f1526t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public SparseArray<s.d> f1527u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public b f1528v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public int f1529w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public int f1530x;

    public class b implements t.b.InterfaceC0261b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public ConstraintLayout f1574a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1575b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f1576c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f1577d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1578e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1579f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1580g;

        public b(ConstraintLayout constraintLayout) {
            this.f1574a = constraintLayout;
        }

        public final boolean a(int i10, int i11, int i12) {
            if (i10 == i11) {
                return true;
            }
            int mode = View.MeasureSpec.getMode(i10);
            View.MeasureSpec.getSize(i10);
            int mode2 = View.MeasureSpec.getMode(i11);
            int size = View.MeasureSpec.getSize(i11);
            if (mode2 == 1073741824) {
                return (mode == Integer.MIN_VALUE || mode == 0) && i12 == size;
            }
            return false;
        }

        /* JADX WARN: Code duplicated, block: B:122:0x01a0  */
        /* JADX WARN: Code duplicated, block: B:124:0x01a3  */
        /* JADX WARN: Code duplicated, block: B:127:0x01b6  */
        /* JADX WARN: Code duplicated, block: B:128:0x01b8  */
        /* JADX WARN: Code duplicated, block: B:130:0x01bb  */
        /* JADX WARN: Code duplicated, block: B:131:0x01bd  */
        /* JADX WARN: Code duplicated, block: B:137:0x01c6  */
        /* JADX WARN: Code duplicated, block: B:142:0x01ce  */
        /* JADX WARN: Code duplicated, block: B:148:0x01da  */
        /* JADX WARN: Code duplicated, block: B:153:0x01e5  */
        /* JADX WARN: Code duplicated, block: B:155:0x01e8 A[RETURN] */
        /* JADX WARN: Code duplicated, block: B:156:0x01e9  */
        /* JADX WARN: Code duplicated, block: B:167:0x0209  */
        /* JADX WARN: Code duplicated, block: B:169:0x020d  */
        /* JADX WARN: Code duplicated, block: B:172:0x0218  */
        /* JADX WARN: Code duplicated, block: B:175:0x0232  */
        /* JADX WARN: Code duplicated, block: B:176:0x0237  */
        /* JADX WARN: Code duplicated, block: B:179:0x023c  */
        /* JADX WARN: Code duplicated, block: B:182:0x0244  */
        /* JADX WARN: Code duplicated, block: B:183:0x024b  */
        /* JADX WARN: Code duplicated, block: B:186:0x0252  */
        /* JADX WARN: Code duplicated, block: B:189:0x0261  */
        /* JADX WARN: Code duplicated, block: B:191:0x0265 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:193:0x026f A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:194:0x0271 A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:197:0x027c A[ADDED_TO_REGION] */
        /* JADX WARN: Code duplicated, block: B:200:0x0283 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:201:0x0285  */
        /* JADX WARN: Code duplicated, block: B:202:0x028c  */
        /* JADX WARN: Code duplicated, block: B:204:0x0292  */
        /* JADX WARN: Code duplicated, block: B:207:0x02b1  */
        /* JADX WARN: Code duplicated, block: B:208:0x02b3  */
        /* JADX WARN: Code duplicated, block: B:215:0x02bf  */
        /* JADX WARN: Code duplicated, block: B:218:0x02c6  */
        /* JADX WARN: Code duplicated, block: B:36:0x0072  */
        /* JADX WARN: Code duplicated, block: B:79:0x00f8  */
        @SuppressLint({"WrongCall"})
        public final void b(s.d dVar, t.b.a aVar) {
            int iMakeMeasureSpec;
            int iMakeMeasureSpec2;
            s.e eVar;
            boolean z10;
            boolean z11;
            boolean z12;
            boolean z13;
            boolean z14;
            boolean z15;
            a aVar2;
            int i10;
            int measuredWidth;
            int measuredHeight;
            int i11;
            int iMin;
            int i12;
            int i13;
            int iMin2;
            int i14;
            int i15;
            int iMakeMeasureSpec3;
            boolean z16;
            int baseline;
            int i16;
            boolean z17;
            boolean z18;
            boolean z19;
            if (dVar == null) {
                return;
            }
            int iMakeMeasureSpec4 = 0;
            if (dVar.f14869i0 == 8 && !dVar.F) {
                aVar.f15274e = 0;
                aVar.f15275f = 0;
                aVar.f15276g = 0;
                return;
            }
            if (dVar.V == null) {
                return;
            }
            int i17 = aVar.f15270a;
            int i18 = aVar.f15271b;
            int i19 = aVar.f15272c;
            int i20 = aVar.f15273d;
            int i21 = this.f1575b + this.f1576c;
            int i22 = this.f1577d;
            View view = (View) dVar.f14867h0;
            int iA = q.g.a(i17);
            if (iA == 0) {
                iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(i19, 1073741824);
            } else if (iA == 1) {
                iMakeMeasureSpec4 = ViewGroup.getChildMeasureSpec(this.f1579f, i22, -2);
            } else if (iA == 2) {
                iMakeMeasureSpec4 = ViewGroup.getChildMeasureSpec(this.f1579f, i22, -2);
                boolean z20 = dVar.f14886r == 1;
                int i23 = aVar.f15279j;
                if (i23 == 1 || i23 == 2) {
                    if (aVar.f15279j == 2 || !z20 || (z20 && (view.getMeasuredHeight() == dVar.k())) || (view instanceof f) || dVar.B()) {
                        iMakeMeasureSpec4 = View.MeasureSpec.makeMeasureSpec(dVar.r(), 1073741824);
                    }
                }
            } else if (iA == 3) {
                int i24 = this.f1579f;
                s.c cVar = dVar.J;
                int i25 = cVar != null ? cVar.f14841g + 0 : 0;
                s.c cVar2 = dVar.L;
                if (cVar2 != null) {
                    i25 += cVar2.f14841g;
                }
                iMakeMeasureSpec4 = ViewGroup.getChildMeasureSpec(i24, i22 + i25, -1);
            }
            int iA2 = q.g.a(i18);
            if (iA2 == 0) {
                iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(i20, 1073741824);
            } else if (iA2 == 1) {
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1580g, i21, -2);
            } else {
                if (iA2 != 2) {
                    if (iA2 != 3) {
                        iMakeMeasureSpec2 = 0;
                    } else {
                        int i26 = this.f1580g;
                        int i27 = dVar.J != null ? dVar.K.f14841g + 0 : 0;
                        if (dVar.L != null) {
                            i27 += dVar.M.f14841g;
                        }
                        iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(i26, i21 + i27, -1);
                    }
                    eVar = (s.e) dVar.V;
                    if (eVar != null && androidx.emoji2.text.b.i(ConstraintLayout.this.f1522p, 256) && view.getMeasuredWidth() == dVar.r() && view.getMeasuredWidth() < eVar.r() && view.getMeasuredHeight() == dVar.k() && view.getMeasuredHeight() < eVar.k() && view.getBaseline() == dVar.f14858c0 && !dVar.A()) {
                        if (a(dVar.H, iMakeMeasureSpec4, dVar.r()) || !a(dVar.I, iMakeMeasureSpec2, dVar.k())) {
                            z19 = false;
                        } else {
                            z19 = true;
                        }
                        if (z19) {
                            aVar.f15274e = dVar.r();
                            aVar.f15275f = dVar.k();
                            aVar.f15276g = dVar.f14858c0;
                            return;
                        }
                    }
                    if (i17 == 3) {
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    if (i18 == 3) {
                        z11 = true;
                    } else {
                        z11 = false;
                    }
                    if (i18 != 4 || i18 == 1) {
                        z12 = true;
                    } else {
                        z12 = false;
                    }
                    if (i17 != 4 || i17 == 1) {
                        z13 = true;
                    } else {
                        z13 = false;
                    }
                    if (z10 || dVar.Y <= 0.0f) {
                        z14 = false;
                    } else {
                        z14 = true;
                    }
                    if (z11 || dVar.Y <= 0.0f) {
                        z15 = false;
                    } else {
                        z15 = true;
                    }
                    if (view == null) {
                        return;
                    }
                    aVar2 = (a) view.getLayoutParams();
                    i10 = aVar.f15279j;
                    if (i10 == 1 && i10 != 2 && z10 && dVar.f14886r == 0 && z11 && dVar.f14887s == 0) {
                        i16 = -1;
                        baseline = 0;
                        z16 = false;
                        iMin = 0;
                        iMin2 = 0;
                    } else {
                        if ((view instanceof g) || !(dVar instanceof i)) {
                            view.measure(iMakeMeasureSpec4, iMakeMeasureSpec2);
                        }
                        dVar.H = iMakeMeasureSpec4;
                        dVar.I = iMakeMeasureSpec2;
                        dVar.f14864g = false;
                        measuredWidth = view.getMeasuredWidth();
                        measuredHeight = view.getMeasuredHeight();
                        int baseline2 = view.getBaseline();
                        i11 = dVar.f14889u;
                        if (i11 > 0) {
                            iMin = Math.max(i11, measuredWidth);
                        } else {
                            iMin = measuredWidth;
                        }
                        i12 = dVar.f14890v;
                        if (i12 > 0) {
                            iMin = Math.min(i12, iMin);
                        }
                        i13 = dVar.f14892x;
                        if (i13 > 0) {
                            iMin2 = Math.max(i13, measuredHeight);
                        } else {
                            iMin2 = measuredHeight;
                        }
                        i14 = dVar.f14893y;
                        if (i14 > 0) {
                            iMin2 = Math.min(i14, iMin2);
                        }
                        if (!androidx.emoji2.text.b.i(ConstraintLayout.this.f1522p, 1)) {
                            if (!z14 && z12) {
                                iMin = (int) ((iMin2 * dVar.Y) + 0.5f);
                            } else if (z15 && z13) {
                                iMin2 = (int) ((iMin / dVar.Y) + 0.5f);
                            }
                        }
                        if (measuredWidth == iMin || measuredHeight != iMin2) {
                            if (measuredWidth != iMin) {
                                i15 = 1073741824;
                                iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                            } else {
                                i15 = 1073741824;
                            }
                            if (measuredHeight != iMin2) {
                                iMakeMeasureSpec3 = iMakeMeasureSpec4;
                                iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin2, i15);
                            }
                            iMakeMeasureSpec3 = iMakeMeasureSpec4;
                            view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                            dVar.H = iMakeMeasureSpec3;
                            dVar.I = iMakeMeasureSpec2;
                            z16 = false;
                            dVar.f14864g = false;
                            int measuredWidth2 = view.getMeasuredWidth();
                            int measuredHeight2 = view.getMeasuredHeight();
                            baseline = view.getBaseline();
                            iMin = measuredWidth2;
                            iMin2 = measuredHeight2;
                            i16 = -1;
                        } else {
                            baseline = baseline2;
                            i16 = -1;
                            z16 = false;
                        }
                    }
                    if (baseline != i16) {
                        z17 = true;
                    } else {
                        z17 = z16;
                    }
                    if (iMin == aVar.f15272c || iMin2 != aVar.f15273d) {
                        z18 = true;
                    } else {
                        z18 = z16;
                    }
                    aVar.f15278i = z18;
                    if (aVar2.f1536c0) {
                        z17 = true;
                    }
                    if (z17 && baseline != -1 && dVar.f14858c0 != baseline) {
                        aVar.f15278i = true;
                    }
                    aVar.f15274e = iMin;
                    aVar.f15275f = iMin2;
                    aVar.f15277h = z17;
                    aVar.f15276g = baseline;
                }
                iMakeMeasureSpec = ViewGroup.getChildMeasureSpec(this.f1580g, i21, -2);
                boolean z21 = dVar.f14887s == 1;
                int i28 = aVar.f15279j;
                if (i28 == 1 || i28 == 2) {
                    if (aVar.f15279j == 2 || !z21 || (z21 && (view.getMeasuredWidth() == dVar.r())) || (view instanceof f) || dVar.C()) {
                        iMakeMeasureSpec = View.MeasureSpec.makeMeasureSpec(dVar.k(), 1073741824);
                    }
                }
            }
            iMakeMeasureSpec2 = iMakeMeasureSpec;
            eVar = (s.e) dVar.V;
            if (eVar != null) {
                if (a(dVar.H, iMakeMeasureSpec4, dVar.r())) {
                    z19 = false;
                } else {
                    z19 = false;
                }
                if (z19) {
                    aVar.f15274e = dVar.r();
                    aVar.f15275f = dVar.k();
                    aVar.f15276g = dVar.f14858c0;
                    return;
                }
            }
            if (i17 == 3) {
                z10 = true;
            } else {
                z10 = false;
            }
            if (i18 == 3) {
                z11 = true;
            } else {
                z11 = false;
            }
            if (i18 != 4) {
                z12 = true;
            } else {
                z12 = true;
            }
            if (i17 != 4) {
                z13 = true;
            } else {
                z13 = true;
            }
            if (z10) {
                z14 = false;
            } else {
                z14 = false;
            }
            if (z11) {
                z15 = false;
            } else {
                z15 = false;
            }
            if (view == null) {
                return;
            }
            aVar2 = (a) view.getLayoutParams();
            i10 = aVar.f15279j;
            if (i10 == 1) {
                if (view instanceof g) {
                    view.measure(iMakeMeasureSpec4, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec4, iMakeMeasureSpec2);
                }
                dVar.H = iMakeMeasureSpec4;
                dVar.I = iMakeMeasureSpec2;
                dVar.f14864g = false;
                measuredWidth = view.getMeasuredWidth();
                measuredHeight = view.getMeasuredHeight();
                int baseline3 = view.getBaseline();
                i11 = dVar.f14889u;
                if (i11 > 0) {
                    iMin = Math.max(i11, measuredWidth);
                } else {
                    iMin = measuredWidth;
                }
                i12 = dVar.f14890v;
                if (i12 > 0) {
                    iMin = Math.min(i12, iMin);
                }
                i13 = dVar.f14892x;
                if (i13 > 0) {
                    iMin2 = Math.max(i13, measuredHeight);
                } else {
                    iMin2 = measuredHeight;
                }
                i14 = dVar.f14893y;
                if (i14 > 0) {
                    iMin2 = Math.min(i14, iMin2);
                }
                if (!androidx.emoji2.text.b.i(ConstraintLayout.this.f1522p, 1)) {
                    if (!z14) {
                        if (z15) {
                            iMin2 = (int) ((iMin / dVar.Y) + 0.5f);
                        }
                    } else if (z15) {
                        iMin2 = (int) ((iMin / dVar.Y) + 0.5f);
                    }
                }
                if (measuredWidth == iMin) {
                    if (measuredWidth != iMin) {
                        i15 = 1073741824;
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                    } else {
                        i15 = 1073741824;
                    }
                    if (measuredHeight != iMin2) {
                        iMakeMeasureSpec3 = iMakeMeasureSpec4;
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin2, i15);
                    }
                    iMakeMeasureSpec3 = iMakeMeasureSpec4;
                    view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    dVar.H = iMakeMeasureSpec3;
                    dVar.I = iMakeMeasureSpec2;
                    z16 = false;
                    dVar.f14864g = false;
                    int measuredWidth3 = view.getMeasuredWidth();
                    int measuredHeight3 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    iMin = measuredWidth3;
                    iMin2 = measuredHeight3;
                    i16 = -1;
                } else {
                    if (measuredWidth != iMin) {
                        i15 = 1073741824;
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                    } else {
                        i15 = 1073741824;
                    }
                    if (measuredHeight != iMin2) {
                        iMakeMeasureSpec3 = iMakeMeasureSpec4;
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin2, i15);
                    }
                    iMakeMeasureSpec3 = iMakeMeasureSpec4;
                    view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    dVar.H = iMakeMeasureSpec3;
                    dVar.I = iMakeMeasureSpec2;
                    z16 = false;
                    dVar.f14864g = false;
                    int measuredWidth4 = view.getMeasuredWidth();
                    int measuredHeight4 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    iMin = measuredWidth4;
                    iMin2 = measuredHeight4;
                    i16 = -1;
                }
            } else {
                if (view instanceof g) {
                    view.measure(iMakeMeasureSpec4, iMakeMeasureSpec2);
                } else {
                    view.measure(iMakeMeasureSpec4, iMakeMeasureSpec2);
                }
                dVar.H = iMakeMeasureSpec4;
                dVar.I = iMakeMeasureSpec2;
                dVar.f14864g = false;
                measuredWidth = view.getMeasuredWidth();
                measuredHeight = view.getMeasuredHeight();
                int baseline4 = view.getBaseline();
                i11 = dVar.f14889u;
                if (i11 > 0) {
                    iMin = Math.max(i11, measuredWidth);
                } else {
                    iMin = measuredWidth;
                }
                i12 = dVar.f14890v;
                if (i12 > 0) {
                    iMin = Math.min(i12, iMin);
                }
                i13 = dVar.f14892x;
                if (i13 > 0) {
                    iMin2 = Math.max(i13, measuredHeight);
                } else {
                    iMin2 = measuredHeight;
                }
                i14 = dVar.f14893y;
                if (i14 > 0) {
                    iMin2 = Math.min(i14, iMin2);
                }
                if (!androidx.emoji2.text.b.i(ConstraintLayout.this.f1522p, 1)) {
                    if (!z14) {
                        if (z15) {
                            iMin2 = (int) ((iMin / dVar.Y) + 0.5f);
                        }
                    } else if (z15) {
                        iMin2 = (int) ((iMin / dVar.Y) + 0.5f);
                    }
                }
                if (measuredWidth == iMin) {
                    if (measuredWidth != iMin) {
                        i15 = 1073741824;
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                    } else {
                        i15 = 1073741824;
                    }
                    if (measuredHeight != iMin2) {
                        iMakeMeasureSpec3 = iMakeMeasureSpec4;
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin2, i15);
                    }
                    iMakeMeasureSpec3 = iMakeMeasureSpec4;
                    view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    dVar.H = iMakeMeasureSpec3;
                    dVar.I = iMakeMeasureSpec2;
                    z16 = false;
                    dVar.f14864g = false;
                    int measuredWidth5 = view.getMeasuredWidth();
                    int measuredHeight5 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    iMin = measuredWidth5;
                    iMin2 = measuredHeight5;
                    i16 = -1;
                } else {
                    if (measuredWidth != iMin) {
                        i15 = 1073741824;
                        iMakeMeasureSpec3 = View.MeasureSpec.makeMeasureSpec(iMin, 1073741824);
                    } else {
                        i15 = 1073741824;
                    }
                    if (measuredHeight != iMin2) {
                        iMakeMeasureSpec3 = iMakeMeasureSpec4;
                        iMakeMeasureSpec2 = View.MeasureSpec.makeMeasureSpec(iMin2, i15);
                    }
                    iMakeMeasureSpec3 = iMakeMeasureSpec4;
                    view.measure(iMakeMeasureSpec3, iMakeMeasureSpec2);
                    dVar.H = iMakeMeasureSpec3;
                    dVar.I = iMakeMeasureSpec2;
                    z16 = false;
                    dVar.f14864g = false;
                    int measuredWidth6 = view.getMeasuredWidth();
                    int measuredHeight6 = view.getMeasuredHeight();
                    baseline = view.getBaseline();
                    iMin = measuredWidth6;
                    iMin2 = measuredHeight6;
                    i16 = -1;
                }
            }
            if (baseline != i16) {
                z17 = true;
            } else {
                z17 = z16;
            }
            if (iMin == aVar.f15272c) {
                z18 = true;
            } else {
                z18 = true;
            }
            aVar.f15278i = z18;
            if (aVar2.f1536c0) {
                z17 = true;
            }
            if (z17) {
                aVar.f15278i = true;
            }
            aVar.f15274e = iMin;
            aVar.f15275f = iMin2;
            aVar.f15277h = z17;
            aVar.f15276g = baseline;
        }
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet) {
        super(context, attributeSet);
        this.f1514h = new SparseArray<>();
        this.f1515i = new ArrayList<>(4);
        this.f1516j = new s.e();
        this.f1517k = 0;
        this.f1518l = 0;
        this.f1519m = Integer.MAX_VALUE;
        this.f1520n = Integer.MAX_VALUE;
        this.f1521o = true;
        this.f1522p = 257;
        this.f1523q = null;
        this.f1524r = null;
        this.f1525s = -1;
        this.f1526t = new HashMap<>();
        this.f1527u = new SparseArray<>();
        this.f1528v = new b(this);
        this.f1529w = 0;
        this.f1530x = 0;
        f(attributeSet, 0);
    }

    private int getPaddingWidth() {
        int iMax = Math.max(0, getPaddingRight()) + Math.max(0, getPaddingLeft());
        int iMax2 = Math.max(0, getPaddingEnd()) + Math.max(0, getPaddingStart());
        return iMax2 > 0 ? iMax2 : iMax;
    }

    public static v.b getSharedValues() {
        if (f1513y == null) {
            f1513y = new v.b();
        }
        return f1513y;
    }

    @Override // android.view.ViewGroup
    /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
    public final a generateDefaultLayoutParams() {
        return new a();
    }

    public final Object c(Object obj) {
        if (!(obj instanceof String)) {
            return null;
        }
        String str = (String) obj;
        HashMap<String, Integer> map = this.f1526t;
        if (map == null || !map.containsKey(str)) {
            return null;
        }
        return this.f1526t.get(str);
    }

    @Override // android.view.ViewGroup
    public final boolean checkLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return layoutParams instanceof a;
    }

    public final View d(int i10) {
        return this.f1514h.get(i10);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void dispatchDraw(Canvas canvas) {
        Object tag;
        int size;
        ArrayList<androidx.constraintlayout.widget.b> arrayList = this.f1515i;
        if (arrayList != null && (size = arrayList.size()) > 0) {
            for (int i10 = 0; i10 < size; i10++) {
                Objects.requireNonNull(this.f1515i.get(i10));
            }
        }
        super.dispatchDraw(canvas);
        if (isInEditMode()) {
            float width = getWidth();
            float height = getHeight();
            int childCount = getChildCount();
            for (int i11 = 0; i11 < childCount; i11++) {
                View childAt = getChildAt(i11);
                if (childAt.getVisibility() != 8 && (tag = childAt.getTag()) != null && (tag instanceof String)) {
                    String[] strArrSplit = ((String) tag).split(",");
                    if (strArrSplit.length == 4) {
                        int i12 = Integer.parseInt(strArrSplit[0]);
                        int i13 = Integer.parseInt(strArrSplit[1]);
                        int i14 = Integer.parseInt(strArrSplit[2]);
                        int i15 = (int) ((i12 / 1080.0f) * width);
                        int i16 = (int) ((i13 / 1920.0f) * height);
                        int i17 = (int) ((Integer.parseInt(strArrSplit[3]) / 1920.0f) * height);
                        Paint paint = new Paint();
                        paint.setColor(-65536);
                        float f10 = i15;
                        float f11 = i16;
                        float f12 = i15 + ((int) ((i14 / 1080.0f) * width));
                        canvas.drawLine(f10, f11, f12, f11, paint);
                        float f13 = i16 + i17;
                        canvas.drawLine(f12, f11, f12, f13, paint);
                        canvas.drawLine(f12, f13, f10, f13, paint);
                        canvas.drawLine(f10, f13, f10, f11, paint);
                        paint.setColor(-16711936);
                        canvas.drawLine(f10, f11, f12, f13, paint);
                        canvas.drawLine(f10, f13, f12, f11, paint);
                    }
                }
            }
        }
    }

    public final s.d e(View view) {
        if (view == this) {
            return this.f1516j;
        }
        if (view == null) {
            return null;
        }
        if (view.getLayoutParams() instanceof a) {
            return ((a) view.getLayoutParams()).f1563q0;
        }
        view.setLayoutParams(generateLayoutParams(view.getLayoutParams()));
        if (view.getLayoutParams() instanceof a) {
            return ((a) view.getLayoutParams()).f1563q0;
        }
        return null;
    }

    public final void f(AttributeSet attributeSet, int i10) {
        s.e eVar = this.f1516j;
        eVar.f14867h0 = this;
        b bVar = this.f1528v;
        eVar.f14898v0 = bVar;
        eVar.f14896t0.f15287f = bVar;
        this.f1514h.put(getId(), this);
        this.f1523q = null;
        if (attributeSet != null) {
            TypedArray typedArrayObtainStyledAttributes = getContext().obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout, i10, 0);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i11 = 0; i11 < indexCount; i11++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i11);
                if (index == R.styleable.ConstraintLayout_Layout_android_minWidth) {
                    this.f1517k = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1517k);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_minHeight) {
                    this.f1518l = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1518l);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxWidth) {
                    this.f1519m = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1519m);
                } else if (index == R.styleable.ConstraintLayout_Layout_android_maxHeight) {
                    this.f1520n = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1520n);
                } else if (index == R.styleable.ConstraintLayout_Layout_layout_optimizationLevel) {
                    this.f1522p = typedArrayObtainStyledAttributes.getInt(index, this.f1522p);
                } else if (index == R.styleable.ConstraintLayout_Layout_layoutDescription) {
                    int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    if (resourceId != 0) {
                        try {
                            k(resourceId);
                        } catch (Resources.NotFoundException unused) {
                            this.f1524r = null;
                        }
                    }
                } else if (index == R.styleable.ConstraintLayout_Layout_constraintSet) {
                    int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, 0);
                    try {
                        d dVar = new d();
                        this.f1523q = dVar;
                        dVar.f(getContext(), resourceId2);
                    } catch (Resources.NotFoundException unused2) {
                        this.f1523q = null;
                    }
                    this.f1525s = resourceId2;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
        }
        this.f1516j.e0(this.f1522p);
    }

    @Override // android.view.View
    public final void forceLayout() {
        this.f1521o = true;
        super.forceLayout();
    }

    public final boolean g() {
        return ((getContext().getApplicationInfo().flags & 4194304) != 0) && 1 == getLayoutDirection();
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(AttributeSet attributeSet) {
        return new a(getContext(), attributeSet);
    }

    public int getMaxHeight() {
        return this.f1520n;
    }

    public int getMaxWidth() {
        return this.f1519m;
    }

    public int getMinHeight() {
        return this.f1518l;
    }

    public int getMinWidth() {
        return this.f1517k;
    }

    public int getOptimizationLevel() {
        return this.f1516j.E0;
    }

    public String getSceneString() {
        int id2;
        StringBuilder sb2 = new StringBuilder();
        if (this.f1516j.f14870j == null) {
            int id3 = getId();
            if (id3 != -1) {
                this.f1516j.f14870j = getContext().getResources().getResourceEntryName(id3);
            } else {
                this.f1516j.f14870j = "parent";
            }
        }
        s.e eVar = this.f1516j;
        if (eVar.f14871j0 == null) {
            eVar.f14871j0 = eVar.f14870j;
            StringBuilder sbC = a0.b.c(" setDebugName ");
            sbC.append(this.f1516j.f14871j0);
            Log.v("ConstraintLayout", sbC.toString());
        }
        for (s.d dVar : this.f1516j.f14911r0) {
            View view = (View) dVar.f14867h0;
            if (view != null) {
                if (dVar.f14870j == null && (id2 = view.getId()) != -1) {
                    dVar.f14870j = getContext().getResources().getResourceEntryName(id2);
                }
                if (dVar.f14871j0 == null) {
                    dVar.f14871j0 = dVar.f14870j;
                    StringBuilder sbC2 = a0.b.c(" setDebugName ");
                    sbC2.append(dVar.f14871j0);
                    Log.v("ConstraintLayout", sbC2.toString());
                }
            }
        }
        this.f1516j.o(sb2);
        return sb2.toString();
    }

    public void k(int i10) {
        this.f1524r = new c(getContext(), this, i10);
    }

    public final void l(int i10, int i11, int i12, int i13, boolean z10, boolean z11) {
        b bVar = this.f1528v;
        int i14 = bVar.f1578e;
        int iResolveSizeAndState = View.resolveSizeAndState(i12 + bVar.f1577d, i10, 0);
        int iResolveSizeAndState2 = View.resolveSizeAndState(i13 + i14, i11, 0) & 16777215;
        int iMin = Math.min(this.f1519m, iResolveSizeAndState & 16777215);
        int iMin2 = Math.min(this.f1520n, iResolveSizeAndState2);
        if (z10) {
            iMin |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        if (z11) {
            iMin2 |= Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE;
        }
        setMeasuredDimension(iMin, iMin2);
    }

    @Override // android.view.ViewGroup, android.view.View
    public void onLayout(boolean z10, int i10, int i11, int i12, int i13) {
        View content;
        int childCount = getChildCount();
        boolean zIsInEditMode = isInEditMode();
        for (int i14 = 0; i14 < childCount; i14++) {
            View childAt = getChildAt(i14);
            a aVar = (a) childAt.getLayoutParams();
            s.d dVar = aVar.f1563q0;
            if ((childAt.getVisibility() != 8 || aVar.d0 || aVar.f1539e0 || zIsInEditMode) && !aVar.f1541f0) {
                int iS = dVar.s();
                int iT = dVar.t();
                int iR = dVar.r() + iS;
                int iK = dVar.k() + iT;
                childAt.layout(iS, iT, iR, iK);
                if ((childAt instanceof f) && (content = ((f) childAt).getContent()) != null) {
                    content.setVisibility(0);
                    content.layout(iS, iT, iR, iK);
                }
            }
        }
        int size = this.f1515i.size();
        if (size > 0) {
            for (int i15 = 0; i15 < size; i15++) {
                Objects.requireNonNull(this.f1515i.get(i15));
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:101:0x01ee A[PHI: r5
      0x01ee: PHI (r5v4 boolean) = (r5v3 boolean), (r5v47 boolean) binds: [B:66:0x018d, B:407:0x01ee] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:103:0x01f4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:104:0x01f6 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:109:0x01ff  */
    /* JADX WARN: Code duplicated, block: B:111:0x0219  */
    /* JADX WARN: Code duplicated, block: B:115:0x0227  */
    /* JADX WARN: Code duplicated, block: B:119:0x0235 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:201:0x03ff  */
    /* JADX WARN: Code duplicated, block: B:203:0x040f  */
    /* JADX WARN: Code duplicated, block: B:206:0x041d A[LOOP:12: B:204:0x0417->B:206:0x041d, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:208:0x0466  */
    /* JADX WARN: Code duplicated, block: B:211:0x0486  */
    /* JADX WARN: Code duplicated, block: B:212:0x0491  */
    /* JADX WARN: Code duplicated, block: B:214:0x0496  */
    /* JADX WARN: Code duplicated, block: B:216:0x049f A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:217:0x04a1  */
    /* JADX WARN: Code duplicated, block: B:218:0x04a3  */
    /* JADX WARN: Code duplicated, block: B:220:0x04a6  */
    /* JADX WARN: Code duplicated, block: B:221:0x04a8  */
    /* JADX WARN: Code duplicated, block: B:223:0x04ad  */
    /* JADX WARN: Code duplicated, block: B:225:0x04bb  */
    /* JADX WARN: Code duplicated, block: B:229:0x04c3  */
    /* JADX WARN: Code duplicated, block: B:231:0x04c9  */
    /* JADX WARN: Code duplicated, block: B:233:0x04da  */
    /* JADX WARN: Code duplicated, block: B:236:0x04e7  */
    /* JADX WARN: Code duplicated, block: B:251:0x0507  */
    /* JADX WARN: Code duplicated, block: B:254:0x0517  */
    /* JADX WARN: Code duplicated, block: B:260:0x0523  */
    /* JADX WARN: Code duplicated, block: B:262:0x0526  */
    /* JADX WARN: Code duplicated, block: B:286:0x055c  */
    /* JADX WARN: Code duplicated, block: B:290:0x0561  */
    /* JADX WARN: Code duplicated, block: B:294:0x0574  */
    /* JADX WARN: Code duplicated, block: B:296:0x057e  */
    /* JADX WARN: Code duplicated, block: B:299:0x0585  */
    /* JADX WARN: Code duplicated, block: B:301:0x05a1  */
    /* JADX WARN: Code duplicated, block: B:304:0x05b0  */
    /* JADX WARN: Code duplicated, block: B:309:0x05ca  */
    /* JADX WARN: Code duplicated, block: B:311:0x05cd A[LOOP:6: B:310:0x05cb->B:311:0x05cd, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:314:0x05eb  */
    /* JADX WARN: Code duplicated, block: B:316:0x05f0  */
    /* JADX WARN: Code duplicated, block: B:318:0x05f7  */
    /* JADX WARN: Code duplicated, block: B:319:0x05f9  */
    /* JADX WARN: Code duplicated, block: B:322:0x05ff  */
    /* JADX WARN: Code duplicated, block: B:323:0x0601  */
    /* JADX WARN: Code duplicated, block: B:326:0x0620  */
    /* JADX WARN: Code duplicated, block: B:328:0x062c  */
    /* JADX WARN: Code duplicated, block: B:329:0x0637  */
    /* JADX WARN: Code duplicated, block: B:331:0x0656  */
    /* JADX WARN: Code duplicated, block: B:333:0x065b  */
    /* JADX WARN: Code duplicated, block: B:336:0x0676  */
    /* JADX WARN: Code duplicated, block: B:338:0x067b  */
    /* JADX WARN: Code duplicated, block: B:340:0x0682  */
    /* JADX WARN: Code duplicated, block: B:342:0x0687  */
    /* JADX WARN: Code duplicated, block: B:345:0x06a2  */
    /* JADX WARN: Code duplicated, block: B:347:0x06a6  */
    /* JADX WARN: Code duplicated, block: B:352:0x06cd  */
    /* JADX WARN: Code duplicated, block: B:354:0x06d6  */
    /* JADX WARN: Code duplicated, block: B:356:0x06e4  */
    /* JADX WARN: Code duplicated, block: B:358:0x06e8  */
    /* JADX WARN: Code duplicated, block: B:364:0x06fa A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:372:0x0711 A[PHI: r20
      0x0711: PHI (r20v3 s.e) = (r20v1 s.e), (r20v1 s.e), (r20v1 s.e), (r20v4 s.e) binds: [B:362:0x06f7, B:371:0x070f, B:368:0x070a, B:360:0x06ec] A[DONT_GENERATE, DONT_INLINE]] */
    /* JADX WARN: Code duplicated, block: B:375:0x0729  */
    /* JADX WARN: Code duplicated, block: B:378:0x073b  */
    /* JADX WARN: Code duplicated, block: B:380:0x0740  */
    /* JADX WARN: Code duplicated, block: B:385:0x075a  */
    /* JADX WARN: Code duplicated, block: B:387:0x075f  */
    /* JADX WARN: Code duplicated, block: B:393:0x077b  */
    /* JADX WARN: Code duplicated, block: B:399:0x079b A[LOOP:8: B:351:0x06cb->B:399:0x079b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:39:0x00e2 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:401:0x07b6  */
    /* JADX WARN: Code duplicated, block: B:407:0x01ee A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:40:0x00e4  */
    /* JADX WARN: Code duplicated, block: B:42:0x00e8  */
    /* JADX WARN: Code duplicated, block: B:435:0x0565 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:438:0x05bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:439:0x05bd A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:43:0x00eb  */
    /* JADX WARN: Code duplicated, block: B:444:0x07b3 A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:449:0x0780 A[ADDED_TO_REGION, REMOVE, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x00f5 A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:45:0x00f7  */
    /* JADX WARN: Code duplicated, block: B:46:0x0101  */
    /* JADX WARN: Code duplicated, block: B:47:0x0103  */
    /* JADX WARN: Code duplicated, block: B:49:0x0106  */
    /* JADX WARN: Code duplicated, block: B:50:0x010d  */
    /* JADX WARN: Code duplicated, block: B:54:0x0115  */
    /* JADX WARN: Code duplicated, block: B:58:0x0121  */
    /* JADX WARN: Code duplicated, block: B:61:0x0183  */
    /* JADX WARN: Code duplicated, block: B:65:0x018c  */
    /* JADX WARN: Code duplicated, block: B:67:0x018f  */
    /* JADX WARN: Code duplicated, block: B:69:0x0192  */
    /* JADX WARN: Code duplicated, block: B:71:0x01a4  */
    /* JADX WARN: Code duplicated, block: B:72:0x01a6  */
    /* JADX WARN: Code duplicated, block: B:75:0x01ad  */
    /* JADX WARN: Code duplicated, block: B:76:0x01af  */
    /* JADX WARN: Code duplicated, block: B:78:0x01b2 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:82:0x01bd  */
    /* JADX WARN: Code duplicated, block: B:85:0x01c4 A[ADDED_TO_REGION] */
    /* JADX WARN: Code duplicated, block: B:87:0x01c7  */
    @Override // android.view.View
    public void onMeasure(int i10, int i11) {
        int iMax;
        int iMin;
        int i12;
        int i13;
        int iMax2;
        int i14;
        int i15;
        t.b bVar;
        s.c.a aVar;
        s.c.a aVar2;
        t.b.InterfaceC0261b interfaceC0261b;
        int size;
        int iR;
        int iK;
        boolean zI;
        boolean z10;
        boolean z11;
        int i16;
        boolean z12;
        s.c.a aVar3;
        boolean z13;
        int i17;
        boolean zA0;
        int i18;
        int i19;
        int size2;
        int i20;
        int i21;
        int[] iArr;
        boolean z14;
        boolean z15;
        int iMax3;
        int i22;
        boolean z16;
        s.c.a aVar4;
        s.c.a aVar5;
        t.b.InterfaceC0261b interfaceC0261b2;
        int i23;
        int i24;
        int i25;
        int i26;
        int i27;
        int iMax4;
        int iMax5;
        boolean zA;
        s.e eVar;
        t.b.InterfaceC0261b interfaceC0261b3;
        int i28;
        int i29;
        int i30;
        s.d dVar;
        s.e eVar2;
        int iR2;
        int iK2;
        int i31;
        int i32;
        int iR3;
        t.b.InterfaceC0261b interfaceC0261b4;
        int iK3;
        s.d dVar2;
        int iR4;
        int iK4;
        t.b.InterfaceC0261b interfaceC0261b5;
        boolean zA2;
        int iR5;
        int iK5;
        s.c.a aVar6;
        int i33;
        boolean z17;
        s.c.a aVar7;
        int size3;
        t.b.InterfaceC0261b interfaceC0261b6;
        int i34;
        b bVar2;
        int childCount;
        int i35;
        int size4;
        int i36;
        View childAt;
        f fVar;
        a aVar8;
        s.d dVar3;
        s.d dVar4;
        s.d dVar5;
        s.d dVar6;
        int iJ;
        boolean z18;
        l lVar;
        n nVar;
        int iMin2;
        int iMin3;
        t.e eVar3;
        int i37;
        int i38;
        int i39;
        boolean z19;
        boolean z20;
        int i40;
        boolean z21;
        boolean z22;
        int i41;
        s.d dVar7;
        boolean z23;
        int[] iArr2;
        boolean z24;
        boolean z25;
        boolean z26;
        if (!this.f1521o) {
            int childCount2 = getChildCount();
            for (int i42 = 0; i42 < childCount2; i42++) {
                if (getChildAt(i42).isLayoutRequested()) {
                    this.f1521o = true;
                    break;
                }
            }
        }
        this.f1529w = i10;
        this.f1530x = i11;
        this.f1516j.f14899w0 = g();
        if (this.f1521o) {
            this.f1521o = false;
            if (r()) {
                s.e eVar4 = this.f1516j;
                eVar4.f14895s0.c(eVar4);
            }
        }
        s.e eVar5 = this.f1516j;
        int i43 = this.f1522p;
        int mode = View.MeasureSpec.getMode(i10);
        int size5 = View.MeasureSpec.getSize(i10);
        int mode2 = View.MeasureSpec.getMode(i11);
        int size6 = View.MeasureSpec.getSize(i11);
        int iMax6 = Math.max(0, getPaddingTop());
        int iMax7 = Math.max(0, getPaddingBottom());
        int i44 = iMax6 + iMax7;
        int paddingWidth = getPaddingWidth();
        b bVar3 = this.f1528v;
        bVar3.f1575b = iMax6;
        bVar3.f1576c = iMax7;
        bVar3.f1577d = paddingWidth;
        bVar3.f1578e = i44;
        bVar3.f1579f = i10;
        bVar3.f1580g = i11;
        int iMax8 = Math.max(0, getPaddingStart());
        int iMax9 = Math.max(0, getPaddingEnd());
        if (iMax8 <= 0 && iMax9 <= 0) {
            iMax8 = Math.max(0, getPaddingLeft());
        } else if (g()) {
            iMax8 = iMax9;
        }
        int i45 = size5 - paddingWidth;
        int i46 = size6 - i44;
        b bVar4 = this.f1528v;
        int i47 = bVar4.f1578e;
        int i48 = bVar4.f1577d;
        int childCount3 = getChildCount();
        if (mode != Integer.MIN_VALUE) {
            if (mode == 0) {
                iMax = childCount3 == 0 ? Math.max(0, this.f1517k) : 0;
            } else if (mode != 1073741824) {
                i12 = 1;
                iMin = 0;
                i13 = Integer.MIN_VALUE;
            } else {
                iMin = Math.min(this.f1519m - i48, i45);
                i13 = Integer.MIN_VALUE;
                i12 = 1;
            }
            if (mode2 != i13) {
                if (mode2 != 0) {
                    if (mode2 != 1073741824) {
                        i14 = 1;
                        iMax2 = 0;
                    } else {
                        iMax2 = Math.min(this.f1520n - i47, i46);
                        i14 = 1;
                    }
                } else if (childCount3 == 0) {
                    iMax2 = Math.max(0, this.f1518l);
                } else {
                    iMax2 = 0;
                }
                if (iMin == eVar5.r() || iMax2 != eVar5.k()) {
                    eVar5.f14896t0.f15284c = true;
                    i15 = 0;
                } else {
                    i15 = 0;
                }
                eVar5.f14854a0 = i15;
                eVar5.f14856b0 = i15;
                int i49 = this.f1519m - i48;
                int[] iArr3 = eVar5.C;
                iArr3[i15] = i49;
                iArr3[1] = this.f1520n - i47;
                eVar5.O(i15);
                eVar5.N(i15);
                eVar5.M(i12);
                eVar5.Q(iMin);
                eVar5.P(i14);
                eVar5.L(iMax2);
                eVar5.O(this.f1517k - i48);
                eVar5.N(this.f1518l - i47);
                eVar5.f14901y0 = iMax8;
                eVar5.f14902z0 = iMax6;
                bVar = eVar5.f14895s0;
                Objects.requireNonNull(bVar);
                aVar = s.c.a.BOTTOM;
                aVar2 = s.c.a.RIGHT;
                interfaceC0261b = eVar5.f14898v0;
                size = eVar5.f14911r0.size();
                iR = eVar5.r();
                iK = eVar5.k();
                zI = androidx.emoji2.text.b.i(i43, 128);
                if (!zI || androidx.emoji2.text.b.i(i43, 64)) {
                    z10 = true;
                } else {
                    z10 = false;
                }
                if (z10) {
                    i41 = 0;
                    while (true) {
                        if (i41 < size) {
                            dVar7 = eVar5.f14911r0.get(i41);
                            z23 = z10;
                            iArr2 = dVar7.U;
                            if (iArr2[0] == 3) {
                                z24 = true;
                            } else {
                                z24 = false;
                            }
                            if (iArr2[1] == 3) {
                                z25 = true;
                            } else {
                                z25 = false;
                            }
                            if (z24 || !z25 || dVar7.Y <= 0.0f) {
                                z26 = false;
                            } else {
                                z26 = true;
                            }
                            if ((dVar7.y() || !z26) && !((dVar7.z() && z26) || (dVar7 instanceof i) || dVar7.y() || dVar7.z())) {
                                i41++;
                                z10 = z23;
                            } else {
                                i16 = 1073741824;
                                z11 = false;
                            }
                        } else {
                            z11 = z10;
                            i16 = 1073741824;
                        }
                    }
                } else {
                    z11 = z10;
                    i16 = 1073741824;
                }
                z12 = z11 & ((mode != i16 && mode2 == i16) || zI);
                if (z12) {
                    iMin2 = Math.min(eVar5.C[0], i45);
                    iMin3 = Math.min(eVar5.C[1], i46);
                    if (mode == 1073741824 && eVar5.r() != iMin2) {
                        eVar5.Q(iMin2);
                        eVar5.b0();
                    }
                    if (mode2 == 1073741824 && eVar5.k() != iMin3) {
                        eVar5.L(iMin3);
                        eVar5.b0();
                    }
                    if (mode == 1073741824 || mode2 != 1073741824) {
                        aVar3 = aVar;
                        aVar2 = aVar2;
                        z13 = z12;
                        interfaceC0261b = interfaceC0261b;
                        i17 = iR;
                        eVar3 = eVar5.f14896t0;
                        if (eVar3.f15283b) {
                            for (s.d dVar8 : eVar3.f15282a.f14911r0) {
                                dVar8.g();
                                dVar8.f14853a = false;
                                l lVar2 = dVar8.f14859d;
                                lVar2.f15319e.f15299j = false;
                                lVar2.f15321g = false;
                                lVar2.n();
                                n nVar2 = dVar8.f14860e;
                                nVar2.f15319e.f15299j = false;
                                nVar2.f15321g = false;
                                nVar2.m();
                            }
                            i37 = 0;
                            eVar3.f15282a.g();
                            s.e eVar6 = eVar3.f15282a;
                            eVar6.f14853a = false;
                            l lVar3 = eVar6.f14859d;
                            lVar3.f15319e.f15299j = false;
                            lVar3.f15321g = false;
                            lVar3.n();
                            n nVar3 = eVar3.f15282a.f14860e;
                            nVar3.f15319e.f15299j = false;
                            nVar3.f15321g = false;
                            nVar3.m();
                            eVar3.c();
                        } else {
                            i37 = 0;
                        }
                        eVar3.b(eVar3.f15285d);
                        s.e eVar7 = eVar3.f15282a;
                        eVar7.f14854a0 = i37;
                        eVar7.f14856b0 = i37;
                        eVar7.f14859d.f15322h.d(i37);
                        eVar3.f15282a.f14860e.f15322h.d(i37);
                        i38 = 1073741824;
                        if (mode == 1073741824) {
                            i39 = 1;
                            boolean zA1 = eVar5.a0(zI, i37) & true;
                            i18 = 1;
                            zA0 = zA1;
                        } else {
                            i39 = 1;
                            zA0 = true;
                            i18 = 0;
                        }
                        if (mode2 == 1073741824) {
                            zA0 &= eVar5.a0(zI, i39);
                            i18++;
                        }
                    } else {
                        t.e eVar8 = eVar5.f14896t0;
                        boolean z27 = zI & true;
                        if (eVar8.f15283b || eVar8.f15284c) {
                            for (s.d dVar9 : eVar8.f15282a.f14911r0) {
                                dVar9.g();
                                dVar9.f14853a = false;
                                dVar9.f14859d.n();
                                dVar9.f14860e.m();
                            }
                            eVar8.f15282a.g();
                            s.e eVar9 = eVar8.f15282a;
                            i40 = 0;
                            eVar9.f14853a = false;
                            eVar9.f14859d.n();
                            eVar8.f15282a.f14860e.m();
                            eVar8.f15284c = false;
                        } else {
                            i40 = 0;
                        }
                        eVar8.b(eVar8.f15285d);
                        s.e eVar10 = eVar8.f15282a;
                        eVar10.f14854a0 = i40;
                        eVar10.f14856b0 = i40;
                        int iJ2 = eVar10.j(i40);
                        int iJ3 = eVar8.f15282a.j(1);
                        if (eVar8.f15283b) {
                            eVar8.c();
                        }
                        int iS = eVar8.f15282a.s();
                        z13 = z12;
                        int iT = eVar8.f15282a.t();
                        aVar3 = aVar;
                        eVar8.f15282a.f14859d.f15322h.d(iS);
                        eVar8.f15282a.f14860e.f15322h.d(iT);
                        eVar8.g();
                        if (iJ2 == 2 || iJ3 == 2) {
                            if (z27) {
                                Iterator<p> it = eVar8.f15286e.iterator();
                                while (it.hasNext()) {
                                    if (!it.next().k()) {
                                        z27 = false;
                                        break;
                                    }
                                }
                            }
                            if (z27 && iJ2 == 2) {
                                eVar8.f15282a.M(1);
                                s.e eVar11 = eVar8.f15282a;
                                eVar11.Q(eVar8.d(eVar11, 0));
                                s.e eVar12 = eVar8.f15282a;
                                eVar12.f14859d.f15319e.d(eVar12.r());
                            }
                            if (z27 && iJ3 == 2) {
                                eVar8.f15282a.P(1);
                                s.e eVar13 = eVar8.f15282a;
                                eVar13.L(eVar8.d(eVar13, 1));
                                s.e eVar14 = eVar8.f15282a;
                                eVar14.f14860e.f15319e.d(eVar14.k());
                            }
                        } else {
                            aVar2 = aVar2;
                            interfaceC0261b = interfaceC0261b;
                        }
                        s.e eVar15 = eVar8.f15282a;
                        int[] iArr4 = eVar15.U;
                        i17 = iR;
                        if (iArr4[0] == 1 || iArr4[0] == 4) {
                            int iR6 = eVar15.r() + iS;
                            eVar8.f15282a.f14859d.f15323i.d(iR6);
                            eVar8.f15282a.f14859d.f15319e.d(iR6 - iS);
                            eVar8.g();
                            s.e eVar16 = eVar8.f15282a;
                            int[] iArr5 = eVar16.U;
                            if (iArr5[1] == 1 || iArr5[1] == 4) {
                                int iK6 = eVar16.k() + iT;
                                eVar8.f15282a.f14860e.f15323i.d(iK6);
                                eVar8.f15282a.f14860e.f15319e.d(iK6 - iT);
                            }
                            eVar8.g();
                            z21 = true;
                        } else {
                            z21 = false;
                        }
                        for (p pVar : eVar8.f15286e) {
                            if (pVar.f15316b != eVar8.f15282a || pVar.f15321g) {
                                pVar.e();
                            }
                        }
                        Iterator<p> it2 = eVar8.f15286e.iterator();
                        while (true) {
                            if (!it2.hasNext()) {
                                z22 = true;
                                break;
                            }
                            p next = it2.next();
                            if (z21 || next.f15316b != eVar8.f15282a) {
                                if (!next.f15322h.f15299j || ((!next.f15323i.f15299j && !(next instanceof j)) || (!next.f15319e.f15299j && !(next instanceof t.c) && !(next instanceof j)))) {
                                    z22 = false;
                                    break;
                                }
                            }
                        }
                        eVar8.f15282a.M(iJ2);
                        eVar8.f15282a.P(iJ3);
                        zA0 = z22;
                        i38 = 1073741824;
                        i18 = 2;
                    }
                    if (zA0) {
                        if (mode == i38) {
                            z19 = true;
                        } else {
                            z19 = false;
                        }
                        if (mode2 == i38) {
                            z20 = true;
                        } else {
                            z20 = false;
                        }
                        eVar5.R(z19, z20);
                    }
                } else {
                    aVar3 = aVar;
                    aVar2 = aVar2;
                    z13 = z12;
                    interfaceC0261b = interfaceC0261b;
                    i17 = iR;
                    zA0 = false;
                    i18 = 0;
                }
                if (zA0 || i18 != 2) {
                    i19 = eVar5.E0;
                    if (size > 0) {
                        size3 = eVar5.f14911r0.size();
                        boolean zD0 = eVar5.d0(64);
                        interfaceC0261b6 = eVar5.f14898v0;
                        for (i34 = 0; i34 < size3; i34++) {
                            dVar6 = eVar5.f14911r0.get(i34);
                            if ((dVar6 instanceof s.f) && !(dVar6 instanceof s.a) && !dVar6.G && (!zD0 || (lVar = dVar6.f14859d) == null || (nVar = dVar6.f14860e) == null || !lVar.f15319e.f15299j || !nVar.f15319e.f15299j)) {
                                iJ = dVar6.j(0);
                                int iJ4 = dVar6.j(1);
                                if (iJ == 3 || dVar6.f14886r == 1 || iJ4 != 3 || dVar6.f14887s == 1) {
                                    z18 = false;
                                } else {
                                    z18 = true;
                                }
                                if (z18 && eVar5.d0(1) && !(dVar6 instanceof i)) {
                                    if (iJ == 3 && dVar6.f14886r == 0 && iJ4 != 3 && !dVar6.y()) {
                                        z18 = true;
                                    }
                                    if (iJ4 == 3 && dVar6.f14887s == 0 && iJ != 3 && !dVar6.y()) {
                                        z18 = true;
                                    }
                                    if (iJ == 3 || iJ4 == 3) {
                                        if (dVar6.Y > 0.0f) {
                                            z18 = true;
                                        }
                                    }
                                    if (z18) {
                                        bVar.a(interfaceC0261b6, dVar6, 0);
                                    }
                                }
                                if (z18) {
                                    bVar.a(interfaceC0261b6, dVar6, 0);
                                }
                            }
                        }
                        bVar2 = (b) interfaceC0261b6;
                        childCount = bVar2.f1574a.getChildCount();
                        for (i35 = 0; i35 < childCount; i35++) {
                            childAt = bVar2.f1574a.getChildAt(i35);
                            if (childAt instanceof f) {
                                fVar = (f) childAt;
                                if (fVar.f1719i != null) {
                                    a aVar9 = (a) fVar.getLayoutParams();
                                    aVar8 = (a) fVar.f1719i.getLayoutParams();
                                    dVar3 = aVar8.f1563q0;
                                    dVar3.f14869i0 = 0;
                                    dVar4 = aVar9.f1563q0;
                                    if (dVar4.U[0] != 1) {
                                        dVar4.Q(dVar3.r());
                                    }
                                    dVar5 = aVar9.f1563q0;
                                    if (dVar5.U[1] != 1) {
                                        dVar5.L(aVar8.f1563q0.k());
                                    }
                                    aVar8.f1563q0.f14869i0 = 8;
                                }
                            }
                        }
                        size4 = bVar2.f1574a.f1515i.size();
                        if (size4 > 0) {
                            for (i36 = 0; i36 < size4; i36++) {
                                Objects.requireNonNull(bVar2.f1574a.f1515i.get(i36));
                            }
                        }
                    }
                    bVar.c(eVar5);
                    size2 = bVar.f15267a.size();
                    i20 = i17;
                    if (size > 0) {
                        bVar.b(eVar5, 0, i20, iK);
                    }
                    if (size2 > 0) {
                        iArr = eVar5.U;
                        if (iArr[0] == 2) {
                            z14 = true;
                        } else {
                            z14 = false;
                        }
                        if (iArr[1] == 2) {
                            z15 = true;
                        } else {
                            z15 = false;
                        }
                        iMax3 = Math.max(eVar5.r(), bVar.f15269c.d0);
                        int iMax10 = Math.max(eVar5.k(), bVar.f15269c.f14861e0);
                        i22 = 0;
                        z16 = false;
                        while (i22 < size2) {
                            dVar2 = bVar.f15267a.get(i22);
                            if (dVar2 instanceof i) {
                                iR4 = dVar2.r();
                                iK4 = dVar2.k();
                                interfaceC0261b5 = interfaceC0261b;
                                zA2 = z16 | bVar.a(interfaceC0261b5, dVar2, 1);
                                iR5 = dVar2.r();
                                iK5 = dVar2.k();
                                if (iR5 != iR4) {
                                    dVar2.Q(iR5);
                                    if (z14 || dVar2.n() <= iMax3) {
                                        aVar6 = aVar2;
                                    } else {
                                        aVar6 = aVar2;
                                        iMax3 = Math.max(iMax3, dVar2.h(aVar6).d() + dVar2.n());
                                    }
                                    i33 = iMax3;
                                    z17 = true;
                                } else {
                                    aVar6 = aVar2;
                                    i33 = iMax3;
                                    z17 = zA2;
                                }
                                if (iK5 != iK4) {
                                    dVar2.L(iK5);
                                    if (z15 || dVar2.i() <= iMax10) {
                                        aVar7 = aVar3;
                                    } else {
                                        aVar7 = aVar3;
                                        iMax10 = Math.max(iMax10, dVar2.h(aVar7).d() + dVar2.i());
                                    }
                                    z17 = true;
                                } else {
                                    aVar7 = aVar3;
                                }
                                boolean z28 = z17 | false;
                                iMax3 = i33;
                                z16 = z28;
                            } else {
                                aVar7 = aVar3;
                                aVar6 = aVar2;
                                interfaceC0261b5 = interfaceC0261b;
                            }
                            i22++;
                            interfaceC0261b = interfaceC0261b5;
                            aVar2 = aVar6;
                            aVar3 = aVar7;
                            i19 = i19;
                        }
                        i21 = i19;
                        aVar4 = aVar3;
                        aVar5 = aVar2;
                        interfaceC0261b2 = interfaceC0261b;
                        i23 = 0;
                        i24 = 0;
                        i25 = iMax10;
                        i26 = 2;
                        while (i24 < i26) {
                            boolean z29 = z16;
                            i27 = i23;
                            iMax4 = i25;
                            iMax5 = iMax3;
                            zA = z29;
                            while (i27 < size2) {
                                dVar = bVar.f15267a.get(i27);
                                int i50 = size2;
                                if (((dVar instanceof s.g) || (dVar instanceof i)) && !(dVar instanceof s.f)) {
                                    eVar2 = eVar5;
                                    if (dVar.f14869i0 == 8 && ((!z13 || !dVar.f14859d.f15319e.f15299j || !dVar.f14860e.f15319e.f15299j) && !(dVar instanceof i))) {
                                        iR2 = dVar.r();
                                        iK2 = dVar.k();
                                        i31 = i20;
                                        int i51 = dVar.f14858c0;
                                        i32 = iK;
                                        zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                        iR3 = dVar.r();
                                        interfaceC0261b4 = interfaceC0261b2;
                                        iK3 = dVar.k();
                                        if (iR3 != iR2) {
                                            dVar.Q(iR3);
                                            if (z14 && dVar.n() > iMax5) {
                                                iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                            }
                                            zA = true;
                                        }
                                        if (iK3 != iK2) {
                                            dVar.L(iK3);
                                            if (z15 && dVar.i() > iMax4) {
                                                iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                            }
                                            zA = true;
                                        }
                                        if (!dVar.E && i51 != dVar.f14858c0) {
                                            zA = true;
                                        }
                                    }
                                    i27++;
                                    size2 = i50;
                                    eVar5 = eVar2;
                                    iK = i32;
                                    interfaceC0261b2 = interfaceC0261b4;
                                    i20 = i31;
                                } else {
                                    eVar2 = eVar5;
                                }
                                interfaceC0261b4 = interfaceC0261b2;
                                i31 = i20;
                                i32 = iK;
                                i27++;
                                size2 = i50;
                                eVar5 = eVar2;
                                iK = i32;
                                interfaceC0261b2 = interfaceC0261b4;
                                i20 = i31;
                            }
                            eVar = eVar5;
                            interfaceC0261b3 = interfaceC0261b2;
                            i28 = size2;
                            i29 = i20;
                            i30 = iK;
                            if (!zA) {
                                eVar5 = eVar;
                                break;
                            }
                            i24++;
                            eVar5 = eVar;
                            bVar.b(eVar5, i24, i29, i30);
                            i20 = i29;
                            iK = i30;
                            iMax3 = iMax5;
                            size2 = i28;
                            interfaceC0261b2 = interfaceC0261b3;
                            z16 = false;
                            i26 = 2;
                            i25 = iMax4;
                            i23 = 0;
                        }
                    } else {
                        i21 = i19;
                    }
                    eVar5.e0(i21);
                }
                int iR7 = this.f1516j.r();
                int iK7 = this.f1516j.k();
                s.e eVar17 = this.f1516j;
                l(i10, i11, iR7, iK7, eVar17.F0, eVar17.G0);
            }
            if (childCount3 == 0) {
                iMax2 = Math.max(0, this.f1518l);
            } else {
                iMax2 = i46;
            }
            i14 = 2;
            if (iMin == eVar5.r()) {
                eVar5.f14896t0.f15284c = true;
                i15 = 0;
            } else {
                eVar5.f14896t0.f15284c = true;
                i15 = 0;
            }
            eVar5.f14854a0 = i15;
            eVar5.f14856b0 = i15;
            int i410 = this.f1519m - i48;
            int[] iArr6 = eVar5.C;
            iArr6[i15] = i410;
            iArr6[1] = this.f1520n - i47;
            eVar5.O(i15);
            eVar5.N(i15);
            eVar5.M(i12);
            eVar5.Q(iMin);
            eVar5.P(i14);
            eVar5.L(iMax2);
            eVar5.O(this.f1517k - i48);
            eVar5.N(this.f1518l - i47);
            eVar5.f14901y0 = iMax8;
            eVar5.f14902z0 = iMax6;
            bVar = eVar5.f14895s0;
            Objects.requireNonNull(bVar);
            aVar = s.c.a.BOTTOM;
            aVar2 = s.c.a.RIGHT;
            interfaceC0261b = eVar5.f14898v0;
            size = eVar5.f14911r0.size();
            iR = eVar5.r();
            iK = eVar5.k();
            zI = androidx.emoji2.text.b.i(i43, 128);
            if (zI) {
                z10 = true;
            } else {
                z10 = true;
            }
            if (z10) {
                i41 = 0;
                while (true) {
                    if (i41 < size) {
                        dVar7 = eVar5.f14911r0.get(i41);
                        z23 = z10;
                        iArr2 = dVar7.U;
                        if (iArr2[0] == 3) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        if (iArr2[1] == 3) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        if (z24) {
                            z26 = false;
                        } else {
                            z26 = false;
                        }
                        if (dVar7.y()) {
                            i41++;
                            z10 = z23;
                        } else {
                            i41++;
                            z10 = z23;
                        }
                        i16 = 1073741824;
                        z11 = false;
                    } else {
                        z11 = z10;
                        i16 = 1073741824;
                    }
                }
            } else {
                z11 = z10;
                i16 = 1073741824;
            }
            z12 = z11 & ((mode != i16 && mode2 == i16) || zI);
            if (z12) {
                iMin2 = Math.min(eVar5.C[0], i45);
                iMin3 = Math.min(eVar5.C[1], i46);
                if (mode == 1073741824) {
                    eVar5.Q(iMin2);
                    eVar5.b0();
                }
                if (mode2 == 1073741824) {
                    eVar5.L(iMin3);
                    eVar5.b0();
                }
                if (mode == 1073741824) {
                    aVar3 = aVar;
                    aVar2 = aVar2;
                    z13 = z12;
                    interfaceC0261b = interfaceC0261b;
                    i17 = iR;
                    eVar3 = eVar5.f14896t0;
                    if (eVar3.f15283b) {
                        while (r3.hasNext()) {
                            dVar8.g();
                            dVar8.f14853a = false;
                            l lVar4 = dVar8.f14859d;
                            lVar4.f15319e.f15299j = false;
                            lVar4.f15321g = false;
                            lVar4.n();
                            n nVar4 = dVar8.f14860e;
                            nVar4.f15319e.f15299j = false;
                            nVar4.f15321g = false;
                            nVar4.m();
                        }
                        i37 = 0;
                        eVar3.f15282a.g();
                        s.e eVar18 = eVar3.f15282a;
                        eVar18.f14853a = false;
                        l lVar5 = eVar18.f14859d;
                        lVar5.f15319e.f15299j = false;
                        lVar5.f15321g = false;
                        lVar5.n();
                        n nVar5 = eVar3.f15282a.f14860e;
                        nVar5.f15319e.f15299j = false;
                        nVar5.f15321g = false;
                        nVar5.m();
                        eVar3.c();
                    } else {
                        i37 = 0;
                    }
                    eVar3.b(eVar3.f15285d);
                    s.e eVar19 = eVar3.f15282a;
                    eVar19.f14854a0 = i37;
                    eVar19.f14856b0 = i37;
                    eVar19.f14859d.f15322h.d(i37);
                    eVar3.f15282a.f14860e.f15322h.d(i37);
                    i38 = 1073741824;
                    if (mode == 1073741824) {
                        i39 = 1;
                        boolean zA3 = eVar5.a0(zI, i37) & true;
                        i18 = 1;
                        zA0 = zA3;
                    } else {
                        i39 = 1;
                        zA0 = true;
                        i18 = 0;
                    }
                    if (mode2 == 1073741824) {
                        zA0 &= eVar5.a0(zI, i39);
                        i18++;
                    }
                } else {
                    aVar3 = aVar;
                    aVar2 = aVar2;
                    z13 = z12;
                    interfaceC0261b = interfaceC0261b;
                    i17 = iR;
                    eVar3 = eVar5.f14896t0;
                    if (eVar3.f15283b) {
                        while (r3.hasNext()) {
                            dVar8.g();
                            dVar8.f14853a = false;
                            l lVar6 = dVar8.f14859d;
                            lVar6.f15319e.f15299j = false;
                            lVar6.f15321g = false;
                            lVar6.n();
                            n nVar6 = dVar8.f14860e;
                            nVar6.f15319e.f15299j = false;
                            nVar6.f15321g = false;
                            nVar6.m();
                        }
                        i37 = 0;
                        eVar3.f15282a.g();
                        s.e eVar110 = eVar3.f15282a;
                        eVar110.f14853a = false;
                        l lVar7 = eVar110.f14859d;
                        lVar7.f15319e.f15299j = false;
                        lVar7.f15321g = false;
                        lVar7.n();
                        n nVar7 = eVar3.f15282a.f14860e;
                        nVar7.f15319e.f15299j = false;
                        nVar7.f15321g = false;
                        nVar7.m();
                        eVar3.c();
                    } else {
                        i37 = 0;
                    }
                    eVar3.b(eVar3.f15285d);
                    s.e eVar111 = eVar3.f15282a;
                    eVar111.f14854a0 = i37;
                    eVar111.f14856b0 = i37;
                    eVar111.f14859d.f15322h.d(i37);
                    eVar3.f15282a.f14860e.f15322h.d(i37);
                    i38 = 1073741824;
                    if (mode == 1073741824) {
                        i39 = 1;
                        boolean zA4 = eVar5.a0(zI, i37) & true;
                        i18 = 1;
                        zA0 = zA4;
                    } else {
                        i39 = 1;
                        zA0 = true;
                        i18 = 0;
                    }
                    if (mode2 == 1073741824) {
                        zA0 &= eVar5.a0(zI, i39);
                        i18++;
                    }
                }
                if (zA0) {
                    if (mode == i38) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    if (mode2 == i38) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    eVar5.R(z19, z20);
                }
            } else {
                aVar3 = aVar;
                aVar2 = aVar2;
                z13 = z12;
                interfaceC0261b = interfaceC0261b;
                i17 = iR;
                zA0 = false;
                i18 = 0;
            }
            if (zA0) {
                i19 = eVar5.E0;
                if (size > 0) {
                    size3 = eVar5.f14911r0.size();
                    boolean zD1 = eVar5.d0(64);
                    interfaceC0261b6 = eVar5.f14898v0;
                    while (i34 < size3) {
                        dVar6 = eVar5.f14911r0.get(i34);
                        if (dVar6 instanceof s.f) {
                            iJ = dVar6.j(0);
                            int iJ5 = dVar6.j(1);
                            if (iJ == 3) {
                                z18 = false;
                            } else {
                                z18 = false;
                            }
                            if (z18) {
                            }
                            if (z18) {
                                bVar.a(interfaceC0261b6, dVar6, 0);
                            }
                        }
                    }
                    bVar2 = (b) interfaceC0261b6;
                    childCount = bVar2.f1574a.getChildCount();
                    while (i35 < childCount) {
                        childAt = bVar2.f1574a.getChildAt(i35);
                        if (childAt instanceof f) {
                            fVar = (f) childAt;
                            if (fVar.f1719i != null) {
                                a aVar10 = (a) fVar.getLayoutParams();
                                aVar8 = (a) fVar.f1719i.getLayoutParams();
                                dVar3 = aVar8.f1563q0;
                                dVar3.f14869i0 = 0;
                                dVar4 = aVar10.f1563q0;
                                if (dVar4.U[0] != 1) {
                                    dVar4.Q(dVar3.r());
                                }
                                dVar5 = aVar10.f1563q0;
                                if (dVar5.U[1] != 1) {
                                    dVar5.L(aVar8.f1563q0.k());
                                }
                                aVar8.f1563q0.f14869i0 = 8;
                            }
                        }
                    }
                    size4 = bVar2.f1574a.f1515i.size();
                    if (size4 > 0) {
                        while (i36 < size4) {
                            Objects.requireNonNull(bVar2.f1574a.f1515i.get(i36));
                        }
                    }
                }
                bVar.c(eVar5);
                size2 = bVar.f15267a.size();
                i20 = i17;
                if (size > 0) {
                    bVar.b(eVar5, 0, i20, iK);
                }
                if (size2 > 0) {
                    iArr = eVar5.U;
                    if (iArr[0] == 2) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (iArr[1] == 2) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    iMax3 = Math.max(eVar5.r(), bVar.f15269c.d0);
                    int iMax11 = Math.max(eVar5.k(), bVar.f15269c.f14861e0);
                    i22 = 0;
                    z16 = false;
                    while (i22 < size2) {
                        dVar2 = bVar.f15267a.get(i22);
                        if (dVar2 instanceof i) {
                            aVar7 = aVar3;
                            aVar6 = aVar2;
                            interfaceC0261b5 = interfaceC0261b;
                        } else {
                            iR4 = dVar2.r();
                            iK4 = dVar2.k();
                            interfaceC0261b5 = interfaceC0261b;
                            zA2 = z16 | bVar.a(interfaceC0261b5, dVar2, 1);
                            iR5 = dVar2.r();
                            iK5 = dVar2.k();
                            if (iR5 != iR4) {
                                dVar2.Q(iR5);
                                if (z14) {
                                    aVar6 = aVar2;
                                } else {
                                    aVar6 = aVar2;
                                }
                                i33 = iMax3;
                                z17 = true;
                            } else {
                                aVar6 = aVar2;
                                i33 = iMax3;
                                z17 = zA2;
                            }
                            if (iK5 != iK4) {
                                dVar2.L(iK5);
                                if (z15) {
                                    aVar7 = aVar3;
                                } else {
                                    aVar7 = aVar3;
                                }
                                z17 = true;
                            } else {
                                aVar7 = aVar3;
                            }
                            boolean z210 = z17 | false;
                            iMax3 = i33;
                            z16 = z210;
                        }
                        i22++;
                        interfaceC0261b = interfaceC0261b5;
                        aVar2 = aVar6;
                        aVar3 = aVar7;
                        i19 = i19;
                    }
                    i21 = i19;
                    aVar4 = aVar3;
                    aVar5 = aVar2;
                    interfaceC0261b2 = interfaceC0261b;
                    i23 = 0;
                    i24 = 0;
                    i25 = iMax11;
                    i26 = 2;
                    while (i24 < i26) {
                        boolean z211 = z16;
                        i27 = i23;
                        iMax4 = i25;
                        iMax5 = iMax3;
                        zA = z211;
                        while (i27 < size2) {
                            dVar = bVar.f15267a.get(i27);
                            int i52 = size2;
                            if (dVar instanceof s.g) {
                                eVar2 = eVar5;
                                if (dVar.f14869i0 == 8) {
                                    interfaceC0261b4 = interfaceC0261b2;
                                    i31 = i20;
                                    i32 = iK;
                                } else {
                                    iR2 = dVar.r();
                                    iK2 = dVar.k();
                                    i31 = i20;
                                    int i53 = dVar.f14858c0;
                                    i32 = iK;
                                    zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                    iR3 = dVar.r();
                                    interfaceC0261b4 = interfaceC0261b2;
                                    iK3 = dVar.k();
                                    if (iR3 != iR2) {
                                        dVar.Q(iR3);
                                        if (z14) {
                                            iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                        }
                                        zA = true;
                                    }
                                    if (iK3 != iK2) {
                                        dVar.L(iK3);
                                        if (z15) {
                                            iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                        }
                                        zA = true;
                                    }
                                    if (!dVar.E) {
                                    }
                                }
                            } else {
                                eVar2 = eVar5;
                                if (dVar.f14869i0 == 8) {
                                    interfaceC0261b4 = interfaceC0261b2;
                                    i31 = i20;
                                    i32 = iK;
                                } else {
                                    iR2 = dVar.r();
                                    iK2 = dVar.k();
                                    i31 = i20;
                                    int i54 = dVar.f14858c0;
                                    i32 = iK;
                                    zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                    iR3 = dVar.r();
                                    interfaceC0261b4 = interfaceC0261b2;
                                    iK3 = dVar.k();
                                    if (iR3 != iR2) {
                                        dVar.Q(iR3);
                                        if (z14) {
                                            iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                        }
                                        zA = true;
                                    }
                                    if (iK3 != iK2) {
                                        dVar.L(iK3);
                                        if (z15) {
                                            iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                        }
                                        zA = true;
                                    }
                                    if (!dVar.E) {
                                    }
                                }
                            }
                            i27++;
                            size2 = i52;
                            eVar5 = eVar2;
                            iK = i32;
                            interfaceC0261b2 = interfaceC0261b4;
                            i20 = i31;
                        }
                        eVar = eVar5;
                        interfaceC0261b3 = interfaceC0261b2;
                        i28 = size2;
                        i29 = i20;
                        i30 = iK;
                        if (!zA) {
                            eVar5 = eVar;
                            break;
                        }
                        i24++;
                        eVar5 = eVar;
                        bVar.b(eVar5, i24, i29, i30);
                        i20 = i29;
                        iK = i30;
                        iMax3 = iMax5;
                        size2 = i28;
                        interfaceC0261b2 = interfaceC0261b3;
                        z16 = false;
                        i26 = 2;
                        i25 = iMax4;
                        i23 = 0;
                    }
                } else {
                    i21 = i19;
                }
                eVar5.e0(i21);
            } else {
                i19 = eVar5.E0;
                if (size > 0) {
                    size3 = eVar5.f14911r0.size();
                    boolean zD2 = eVar5.d0(64);
                    interfaceC0261b6 = eVar5.f14898v0;
                    while (i34 < size3) {
                        dVar6 = eVar5.f14911r0.get(i34);
                        if (dVar6 instanceof s.f) {
                            iJ = dVar6.j(0);
                            int iJ6 = dVar6.j(1);
                            if (iJ == 3) {
                                z18 = false;
                            } else {
                                z18 = false;
                            }
                            if (z18) {
                            }
                            if (z18) {
                                bVar.a(interfaceC0261b6, dVar6, 0);
                            }
                        }
                    }
                    bVar2 = (b) interfaceC0261b6;
                    childCount = bVar2.f1574a.getChildCount();
                    while (i35 < childCount) {
                        childAt = bVar2.f1574a.getChildAt(i35);
                        if (childAt instanceof f) {
                            fVar = (f) childAt;
                            if (fVar.f1719i != null) {
                                a aVar11 = (a) fVar.getLayoutParams();
                                aVar8 = (a) fVar.f1719i.getLayoutParams();
                                dVar3 = aVar8.f1563q0;
                                dVar3.f14869i0 = 0;
                                dVar4 = aVar11.f1563q0;
                                if (dVar4.U[0] != 1) {
                                    dVar4.Q(dVar3.r());
                                }
                                dVar5 = aVar11.f1563q0;
                                if (dVar5.U[1] != 1) {
                                    dVar5.L(aVar8.f1563q0.k());
                                }
                                aVar8.f1563q0.f14869i0 = 8;
                            }
                        }
                    }
                    size4 = bVar2.f1574a.f1515i.size();
                    if (size4 > 0) {
                        while (i36 < size4) {
                            Objects.requireNonNull(bVar2.f1574a.f1515i.get(i36));
                        }
                    }
                }
                bVar.c(eVar5);
                size2 = bVar.f15267a.size();
                i20 = i17;
                if (size > 0) {
                    bVar.b(eVar5, 0, i20, iK);
                }
                if (size2 > 0) {
                    iArr = eVar5.U;
                    if (iArr[0] == 2) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (iArr[1] == 2) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    iMax3 = Math.max(eVar5.r(), bVar.f15269c.d0);
                    int iMax12 = Math.max(eVar5.k(), bVar.f15269c.f14861e0);
                    i22 = 0;
                    z16 = false;
                    while (i22 < size2) {
                        dVar2 = bVar.f15267a.get(i22);
                        if (dVar2 instanceof i) {
                            aVar7 = aVar3;
                            aVar6 = aVar2;
                            interfaceC0261b5 = interfaceC0261b;
                        } else {
                            iR4 = dVar2.r();
                            iK4 = dVar2.k();
                            interfaceC0261b5 = interfaceC0261b;
                            zA2 = z16 | bVar.a(interfaceC0261b5, dVar2, 1);
                            iR5 = dVar2.r();
                            iK5 = dVar2.k();
                            if (iR5 != iR4) {
                                dVar2.Q(iR5);
                                if (z14) {
                                    aVar6 = aVar2;
                                } else {
                                    aVar6 = aVar2;
                                }
                                i33 = iMax3;
                                z17 = true;
                            } else {
                                aVar6 = aVar2;
                                i33 = iMax3;
                                z17 = zA2;
                            }
                            if (iK5 != iK4) {
                                dVar2.L(iK5);
                                if (z15) {
                                    aVar7 = aVar3;
                                } else {
                                    aVar7 = aVar3;
                                }
                                z17 = true;
                            } else {
                                aVar7 = aVar3;
                            }
                            boolean z212 = z17 | false;
                            iMax3 = i33;
                            z16 = z212;
                        }
                        i22++;
                        interfaceC0261b = interfaceC0261b5;
                        aVar2 = aVar6;
                        aVar3 = aVar7;
                        i19 = i19;
                    }
                    i21 = i19;
                    aVar4 = aVar3;
                    aVar5 = aVar2;
                    interfaceC0261b2 = interfaceC0261b;
                    i23 = 0;
                    i24 = 0;
                    i25 = iMax12;
                    i26 = 2;
                    while (i24 < i26) {
                        boolean z213 = z16;
                        i27 = i23;
                        iMax4 = i25;
                        iMax5 = iMax3;
                        zA = z213;
                        while (i27 < size2) {
                            dVar = bVar.f15267a.get(i27);
                            int i55 = size2;
                            if (dVar instanceof s.g) {
                                eVar2 = eVar5;
                                if (dVar.f14869i0 == 8) {
                                    interfaceC0261b4 = interfaceC0261b2;
                                    i31 = i20;
                                    i32 = iK;
                                } else {
                                    iR2 = dVar.r();
                                    iK2 = dVar.k();
                                    i31 = i20;
                                    int i56 = dVar.f14858c0;
                                    i32 = iK;
                                    zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                    iR3 = dVar.r();
                                    interfaceC0261b4 = interfaceC0261b2;
                                    iK3 = dVar.k();
                                    if (iR3 != iR2) {
                                        dVar.Q(iR3);
                                        if (z14) {
                                            iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                        }
                                        zA = true;
                                    }
                                    if (iK3 != iK2) {
                                        dVar.L(iK3);
                                        if (z15) {
                                            iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                        }
                                        zA = true;
                                    }
                                    if (!dVar.E) {
                                    }
                                }
                            } else {
                                eVar2 = eVar5;
                                if (dVar.f14869i0 == 8) {
                                    interfaceC0261b4 = interfaceC0261b2;
                                    i31 = i20;
                                    i32 = iK;
                                } else {
                                    iR2 = dVar.r();
                                    iK2 = dVar.k();
                                    i31 = i20;
                                    int i57 = dVar.f14858c0;
                                    i32 = iK;
                                    zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                    iR3 = dVar.r();
                                    interfaceC0261b4 = interfaceC0261b2;
                                    iK3 = dVar.k();
                                    if (iR3 != iR2) {
                                        dVar.Q(iR3);
                                        if (z14) {
                                            iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                        }
                                        zA = true;
                                    }
                                    if (iK3 != iK2) {
                                        dVar.L(iK3);
                                        if (z15) {
                                            iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                        }
                                        zA = true;
                                    }
                                    if (!dVar.E) {
                                    }
                                }
                            }
                            i27++;
                            size2 = i55;
                            eVar5 = eVar2;
                            iK = i32;
                            interfaceC0261b2 = interfaceC0261b4;
                            i20 = i31;
                        }
                        eVar = eVar5;
                        interfaceC0261b3 = interfaceC0261b2;
                        i28 = size2;
                        i29 = i20;
                        i30 = iK;
                        if (!zA) {
                            eVar5 = eVar;
                            break;
                        }
                        i24++;
                        eVar5 = eVar;
                        bVar.b(eVar5, i24, i29, i30);
                        i20 = i29;
                        iK = i30;
                        iMax3 = iMax5;
                        size2 = i28;
                        interfaceC0261b2 = interfaceC0261b3;
                        z16 = false;
                        i26 = 2;
                        i25 = iMax4;
                        i23 = 0;
                    }
                } else {
                    i21 = i19;
                }
                eVar5.e0(i21);
            }
            int iR8 = this.f1516j.r();
            int iK8 = this.f1516j.k();
            s.e eVar112 = this.f1516j;
            l(i10, i11, iR8, iK8, eVar112.F0, eVar112.G0);
        }
        iMax = childCount3 == 0 ? Math.max(0, this.f1517k) : i45;
        iMin = iMax;
        i12 = 2;
        i13 = Integer.MIN_VALUE;
        if (mode2 != i13) {
            if (mode2 != 0) {
                if (mode2 != 1073741824) {
                    i14 = 1;
                    iMax2 = 0;
                } else {
                    iMax2 = Math.min(this.f1520n - i47, i46);
                    i14 = 1;
                }
            } else if (childCount3 == 0) {
                iMax2 = Math.max(0, this.f1518l);
            } else {
                iMax2 = 0;
            }
            if (iMin == eVar5.r()) {
                eVar5.f14896t0.f15284c = true;
                i15 = 0;
            } else {
                eVar5.f14896t0.f15284c = true;
                i15 = 0;
            }
            eVar5.f14854a0 = i15;
            eVar5.f14856b0 = i15;
            int i411 = this.f1519m - i48;
            int[] iArr7 = eVar5.C;
            iArr7[i15] = i411;
            iArr7[1] = this.f1520n - i47;
            eVar5.O(i15);
            eVar5.N(i15);
            eVar5.M(i12);
            eVar5.Q(iMin);
            eVar5.P(i14);
            eVar5.L(iMax2);
            eVar5.O(this.f1517k - i48);
            eVar5.N(this.f1518l - i47);
            eVar5.f14901y0 = iMax8;
            eVar5.f14902z0 = iMax6;
            bVar = eVar5.f14895s0;
            Objects.requireNonNull(bVar);
            aVar = s.c.a.BOTTOM;
            aVar2 = s.c.a.RIGHT;
            interfaceC0261b = eVar5.f14898v0;
            size = eVar5.f14911r0.size();
            iR = eVar5.r();
            iK = eVar5.k();
            zI = androidx.emoji2.text.b.i(i43, 128);
            if (zI) {
                z10 = true;
            } else {
                z10 = true;
            }
            if (z10) {
                i41 = 0;
                while (true) {
                    if (i41 < size) {
                        dVar7 = eVar5.f14911r0.get(i41);
                        z23 = z10;
                        iArr2 = dVar7.U;
                        if (iArr2[0] == 3) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        if (iArr2[1] == 3) {
                            z25 = true;
                        } else {
                            z25 = false;
                        }
                        if (z24) {
                            z26 = false;
                        } else {
                            z26 = false;
                        }
                        if (dVar7.y()) {
                            i41++;
                            z10 = z23;
                        } else {
                            i41++;
                            z10 = z23;
                        }
                        i16 = 1073741824;
                        z11 = false;
                    } else {
                        z11 = z10;
                        i16 = 1073741824;
                    }
                }
            } else {
                z11 = z10;
                i16 = 1073741824;
            }
            z12 = z11 & ((mode != i16 && mode2 == i16) || zI);
            if (z12) {
                iMin2 = Math.min(eVar5.C[0], i45);
                iMin3 = Math.min(eVar5.C[1], i46);
                if (mode == 1073741824) {
                    eVar5.Q(iMin2);
                    eVar5.b0();
                }
                if (mode2 == 1073741824) {
                    eVar5.L(iMin3);
                    eVar5.b0();
                }
                if (mode == 1073741824) {
                    aVar3 = aVar;
                    aVar2 = aVar2;
                    z13 = z12;
                    interfaceC0261b = interfaceC0261b;
                    i17 = iR;
                    eVar3 = eVar5.f14896t0;
                    if (eVar3.f15283b) {
                        while (r3.hasNext()) {
                            dVar8.g();
                            dVar8.f14853a = false;
                            l lVar8 = dVar8.f14859d;
                            lVar8.f15319e.f15299j = false;
                            lVar8.f15321g = false;
                            lVar8.n();
                            n nVar8 = dVar8.f14860e;
                            nVar8.f15319e.f15299j = false;
                            nVar8.f15321g = false;
                            nVar8.m();
                        }
                        i37 = 0;
                        eVar3.f15282a.g();
                        s.e eVar113 = eVar3.f15282a;
                        eVar113.f14853a = false;
                        l lVar9 = eVar113.f14859d;
                        lVar9.f15319e.f15299j = false;
                        lVar9.f15321g = false;
                        lVar9.n();
                        n nVar9 = eVar3.f15282a.f14860e;
                        nVar9.f15319e.f15299j = false;
                        nVar9.f15321g = false;
                        nVar9.m();
                        eVar3.c();
                    } else {
                        i37 = 0;
                    }
                    eVar3.b(eVar3.f15285d);
                    s.e eVar114 = eVar3.f15282a;
                    eVar114.f14854a0 = i37;
                    eVar114.f14856b0 = i37;
                    eVar114.f14859d.f15322h.d(i37);
                    eVar3.f15282a.f14860e.f15322h.d(i37);
                    i38 = 1073741824;
                    if (mode == 1073741824) {
                        i39 = 1;
                        boolean zA5 = eVar5.a0(zI, i37) & true;
                        i18 = 1;
                        zA0 = zA5;
                    } else {
                        i39 = 1;
                        zA0 = true;
                        i18 = 0;
                    }
                    if (mode2 == 1073741824) {
                        zA0 &= eVar5.a0(zI, i39);
                        i18++;
                    }
                } else {
                    aVar3 = aVar;
                    aVar2 = aVar2;
                    z13 = z12;
                    interfaceC0261b = interfaceC0261b;
                    i17 = iR;
                    eVar3 = eVar5.f14896t0;
                    if (eVar3.f15283b) {
                        while (r3.hasNext()) {
                            dVar8.g();
                            dVar8.f14853a = false;
                            l lVar10 = dVar8.f14859d;
                            lVar10.f15319e.f15299j = false;
                            lVar10.f15321g = false;
                            lVar10.n();
                            n nVar10 = dVar8.f14860e;
                            nVar10.f15319e.f15299j = false;
                            nVar10.f15321g = false;
                            nVar10.m();
                        }
                        i37 = 0;
                        eVar3.f15282a.g();
                        s.e eVar115 = eVar3.f15282a;
                        eVar115.f14853a = false;
                        l lVar11 = eVar115.f14859d;
                        lVar11.f15319e.f15299j = false;
                        lVar11.f15321g = false;
                        lVar11.n();
                        n nVar11 = eVar3.f15282a.f14860e;
                        nVar11.f15319e.f15299j = false;
                        nVar11.f15321g = false;
                        nVar11.m();
                        eVar3.c();
                    } else {
                        i37 = 0;
                    }
                    eVar3.b(eVar3.f15285d);
                    s.e eVar116 = eVar3.f15282a;
                    eVar116.f14854a0 = i37;
                    eVar116.f14856b0 = i37;
                    eVar116.f14859d.f15322h.d(i37);
                    eVar3.f15282a.f14860e.f15322h.d(i37);
                    i38 = 1073741824;
                    if (mode == 1073741824) {
                        i39 = 1;
                        boolean zA6 = eVar5.a0(zI, i37) & true;
                        i18 = 1;
                        zA0 = zA6;
                    } else {
                        i39 = 1;
                        zA0 = true;
                        i18 = 0;
                    }
                    if (mode2 == 1073741824) {
                        zA0 &= eVar5.a0(zI, i39);
                        i18++;
                    }
                }
                if (zA0) {
                    if (mode == i38) {
                        z19 = true;
                    } else {
                        z19 = false;
                    }
                    if (mode2 == i38) {
                        z20 = true;
                    } else {
                        z20 = false;
                    }
                    eVar5.R(z19, z20);
                }
            } else {
                aVar3 = aVar;
                aVar2 = aVar2;
                z13 = z12;
                interfaceC0261b = interfaceC0261b;
                i17 = iR;
                zA0 = false;
                i18 = 0;
            }
            if (zA0) {
                i19 = eVar5.E0;
                if (size > 0) {
                    size3 = eVar5.f14911r0.size();
                    boolean zD3 = eVar5.d0(64);
                    interfaceC0261b6 = eVar5.f14898v0;
                    while (i34 < size3) {
                        dVar6 = eVar5.f14911r0.get(i34);
                        if (dVar6 instanceof s.f) {
                            iJ = dVar6.j(0);
                            int iJ7 = dVar6.j(1);
                            if (iJ == 3) {
                                z18 = false;
                            } else {
                                z18 = false;
                            }
                            if (z18) {
                            }
                            if (z18) {
                                bVar.a(interfaceC0261b6, dVar6, 0);
                            }
                        }
                    }
                    bVar2 = (b) interfaceC0261b6;
                    childCount = bVar2.f1574a.getChildCount();
                    while (i35 < childCount) {
                        childAt = bVar2.f1574a.getChildAt(i35);
                        if (childAt instanceof f) {
                            fVar = (f) childAt;
                            if (fVar.f1719i != null) {
                                a aVar12 = (a) fVar.getLayoutParams();
                                aVar8 = (a) fVar.f1719i.getLayoutParams();
                                dVar3 = aVar8.f1563q0;
                                dVar3.f14869i0 = 0;
                                dVar4 = aVar12.f1563q0;
                                if (dVar4.U[0] != 1) {
                                    dVar4.Q(dVar3.r());
                                }
                                dVar5 = aVar12.f1563q0;
                                if (dVar5.U[1] != 1) {
                                    dVar5.L(aVar8.f1563q0.k());
                                }
                                aVar8.f1563q0.f14869i0 = 8;
                            }
                        }
                    }
                    size4 = bVar2.f1574a.f1515i.size();
                    if (size4 > 0) {
                        while (i36 < size4) {
                            Objects.requireNonNull(bVar2.f1574a.f1515i.get(i36));
                        }
                    }
                }
                bVar.c(eVar5);
                size2 = bVar.f15267a.size();
                i20 = i17;
                if (size > 0) {
                    bVar.b(eVar5, 0, i20, iK);
                }
                if (size2 > 0) {
                    iArr = eVar5.U;
                    if (iArr[0] == 2) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (iArr[1] == 2) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    iMax3 = Math.max(eVar5.r(), bVar.f15269c.d0);
                    int iMax13 = Math.max(eVar5.k(), bVar.f15269c.f14861e0);
                    i22 = 0;
                    z16 = false;
                    while (i22 < size2) {
                        dVar2 = bVar.f15267a.get(i22);
                        if (dVar2 instanceof i) {
                            aVar7 = aVar3;
                            aVar6 = aVar2;
                            interfaceC0261b5 = interfaceC0261b;
                        } else {
                            iR4 = dVar2.r();
                            iK4 = dVar2.k();
                            interfaceC0261b5 = interfaceC0261b;
                            zA2 = z16 | bVar.a(interfaceC0261b5, dVar2, 1);
                            iR5 = dVar2.r();
                            iK5 = dVar2.k();
                            if (iR5 != iR4) {
                                dVar2.Q(iR5);
                                if (z14) {
                                    aVar6 = aVar2;
                                } else {
                                    aVar6 = aVar2;
                                }
                                i33 = iMax3;
                                z17 = true;
                            } else {
                                aVar6 = aVar2;
                                i33 = iMax3;
                                z17 = zA2;
                            }
                            if (iK5 != iK4) {
                                dVar2.L(iK5);
                                if (z15) {
                                    aVar7 = aVar3;
                                } else {
                                    aVar7 = aVar3;
                                }
                                z17 = true;
                            } else {
                                aVar7 = aVar3;
                            }
                            boolean z214 = z17 | false;
                            iMax3 = i33;
                            z16 = z214;
                        }
                        i22++;
                        interfaceC0261b = interfaceC0261b5;
                        aVar2 = aVar6;
                        aVar3 = aVar7;
                        i19 = i19;
                    }
                    i21 = i19;
                    aVar4 = aVar3;
                    aVar5 = aVar2;
                    interfaceC0261b2 = interfaceC0261b;
                    i23 = 0;
                    i24 = 0;
                    i25 = iMax13;
                    i26 = 2;
                    while (i24 < i26) {
                        boolean z215 = z16;
                        i27 = i23;
                        iMax4 = i25;
                        iMax5 = iMax3;
                        zA = z215;
                        while (i27 < size2) {
                            dVar = bVar.f15267a.get(i27);
                            int i58 = size2;
                            if (dVar instanceof s.g) {
                                eVar2 = eVar5;
                                if (dVar.f14869i0 == 8) {
                                    interfaceC0261b4 = interfaceC0261b2;
                                    i31 = i20;
                                    i32 = iK;
                                } else {
                                    iR2 = dVar.r();
                                    iK2 = dVar.k();
                                    i31 = i20;
                                    int i59 = dVar.f14858c0;
                                    i32 = iK;
                                    zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                    iR3 = dVar.r();
                                    interfaceC0261b4 = interfaceC0261b2;
                                    iK3 = dVar.k();
                                    if (iR3 != iR2) {
                                        dVar.Q(iR3);
                                        if (z14) {
                                            iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                        }
                                        zA = true;
                                    }
                                    if (iK3 != iK2) {
                                        dVar.L(iK3);
                                        if (z15) {
                                            iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                        }
                                        zA = true;
                                    }
                                    if (!dVar.E) {
                                    }
                                }
                            } else {
                                eVar2 = eVar5;
                                if (dVar.f14869i0 == 8) {
                                    interfaceC0261b4 = interfaceC0261b2;
                                    i31 = i20;
                                    i32 = iK;
                                } else {
                                    iR2 = dVar.r();
                                    iK2 = dVar.k();
                                    i31 = i20;
                                    int i510 = dVar.f14858c0;
                                    i32 = iK;
                                    zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                    iR3 = dVar.r();
                                    interfaceC0261b4 = interfaceC0261b2;
                                    iK3 = dVar.k();
                                    if (iR3 != iR2) {
                                        dVar.Q(iR3);
                                        if (z14) {
                                            iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                        }
                                        zA = true;
                                    }
                                    if (iK3 != iK2) {
                                        dVar.L(iK3);
                                        if (z15) {
                                            iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                        }
                                        zA = true;
                                    }
                                    if (!dVar.E) {
                                    }
                                }
                            }
                            i27++;
                            size2 = i58;
                            eVar5 = eVar2;
                            iK = i32;
                            interfaceC0261b2 = interfaceC0261b4;
                            i20 = i31;
                        }
                        eVar = eVar5;
                        interfaceC0261b3 = interfaceC0261b2;
                        i28 = size2;
                        i29 = i20;
                        i30 = iK;
                        if (!zA) {
                            eVar5 = eVar;
                            break;
                        }
                        i24++;
                        eVar5 = eVar;
                        bVar.b(eVar5, i24, i29, i30);
                        i20 = i29;
                        iK = i30;
                        iMax3 = iMax5;
                        size2 = i28;
                        interfaceC0261b2 = interfaceC0261b3;
                        z16 = false;
                        i26 = 2;
                        i25 = iMax4;
                        i23 = 0;
                    }
                } else {
                    i21 = i19;
                }
                eVar5.e0(i21);
            } else {
                i19 = eVar5.E0;
                if (size > 0) {
                    size3 = eVar5.f14911r0.size();
                    boolean zD4 = eVar5.d0(64);
                    interfaceC0261b6 = eVar5.f14898v0;
                    while (i34 < size3) {
                        dVar6 = eVar5.f14911r0.get(i34);
                        if (dVar6 instanceof s.f) {
                            iJ = dVar6.j(0);
                            int iJ8 = dVar6.j(1);
                            if (iJ == 3) {
                                z18 = false;
                            } else {
                                z18 = false;
                            }
                            if (z18) {
                            }
                            if (z18) {
                                bVar.a(interfaceC0261b6, dVar6, 0);
                            }
                        }
                    }
                    bVar2 = (b) interfaceC0261b6;
                    childCount = bVar2.f1574a.getChildCount();
                    while (i35 < childCount) {
                        childAt = bVar2.f1574a.getChildAt(i35);
                        if (childAt instanceof f) {
                            fVar = (f) childAt;
                            if (fVar.f1719i != null) {
                                a aVar13 = (a) fVar.getLayoutParams();
                                aVar8 = (a) fVar.f1719i.getLayoutParams();
                                dVar3 = aVar8.f1563q0;
                                dVar3.f14869i0 = 0;
                                dVar4 = aVar13.f1563q0;
                                if (dVar4.U[0] != 1) {
                                    dVar4.Q(dVar3.r());
                                }
                                dVar5 = aVar13.f1563q0;
                                if (dVar5.U[1] != 1) {
                                    dVar5.L(aVar8.f1563q0.k());
                                }
                                aVar8.f1563q0.f14869i0 = 8;
                            }
                        }
                    }
                    size4 = bVar2.f1574a.f1515i.size();
                    if (size4 > 0) {
                        while (i36 < size4) {
                            Objects.requireNonNull(bVar2.f1574a.f1515i.get(i36));
                        }
                    }
                }
                bVar.c(eVar5);
                size2 = bVar.f15267a.size();
                i20 = i17;
                if (size > 0) {
                    bVar.b(eVar5, 0, i20, iK);
                }
                if (size2 > 0) {
                    iArr = eVar5.U;
                    if (iArr[0] == 2) {
                        z14 = true;
                    } else {
                        z14 = false;
                    }
                    if (iArr[1] == 2) {
                        z15 = true;
                    } else {
                        z15 = false;
                    }
                    iMax3 = Math.max(eVar5.r(), bVar.f15269c.d0);
                    int iMax14 = Math.max(eVar5.k(), bVar.f15269c.f14861e0);
                    i22 = 0;
                    z16 = false;
                    while (i22 < size2) {
                        dVar2 = bVar.f15267a.get(i22);
                        if (dVar2 instanceof i) {
                            aVar7 = aVar3;
                            aVar6 = aVar2;
                            interfaceC0261b5 = interfaceC0261b;
                        } else {
                            iR4 = dVar2.r();
                            iK4 = dVar2.k();
                            interfaceC0261b5 = interfaceC0261b;
                            zA2 = z16 | bVar.a(interfaceC0261b5, dVar2, 1);
                            iR5 = dVar2.r();
                            iK5 = dVar2.k();
                            if (iR5 != iR4) {
                                dVar2.Q(iR5);
                                if (z14) {
                                    aVar6 = aVar2;
                                } else {
                                    aVar6 = aVar2;
                                }
                                i33 = iMax3;
                                z17 = true;
                            } else {
                                aVar6 = aVar2;
                                i33 = iMax3;
                                z17 = zA2;
                            }
                            if (iK5 != iK4) {
                                dVar2.L(iK5);
                                if (z15) {
                                    aVar7 = aVar3;
                                } else {
                                    aVar7 = aVar3;
                                }
                                z17 = true;
                            } else {
                                aVar7 = aVar3;
                            }
                            boolean z216 = z17 | false;
                            iMax3 = i33;
                            z16 = z216;
                        }
                        i22++;
                        interfaceC0261b = interfaceC0261b5;
                        aVar2 = aVar6;
                        aVar3 = aVar7;
                        i19 = i19;
                    }
                    i21 = i19;
                    aVar4 = aVar3;
                    aVar5 = aVar2;
                    interfaceC0261b2 = interfaceC0261b;
                    i23 = 0;
                    i24 = 0;
                    i25 = iMax14;
                    i26 = 2;
                    while (i24 < i26) {
                        boolean z217 = z16;
                        i27 = i23;
                        iMax4 = i25;
                        iMax5 = iMax3;
                        zA = z217;
                        while (i27 < size2) {
                            dVar = bVar.f15267a.get(i27);
                            int i511 = size2;
                            if (dVar instanceof s.g) {
                                eVar2 = eVar5;
                                if (dVar.f14869i0 == 8) {
                                    interfaceC0261b4 = interfaceC0261b2;
                                    i31 = i20;
                                    i32 = iK;
                                } else {
                                    iR2 = dVar.r();
                                    iK2 = dVar.k();
                                    i31 = i20;
                                    int i512 = dVar.f14858c0;
                                    i32 = iK;
                                    zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                    iR3 = dVar.r();
                                    interfaceC0261b4 = interfaceC0261b2;
                                    iK3 = dVar.k();
                                    if (iR3 != iR2) {
                                        dVar.Q(iR3);
                                        if (z14) {
                                            iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                        }
                                        zA = true;
                                    }
                                    if (iK3 != iK2) {
                                        dVar.L(iK3);
                                        if (z15) {
                                            iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                        }
                                        zA = true;
                                    }
                                    if (!dVar.E) {
                                    }
                                }
                            } else {
                                eVar2 = eVar5;
                                if (dVar.f14869i0 == 8) {
                                    interfaceC0261b4 = interfaceC0261b2;
                                    i31 = i20;
                                    i32 = iK;
                                } else {
                                    iR2 = dVar.r();
                                    iK2 = dVar.k();
                                    i31 = i20;
                                    int i513 = dVar.f14858c0;
                                    i32 = iK;
                                    zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                    iR3 = dVar.r();
                                    interfaceC0261b4 = interfaceC0261b2;
                                    iK3 = dVar.k();
                                    if (iR3 != iR2) {
                                        dVar.Q(iR3);
                                        if (z14) {
                                            iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                        }
                                        zA = true;
                                    }
                                    if (iK3 != iK2) {
                                        dVar.L(iK3);
                                        if (z15) {
                                            iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                        }
                                        zA = true;
                                    }
                                    if (!dVar.E) {
                                    }
                                }
                            }
                            i27++;
                            size2 = i511;
                            eVar5 = eVar2;
                            iK = i32;
                            interfaceC0261b2 = interfaceC0261b4;
                            i20 = i31;
                        }
                        eVar = eVar5;
                        interfaceC0261b3 = interfaceC0261b2;
                        i28 = size2;
                        i29 = i20;
                        i30 = iK;
                        if (!zA) {
                            eVar5 = eVar;
                            break;
                        }
                        i24++;
                        eVar5 = eVar;
                        bVar.b(eVar5, i24, i29, i30);
                        i20 = i29;
                        iK = i30;
                        iMax3 = iMax5;
                        size2 = i28;
                        interfaceC0261b2 = interfaceC0261b3;
                        z16 = false;
                        i26 = 2;
                        i25 = iMax4;
                        i23 = 0;
                    }
                } else {
                    i21 = i19;
                }
                eVar5.e0(i21);
            }
            int iR9 = this.f1516j.r();
            int iK9 = this.f1516j.k();
            s.e eVar117 = this.f1516j;
            l(i10, i11, iR9, iK9, eVar117.F0, eVar117.G0);
        }
        if (childCount3 == 0) {
            iMax2 = Math.max(0, this.f1518l);
        } else {
            iMax2 = i46;
        }
        i14 = 2;
        if (iMin == eVar5.r()) {
            eVar5.f14896t0.f15284c = true;
            i15 = 0;
        } else {
            eVar5.f14896t0.f15284c = true;
            i15 = 0;
        }
        eVar5.f14854a0 = i15;
        eVar5.f14856b0 = i15;
        int i412 = this.f1519m - i48;
        int[] iArr8 = eVar5.C;
        iArr8[i15] = i412;
        iArr8[1] = this.f1520n - i47;
        eVar5.O(i15);
        eVar5.N(i15);
        eVar5.M(i12);
        eVar5.Q(iMin);
        eVar5.P(i14);
        eVar5.L(iMax2);
        eVar5.O(this.f1517k - i48);
        eVar5.N(this.f1518l - i47);
        eVar5.f14901y0 = iMax8;
        eVar5.f14902z0 = iMax6;
        bVar = eVar5.f14895s0;
        Objects.requireNonNull(bVar);
        aVar = s.c.a.BOTTOM;
        aVar2 = s.c.a.RIGHT;
        interfaceC0261b = eVar5.f14898v0;
        size = eVar5.f14911r0.size();
        iR = eVar5.r();
        iK = eVar5.k();
        zI = androidx.emoji2.text.b.i(i43, 128);
        if (zI) {
            z10 = true;
        } else {
            z10 = true;
        }
        if (z10) {
            i41 = 0;
            while (true) {
                if (i41 < size) {
                    dVar7 = eVar5.f14911r0.get(i41);
                    z23 = z10;
                    iArr2 = dVar7.U;
                    if (iArr2[0] == 3) {
                        z24 = true;
                    } else {
                        z24 = false;
                    }
                    if (iArr2[1] == 3) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    if (z24) {
                        z26 = false;
                    } else {
                        z26 = false;
                    }
                    if (dVar7.y()) {
                        i41++;
                        z10 = z23;
                    } else {
                        i41++;
                        z10 = z23;
                    }
                    i16 = 1073741824;
                    z11 = false;
                } else {
                    z11 = z10;
                    i16 = 1073741824;
                }
            }
        } else {
            z11 = z10;
            i16 = 1073741824;
        }
        z12 = z11 & ((mode != i16 && mode2 == i16) || zI);
        if (z12) {
            iMin2 = Math.min(eVar5.C[0], i45);
            iMin3 = Math.min(eVar5.C[1], i46);
            if (mode == 1073741824) {
                eVar5.Q(iMin2);
                eVar5.b0();
            }
            if (mode2 == 1073741824) {
                eVar5.L(iMin3);
                eVar5.b0();
            }
            if (mode == 1073741824) {
                aVar3 = aVar;
                aVar2 = aVar2;
                z13 = z12;
                interfaceC0261b = interfaceC0261b;
                i17 = iR;
                eVar3 = eVar5.f14896t0;
                if (eVar3.f15283b) {
                    while (r3.hasNext()) {
                        dVar8.g();
                        dVar8.f14853a = false;
                        l lVar12 = dVar8.f14859d;
                        lVar12.f15319e.f15299j = false;
                        lVar12.f15321g = false;
                        lVar12.n();
                        n nVar12 = dVar8.f14860e;
                        nVar12.f15319e.f15299j = false;
                        nVar12.f15321g = false;
                        nVar12.m();
                    }
                    i37 = 0;
                    eVar3.f15282a.g();
                    s.e eVar118 = eVar3.f15282a;
                    eVar118.f14853a = false;
                    l lVar13 = eVar118.f14859d;
                    lVar13.f15319e.f15299j = false;
                    lVar13.f15321g = false;
                    lVar13.n();
                    n nVar13 = eVar3.f15282a.f14860e;
                    nVar13.f15319e.f15299j = false;
                    nVar13.f15321g = false;
                    nVar13.m();
                    eVar3.c();
                } else {
                    i37 = 0;
                }
                eVar3.b(eVar3.f15285d);
                s.e eVar119 = eVar3.f15282a;
                eVar119.f14854a0 = i37;
                eVar119.f14856b0 = i37;
                eVar119.f14859d.f15322h.d(i37);
                eVar3.f15282a.f14860e.f15322h.d(i37);
                i38 = 1073741824;
                if (mode == 1073741824) {
                    i39 = 1;
                    boolean zA7 = eVar5.a0(zI, i37) & true;
                    i18 = 1;
                    zA0 = zA7;
                } else {
                    i39 = 1;
                    zA0 = true;
                    i18 = 0;
                }
                if (mode2 == 1073741824) {
                    zA0 &= eVar5.a0(zI, i39);
                    i18++;
                }
            } else {
                aVar3 = aVar;
                aVar2 = aVar2;
                z13 = z12;
                interfaceC0261b = interfaceC0261b;
                i17 = iR;
                eVar3 = eVar5.f14896t0;
                if (eVar3.f15283b) {
                    while (r3.hasNext()) {
                        dVar8.g();
                        dVar8.f14853a = false;
                        l lVar14 = dVar8.f14859d;
                        lVar14.f15319e.f15299j = false;
                        lVar14.f15321g = false;
                        lVar14.n();
                        n nVar14 = dVar8.f14860e;
                        nVar14.f15319e.f15299j = false;
                        nVar14.f15321g = false;
                        nVar14.m();
                    }
                    i37 = 0;
                    eVar3.f15282a.g();
                    s.e eVar1110 = eVar3.f15282a;
                    eVar1110.f14853a = false;
                    l lVar15 = eVar1110.f14859d;
                    lVar15.f15319e.f15299j = false;
                    lVar15.f15321g = false;
                    lVar15.n();
                    n nVar15 = eVar3.f15282a.f14860e;
                    nVar15.f15319e.f15299j = false;
                    nVar15.f15321g = false;
                    nVar15.m();
                    eVar3.c();
                } else {
                    i37 = 0;
                }
                eVar3.b(eVar3.f15285d);
                s.e eVar1111 = eVar3.f15282a;
                eVar1111.f14854a0 = i37;
                eVar1111.f14856b0 = i37;
                eVar1111.f14859d.f15322h.d(i37);
                eVar3.f15282a.f14860e.f15322h.d(i37);
                i38 = 1073741824;
                if (mode == 1073741824) {
                    i39 = 1;
                    boolean zA8 = eVar5.a0(zI, i37) & true;
                    i18 = 1;
                    zA0 = zA8;
                } else {
                    i39 = 1;
                    zA0 = true;
                    i18 = 0;
                }
                if (mode2 == 1073741824) {
                    zA0 &= eVar5.a0(zI, i39);
                    i18++;
                }
            }
            if (zA0) {
                if (mode == i38) {
                    z19 = true;
                } else {
                    z19 = false;
                }
                if (mode2 == i38) {
                    z20 = true;
                } else {
                    z20 = false;
                }
                eVar5.R(z19, z20);
            }
        } else {
            aVar3 = aVar;
            aVar2 = aVar2;
            z13 = z12;
            interfaceC0261b = interfaceC0261b;
            i17 = iR;
            zA0 = false;
            i18 = 0;
        }
        if (zA0) {
            i19 = eVar5.E0;
            if (size > 0) {
                size3 = eVar5.f14911r0.size();
                boolean zD5 = eVar5.d0(64);
                interfaceC0261b6 = eVar5.f14898v0;
                while (i34 < size3) {
                    dVar6 = eVar5.f14911r0.get(i34);
                    if (dVar6 instanceof s.f) {
                        iJ = dVar6.j(0);
                        int iJ9 = dVar6.j(1);
                        if (iJ == 3) {
                            z18 = false;
                        } else {
                            z18 = false;
                        }
                        if (z18) {
                        }
                        if (z18) {
                            bVar.a(interfaceC0261b6, dVar6, 0);
                        }
                    }
                }
                bVar2 = (b) interfaceC0261b6;
                childCount = bVar2.f1574a.getChildCount();
                while (i35 < childCount) {
                    childAt = bVar2.f1574a.getChildAt(i35);
                    if (childAt instanceof f) {
                        fVar = (f) childAt;
                        if (fVar.f1719i != null) {
                            a aVar14 = (a) fVar.getLayoutParams();
                            aVar8 = (a) fVar.f1719i.getLayoutParams();
                            dVar3 = aVar8.f1563q0;
                            dVar3.f14869i0 = 0;
                            dVar4 = aVar14.f1563q0;
                            if (dVar4.U[0] != 1) {
                                dVar4.Q(dVar3.r());
                            }
                            dVar5 = aVar14.f1563q0;
                            if (dVar5.U[1] != 1) {
                                dVar5.L(aVar8.f1563q0.k());
                            }
                            aVar8.f1563q0.f14869i0 = 8;
                        }
                    }
                }
                size4 = bVar2.f1574a.f1515i.size();
                if (size4 > 0) {
                    while (i36 < size4) {
                        Objects.requireNonNull(bVar2.f1574a.f1515i.get(i36));
                    }
                }
            }
            bVar.c(eVar5);
            size2 = bVar.f15267a.size();
            i20 = i17;
            if (size > 0) {
                bVar.b(eVar5, 0, i20, iK);
            }
            if (size2 > 0) {
                iArr = eVar5.U;
                if (iArr[0] == 2) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (iArr[1] == 2) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                iMax3 = Math.max(eVar5.r(), bVar.f15269c.d0);
                int iMax15 = Math.max(eVar5.k(), bVar.f15269c.f14861e0);
                i22 = 0;
                z16 = false;
                while (i22 < size2) {
                    dVar2 = bVar.f15267a.get(i22);
                    if (dVar2 instanceof i) {
                        aVar7 = aVar3;
                        aVar6 = aVar2;
                        interfaceC0261b5 = interfaceC0261b;
                    } else {
                        iR4 = dVar2.r();
                        iK4 = dVar2.k();
                        interfaceC0261b5 = interfaceC0261b;
                        zA2 = z16 | bVar.a(interfaceC0261b5, dVar2, 1);
                        iR5 = dVar2.r();
                        iK5 = dVar2.k();
                        if (iR5 != iR4) {
                            dVar2.Q(iR5);
                            if (z14) {
                                aVar6 = aVar2;
                            } else {
                                aVar6 = aVar2;
                            }
                            i33 = iMax3;
                            z17 = true;
                        } else {
                            aVar6 = aVar2;
                            i33 = iMax3;
                            z17 = zA2;
                        }
                        if (iK5 != iK4) {
                            dVar2.L(iK5);
                            if (z15) {
                                aVar7 = aVar3;
                            } else {
                                aVar7 = aVar3;
                            }
                            z17 = true;
                        } else {
                            aVar7 = aVar3;
                        }
                        boolean z218 = z17 | false;
                        iMax3 = i33;
                        z16 = z218;
                    }
                    i22++;
                    interfaceC0261b = interfaceC0261b5;
                    aVar2 = aVar6;
                    aVar3 = aVar7;
                    i19 = i19;
                }
                i21 = i19;
                aVar4 = aVar3;
                aVar5 = aVar2;
                interfaceC0261b2 = interfaceC0261b;
                i23 = 0;
                i24 = 0;
                i25 = iMax15;
                i26 = 2;
                while (i24 < i26) {
                    boolean z219 = z16;
                    i27 = i23;
                    iMax4 = i25;
                    iMax5 = iMax3;
                    zA = z219;
                    while (i27 < size2) {
                        dVar = bVar.f15267a.get(i27);
                        int i514 = size2;
                        if (dVar instanceof s.g) {
                            eVar2 = eVar5;
                            if (dVar.f14869i0 == 8) {
                                interfaceC0261b4 = interfaceC0261b2;
                                i31 = i20;
                                i32 = iK;
                            } else {
                                iR2 = dVar.r();
                                iK2 = dVar.k();
                                i31 = i20;
                                int i515 = dVar.f14858c0;
                                i32 = iK;
                                zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                iR3 = dVar.r();
                                interfaceC0261b4 = interfaceC0261b2;
                                iK3 = dVar.k();
                                if (iR3 != iR2) {
                                    dVar.Q(iR3);
                                    if (z14) {
                                        iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                    }
                                    zA = true;
                                }
                                if (iK3 != iK2) {
                                    dVar.L(iK3);
                                    if (z15) {
                                        iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                    }
                                    zA = true;
                                }
                                if (!dVar.E) {
                                }
                            }
                        } else {
                            eVar2 = eVar5;
                            if (dVar.f14869i0 == 8) {
                                interfaceC0261b4 = interfaceC0261b2;
                                i31 = i20;
                                i32 = iK;
                            } else {
                                iR2 = dVar.r();
                                iK2 = dVar.k();
                                i31 = i20;
                                int i516 = dVar.f14858c0;
                                i32 = iK;
                                zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                iR3 = dVar.r();
                                interfaceC0261b4 = interfaceC0261b2;
                                iK3 = dVar.k();
                                if (iR3 != iR2) {
                                    dVar.Q(iR3);
                                    if (z14) {
                                        iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                    }
                                    zA = true;
                                }
                                if (iK3 != iK2) {
                                    dVar.L(iK3);
                                    if (z15) {
                                        iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                    }
                                    zA = true;
                                }
                                if (!dVar.E) {
                                }
                            }
                        }
                        i27++;
                        size2 = i514;
                        eVar5 = eVar2;
                        iK = i32;
                        interfaceC0261b2 = interfaceC0261b4;
                        i20 = i31;
                    }
                    eVar = eVar5;
                    interfaceC0261b3 = interfaceC0261b2;
                    i28 = size2;
                    i29 = i20;
                    i30 = iK;
                    if (!zA) {
                        eVar5 = eVar;
                        break;
                    }
                    i24++;
                    eVar5 = eVar;
                    bVar.b(eVar5, i24, i29, i30);
                    i20 = i29;
                    iK = i30;
                    iMax3 = iMax5;
                    size2 = i28;
                    interfaceC0261b2 = interfaceC0261b3;
                    z16 = false;
                    i26 = 2;
                    i25 = iMax4;
                    i23 = 0;
                }
            } else {
                i21 = i19;
            }
            eVar5.e0(i21);
        } else {
            i19 = eVar5.E0;
            if (size > 0) {
                size3 = eVar5.f14911r0.size();
                boolean zD6 = eVar5.d0(64);
                interfaceC0261b6 = eVar5.f14898v0;
                while (i34 < size3) {
                    dVar6 = eVar5.f14911r0.get(i34);
                    if (dVar6 instanceof s.f) {
                        iJ = dVar6.j(0);
                        int iJ10 = dVar6.j(1);
                        if (iJ == 3) {
                            z18 = false;
                        } else {
                            z18 = false;
                        }
                        if (z18) {
                        }
                        if (z18) {
                            bVar.a(interfaceC0261b6, dVar6, 0);
                        }
                    }
                }
                bVar2 = (b) interfaceC0261b6;
                childCount = bVar2.f1574a.getChildCount();
                while (i35 < childCount) {
                    childAt = bVar2.f1574a.getChildAt(i35);
                    if (childAt instanceof f) {
                        fVar = (f) childAt;
                        if (fVar.f1719i != null) {
                            a aVar15 = (a) fVar.getLayoutParams();
                            aVar8 = (a) fVar.f1719i.getLayoutParams();
                            dVar3 = aVar8.f1563q0;
                            dVar3.f14869i0 = 0;
                            dVar4 = aVar15.f1563q0;
                            if (dVar4.U[0] != 1) {
                                dVar4.Q(dVar3.r());
                            }
                            dVar5 = aVar15.f1563q0;
                            if (dVar5.U[1] != 1) {
                                dVar5.L(aVar8.f1563q0.k());
                            }
                            aVar8.f1563q0.f14869i0 = 8;
                        }
                    }
                }
                size4 = bVar2.f1574a.f1515i.size();
                if (size4 > 0) {
                    while (i36 < size4) {
                        Objects.requireNonNull(bVar2.f1574a.f1515i.get(i36));
                    }
                }
            }
            bVar.c(eVar5);
            size2 = bVar.f15267a.size();
            i20 = i17;
            if (size > 0) {
                bVar.b(eVar5, 0, i20, iK);
            }
            if (size2 > 0) {
                iArr = eVar5.U;
                if (iArr[0] == 2) {
                    z14 = true;
                } else {
                    z14 = false;
                }
                if (iArr[1] == 2) {
                    z15 = true;
                } else {
                    z15 = false;
                }
                iMax3 = Math.max(eVar5.r(), bVar.f15269c.d0);
                int iMax16 = Math.max(eVar5.k(), bVar.f15269c.f14861e0);
                i22 = 0;
                z16 = false;
                while (i22 < size2) {
                    dVar2 = bVar.f15267a.get(i22);
                    if (dVar2 instanceof i) {
                        aVar7 = aVar3;
                        aVar6 = aVar2;
                        interfaceC0261b5 = interfaceC0261b;
                    } else {
                        iR4 = dVar2.r();
                        iK4 = dVar2.k();
                        interfaceC0261b5 = interfaceC0261b;
                        zA2 = z16 | bVar.a(interfaceC0261b5, dVar2, 1);
                        iR5 = dVar2.r();
                        iK5 = dVar2.k();
                        if (iR5 != iR4) {
                            dVar2.Q(iR5);
                            if (z14) {
                                aVar6 = aVar2;
                            } else {
                                aVar6 = aVar2;
                            }
                            i33 = iMax3;
                            z17 = true;
                        } else {
                            aVar6 = aVar2;
                            i33 = iMax3;
                            z17 = zA2;
                        }
                        if (iK5 != iK4) {
                            dVar2.L(iK5);
                            if (z15) {
                                aVar7 = aVar3;
                            } else {
                                aVar7 = aVar3;
                            }
                            z17 = true;
                        } else {
                            aVar7 = aVar3;
                        }
                        boolean z2110 = z17 | false;
                        iMax3 = i33;
                        z16 = z2110;
                    }
                    i22++;
                    interfaceC0261b = interfaceC0261b5;
                    aVar2 = aVar6;
                    aVar3 = aVar7;
                    i19 = i19;
                }
                i21 = i19;
                aVar4 = aVar3;
                aVar5 = aVar2;
                interfaceC0261b2 = interfaceC0261b;
                i23 = 0;
                i24 = 0;
                i25 = iMax16;
                i26 = 2;
                while (i24 < i26) {
                    boolean z2111 = z16;
                    i27 = i23;
                    iMax4 = i25;
                    iMax5 = iMax3;
                    zA = z2111;
                    while (i27 < size2) {
                        dVar = bVar.f15267a.get(i27);
                        int i517 = size2;
                        if (dVar instanceof s.g) {
                            eVar2 = eVar5;
                            if (dVar.f14869i0 == 8) {
                                interfaceC0261b4 = interfaceC0261b2;
                                i31 = i20;
                                i32 = iK;
                            } else {
                                iR2 = dVar.r();
                                iK2 = dVar.k();
                                i31 = i20;
                                int i518 = dVar.f14858c0;
                                i32 = iK;
                                zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                iR3 = dVar.r();
                                interfaceC0261b4 = interfaceC0261b2;
                                iK3 = dVar.k();
                                if (iR3 != iR2) {
                                    dVar.Q(iR3);
                                    if (z14) {
                                        iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                    }
                                    zA = true;
                                }
                                if (iK3 != iK2) {
                                    dVar.L(iK3);
                                    if (z15) {
                                        iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                    }
                                    zA = true;
                                }
                                if (!dVar.E) {
                                }
                            }
                        } else {
                            eVar2 = eVar5;
                            if (dVar.f14869i0 == 8) {
                                interfaceC0261b4 = interfaceC0261b2;
                                i31 = i20;
                                i32 = iK;
                            } else {
                                iR2 = dVar.r();
                                iK2 = dVar.k();
                                i31 = i20;
                                int i519 = dVar.f14858c0;
                                i32 = iK;
                                zA |= bVar.a(interfaceC0261b2, dVar, i24 == 1 ? 2 : 1);
                                iR3 = dVar.r();
                                interfaceC0261b4 = interfaceC0261b2;
                                iK3 = dVar.k();
                                if (iR3 != iR2) {
                                    dVar.Q(iR3);
                                    if (z14) {
                                        iMax5 = Math.max(iMax5, dVar.h(aVar5).d() + dVar.n());
                                    }
                                    zA = true;
                                }
                                if (iK3 != iK2) {
                                    dVar.L(iK3);
                                    if (z15) {
                                        iMax4 = Math.max(iMax4, dVar.h(aVar4).d() + dVar.i());
                                    }
                                    zA = true;
                                }
                                if (!dVar.E) {
                                }
                            }
                        }
                        i27++;
                        size2 = i517;
                        eVar5 = eVar2;
                        iK = i32;
                        interfaceC0261b2 = interfaceC0261b4;
                        i20 = i31;
                    }
                    eVar = eVar5;
                    interfaceC0261b3 = interfaceC0261b2;
                    i28 = size2;
                    i29 = i20;
                    i30 = iK;
                    if (!zA) {
                        eVar5 = eVar;
                        break;
                    }
                    i24++;
                    eVar5 = eVar;
                    bVar.b(eVar5, i24, i29, i30);
                    i20 = i29;
                    iK = i30;
                    iMax3 = iMax5;
                    size2 = i28;
                    interfaceC0261b2 = interfaceC0261b3;
                    z16 = false;
                    i26 = 2;
                    i25 = iMax4;
                    i23 = 0;
                }
            } else {
                i21 = i19;
            }
            eVar5.e0(i21);
        }
        int iR10 = this.f1516j.r();
        int iK10 = this.f1516j.k();
        s.e eVar1112 = this.f1516j;
        l(i10, i11, iR10, iK10, eVar1112.F0, eVar1112.G0);
    }

    @Override // android.view.ViewGroup
    public void onViewAdded(View view) {
        super.onViewAdded(view);
        s.d dVarE = e(view);
        if ((view instanceof Guideline) && !(dVarE instanceof s.f)) {
            a aVar = (a) view.getLayoutParams();
            s.f fVar = new s.f();
            aVar.f1563q0 = fVar;
            aVar.d0 = true;
            fVar.U(aVar.V);
        }
        if (view instanceof androidx.constraintlayout.widget.b) {
            androidx.constraintlayout.widget.b bVar = (androidx.constraintlayout.widget.b) view;
            bVar.k();
            ((a) view.getLayoutParams()).f1539e0 = true;
            if (!this.f1515i.contains(bVar)) {
                this.f1515i.add(bVar);
            }
        }
        this.f1514h.put(view.getId(), view);
        this.f1521o = true;
    }

    @Override // android.view.ViewGroup
    public void onViewRemoved(View view) {
        super.onViewRemoved(view);
        this.f1514h.remove(view.getId());
        s.d dVarE = e(view);
        this.f1516j.f14911r0.remove(dVarE);
        dVarE.D();
        this.f1515i.remove(view);
        this.f1521o = true;
    }

    public final void p(Object obj, Object obj2) {
        if ((obj instanceof String) && (obj2 instanceof Integer)) {
            if (this.f1526t == null) {
                this.f1526t = new HashMap<>();
            }
            String strSubstring = (String) obj;
            int iIndexOf = strSubstring.indexOf("/");
            if (iIndexOf != -1) {
                strSubstring = strSubstring.substring(iIndexOf + 1);
            }
            this.f1526t.put(strSubstring, Integer.valueOf(((Integer) obj2).intValue()));
        }
    }

    public final void q(s.d dVar, a aVar, SparseArray<s.d> sparseArray, int i10, s.c.a aVar2) {
        View view = this.f1514h.get(i10);
        s.d dVar2 = sparseArray.get(i10);
        if (dVar2 == null || view == null || !(view.getLayoutParams() instanceof a)) {
            return;
        }
        aVar.f1536c0 = true;
        s.c.a aVar3 = s.c.a.BASELINE;
        if (aVar2 == aVar3) {
            a aVar4 = (a) view.getLayoutParams();
            aVar4.f1536c0 = true;
            aVar4.f1563q0.E = true;
        }
        dVar.h(aVar3).a(dVar2.h(aVar2), aVar.D, aVar.C);
        dVar.E = true;
        dVar.h(s.c.a.TOP).h();
        dVar.h(s.c.a.BOTTOM).h();
    }

    /* JADX WARN: Code duplicated, block: B:149:0x02f0  */
    /* JADX WARN: Code duplicated, block: B:151:0x02fa  */
    /* JADX WARN: Code duplicated, block: B:152:0x030a  */
    /* JADX WARN: Code duplicated, block: B:158:0x032a  */
    /* JADX WARN: Code duplicated, block: B:160:0x0334  */
    /* JADX WARN: Code duplicated, block: B:161:0x0346  */
    /* JADX WARN: Code duplicated, block: B:168:0x036b  */
    /* JADX WARN: Code duplicated, block: B:170:0x0375  */
    /* JADX WARN: Code duplicated, block: B:171:0x0387  */
    /* JADX WARN: Code duplicated, block: B:178:0x03ac  */
    /* JADX WARN: Code duplicated, block: B:179:0x03bc  */
    /* JADX WARN: Code duplicated, block: B:181:0x03c4  */
    /* JADX WARN: Code duplicated, block: B:182:0x03cd  */
    /* JADX WARN: Code duplicated, block: B:184:0x03d1  */
    /* JADX WARN: Code duplicated, block: B:187:0x03de  */
    /* JADX WARN: Code duplicated, block: B:190:0x03e6  */
    /* JADX WARN: Code duplicated, block: B:262:0x0504  */
    public final boolean r() {
        boolean z10;
        boolean z11;
        int i10;
        s.d dVar;
        int i11;
        int i12;
        s.d dVar2;
        int i13;
        int i14;
        s.d dVar3;
        int i15;
        s.c.a aVar;
        s.c.a aVar2;
        s.c.a aVar3;
        int i16;
        int i17;
        int i18;
        float f10;
        s.d dVar4;
        s.d dVar5;
        s.d dVar6;
        char c10;
        int i19;
        int i20;
        float fAbs;
        int i21;
        String str;
        int iH;
        s.d dVar7;
        ConstraintLayout constraintLayout = this;
        int childCount = getChildCount();
        int i22 = 0;
        int i23 = 0;
        while (true) {
            z10 = true;
            if (i23 >= childCount) {
                z11 = false;
                break;
            }
            if (constraintLayout.getChildAt(i23).isLayoutRequested()) {
                z11 = true;
                break;
            }
            i23++;
        }
        if (z11) {
            boolean zIsInEditMode = isInEditMode();
            int childCount2 = getChildCount();
            for (int i24 = 0; i24 < childCount2; i24++) {
                s.d dVarE = constraintLayout.e(constraintLayout.getChildAt(i24));
                if (dVarE != null) {
                    dVarE.D();
                }
            }
            Object obj = null;
            int i25 = -1;
            if (zIsInEditMode) {
                for (int i26 = 0; i26 < childCount2; i26++) {
                    View childAt = constraintLayout.getChildAt(i26);
                    try {
                        String resourceName = getResources().getResourceName(childAt.getId());
                        constraintLayout.p(resourceName, Integer.valueOf(childAt.getId()));
                        int iIndexOf = resourceName.indexOf(47);
                        if (iIndexOf != -1) {
                            resourceName = resourceName.substring(iIndexOf + 1);
                        }
                        int id2 = childAt.getId();
                        if (id2 == 0) {
                            dVar7 = constraintLayout.f1516j;
                        } else {
                            View viewFindViewById = constraintLayout.f1514h.get(id2);
                            if (viewFindViewById == null && (viewFindViewById = constraintLayout.findViewById(id2)) != null && viewFindViewById != constraintLayout && viewFindViewById.getParent() == constraintLayout) {
                                constraintLayout.onViewAdded(viewFindViewById);
                            }
                            dVar7 = viewFindViewById == constraintLayout ? constraintLayout.f1516j : viewFindViewById == null ? null : ((a) viewFindViewById.getLayoutParams()).f1563q0;
                        }
                        dVar7.f14871j0 = resourceName;
                    } catch (Resources.NotFoundException unused) {
                    }
                }
            }
            if (constraintLayout.f1525s != -1) {
                for (int i27 = 0; i27 < childCount2; i27++) {
                    View childAt2 = constraintLayout.getChildAt(i27);
                    if (childAt2.getId() == constraintLayout.f1525s && (childAt2 instanceof e)) {
                        constraintLayout.f1523q = ((e) childAt2).getConstraintSet();
                    }
                }
            }
            d dVar8 = constraintLayout.f1523q;
            if (dVar8 != null) {
                dVar8.b(constraintLayout);
            }
            constraintLayout.f1516j.f14911r0.clear();
            int size = constraintLayout.f1515i.size();
            char c11 = 2;
            if (size > 0) {
                int i28 = 0;
                while (i28 < size) {
                    androidx.constraintlayout.widget.b bVar = constraintLayout.f1515i.get(i28);
                    if (bVar.isInEditMode()) {
                        bVar.setIds(bVar.f1595l);
                    }
                    s.a aVar4 = bVar.f1594k;
                    if (aVar4 != null) {
                        aVar4.f14910s0 = i22;
                        Arrays.fill(aVar4.f14909r0, obj);
                        for (int i29 = i22; i29 < bVar.f1592i; i29++) {
                            int i30 = bVar.f1591h[i29];
                            View viewD = constraintLayout.d(i30);
                            if (viewD == null && (iH = bVar.h(constraintLayout, (str = bVar.f1598o.get(Integer.valueOf(i30))))) != 0) {
                                bVar.f1591h[i29] = iH;
                                bVar.f1598o.put(Integer.valueOf(iH), str);
                                viewD = constraintLayout.d(iH);
                            }
                            if (viewD != null) {
                                s.a aVar5 = bVar.f1594k;
                                s.d dVarE2 = constraintLayout.e(viewD);
                                Objects.requireNonNull(aVar5);
                                if (dVarE2 != aVar5 && dVarE2 != null) {
                                    int i31 = aVar5.f14910s0 + 1;
                                    s.d[] dVarArr = aVar5.f14909r0;
                                    if (i31 > dVarArr.length) {
                                        aVar5.f14909r0 = (s.d[]) Arrays.copyOf(dVarArr, dVarArr.length * 2);
                                    }
                                    s.d[] dVarArr2 = aVar5.f14909r0;
                                    int i32 = aVar5.f14910s0;
                                    dVarArr2[i32] = dVarE2;
                                    aVar5.f14910s0 = i32 + 1;
                                }
                            }
                        }
                        Objects.requireNonNull(bVar.f1594k);
                    }
                    i28++;
                    obj = null;
                    i22 = 0;
                }
            }
            for (int i33 = 0; i33 < childCount2; i33++) {
                View childAt3 = constraintLayout.getChildAt(i33);
                if (childAt3 instanceof f) {
                    f fVar = (f) childAt3;
                    if (fVar.f1718h == -1 && !fVar.isInEditMode()) {
                        fVar.setVisibility(fVar.f1720j);
                    }
                    View viewFindViewById2 = constraintLayout.findViewById(fVar.f1718h);
                    fVar.f1719i = viewFindViewById2;
                    if (viewFindViewById2 != null) {
                        ((a) viewFindViewById2.getLayoutParams()).f1541f0 = true;
                        fVar.f1719i.setVisibility(0);
                        fVar.setVisibility(0);
                    }
                }
            }
            constraintLayout.f1527u.clear();
            constraintLayout.f1527u.put(0, constraintLayout.f1516j);
            constraintLayout.f1527u.put(getId(), constraintLayout.f1516j);
            for (int i34 = 0; i34 < childCount2; i34++) {
                View childAt4 = constraintLayout.getChildAt(i34);
                constraintLayout.f1527u.put(childAt4.getId(), constraintLayout.e(childAt4));
            }
            int i35 = 0;
            while (i35 < childCount2) {
                View childAt5 = constraintLayout.getChildAt(i35);
                s.d dVarE3 = constraintLayout.e(childAt5);
                if (dVarE3 == null) {
                    c10 = c11;
                } else {
                    a aVar6 = (a) childAt5.getLayoutParams();
                    s.e eVar = constraintLayout.f1516j;
                    eVar.f14911r0.add(dVarE3);
                    s.d dVar9 = dVarE3.V;
                    if (dVar9 != null) {
                        ((s.j) dVar9).f14911r0.remove(dVarE3);
                        dVarE3.D();
                    }
                    dVarE3.V = eVar;
                    SparseArray<s.d> sparseArray = constraintLayout.f1527u;
                    s.c.a aVar7 = s.c.a.RIGHT;
                    s.c.a aVar8 = s.c.a.LEFT;
                    s.c.a aVar9 = s.c.a.BOTTOM;
                    s.c.a aVar10 = s.c.a.TOP;
                    aVar6.a();
                    dVarE3.f14869i0 = childAt5.getVisibility();
                    if (aVar6.f1541f0) {
                        dVarE3.F = z10;
                        dVarE3.f14869i0 = 8;
                    }
                    dVarE3.f14867h0 = childAt5;
                    if (childAt5 instanceof androidx.constraintlayout.widget.b) {
                        ((androidx.constraintlayout.widget.b) childAt5).j(dVarE3, constraintLayout.f1516j.f14899w0);
                    }
                    if (aVar6.d0) {
                        s.f fVar2 = (s.f) dVarE3;
                        int i36 = aVar6.f1557n0;
                        int i37 = aVar6.f1559o0;
                        float f11 = aVar6.f1561p0;
                        if (f11 != -1.0f) {
                            if (f11 > -1.0f) {
                                fVar2.f14903r0 = f11;
                                fVar2.f14904s0 = i25;
                                fVar2.f14905t0 = i25;
                            }
                        } else if (i36 != i25) {
                            if (i36 > i25) {
                                fVar2.f14903r0 = -1.0f;
                                fVar2.f14904s0 = i36;
                                fVar2.f14905t0 = i25;
                            }
                        } else if (i37 != i25 && i37 > i25) {
                            fVar2.f14903r0 = -1.0f;
                            fVar2.f14904s0 = i25;
                            fVar2.f14905t0 = i37;
                        }
                        c10 = 2;
                    } else {
                        int i38 = aVar6.f1543g0;
                        int i39 = aVar6.f1545h0;
                        int i40 = aVar6.f1547i0;
                        int i41 = aVar6.f1549j0;
                        int i42 = aVar6.f1551k0;
                        childCount2 = childCount2;
                        int i43 = aVar6.f1553l0;
                        z11 = z11;
                        float f12 = aVar6.f1555m0;
                        i35 = i35;
                        int i44 = aVar6.f1560p;
                        zIsInEditMode = zIsInEditMode;
                        if (i44 != -1) {
                            s.d dVar10 = sparseArray.get(i44);
                            if (dVar10 != null) {
                                float f13 = aVar6.f1564r;
                                int i45 = aVar6.f1562q;
                                s.c.a aVar11 = s.c.a.CENTER;
                                dVarE3.w(aVar11, dVar10, aVar11, i45, 0);
                                dVarE3.D = f13;
                            }
                            aVar = aVar9;
                            aVar2 = aVar8;
                            aVar3 = aVar7;
                            i16 = 4;
                        } else {
                            if (i38 != -1) {
                                s.d dVar11 = sparseArray.get(i38);
                                if (dVar11 != null) {
                                    dVarE3.w(aVar8, dVar11, aVar8, ((ViewGroup.MarginLayoutParams) aVar6).leftMargin, i42);
                                }
                            } else {
                                i10 = -1;
                                if (i39 == -1) {
                                    if (i40 != i10) {
                                        dVar6 = sparseArray.get(i40);
                                        if (dVar6 != null) {
                                            dVarE3.w(aVar7, dVar6, aVar8, ((ViewGroup.MarginLayoutParams) aVar6).rightMargin, i43);
                                        }
                                    } else if (i41 != i10 && (dVar = sparseArray.get(i41)) != null) {
                                        dVarE3.w(aVar7, dVar, aVar7, ((ViewGroup.MarginLayoutParams) aVar6).rightMargin, i43);
                                    }
                                    i11 = aVar6.f1546i;
                                    if (i11 != -1) {
                                        dVar5 = sparseArray.get(i11);
                                        if (dVar5 != null) {
                                            dVarE3.w(aVar10, dVar5, aVar10, ((ViewGroup.MarginLayoutParams) aVar6).topMargin, aVar6.f1570x);
                                        }
                                    } else {
                                        i12 = aVar6.f1548j;
                                        if (i12 != -1 && (dVar2 = sparseArray.get(i12)) != null) {
                                            dVarE3.w(aVar10, dVar2, aVar9, ((ViewGroup.MarginLayoutParams) aVar6).topMargin, aVar6.f1570x);
                                        }
                                    }
                                    i13 = aVar6.f1550k;
                                    if (i13 != -1) {
                                        dVar4 = sparseArray.get(i13);
                                        if (dVar4 != null) {
                                            dVarE3.w(aVar9, dVar4, aVar10, ((ViewGroup.MarginLayoutParams) aVar6).bottomMargin, aVar6.f1572z);
                                        }
                                    } else {
                                        i14 = aVar6.f1552l;
                                        if (i14 != -1 && (dVar3 = sparseArray.get(i14)) != null) {
                                            dVarE3.w(aVar9, dVar3, aVar9, ((ViewGroup.MarginLayoutParams) aVar6).bottomMargin, aVar6.f1572z);
                                        }
                                    }
                                    i15 = aVar6.f1554m;
                                    if (i15 != -1) {
                                        aVar = aVar9;
                                        aVar2 = aVar8;
                                        aVar3 = aVar7;
                                        i16 = 4;
                                        q(dVarE3, aVar6, sparseArray, i15, s.c.a.BASELINE);
                                    } else {
                                        aVar = aVar9;
                                        aVar2 = aVar8;
                                        aVar3 = aVar7;
                                        i16 = 4;
                                        i17 = aVar6.f1556n;
                                        if (i17 != -1) {
                                            q(dVarE3, aVar6, sparseArray, i17, aVar10);
                                        } else {
                                            i18 = aVar6.f1558o;
                                            if (i18 != -1) {
                                                q(dVarE3, aVar6, sparseArray, i18, aVar);
                                            }
                                        }
                                    }
                                    if (f12 >= 0.0f) {
                                        dVarE3.f14863f0 = f12;
                                    }
                                    f10 = aVar6.F;
                                    if (f10 >= 0.0f) {
                                        dVarE3.f14865g0 = f10;
                                    }
                                } else {
                                    s.d dVar12 = sparseArray.get(i39);
                                    if (dVar12 != null) {
                                        dVarE3.w(aVar8, dVar12, aVar7, ((ViewGroup.MarginLayoutParams) aVar6).leftMargin, i42);
                                    }
                                }
                            }
                            i10 = -1;
                            if (i40 != i10) {
                                dVar6 = sparseArray.get(i40);
                                if (dVar6 != null) {
                                    dVarE3.w(aVar7, dVar6, aVar8, ((ViewGroup.MarginLayoutParams) aVar6).rightMargin, i43);
                                }
                            } else if (i41 != i10) {
                                dVarE3.w(aVar7, dVar, aVar7, ((ViewGroup.MarginLayoutParams) aVar6).rightMargin, i43);
                            }
                            i11 = aVar6.f1546i;
                            if (i11 != -1) {
                                dVar5 = sparseArray.get(i11);
                                if (dVar5 != null) {
                                    dVarE3.w(aVar10, dVar5, aVar10, ((ViewGroup.MarginLayoutParams) aVar6).topMargin, aVar6.f1570x);
                                }
                            } else {
                                i12 = aVar6.f1548j;
                                if (i12 != -1) {
                                    dVarE3.w(aVar10, dVar2, aVar9, ((ViewGroup.MarginLayoutParams) aVar6).topMargin, aVar6.f1570x);
                                }
                            }
                            i13 = aVar6.f1550k;
                            if (i13 != -1) {
                                dVar4 = sparseArray.get(i13);
                                if (dVar4 != null) {
                                    dVarE3.w(aVar9, dVar4, aVar10, ((ViewGroup.MarginLayoutParams) aVar6).bottomMargin, aVar6.f1572z);
                                }
                            } else {
                                i14 = aVar6.f1552l;
                                if (i14 != -1) {
                                    dVarE3.w(aVar9, dVar3, aVar9, ((ViewGroup.MarginLayoutParams) aVar6).bottomMargin, aVar6.f1572z);
                                }
                            }
                            i15 = aVar6.f1554m;
                            if (i15 != -1) {
                                aVar = aVar9;
                                aVar2 = aVar8;
                                aVar3 = aVar7;
                                i16 = 4;
                                q(dVarE3, aVar6, sparseArray, i15, s.c.a.BASELINE);
                            } else {
                                aVar = aVar9;
                                aVar2 = aVar8;
                                aVar3 = aVar7;
                                i16 = 4;
                                i17 = aVar6.f1556n;
                                if (i17 != -1) {
                                    q(dVarE3, aVar6, sparseArray, i17, aVar10);
                                } else {
                                    i18 = aVar6.f1558o;
                                    if (i18 != -1) {
                                        q(dVarE3, aVar6, sparseArray, i18, aVar);
                                    }
                                }
                            }
                            if (f12 >= 0.0f) {
                                dVarE3.f14863f0 = f12;
                            }
                            f10 = aVar6.F;
                            if (f10 >= 0.0f) {
                                dVarE3.f14865g0 = f10;
                            }
                        }
                        if (zIsInEditMode && ((i21 = aVar6.T) != -1 || aVar6.U != -1)) {
                            int i46 = aVar6.U;
                            dVarE3.f14854a0 = i21;
                            dVarE3.f14856b0 = i46;
                        }
                        if (aVar6.f1532a0) {
                            dVarE3.M(1);
                            dVarE3.Q(((ViewGroup.MarginLayoutParams) aVar6).width);
                            if (((ViewGroup.MarginLayoutParams) aVar6).width == -2) {
                                dVarE3.M(2);
                            }
                        } else if (((ViewGroup.MarginLayoutParams) aVar6).width == -1) {
                            if (aVar6.W) {
                                dVarE3.M(3);
                            } else {
                                dVarE3.M(i16);
                            }
                            dVarE3.h(aVar2).f14841g = ((ViewGroup.MarginLayoutParams) aVar6).leftMargin;
                            dVarE3.h(aVar3).f14841g = ((ViewGroup.MarginLayoutParams) aVar6).rightMargin;
                        } else {
                            dVarE3.M(3);
                            dVarE3.Q(0);
                        }
                        if (aVar6.f1534b0) {
                            i25 = -1;
                            dVarE3.P(1);
                            dVarE3.L(((ViewGroup.MarginLayoutParams) aVar6).height);
                            if (((ViewGroup.MarginLayoutParams) aVar6).height == -2) {
                                dVarE3.P(2);
                            }
                        } else {
                            i25 = -1;
                            if (((ViewGroup.MarginLayoutParams) aVar6).height == -1) {
                                if (aVar6.X) {
                                    dVarE3.P(3);
                                } else {
                                    dVarE3.P(i16);
                                }
                                dVarE3.h(aVar10).f14841g = ((ViewGroup.MarginLayoutParams) aVar6).topMargin;
                                dVarE3.h(aVar).f14841g = ((ViewGroup.MarginLayoutParams) aVar6).bottomMargin;
                            } else {
                                dVarE3.P(3);
                                dVarE3.L(0);
                            }
                        }
                        String str2 = aVar6.G;
                        if (str2 == null || str2.length() == 0) {
                            dVarE3.Y = 0.0f;
                        } else {
                            int length = str2.length();
                            int iIndexOf2 = str2.indexOf(44);
                            if (iIndexOf2 <= 0 || iIndexOf2 >= length - 1) {
                                i19 = i25;
                                i20 = 0;
                            } else {
                                String strSubstring = str2.substring(0, iIndexOf2);
                                i19 = strSubstring.equalsIgnoreCase("W") ? 0 : strSubstring.equalsIgnoreCase("H") ? 1 : i25;
                                i20 = iIndexOf2 + 1;
                            }
                            int iIndexOf3 = str2.indexOf(58);
                            if (iIndexOf3 < 0 || iIndexOf3 >= length - 1) {
                                String strSubstring2 = str2.substring(i20);
                                if (strSubstring2.length() > 0) {
                                    fAbs = Float.parseFloat(strSubstring2);
                                } else {
                                    fAbs = 0.0f;
                                }
                            } else {
                                String strSubstring3 = str2.substring(i20, iIndexOf3);
                                String strSubstring4 = str2.substring(iIndexOf3 + 1);
                                if (strSubstring3.length() <= 0 || strSubstring4.length() <= 0) {
                                    fAbs = 0.0f;
                                } else {
                                    try {
                                        float f14 = Float.parseFloat(strSubstring3);
                                        float f15 = Float.parseFloat(strSubstring4);
                                        if (f14 <= 0.0f || f15 <= 0.0f) {
                                            fAbs = 0.0f;
                                        } else {
                                            fAbs = i19 == 1 ? Math.abs(f15 / f14) : Math.abs(f14 / f15);
                                        }
                                    } catch (NumberFormatException unused2) {
                                    }
                                }
                            }
                            if (fAbs > 0.0f) {
                                dVarE3.Y = fAbs;
                                dVarE3.Z = i19;
                            }
                        }
                        float f16 = aVar6.H;
                        float[] fArr = dVarE3.f14877m0;
                        fArr[0] = f16;
                        z10 = true;
                        fArr[1] = aVar6.I;
                        dVarE3.f14873k0 = aVar6.J;
                        dVarE3.f14875l0 = aVar6.K;
                        int i47 = aVar6.Z;
                        if (i47 >= 0 && i47 <= 3) {
                            dVarE3.f14884q = i47;
                        }
                        int i48 = aVar6.L;
                        int i49 = aVar6.N;
                        int i50 = aVar6.P;
                        float f17 = aVar6.R;
                        dVarE3.f14886r = i48;
                        dVarE3.f14889u = i49;
                        if (i50 == Integer.MAX_VALUE) {
                            i50 = 0;
                        }
                        dVarE3.f14890v = i50;
                        dVarE3.f14891w = f17;
                        if (f17 > 0.0f && f17 < 1.0f && i48 == 0) {
                            dVarE3.f14886r = 2;
                        }
                        int i51 = aVar6.M;
                        int i52 = aVar6.O;
                        int i53 = aVar6.Q;
                        float f18 = aVar6.S;
                        dVarE3.f14887s = i51;
                        dVarE3.f14892x = i52;
                        if (i53 == Integer.MAX_VALUE) {
                            i53 = 0;
                        }
                        dVarE3.f14893y = i53;
                        dVarE3.f14894z = f18;
                        if (f18 <= 0.0f || f18 >= 1.0f || i51 != 0) {
                            c10 = 2;
                        } else {
                            c10 = 2;
                            dVarE3.f14887s = 2;
                        }
                    }
                    i35++;
                    constraintLayout = this;
                    c11 = c10;
                    z10 = z10;
                    i25 = i25;
                    childCount2 = childCount2;
                    z11 = z11;
                    zIsInEditMode = zIsInEditMode;
                }
                i35++;
                constraintLayout = this;
                c11 = c10;
                z10 = z10;
                i25 = i25;
                childCount2 = childCount2;
                z11 = z11;
                zIsInEditMode = zIsInEditMode;
            }
        }
        return z11;
    }

    @Override // android.view.View, android.view.ViewParent
    public void requestLayout() {
        this.f1521o = true;
        super.requestLayout();
    }

    public void setConstraintSet(d dVar) {
        this.f1523q = dVar;
    }

    @Override // android.view.View
    public void setId(int i10) {
        this.f1514h.remove(getId());
        super.setId(i10);
        this.f1514h.put(getId(), this);
    }

    public void setMaxHeight(int i10) {
        if (i10 == this.f1520n) {
            return;
        }
        this.f1520n = i10;
        requestLayout();
    }

    public void setMaxWidth(int i10) {
        if (i10 == this.f1519m) {
            return;
        }
        this.f1519m = i10;
        requestLayout();
    }

    public void setMinHeight(int i10) {
        if (i10 == this.f1518l) {
            return;
        }
        this.f1518l = i10;
        requestLayout();
    }

    public void setMinWidth(int i10) {
        if (i10 == this.f1517k) {
            return;
        }
        this.f1517k = i10;
        requestLayout();
    }

    public void setOnConstraintsChanged(v.a aVar) {
    }

    public void setOptimizationLevel(int i10) {
        this.f1522p = i10;
        this.f1516j.e0(i10);
    }

    @Override // android.view.ViewGroup
    public final boolean shouldDelayChildPressedState() {
        return false;
    }

    @Override // android.view.ViewGroup
    public final ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams layoutParams) {
        return new a(layoutParams);
    }

    public ConstraintLayout(Context context, AttributeSet attributeSet, int i10) {
        super(context, attributeSet, i10);
        this.f1514h = new SparseArray<>();
        this.f1515i = new ArrayList<>(4);
        this.f1516j = new s.e();
        this.f1517k = 0;
        this.f1518l = 0;
        this.f1519m = Integer.MAX_VALUE;
        this.f1520n = Integer.MAX_VALUE;
        this.f1521o = true;
        this.f1522p = 257;
        this.f1523q = null;
        this.f1524r = null;
        this.f1525s = -1;
        this.f1526t = new HashMap<>();
        this.f1527u = new SparseArray<>();
        this.f1528v = new b(this);
        this.f1529w = 0;
        this.f1530x = 0;
        f(attributeSet, i10);
    }

    public static class a extends ViewGroup.MarginLayoutParams {
        public int A;
        public int B;
        public int C;
        public int D;
        public float E;
        public float F;
        public String G;
        public float H;
        public float I;
        public int J;
        public int K;
        public int L;
        public int M;
        public int N;
        public int O;
        public int P;
        public int Q;
        public float R;
        public float S;
        public int T;
        public int U;
        public int V;
        public boolean W;
        public boolean X;
        public String Y;
        public int Z;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f1531a;

        /* JADX INFO: renamed from: a0, reason: collision with root package name */
        public boolean f1532a0;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f1533b;

        /* JADX INFO: renamed from: b0, reason: collision with root package name */
        public boolean f1534b0;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f1535c;

        /* JADX INFO: renamed from: c0, reason: collision with root package name */
        public boolean f1536c0;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public boolean f1537d;
        public boolean d0;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f1538e;

        /* JADX INFO: renamed from: e0, reason: collision with root package name */
        public boolean f1539e0;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f1540f;

        /* JADX INFO: renamed from: f0, reason: collision with root package name */
        public boolean f1541f0;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f1542g;

        /* JADX INFO: renamed from: g0, reason: collision with root package name */
        public int f1543g0;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f1544h;

        /* JADX INFO: renamed from: h0, reason: collision with root package name */
        public int f1545h0;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f1546i;

        /* JADX INFO: renamed from: i0, reason: collision with root package name */
        public int f1547i0;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f1548j;

        /* JADX INFO: renamed from: j0, reason: collision with root package name */
        public int f1549j0;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public int f1550k;

        /* JADX INFO: renamed from: k0, reason: collision with root package name */
        public int f1551k0;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public int f1552l;

        /* JADX INFO: renamed from: l0, reason: collision with root package name */
        public int f1553l0;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f1554m;

        /* JADX INFO: renamed from: m0, reason: collision with root package name */
        public float f1555m0;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public int f1556n;

        /* JADX INFO: renamed from: n0, reason: collision with root package name */
        public int f1557n0;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f1558o;

        /* JADX INFO: renamed from: o0, reason: collision with root package name */
        public int f1559o0;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f1560p;

        /* JADX INFO: renamed from: p0, reason: collision with root package name */
        public float f1561p0;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f1562q;

        /* JADX INFO: renamed from: q0, reason: collision with root package name */
        public s.d f1563q0;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public float f1564r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public int f1565s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f1566t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f1567u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public int f1568v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public int f1569w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public int f1570x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public int f1571y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public int f1572z;

        /* JADX INFO: renamed from: androidx.constraintlayout.widget.ConstraintLayout$a$a, reason: collision with other inner class name */
        public static class C0019a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final SparseIntArray f1573a;

            static {
                SparseIntArray sparseIntArray = new SparseIntArray();
                f1573a = sparseIntArray;
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth, 64);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight, 65);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toLeftOf, 8);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_toRightOf, 9);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toLeftOf, 10);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_toRightOf, 11);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toTopOf, 12);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_toBottomOf, 13);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toTopOf, 14);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_toBottomOf, 15);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBaselineOf, 16);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toTopOf, 52);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_toBottomOf, 53);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircle, 2);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleRadius, 3);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintCircleAngle, 4);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteX, 49);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_editor_absoluteY, 50);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_begin, 5);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_end, 6);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintGuide_percent, 7);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_guidelineUseRtl, 67);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_android_orientation, 1);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toEndOf, 17);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintStart_toStartOf, 18);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toStartOf, 19);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintEnd_toEndOf, 20);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginLeft, 21);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginTop, 22);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginRight, 23);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBottom, 24);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginStart, 25);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginEnd, 26);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_goneMarginBaseline, 55);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_marginBaseline, 54);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_bias, 29);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_bias, 30);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintDimensionRatio, 44);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_weight, 45);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_weight, 46);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHorizontal_chainStyle, 47);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintVertical_chainStyle, 48);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constrainedWidth, 27);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constrainedHeight, 28);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_default, 31);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_default, 32);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_min, 33);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_max, 34);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintWidth_percent, 35);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_min, 36);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_max, 37);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintHeight_percent, 38);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintLeft_creator, 39);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTop_creator, 40);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintRight_creator, 41);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBottom_creator, 42);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintBaseline_creator, 43);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_constraintTag, 51);
                sparseIntArray.append(R.styleable.ConstraintLayout_Layout_layout_wrapBehaviorInParent, 66);
            }
        }

        public a(Context context, AttributeSet attributeSet) {
            super(context, attributeSet);
            this.f1531a = -1;
            this.f1533b = -1;
            this.f1535c = -1.0f;
            this.f1537d = true;
            this.f1538e = -1;
            this.f1540f = -1;
            this.f1542g = -1;
            this.f1544h = -1;
            this.f1546i = -1;
            this.f1548j = -1;
            this.f1550k = -1;
            this.f1552l = -1;
            this.f1554m = -1;
            this.f1556n = -1;
            this.f1558o = -1;
            this.f1560p = -1;
            this.f1562q = 0;
            this.f1564r = 0.0f;
            this.f1565s = -1;
            this.f1566t = -1;
            this.f1567u = -1;
            this.f1568v = -1;
            this.f1569w = Integer.MIN_VALUE;
            this.f1570x = Integer.MIN_VALUE;
            this.f1571y = Integer.MIN_VALUE;
            this.f1572z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = 0.5f;
            this.F = 0.5f;
            this.G = null;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 1.0f;
            this.S = 1.0f;
            this.T = -1;
            this.U = -1;
            this.V = -1;
            this.W = false;
            this.X = false;
            this.Y = null;
            this.Z = 0;
            this.f1532a0 = true;
            this.f1534b0 = true;
            this.f1536c0 = false;
            this.d0 = false;
            this.f1539e0 = false;
            this.f1541f0 = false;
            this.f1543g0 = -1;
            this.f1545h0 = -1;
            this.f1547i0 = -1;
            this.f1549j0 = -1;
            this.f1551k0 = Integer.MIN_VALUE;
            this.f1553l0 = Integer.MIN_VALUE;
            this.f1555m0 = 0.5f;
            this.f1563q0 = new s.d();
            TypedArray typedArrayObtainStyledAttributes = context.obtainStyledAttributes(attributeSet, R.styleable.ConstraintLayout_Layout);
            int indexCount = typedArrayObtainStyledAttributes.getIndexCount();
            for (int i10 = 0; i10 < indexCount; i10++) {
                int index = typedArrayObtainStyledAttributes.getIndex(i10);
                int i11 = C0019a.f1573a.get(index);
                switch (i11) {
                    case 1:
                        this.V = typedArrayObtainStyledAttributes.getInt(index, this.V);
                        break;
                    case 2:
                        int resourceId = typedArrayObtainStyledAttributes.getResourceId(index, this.f1560p);
                        this.f1560p = resourceId;
                        if (resourceId == -1) {
                            this.f1560p = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 3:
                        this.f1562q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1562q);
                        break;
                    case 4:
                        float f10 = typedArrayObtainStyledAttributes.getFloat(index, this.f1564r) % 360.0f;
                        this.f1564r = f10;
                        if (f10 < 0.0f) {
                            this.f1564r = (360.0f - f10) % 360.0f;
                        }
                        break;
                    case 5:
                        this.f1531a = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1531a);
                        break;
                    case 6:
                        this.f1533b = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.f1533b);
                        break;
                    case 7:
                        this.f1535c = typedArrayObtainStyledAttributes.getFloat(index, this.f1535c);
                        break;
                    case 8:
                        int resourceId2 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1538e);
                        this.f1538e = resourceId2;
                        if (resourceId2 == -1) {
                            this.f1538e = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 9:
                        int resourceId3 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1540f);
                        this.f1540f = resourceId3;
                        if (resourceId3 == -1) {
                            this.f1540f = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 10:
                        int resourceId4 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1542g);
                        this.f1542g = resourceId4;
                        if (resourceId4 == -1) {
                            this.f1542g = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 11:
                        int resourceId5 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1544h);
                        this.f1544h = resourceId5;
                        if (resourceId5 == -1) {
                            this.f1544h = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 12:
                        int resourceId6 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1546i);
                        this.f1546i = resourceId6;
                        if (resourceId6 == -1) {
                            this.f1546i = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 13:
                        int resourceId7 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1548j);
                        this.f1548j = resourceId7;
                        if (resourceId7 == -1) {
                            this.f1548j = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 14:
                        int resourceId8 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1550k);
                        this.f1550k = resourceId8;
                        if (resourceId8 == -1) {
                            this.f1550k = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 15:
                        int resourceId9 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1552l);
                        this.f1552l = resourceId9;
                        if (resourceId9 == -1) {
                            this.f1552l = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 16:
                        int resourceId10 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1554m);
                        this.f1554m = resourceId10;
                        if (resourceId10 == -1) {
                            this.f1554m = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 17:
                        int resourceId11 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1565s);
                        this.f1565s = resourceId11;
                        if (resourceId11 == -1) {
                            this.f1565s = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 18:
                        int resourceId12 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1566t);
                        this.f1566t = resourceId12;
                        if (resourceId12 == -1) {
                            this.f1566t = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 19:
                        int resourceId13 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1567u);
                        this.f1567u = resourceId13;
                        if (resourceId13 == -1) {
                            this.f1567u = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 20:
                        int resourceId14 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1568v);
                        this.f1568v = resourceId14;
                        if (resourceId14 == -1) {
                            this.f1568v = typedArrayObtainStyledAttributes.getInt(index, -1);
                        }
                        break;
                    case 21:
                        this.f1569w = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1569w);
                        break;
                    case 22:
                        this.f1570x = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1570x);
                        break;
                    case 23:
                        this.f1571y = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1571y);
                        break;
                    case 24:
                        this.f1572z = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.f1572z);
                        break;
                    case 25:
                        this.A = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.A);
                        break;
                    case 26:
                        this.B = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.B);
                        break;
                    case 27:
                        this.W = typedArrayObtainStyledAttributes.getBoolean(index, this.W);
                        break;
                    case 28:
                        this.X = typedArrayObtainStyledAttributes.getBoolean(index, this.X);
                        break;
                    case 29:
                        this.E = typedArrayObtainStyledAttributes.getFloat(index, this.E);
                        break;
                    case 30:
                        this.F = typedArrayObtainStyledAttributes.getFloat(index, this.F);
                        break;
                    case 31:
                        int i12 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.L = i12;
                        if (i12 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintWidth_default=\"wrap\" is deprecated.\nUse layout_width=\"WRAP_CONTENT\" and layout_constrainedWidth=\"true\" instead.");
                        }
                        break;
                    case 32:
                        int i13 = typedArrayObtainStyledAttributes.getInt(index, 0);
                        this.M = i13;
                        if (i13 == 1) {
                            Log.e("ConstraintLayout", "layout_constraintHeight_default=\"wrap\" is deprecated.\nUse layout_height=\"WRAP_CONTENT\" and layout_constrainedHeight=\"true\" instead.");
                        }
                        break;
                    case 33:
                        try {
                            this.N = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.N);
                        } catch (Exception unused) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.N) == -2) {
                                this.N = -2;
                            }
                        }
                        break;
                    case 34:
                        try {
                            this.P = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.P);
                        } catch (Exception unused2) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.P) == -2) {
                                this.P = -2;
                            }
                        }
                        break;
                    case 35:
                        this.R = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.R));
                        this.L = 2;
                        break;
                    case 36:
                        try {
                            this.O = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.O);
                        } catch (Exception unused3) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.O) == -2) {
                                this.O = -2;
                            }
                        }
                        break;
                    case 37:
                        try {
                            this.Q = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.Q);
                        } catch (Exception unused4) {
                            if (typedArrayObtainStyledAttributes.getInt(index, this.Q) == -2) {
                                this.Q = -2;
                            }
                        }
                        break;
                    case 38:
                        this.S = Math.max(0.0f, typedArrayObtainStyledAttributes.getFloat(index, this.S));
                        this.M = 2;
                        break;
                    default:
                        switch (i11) {
                            case 44:
                                d.i(this, typedArrayObtainStyledAttributes.getString(index));
                                break;
                            case 45:
                                this.H = typedArrayObtainStyledAttributes.getFloat(index, this.H);
                                break;
                            case 46:
                                this.I = typedArrayObtainStyledAttributes.getFloat(index, this.I);
                                break;
                            case 47:
                                this.J = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 48:
                                this.K = typedArrayObtainStyledAttributes.getInt(index, 0);
                                break;
                            case 49:
                                this.T = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.T);
                                break;
                            case 50:
                                this.U = typedArrayObtainStyledAttributes.getDimensionPixelOffset(index, this.U);
                                break;
                            case 51:
                                this.Y = typedArrayObtainStyledAttributes.getString(index);
                                break;
                            case 52:
                                int resourceId15 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1556n);
                                this.f1556n = resourceId15;
                                if (resourceId15 == -1) {
                                    this.f1556n = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case 53:
                                int resourceId16 = typedArrayObtainStyledAttributes.getResourceId(index, this.f1558o);
                                this.f1558o = resourceId16;
                                if (resourceId16 == -1) {
                                    this.f1558o = typedArrayObtainStyledAttributes.getInt(index, -1);
                                }
                                break;
                            case 54:
                                this.D = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.D);
                                break;
                            case 55:
                                this.C = typedArrayObtainStyledAttributes.getDimensionPixelSize(index, this.C);
                                break;
                            default:
                                switch (i11) {
                                    case 64:
                                        d.h(this, typedArrayObtainStyledAttributes, index, 0);
                                        break;
                                    case 65:
                                        d.h(this, typedArrayObtainStyledAttributes, index, 1);
                                        break;
                                    case 66:
                                        this.Z = typedArrayObtainStyledAttributes.getInt(index, this.Z);
                                        break;
                                    case 67:
                                        this.f1537d = typedArrayObtainStyledAttributes.getBoolean(index, this.f1537d);
                                        break;
                                }
                                break;
                        }
                        break;
                }
            }
            typedArrayObtainStyledAttributes.recycle();
            a();
        }

        public final void a() {
            this.d0 = false;
            this.f1532a0 = true;
            this.f1534b0 = true;
            int i10 = ((ViewGroup.MarginLayoutParams) this).width;
            if (i10 == -2 && this.W) {
                this.f1532a0 = false;
                if (this.L == 0) {
                    this.L = 1;
                }
            }
            int i11 = ((ViewGroup.MarginLayoutParams) this).height;
            if (i11 == -2 && this.X) {
                this.f1534b0 = false;
                if (this.M == 0) {
                    this.M = 1;
                }
            }
            if (i10 == 0 || i10 == -1) {
                this.f1532a0 = false;
                if (i10 == 0 && this.L == 1) {
                    ((ViewGroup.MarginLayoutParams) this).width = -2;
                    this.W = true;
                }
            }
            if (i11 == 0 || i11 == -1) {
                this.f1534b0 = false;
                if (i11 == 0 && this.M == 1) {
                    ((ViewGroup.MarginLayoutParams) this).height = -2;
                    this.X = true;
                }
            }
            if (this.f1535c == -1.0f && this.f1531a == -1 && this.f1533b == -1) {
                return;
            }
            this.d0 = true;
            this.f1532a0 = true;
            this.f1534b0 = true;
            if (!(this.f1563q0 instanceof s.f)) {
                this.f1563q0 = new s.f();
            }
            ((s.f) this.f1563q0).U(this.V);
        }

        /* JADX WARN: Code duplicated, block: B:17:0x004a  */
        /* JADX WARN: Code duplicated, block: B:20:0x0051  */
        /* JADX WARN: Code duplicated, block: B:23:0x0058  */
        /* JADX WARN: Code duplicated, block: B:26:0x005e  */
        /* JADX WARN: Code duplicated, block: B:29:0x0064  */
        /* JADX WARN: Code duplicated, block: B:38:0x007a  */
        /* JADX WARN: Code duplicated, block: B:39:0x0082 A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:40:0x0084  */
        /* JADX WARN: Code duplicated, block: B:41:0x008b A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:42:0x008d  */
        @Override // android.view.ViewGroup.MarginLayoutParams, android.view.ViewGroup.LayoutParams
        @TargetApi(17)
        public final void resolveLayoutDirection(int i10) {
            int i11;
            int i12;
            int i13;
            int i14;
            int i15 = ((ViewGroup.MarginLayoutParams) this).leftMargin;
            int i16 = ((ViewGroup.MarginLayoutParams) this).rightMargin;
            super.resolveLayoutDirection(i10);
            boolean z10 = false;
            boolean z11 = 1 == getLayoutDirection();
            this.f1547i0 = -1;
            this.f1549j0 = -1;
            this.f1543g0 = -1;
            this.f1545h0 = -1;
            this.f1551k0 = this.f1569w;
            this.f1553l0 = this.f1571y;
            float f10 = this.E;
            this.f1555m0 = f10;
            int i17 = this.f1531a;
            this.f1557n0 = i17;
            int i18 = this.f1533b;
            this.f1559o0 = i18;
            float f11 = this.f1535c;
            this.f1561p0 = f11;
            if (z11) {
                int i19 = this.f1565s;
                if (i19 != -1) {
                    this.f1547i0 = i19;
                } else {
                    int i20 = this.f1566t;
                    if (i20 != -1) {
                        this.f1549j0 = i20;
                    } else {
                        i11 = this.f1567u;
                        if (i11 != -1) {
                            this.f1545h0 = i11;
                            z10 = true;
                        }
                        i12 = this.f1568v;
                        if (i12 != -1) {
                            this.f1543g0 = i12;
                            z10 = true;
                        }
                        i13 = this.A;
                        if (i13 != Integer.MIN_VALUE) {
                            this.f1553l0 = i13;
                        }
                        i14 = this.B;
                        if (i14 != Integer.MIN_VALUE) {
                            this.f1551k0 = i14;
                        }
                        if (z10) {
                            this.f1555m0 = 1.0f - f10;
                        }
                        if (this.d0 && this.V == 1 && this.f1537d) {
                            if (f11 != -1.0f) {
                                this.f1561p0 = 1.0f - f11;
                                this.f1557n0 = -1;
                                this.f1559o0 = -1;
                            } else if (i17 != -1) {
                                this.f1559o0 = i17;
                                this.f1557n0 = -1;
                                this.f1561p0 = -1.0f;
                            } else if (i18 != -1) {
                                this.f1557n0 = i18;
                                this.f1559o0 = -1;
                                this.f1561p0 = -1.0f;
                            }
                        }
                    }
                }
                z10 = true;
                i11 = this.f1567u;
                if (i11 != -1) {
                    this.f1545h0 = i11;
                    z10 = true;
                }
                i12 = this.f1568v;
                if (i12 != -1) {
                    this.f1543g0 = i12;
                    z10 = true;
                }
                i13 = this.A;
                if (i13 != Integer.MIN_VALUE) {
                    this.f1553l0 = i13;
                }
                i14 = this.B;
                if (i14 != Integer.MIN_VALUE) {
                    this.f1551k0 = i14;
                }
                if (z10) {
                    this.f1555m0 = 1.0f - f10;
                }
                if (this.d0) {
                    if (f11 != -1.0f) {
                        this.f1561p0 = 1.0f - f11;
                        this.f1557n0 = -1;
                        this.f1559o0 = -1;
                    } else if (i17 != -1) {
                        this.f1559o0 = i17;
                        this.f1557n0 = -1;
                        this.f1561p0 = -1.0f;
                    } else if (i18 != -1) {
                        this.f1557n0 = i18;
                        this.f1559o0 = -1;
                        this.f1561p0 = -1.0f;
                    }
                }
            } else {
                int i21 = this.f1565s;
                if (i21 != -1) {
                    this.f1545h0 = i21;
                }
                int i22 = this.f1566t;
                if (i22 != -1) {
                    this.f1543g0 = i22;
                }
                int i23 = this.f1567u;
                if (i23 != -1) {
                    this.f1547i0 = i23;
                }
                int i24 = this.f1568v;
                if (i24 != -1) {
                    this.f1549j0 = i24;
                }
                int i25 = this.A;
                if (i25 != Integer.MIN_VALUE) {
                    this.f1551k0 = i25;
                }
                int i26 = this.B;
                if (i26 != Integer.MIN_VALUE) {
                    this.f1553l0 = i26;
                }
            }
            if (this.f1567u == -1 && this.f1568v == -1 && this.f1566t == -1 && this.f1565s == -1) {
                int i27 = this.f1542g;
                if (i27 != -1) {
                    this.f1547i0 = i27;
                    if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i16 > 0) {
                        ((ViewGroup.MarginLayoutParams) this).rightMargin = i16;
                    }
                } else {
                    int i28 = this.f1544h;
                    if (i28 != -1) {
                        this.f1549j0 = i28;
                        if (((ViewGroup.MarginLayoutParams) this).rightMargin <= 0 && i16 > 0) {
                            ((ViewGroup.MarginLayoutParams) this).rightMargin = i16;
                        }
                    }
                }
                int i29 = this.f1538e;
                if (i29 != -1) {
                    this.f1543g0 = i29;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i15 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i15;
                    return;
                }
                int i30 = this.f1540f;
                if (i30 != -1) {
                    this.f1545h0 = i30;
                    if (((ViewGroup.MarginLayoutParams) this).leftMargin > 0 || i15 <= 0) {
                        return;
                    }
                    ((ViewGroup.MarginLayoutParams) this).leftMargin = i15;
                }
            }
        }

        public a() {
            super(-2, -2);
            this.f1531a = -1;
            this.f1533b = -1;
            this.f1535c = -1.0f;
            this.f1537d = true;
            this.f1538e = -1;
            this.f1540f = -1;
            this.f1542g = -1;
            this.f1544h = -1;
            this.f1546i = -1;
            this.f1548j = -1;
            this.f1550k = -1;
            this.f1552l = -1;
            this.f1554m = -1;
            this.f1556n = -1;
            this.f1558o = -1;
            this.f1560p = -1;
            this.f1562q = 0;
            this.f1564r = 0.0f;
            this.f1565s = -1;
            this.f1566t = -1;
            this.f1567u = -1;
            this.f1568v = -1;
            this.f1569w = Integer.MIN_VALUE;
            this.f1570x = Integer.MIN_VALUE;
            this.f1571y = Integer.MIN_VALUE;
            this.f1572z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = 0.5f;
            this.F = 0.5f;
            this.G = null;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 1.0f;
            this.S = 1.0f;
            this.T = -1;
            this.U = -1;
            this.V = -1;
            this.W = false;
            this.X = false;
            this.Y = null;
            this.Z = 0;
            this.f1532a0 = true;
            this.f1534b0 = true;
            this.f1536c0 = false;
            this.d0 = false;
            this.f1539e0 = false;
            this.f1541f0 = false;
            this.f1543g0 = -1;
            this.f1545h0 = -1;
            this.f1547i0 = -1;
            this.f1549j0 = -1;
            this.f1551k0 = Integer.MIN_VALUE;
            this.f1553l0 = Integer.MIN_VALUE;
            this.f1555m0 = 0.5f;
            this.f1563q0 = new s.d();
        }

        public a(ViewGroup.LayoutParams layoutParams) {
            super(layoutParams);
            this.f1531a = -1;
            this.f1533b = -1;
            this.f1535c = -1.0f;
            this.f1537d = true;
            this.f1538e = -1;
            this.f1540f = -1;
            this.f1542g = -1;
            this.f1544h = -1;
            this.f1546i = -1;
            this.f1548j = -1;
            this.f1550k = -1;
            this.f1552l = -1;
            this.f1554m = -1;
            this.f1556n = -1;
            this.f1558o = -1;
            this.f1560p = -1;
            this.f1562q = 0;
            this.f1564r = 0.0f;
            this.f1565s = -1;
            this.f1566t = -1;
            this.f1567u = -1;
            this.f1568v = -1;
            this.f1569w = Integer.MIN_VALUE;
            this.f1570x = Integer.MIN_VALUE;
            this.f1571y = Integer.MIN_VALUE;
            this.f1572z = Integer.MIN_VALUE;
            this.A = Integer.MIN_VALUE;
            this.B = Integer.MIN_VALUE;
            this.C = Integer.MIN_VALUE;
            this.D = 0;
            this.E = 0.5f;
            this.F = 0.5f;
            this.G = null;
            this.H = -1.0f;
            this.I = -1.0f;
            this.J = 0;
            this.K = 0;
            this.L = 0;
            this.M = 0;
            this.N = 0;
            this.O = 0;
            this.P = 0;
            this.Q = 0;
            this.R = 1.0f;
            this.S = 1.0f;
            this.T = -1;
            this.U = -1;
            this.V = -1;
            this.W = false;
            this.X = false;
            this.Y = null;
            this.Z = 0;
            this.f1532a0 = true;
            this.f1534b0 = true;
            this.f1536c0 = false;
            this.d0 = false;
            this.f1539e0 = false;
            this.f1541f0 = false;
            this.f1543g0 = -1;
            this.f1545h0 = -1;
            this.f1547i0 = -1;
            this.f1549j0 = -1;
            this.f1551k0 = Integer.MIN_VALUE;
            this.f1553l0 = Integer.MIN_VALUE;
            this.f1555m0 = 0.5f;
            this.f1563q0 = new s.d();
        }
    }
}
