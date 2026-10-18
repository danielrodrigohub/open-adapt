package p3;

import android.media.AudioAttributes;
import android.os.Bundle;

/* JADX INFO: compiled from: AudioAttributes.java */
/* JADX INFO: loaded from: classes.dex */
public final class d implements n3.h {

    /* JADX INFO: renamed from: n, reason: collision with root package name */
    public static final d f12686n = new d(0, 0, 1, 1, 0);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final int f12687h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final int f12688i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final int f12689j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final int f12690k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final int f12691l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public c f12692m;

    /* JADX INFO: compiled from: AudioAttributes.java */
    public static final class a {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setAllowedCapturePolicy(i10);
        }
    }

    /* JADX INFO: compiled from: AudioAttributes.java */
    public static final class b {
        public static void a(AudioAttributes.Builder builder, int i10) {
            builder.setSpatializationBehavior(i10);
        }
    }

    /* JADX INFO: compiled from: AudioAttributes.java */
    public static final class c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final AudioAttributes f12693a;

        public c(d dVar) {
            AudioAttributes.Builder usage = new AudioAttributes.Builder().setContentType(dVar.f12687h).setFlags(dVar.f12688i).setUsage(dVar.f12689j);
            int i10 = m5.g0.f10384a;
            if (i10 >= 29) {
                a.a(usage, dVar.f12690k);
            }
            if (i10 >= 32) {
                b.a(usage, dVar.f12691l);
            }
            this.f12693a = usage.build();
        }
    }

    static {
        y0.l lVar = y0.l.f18244g;
    }

    public d(int i10, int i11, int i12, int i13, int i14) {
        this.f12687h = i10;
        this.f12688i = i11;
        this.f12689j = i12;
        this.f12690k = i13;
        this.f12691l = i14;
    }

    public static String c(int i10) {
        return Integer.toString(i10, 36);
    }

    @Override // n3.h
    public final Bundle a() {
        Bundle bundle = new Bundle();
        bundle.putInt(c(0), this.f12687h);
        bundle.putInt(c(1), this.f12688i);
        bundle.putInt(c(2), this.f12689j);
        bundle.putInt(c(3), this.f12690k);
        bundle.putInt(c(4), this.f12691l);
        return bundle;
    }

    public final c b() {
        if (this.f12692m == null) {
            this.f12692m = new c(this);
        }
        return this.f12692m;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || d.class != obj.getClass()) {
            return false;
        }
        d dVar = (d) obj;
        return this.f12687h == dVar.f12687h && this.f12688i == dVar.f12688i && this.f12689j == dVar.f12689j && this.f12690k == dVar.f12690k && this.f12691l == dVar.f12691l;
    }

    public final int hashCode() {
        return ((((((((527 + this.f12687h) * 31) + this.f12688i) * 31) + this.f12689j) * 31) + this.f12690k) * 31) + this.f12691l;
    }
}
