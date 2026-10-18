package y3;

import java.io.IOException;
import java.util.ArrayDeque;
import s3.i;

/* JADX INFO: compiled from: DefaultEbmlReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte[] f18516a = new byte[8];

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final ArrayDeque<C0319a> f18517b = new ArrayDeque<>();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final f f18518c = new f();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public b f18519d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f18520e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f18521f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public long f18522g;

    /* JADX INFO: renamed from: y3.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: DefaultEbmlReader.java */
    public static final class C0319a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final int f18523a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final long f18524b;

        public C0319a(int i10, long j10) {
            this.f18523a = i10;
            this.f18524b = j10;
        }
    }

    public final long a(i iVar, int i10) throws IOException {
        iVar.readFully(this.f18516a, 0, i10);
        long j10 = 0;
        for (int i11 = 0; i11 < i10; i11++) {
            j10 = (j10 << 8) | ((long) (this.f18516a[i11] & 255));
        }
        return j10;
    }
}
