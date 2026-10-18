package j5;

import android.content.Context;
import android.graphics.Point;
import android.hardware.display.DisplayManager;
import android.os.Bundle;
import android.os.Looper;
import android.text.TextUtils;
import android.view.Display;
import android.view.WindowManager;
import android.view.accessibility.CaptioningManager;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Locale;
import java.util.Objects;
import m5.g0;
import p4.t0;
import u6.a0;
import u6.h0;
import u6.p0;
import u6.v;
import u6.x;

/* JADX INFO: compiled from: TrackSelectionParameters.java */
/* JADX INFO: loaded from: classes.dex */
public class q implements n3.h {
    public static final q H = new q(new a());
    public final int A;
    public final int B;
    public final boolean C;
    public final boolean D;
    public final boolean E;
    public final x<t0, p> F;
    public final a0<Integer> G;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f9390h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f9391i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f9392j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f9393k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f9394l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int f9395m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f9396n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public final int f9397o;

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public final int f9398p;

    /* JADX INFO: renamed from: q, reason: collision with root package name */
    public final int f9399q;

    /* JADX INFO: renamed from: r, reason: collision with root package name */
    public final boolean f9400r;

    /* JADX INFO: renamed from: s, reason: collision with root package name */
    public final v<String> f9401s;

    /* JADX INFO: renamed from: t, reason: collision with root package name */
    public final int f9402t;

    /* JADX INFO: renamed from: u, reason: collision with root package name */
    public final v<String> f9403u;

    /* JADX INFO: renamed from: v, reason: collision with root package name */
    public final int f9404v;

    /* JADX INFO: renamed from: w, reason: collision with root package name */
    public final int f9405w;

    /* JADX INFO: renamed from: x, reason: collision with root package name */
    public final int f9406x;

    /* JADX INFO: renamed from: y, reason: collision with root package name */
    public final v<String> f9407y;

    /* JADX INFO: renamed from: z, reason: collision with root package name */
    public final v<String> f9408z;

    public q(a aVar) {
        this.f9390h = aVar.f9409a;
        this.f9391i = aVar.f9410b;
        this.f9392j = aVar.f9411c;
        this.f9393k = aVar.f9412d;
        this.f9394l = aVar.f9413e;
        this.f9395m = aVar.f9414f;
        this.f9396n = aVar.f9415g;
        this.f9397o = aVar.f9416h;
        this.f9398p = aVar.f9417i;
        this.f9399q = aVar.f9418j;
        this.f9400r = aVar.f9419k;
        this.f9401s = aVar.f9420l;
        this.f9402t = aVar.f9421m;
        this.f9403u = aVar.f9422n;
        this.f9404v = aVar.f9423o;
        this.f9405w = aVar.f9424p;
        this.f9406x = aVar.f9425q;
        this.f9407y = aVar.f9426r;
        this.f9408z = aVar.f9427s;
        this.A = aVar.f9428t;
        this.B = aVar.f9429u;
        this.C = aVar.f9430v;
        this.D = aVar.f9431w;
        this.E = aVar.f9432x;
        this.F = x.a(aVar.f9433y);
        this.G = a0.s(aVar.f9434z);
    }

