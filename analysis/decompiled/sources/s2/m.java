package s2;

import android.graphics.Bitmap;
import android.os.Build;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
import java.util.NavigableMap;
import java.util.TreeMap;

/* JADX INFO: compiled from: SizeConfigStrategy.java */
/* JADX INFO: loaded from: classes.dex */
public final class m implements k {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final Bitmap.Config[] f14989d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final Bitmap.Config[] f14990e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public static final Bitmap.Config[] f14991f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public static final Bitmap.Config[] f14992g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Bitmap.Config[] f14993h;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final c f14994a = new c();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final g<b, Bitmap> f14995b = new g<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final Map<Bitmap.Config, NavigableMap<Integer, Integer>> f14996c = new HashMap();

    /* JADX INFO: compiled from: SizeConfigStrategy.java */
    public static /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14997a;

        static {
            int[] iArr = new int[Bitmap.Config.values().length];
            f14997a = iArr;
            try {
                iArr[Bitmap.Config.ARGB_8888.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f14997a[Bitmap.Config.RGB_565.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f14997a[Bitmap.Config.ARGB_4444.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f14997a[Bitmap.Config.ALPHA_8.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    /* JADX INFO: compiled from: SizeConfigStrategy.java */
    public static final class b implements l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c f14998a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f14999b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Bitmap.Config f15000c;

        public b(c cVar) {
            this.f14998a = cVar;
        }

        @Override // s2.l
        public final void a() {
            this.f14998a.c(this);
        }

        public final boolean equals(Object obj) {
            if (!(obj instanceof b)) {
                return false;
            }
            b bVar = (b) obj;
            return this.f14999b == bVar.f14999b && l3.l.b(this.f15000c, bVar.f15000c);
        }

        public final int hashCode() {
            int i10 = this.f14999b * 31;
            Bitmap.Config config = this.f15000c;
            return i10 + (config != null ? config.hashCode() : 0);
        }

        public final String toString() {
            return m.c(this.f14999b, this.f15000c);
        }
    }

    /* JADX INFO: compiled from: SizeConfigStrategy.java */
    public static class c extends s2.c<b> {
        @Override // s2.c
        public final l a() {
            return new b(this);
        }

        public final b d(int i10, Bitmap.Config config) {
            b bVarB = b();
            bVarB.f14999b = i10;
            bVarB.f15000c = config;
            return bVarB;
        }
    }

    static {
        Bitmap.Config[] configArr = {Bitmap.Config.ARGB_8888, null};
        if (Build.VERSION.SDK_INT >= 26) {
            configArr = (Bitmap.Config[]) Arrays.copyOf(configArr, 3);
            configArr[configArr.length - 1] = Bitmap.Config.RGBA_F16;
        }
        f14989d = configArr;
        f14990e = configArr;
        f14991f = new Bitmap.Config[]{Bitmap.Config.RGB_565};
        f14992g = new Bitmap.Config[]{Bitmap.Config.ARGB_4444};
        f14993h = new Bitmap.Config[]{Bitmap.Config.ALPHA_8};
    }

    public static String c(int i10, Bitmap.Config config) {
        return "[" + i10 + "](" + config + ")";
    }

    public final void a(Integer num, Bitmap bitmap) {
        NavigableMap<Integer, Integer> navigableMapD = d(bitmap.getConfig());
        Integer num2 = navigableMapD.get(num);
        if (num2 != null) {
            if (num2.intValue() == 1) {
                navigableMapD.remove(num);
                return;
            } else {
                navigableMapD.put(num, Integer.valueOf(num2.intValue() - 1));
                return;
            }
        }
        throw new NullPointerException("Tried to decrement empty size, size: " + num + ", removed: " + e(bitmap) + ", this: " + this);
    }

    public final Bitmap b(int i10, int i11, Bitmap.Config config) {
        Bitmap.Config[] configArr;
        int iD = l3.l.d(config) * i10 * i11;
        b bVarD = this.f14994a.d(iD, config);
        if (Build.VERSION.SDK_INT < 26 || !Bitmap.Config.RGBA_F16.equals(config)) {
            int i12 = a.f14997a[config.ordinal()];
            if (i12 == 1) {
                configArr = f14989d;
            } else if (i12 == 2) {
                configArr = f14991f;
            } else if (i12 != 3) {
                configArr = i12 != 4 ? new Bitmap.Config[]{config} : f14993h;
            } else {
                configArr = f14992g;
            }
        } else {
            configArr = f14990e;
        }
        for (Bitmap.Config config2 : configArr) {
            Integer numCeilingKey = d(config2).ceilingKey(Integer.valueOf(iD));
            if (numCeilingKey != null && numCeilingKey.intValue() <= iD * 8) {
                if (numCeilingKey.intValue() == iD && (config2 != null ? config2.equals(config) : config == null)) {
                    break;
                    break;
                }
                this.f14994a.c(bVarD);
                bVarD = this.f14994a.d(numCeilingKey.intValue(), config2);
                break;
            }
        }
        Bitmap bitmapA = this.f14995b.a(bVarD);
        if (bitmapA != null) {
            a(Integer.valueOf(bVarD.f14999b), bitmapA);
            bitmapA.reconfigure(i10, i11, config);
        }
        return bitmapA;
    }

    /* JADX WARN: Type inference incomplete: some casts might be missing */
    public final NavigableMap<Integer, Integer> d(Bitmap.Config config) {
        NavigableMap<Integer, Integer> navigableMap = this.f14996c.get(config);
        if (navigableMap != null) {
            return navigableMap;
        }
        TreeMap treeMap = new TreeMap();
        this.f14996c.put(config, treeMap);
        return treeMap;
    }

    public final String e(Bitmap bitmap) {
        return c(l3.l.c(bitmap), bitmap.getConfig());
    }

    public final void f(Bitmap bitmap) {
        b bVarD = this.f14994a.d(l3.l.c(bitmap), bitmap.getConfig());
        this.f14995b.b(bVarD, bitmap);
        NavigableMap<Integer, Integer> navigableMapD = d(bitmap.getConfig());
        Integer num = navigableMapD.get(Integer.valueOf(bVarD.f14999b));
        navigableMapD.put(Integer.valueOf(bVarD.f14999b), Integer.valueOf(num != null ? 1 + num.intValue() : 1));
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [java.util.HashMap, java.util.Map<android.graphics.Bitmap$Config, java.util.NavigableMap<java.lang.Integer, java.lang.Integer>>] */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.util.HashMap, java.util.Map<android.graphics.Bitmap$Config, java.util.NavigableMap<java.lang.Integer, java.lang.Integer>>] */
    public final String toString() {
        StringBuilder sbC = a0.b.c("SizeConfigStrategy{groupedMap=");
        sbC.append(this.f14995b);
        sbC.append(", sortedSizes=(");
        for (Map.Entry entry : this.f14996c.entrySet()) {
            sbC.append(entry.getKey());
            sbC.append('[');
            sbC.append(entry.getValue());
            sbC.append("], ");
        }
        if (!this.f14996c.isEmpty()) {
            sbC.replace(sbC.length() - 2, sbC.length(), "");
        }
        sbC.append(")}");
        return sbC.toString();
    }
}
