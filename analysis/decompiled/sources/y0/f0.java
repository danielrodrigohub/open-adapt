package y0;

import java.util.Iterator;
import java.util.Map;
import java.util.TreeMap;

/* JADX INFO: compiled from: RoomSQLiteQuery.java */
/* JADX INFO: loaded from: classes.dex */
public final class f0 implements d1.f, d1.e {

    /* JADX INFO: renamed from: p, reason: collision with root package name */
    public static final TreeMap<Integer, f0> f18196p = new TreeMap<>();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public volatile String f18197h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final long[] f18198i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final double[] f18199j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final String[] f18200k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final byte[][] f18201l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public final int[] f18202m;

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public final int f18203n;

    /* JADX INFO: renamed from: o, reason: collision with root package name */
    public int f18204o;

    public f0(int i10) {
        this.f18203n = i10;
        int i11 = i10 + 1;
        this.f18202m = new int[i11];
        this.f18198i = new long[i11];
        this.f18199j = new double[i11];
        this.f18200k = new String[i11];
        this.f18201l = new byte[i11][];
    }

    public static f0 f0(String str, int i10) {
        TreeMap<Integer, f0> treeMap = f18196p;
        synchronized (treeMap) {
            Map.Entry<Integer, f0> entryCeilingEntry = treeMap.ceilingEntry(Integer.valueOf(i10));
            if (entryCeilingEntry == null) {
                f0 f0Var = new f0(i10);
                f0Var.f18197h = str;
                f0Var.f18204o = i10;
                return f0Var;
            }
            treeMap.remove(entryCeilingEntry.getKey());
            f0 value = entryCeilingEntry.getValue();
            value.f18197h = str;
            value.f18204o = i10;
            return value;
        }
    }

    @Override // d1.e
    public final void K(int i10, long j10) {
        this.f18202m[i10] = 2;
        this.f18198i[i10] = j10;
    }

    @Override // d1.e
    public final void R(int i10, byte[] bArr) {
        this.f18202m[i10] = 5;
        this.f18201l[i10] = bArr;
    }

    @Override // d1.f
    public final void Y(d1.e eVar) {
        for (int i10 = 1; i10 <= this.f18204o; i10++) {
            int i11 = this.f18202m[i10];
            if (i11 == 1) {
                eVar.t(i10);
            } else if (i11 == 2) {
                eVar.K(i10, this.f18198i[i10]);
            } else if (i11 == 3) {
                eVar.v(i10, this.f18199j[i10]);
            } else if (i11 == 4) {
                eVar.l(i10, this.f18200k[i10]);
            } else if (i11 == 5) {
                eVar.R(i10, this.f18201l[i10]);
            }
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    public final void g0() {
        TreeMap<Integer, f0> treeMap = f18196p;
        synchronized (treeMap) {
            treeMap.put(Integer.valueOf(this.f18203n), this);
            if (treeMap.size() > 15) {
                int size = treeMap.size() - 10;
                Iterator<Integer> it = treeMap.descendingKeySet().iterator();
                while (true) {
                    int i10 = size - 1;
                    if (size <= 0) {
                        break;
                    }
                    it.next();
                    it.remove();
                    size = i10;
                }
            }
        }
    }

    @Override // d1.e
    public final void l(int i10, String str) {
        this.f18202m[i10] = 4;
        this.f18200k[i10] = str;
    }

    @Override // d1.e
    public final void t(int i10) {
        this.f18202m[i10] = 1;
    }

    @Override // d1.e
    public final void v(int i10, double d10) {
        this.f18202m[i10] = 3;
        this.f18199j[i10] = d10;
    }

    @Override // d1.f
    public final String x() {
        return this.f18197h;
    }
}
