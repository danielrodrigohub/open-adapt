package w4;

import java.util.Comparator;
import java.util.TreeSet;
import okhttp3.internal.http2.Settings;

/* JADX INFO: compiled from: RtpPacketReorderingQueue.java */
/* JADX INFO: loaded from: classes.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TreeSet<a> f17168a = new TreeSet<>(new Comparator() { // from class: w4.d
        @Override // java.util.Comparator
        public final int compare(Object obj, Object obj2) {
            return e.b(((e.a) obj).f17172a.f17155c, ((e.a) obj2).f17172a.f17155c);
        }
    });

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public int f17169b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17170c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public boolean f17171d;

    /* JADX INFO: compiled from: RtpPacketReorderingQueue.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final c f17172a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f17173b;

        public a(c cVar, long j10) {
            this.f17172a = cVar;
            this.f17173b = j10;
        }
    }

    public e() {
        d();
    }

    public static int b(int i10, int i11) {
        int iMin;
        int i12 = i10 - i11;
        if (Math.abs(i12) <= 1000 || (iMin = (Math.min(i10, i11) - Math.max(i10, i11)) + Settings.DEFAULT_INITIAL_WINDOW_SIZE) >= 1000) {
            return i12;
        }
        return i10 < i11 ? iMin : -iMin;
    }

    public final synchronized void a(a aVar) {
        this.f17169b = aVar.f17172a.f17155c;
        this.f17168a.add(aVar);
    }

    public final synchronized c c(long j10) {
        if (this.f17168a.isEmpty()) {
            return null;
        }
        a aVarFirst = this.f17168a.first();
        int i10 = aVarFirst.f17172a.f17155c;
        if (i10 != c.a(this.f17170c) && j10 < aVarFirst.f17173b) {
            return null;
        }
        this.f17168a.pollFirst();
        this.f17170c = i10;
        return aVarFirst.f17172a;
    }

    public final synchronized void d() {
        this.f17168a.clear();
        this.f17171d = false;
        this.f17170c = -1;
        this.f17169b = -1;
    }
}