    public static String b(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(b(6), this.f9390h);
        bundle.putInt(b(7), this.f9391i);
        bundle.putInt(b(8), this.f9392j);
        bundle.putInt(b(9), this.f9393k);
        bundle.putInt(b(10), this.f9394l);
        bundle.putInt(b(11), this.f9395m);
        bundle.putInt(b(12), this.f9396n);
        bundle.putInt(b(13), this.f9397o);
        bundle.putInt(b(14), this.f9398p);
        bundle.putInt(b(15), this.f9399q);
        bundle.putBoolean(b(16), this.f9400r);
        bundle.putStringArray(b(17), (String[]) this.f9401s.toArray(new String[0]));
        bundle.putInt(b(25), this.f9402t);
        bundle.putStringArray(b(1), (String[]) this.f9403u.toArray(new String[0]));
        bundle.putInt(b(2), this.f9404v);
        bundle.putInt(b(18), this.f9405w);
        bundle.putInt(b(19), this.f9406x);
        bundle.putStringArray(b(20), (String[]) this.f9407y.toArray(new String[0]));
        bundle.putStringArray(b(3), (String[]) this.f9408z.toArray(new String[0]));
        bundle.putInt(b(4), this.A);
        bundle.putInt(b(26), this.B);
        bundle.putBoolean(b(5), this.C);
        bundle.putBoolean(b(21), this.D);
        bundle.putBoolean(b(22), this.E);
        bundle.putParcelableArrayList(b(23), m5.b.b(this.F.values()));
        bundle.putIntArray(b(24), w6.a.d(this.G));
        return bundle;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f9390h == qVar.f9390h && this.f9391i == qVar.f9391i && this.f9392j == qVar.f9392j && this.f9393k == qVar.f9393k && this.f9394l == qVar.f9394l && this.f9395m == qVar.f9395m && this.f9396n == qVar.f9396n && this.f9397o == qVar.f9397o && this.f9400r == qVar.f9400r && this.f9398p == qVar.f9398p && this.f9399q == qVar.f9399q && this.f9401s.equals(qVar.f9401s) && this.f9402t == qVar.f9402t && this.f9403u.equals(qVar.f9403u) && this.f9404v == qVar.f9404v && this.f9405w == qVar.f9405w && this.f9406x == qVar.f9406x && this.f9407y.equals(qVar.f9407y) && this.f9408z.equals(qVar.f9408z) && this.A == qVar.A && this.B == qVar.B && this.C == qVar.C && this.D == qVar.D && this.E == qVar.E) {
            x<t0, p> xVar = this.F;
            x<t0, p> xVar2 = qVar.F;
            Objects.requireNonNull(xVar);
            if (h0.a(xVar, xVar2) && this.G.equals(qVar.G)) {
                return true;
            }
        }
        return false;
    }

    public int hashCode() {
        return this.G.hashCode() + ((this.F.hashCode() + ((((((((((((this.f9408z.hashCode() + ((this.f9407y.hashCode() + ((((((((this.f9403u.hashCode() + ((((this.f9401s.hashCode() + ((((((((((((((((((((((this.f9390h + 31) * 31) + this.f9391i) * 31) + this.f9392j) * 31) + this.f9393k) * 31) + this.f9394l) * 31) + this.f9395m) * 31) + this.f9396n) * 31) + this.f9397o) * 31) + (this.f9400r ? 1 : 0)) * 31) + this.f9398p) * 31) + this.f9399q) * 31)) * 31) + this.f9402t) * 31)) * 31) + this.f9404v) * 31) + this.f9405w) * 31) + this.f9406x) * 31)) * 31)) * 31) + this.A) * 31) + this.B) * 31) + (this.C ? 1 : 0)) * 31) + (this.D ? 1 : 0)) * 31) + (this.E ? 1 : 0)) * 31)) * 31);
    }

    /* JADX INFO: compiled from: TrackSelectionParameters.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f9409a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f9410b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public int f9411c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public int f9412d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f9413e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public int f9414f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public int f9415g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f9416h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public int f9417i;

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public int f9418j;

        /* JADX INFO: renamed from: k, reason: collision with root package name */
        public boolean f9419k;

        /* JADX INFO: renamed from: l, reason: collision with root package name */
        public v<String> f9420l;

        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public int f9421m;

        /* JADX INFO: renamed from: n, reason: collision with root package name */
        public v<String> f9422n;

        /* JADX INFO: renamed from: o, reason: collision with root package name */
        public int f9423o;

        /* JADX INFO: renamed from: p, reason: collision with root package name */
        public int f9424p;

        /* JADX INFO: renamed from: q, reason: collision with root package name */
        public int f9425q;

        /* JADX INFO: renamed from: r, reason: collision with root package name */
        public v<String> f9426r;

        /* JADX INFO: renamed from: s, reason: collision with root package name */
        public v<String> f9427s;

        /* JADX INFO: renamed from: t, reason: collision with root package name */
        public int f9428t;

        /* JADX INFO: renamed from: u, reason: collision with root package name */
        public int f9429u;

        /* JADX INFO: renamed from: v, reason: collision with root package name */
        public boolean f9430v;

        /* JADX INFO: renamed from: w, reason: collision with root package name */
        public boolean f9431w;

        /* JADX INFO: renamed from: x, reason: collision with root package name */
        public boolean f9432x;

        /* JADX INFO: renamed from: y, reason: collision with root package name */
        public HashMap<t0, p> f9433y;

        /* JADX INFO: renamed from: z, reason: collision with root package name */
        public HashSet<Integer> f9434z;

        @Deprecated
        public a() {
            this.f9409a = Integer.MAX_VALUE;
            this.f9410b = Integer.MAX_VALUE;
            this.f9411c = Integer.MAX_VALUE;
            this.f9412d = Integer.MAX_VALUE;
            this.f9417i = Integer.MAX_VALUE;
            this.f9418j = Integer.MAX_VALUE;
            this.f9419k = true;
            u6.a aVar = v.f16002i;
            v vVar = p0.f15967l;
            this.f9420l = vVar;
            this.f9421m = 0;
            this.f9422n = vVar;
            this.f9423o = 0;
            this.f9424p = Integer.MAX_VALUE;
            this.f9425q = Integer.MAX_VALUE;
            this.f9426r = vVar;
            this.f9427s = vVar;
            this.f9428t = 0;
            this.f9429u = 0;
            this.f9430v = false;
            this.f9431w = false;
            this.f9432x = false;
            this.f9433y = new HashMap<>();
            this.f9434z = new HashSet<>();
        }

        public static v<String> a(String[] strArr) {
            u6.a aVar = v.f16002i;
            u6.h.b(4, "initialCapacity");
            Object[] objArrCopyOf = new Object[4];
            int length = strArr.length;
            int i10 = 0;
            int i11 = 0;
            while (i10 < length) {
                String str = strArr[i10];
                Objects.requireNonNull(str);
                String strM = g0.M(str);
                Objects.requireNonNull(strM);
                int i12 = i11 + 1;
                if (objArrCopyOf.length < i12) {
                    objArrCopyOf = Arrays.copyOf(objArrCopyOf, u6.t.b.a(objArrCopyOf.length, i12));
                }
                objArrCopyOf[i11] = strM;
                i10++;
                i11 = i12;
            }
            return v.q(objArrCopyOf, i11);
        }

        public a b(Context context) {
            CaptioningManager captioningManager;
            int i10 = g0.f10384a;
            if (i10 >= 19 && ((i10 >= 23 || Looper.myLooper() != null) && (captioningManager = (CaptioningManager) context.getSystemService("captioning")) != null && captioningManager.isEnabled())) {
                this.f9428t = 1088;
                Locale locale = captioningManager.getLocale();
                if (locale != null) {
                    this.f9427s = v.v(i10 >= 21 ? locale.toLanguageTag() : locale.toString());
                }
            }
            return this;
        }

        public a c(int i10, int i11) {
            this.f9417i = i10;
            this.f9418j = i11;
            this.f9419k = true;
            return this;
        }

        /* JADX WARN: Code duplicated, block: B:35:0x00b1  */
        /* JADX WARN: Code duplicated, block: B:37:0x00bc  */
        /* JADX WARN: Code duplicated, block: B:38:0x00cd A[DONT_INVERT] */
        /* JADX WARN: Code duplicated, block: B:39:0x00cf  */
        /* JADX WARN: Code duplicated, block: B:40:0x00d3  */
        public a d(Context context) {
            Point point;
            int i10;
            DisplayManager displayManager;
            int i11 = g0.f10384a;
            Display display = (i11 < 17 || (displayManager = (DisplayManager) context.getSystemService("display")) == null) ? null : displayManager.getDisplay(0);
            if (display == null) {
                WindowManager windowManager = (WindowManager) context.getSystemService("window");
                Objects.requireNonNull(windowManager);
                display = windowManager.getDefaultDisplay();
            }
            if (display.getDisplayId() == 0 && g0.K(context)) {
                String strD = i11 < 28 ? g0.D("sys.display-size") : g0.D("vendor.display-size");
                if (!TextUtils.isEmpty(strD)) {
                    try {
                        String[] strArrSplit = strD.trim().split("x", -1);
                        if (strArrSplit.length == 2) {
                            int i12 = Integer.parseInt(strArrSplit[0]);
                            int i13 = Integer.parseInt(strArrSplit[1]);
                            if (i12 > 0 && i13 > 0) {
                                point = new Point(i12, i13);
                            }
                        }
                    } catch (NumberFormatException unused) {
                    }
                    m5.p.c("Util", "Invalid display size: " + strD);
                    if (!"Sony".equals(g0.f10386c) && g0.f10387d.startsWith("BRAVIA") && context.getPackageManager().hasSystemFeature("com.sony.dtv.hardware.panel.qfhd")) {
                        point = new Point(3840, 2160);
                    } else {
                        point = new Point();
                        i10 = g0.f10384a;
                        if (i10 >= 23) {
                            Display.Mode mode = display.getMode();
                            point.x = mode.getPhysicalWidth();
                            point.y = mode.getPhysicalHeight();
                        } else if (i10 >= 17) {
                            display.getRealSize(point);
                        } else {
                            display.getSize(point);
                        }
                    }
                } else if (!"Sony".equals(g0.f10386c)) {
                    point = new Point();
                    i10 = g0.f10384a;
                    if (i10 >= 23) {
                        Display.Mode mode2 = display.getMode();
                        point.x = mode2.getPhysicalWidth();
                        point.y = mode2.getPhysicalHeight();
                    } else if (i10 >= 17) {
                        display.getRealSize(point);
                    } else {
                        display.getSize(point);
                    }
                } else {
                    point = new Point();
                    i10 = g0.f10384a;
                    if (i10 >= 23) {
                        Display.Mode mode3 = display.getMode();
                        point.x = mode3.getPhysicalWidth();
                        point.y = mode3.getPhysicalHeight();
                    } else if (i10 >= 17) {
                        display.getRealSize(point);
                    } else {
                        display.getSize(point);
                    }
                }
            } else {
                point = new Point();
                i10 = g0.f10384a;
                if (i10 >= 23) {
                    Display.Mode mode4 = display.getMode();
                    point.x = mode4.getPhysicalWidth();
                    point.y = mode4.getPhysicalHeight();
                } else if (i10 >= 17) {
                    display.getRealSize(point);
                } else {
                    display.getSize(point);
                }
            }
            return c(point.x, point.y);
        }

        public a(Bundle bundle) {
            v<Object> vVarA;
            String strB = q.b(6);
            q qVar = q.H;
            this.f9409a = bundle.getInt(strB, qVar.f9390h);
            this.f9410b = bundle.getInt(q.b(7), qVar.f9391i);
            this.f9411c = bundle.getInt(q.b(8), qVar.f9392j);
            this.f9412d = bundle.getInt(q.b(9), qVar.f9393k);
            this.f9413e = bundle.getInt(q.b(10), qVar.f9394l);
            this.f9414f = bundle.getInt(q.b(11), qVar.f9395m);
            this.f9415g = bundle.getInt(q.b(12), qVar.f9396n);
            this.f9416h = bundle.getInt(q.b(13), qVar.f9397o);
            this.f9417i = bundle.getInt(q.b(14), qVar.f9398p);
            this.f9418j = bundle.getInt(q.b(15), qVar.f9399q);
            this.f9419k = bundle.getBoolean(q.b(16), qVar.f9400r);
            String[] stringArray = bundle.getStringArray(q.b(17));
            this.f9420l = v.t(stringArray == null ? new String[0] : stringArray);
            this.f9421m = bundle.getInt(q.b(25), qVar.f9402t);
            String[] stringArray2 = bundle.getStringArray(q.b(1));
            this.f9422n = a(stringArray2 == null ? new String[0] : stringArray2);
            this.f9423o = bundle.getInt(q.b(2), qVar.f9404v);
            this.f9424p = bundle.getInt(q.b(18), qVar.f9405w);
            this.f9425q = bundle.getInt(q.b(19), qVar.f9406x);
            String[] stringArray3 = bundle.getStringArray(q.b(20));
            this.f9426r = v.t(stringArray3 == null ? new String[0] : stringArray3);
            String[] stringArray4 = bundle.getStringArray(q.b(3));
            this.f9427s = a(stringArray4 == null ? new String[0] : stringArray4);
            this.f9428t = bundle.getInt(q.b(4), qVar.A);
            this.f9429u = bundle.getInt(q.b(26), qVar.B);
            this.f9430v = bundle.getBoolean(q.b(5), qVar.C);
            this.f9431w = bundle.getBoolean(q.b(21), qVar.D);
            this.f9432x = bundle.getBoolean(q.b(22), qVar.E);
            ArrayList parcelableArrayList = bundle.getParcelableArrayList(q.b(23));
            if (parcelableArrayList == null) {
                vVarA = p0.f15967l;
            } else {
                vVarA = m5.b.a(p.f9387j, parcelableArrayList);
            }
            this.f9433y = new HashMap<>();
            for (int i10 = 0; i10 < ((p0) vVarA).f15969k; i10++) {
                p pVar = (p) ((p0) vVarA).get(i10);
                this.f9433y.put(pVar.f9388h, pVar);
            }
            int[] intArray = bundle.getIntArray(q.b(24));
            intArray = intArray == null ? new int[0] : intArray;
            this.f9434z = new HashSet<>();
            for (int i11 : intArray) {
                this.f9434z.add(Integer.valueOf(i11));
            }
        }
    }
}
