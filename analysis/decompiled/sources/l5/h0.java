package l5;

import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;

/* JADX INFO: compiled from: SlidingPercentile.java */
/* JADX INFO: loaded from: classes.dex */
public final class h0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final Comparator<a> f10035h = s4.a.f15111l;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final Comparator<a> f10036i = j5.g.f9312l;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f10037a;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f10041e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f10042f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10043g;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final a[] f10039c = new a[5];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayList<a> f10038b = new ArrayList<>();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f10040d = -1;

    /* JADX INFO: compiled from: SlidingPercentile.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f10044a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public int f10045b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public float f10046c;
    }

    public h0(int i10) {
        this.f10037a = i10;
    }

    public final void a(int i10, float f10) {
        a aVar;
        if (this.f10040d != 1) {
            Collections.sort(this.f10038b, f10035h);
            this.f10040d = 1;
        }
        int i11 = this.f10043g;
        if (i11 > 0) {
            a[] aVarArr = this.f10039c;
            int i12 = i11 - 1;
            this.f10043g = i12;
            aVar = aVarArr[i12];
        } else {
            aVar = new a();
        }
        int i13 = this.f10041e;
        this.f10041e = i13 + 1;
        aVar.f10044a = i13;
        aVar.f10045b = i10;
        aVar.f10046c = f10;
        this.f10038b.add(aVar);
        this.f10042f += i10;
        while (true) {
            int i14 = this.f10042f;
            int i15 = this.f10037a;
            if (i14 <= i15) {
                return;
            }
            int i16 = i14 - i15;
            a aVar2 = this.f10038b.get(0);
            int i17 = aVar2.f10045b;
            if (i17 <= i16) {
                this.f10042f -= i17;
                this.f10038b.remove(0);
                int i18 = this.f10043g;
                if (i18 < 5) {
                    a[] aVarArr2 = this.f10039c;
                    this.f10043g = i18 + 1;
                    aVarArr2[i18] = aVar2;
                }
            } else {
                aVar2.f10045b = i17 - i16;
                this.f10042f -= i16;
            }
        }
    }

    public final float b() {
        if (this.f10040d != 0) {
            Collections.sort(this.f10038b, f10036i);
            this.f10040d = 0;
        }
        float f10 = 0.5f * this.f10042f;
        int i10 = 0;
        for (int i11 = 0; i11 < this.f10038b.size(); i11++) {
            a aVar = this.f10038b.get(i11);
            i10 += aVar.f10045b;
            if (i10 >= f10) {
                return aVar.f10046c;
            }
        }
        if (this.f10038b.isEmpty()) {
            return Float.NaN;
        }
        ArrayList<a> arrayList = this.f10038b;
        return arrayList.get(arrayList.size() - 1).f10046c;
    }
}
