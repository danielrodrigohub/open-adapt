package w4;

import android.os.SystemClock;
import java.io.IOException;
import java.util.Objects;
import m5.w;
import s3.t;
import s3.u;

/* JADX INFO: compiled from: RtpExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements s3.h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final x4.i f17139a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f17140b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f17141c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f17142d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final Object f17143e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final e f17144f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public s3.j f17145g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f17146h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public volatile long f17147i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public volatile int f17148j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public boolean f17149k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f17150l;

    /* JADX INFO: renamed from: m, reason: collision with root package name */
    public long f17151m;

    public b(f fVar, int i10) {
        x4.i dVar;
        x4.i iVar;
        this.f17142d = i10;
        String str = fVar.f17176c.f11687s;
        Objects.requireNonNull(str);
        switch (str) {
            case "video/3gpp":
                dVar = new x4.d(fVar);
                iVar = dVar;
                break;
            case "video/hevc":
                dVar = new x4.f(fVar);
                iVar = dVar;
                break;
            case "audio/amr-wb":
            case "audio/3gpp":
                dVar = new x4.c(fVar);
                iVar = dVar;
                break;
            case "audio/mp4a-latm":
                dVar = new x4.a(fVar);
                iVar = dVar;
                break;
            case "audio/ac3":
                dVar = new x4.b(fVar);
                iVar = dVar;
                break;
            case "audio/raw":
            case "audio/g711-alaw":
            case "audio/g711-mlaw":
                dVar = new x4.j(fVar);
                iVar = dVar;
                break;
            case "video/mp4v-es":
                dVar = new x4.g(fVar);
                iVar = dVar;
                break;
            case "video/avc":
                dVar = new x4.e(fVar);
                iVar = dVar;
                break;
            case "audio/opus":
                dVar = new x4.h(fVar);
                iVar = dVar;
                break;
            case "video/x-vnd.on2.vp8":
                dVar = new x4.k(fVar);
                iVar = dVar;
                break;
            case "video/x-vnd.on2.vp9":
                dVar = new x4.l(fVar);
                iVar = dVar;
                break;
            default:
                iVar = null;
                break;
        }
        Objects.requireNonNull(iVar);
        this.f17139a = iVar;
        this.f17140b = new w(65507);
        this.f17141c = new w();
        this.f17143e = new Object();
        this.f17144f = new e();
        this.f17147i = -9223372036854775807L;
        this.f17148j = -1;
        this.f17150l = -9223372036854775807L;
        this.f17151m = -9223372036854775807L;
    }

    @Override // s3.h
    public final void a() {
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        synchronized (this.f17143e) {
            this.f17150l = j10;
            this.f17151m = j11;
        }
    }

    @Override // s3.h
    public final int e(s3.i iVar, t tVar) throws IOException {
        byte[] bArr;
        Objects.requireNonNull(this.f17145g);
        int iB = iVar.b(this.f17140b.f10475a, 0, 65507);
        if (iB == -1) {
            return -1;
        }
        if (iB == 0) {
            return 0;
        }
        this.f17140b.D(0);
        this.f17140b.C(iB);
        w wVar = this.f17140b;
        c cVar = null;
        if (wVar.f10477c - wVar.f10476b >= 12) {
            int iT = wVar.t();
            byte b10 = (byte) (iT >> 6);
            boolean z10 = ((iT >> 5) & 1) == 1;
            byte b11 = (byte) (iT & 15);
            if (b10 == 2) {
                int iT2 = wVar.t();
                boolean z11 = ((iT2 >> 7) & 1) == 1;
                byte b12 = (byte) (iT2 & 127);
                int iY = wVar.y();
                long jU = wVar.u();
                int iE = wVar.e();
                if (b11 > 0) {
                    bArr = new byte[b11 * 4];
                    for (int i10 = 0; i10 < b11; i10++) {
                        wVar.d(bArr, i10 * 4, 4);
                    }
                } else {
                    bArr = c.f17152g;
                }
                int i11 = wVar.f10477c - wVar.f10476b;
                byte[] bArr2 = new byte[i11];
                wVar.d(bArr2, 0, i11);
                c.a aVar = new c.a();
                aVar.f17159a = z10;
                aVar.f17160b = z11;
                aVar.f17161c = b12;
                m5.a.a(iY >= 0 && iY <= 65535);
                aVar.f17162d = 65535 & iY;
                aVar.f17163e = jU;
                aVar.f17164f = iE;
                aVar.f17165g = bArr;
                aVar.f17166h = bArr2;
                cVar = new c(aVar);
            }
        }
        if (cVar == null) {
            return 0;
        }
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        long j10 = jElapsedRealtime - 30;
        e eVar = this.f17144f;
        synchronized (eVar) {
            if (eVar.f17168a.size() >= 5000) {
                throw new IllegalStateException("Queue size limit of 5000 reached.");
            }
            int i12 = cVar.f17155c;
            if (!eVar.f17171d) {
                eVar.d();
                eVar.f17170c = j7.a.b(i12 - 1);
                eVar.f17171d = true;
                eVar.a(new e.a(cVar, jElapsedRealtime));
            } else if (Math.abs(e.b(i12, c.a(eVar.f17169b))) >= 1000) {
                eVar.f17170c = j7.a.b(i12 - 1);
                eVar.f17168a.clear();
                eVar.a(new e.a(cVar, jElapsedRealtime));
            } else if (e.b(i12, eVar.f17170c) > 0) {
                eVar.a(new e.a(cVar, jElapsedRealtime));
            }
        }
        c cVarC = this.f17144f.c(j10);
        if (cVarC == null) {
            return 0;
        }
        if (!this.f17146h) {
            if (this.f17147i == -9223372036854775807L) {
                this.f17147i = cVarC.f17156d;
            }
            if (this.f17148j == -1) {
                this.f17148j = cVarC.f17155c;
            }
            this.f17139a.c(this.f17147i);
            this.f17146h = true;
        }
        synchronized (this.f17143e) {
            if (!this.f17149k) {
                do {
                    w wVar2 = this.f17141c;
                    byte[] bArr3 = cVarC.f17158f;
                    Objects.requireNonNull(wVar2);
                    wVar2.B(bArr3, bArr3.length);
                    this.f17139a.a(this.f17141c, cVarC.f17156d, cVarC.f17155c, cVarC.f17153a);
                    cVarC = this.f17144f.c(j10);
                } while (cVarC != null);
            } else if (this.f17150l != -9223372036854775807L && this.f17151m != -9223372036854775807L) {
                this.f17144f.d();
                this.f17139a.b(this.f17150l, this.f17151m);
                this.f17149k = false;
                this.f17150l = -9223372036854775807L;
                this.f17151m = -9223372036854775807L;
            }
        }
        return 0;
    }

    @Override // s3.h
    public final void g(s3.j jVar) {
        this.f17139a.d(jVar, this.f17142d);
        jVar.b();
        jVar.j(new u.b(-9223372036854775807L));
        this.f17145g = jVar;
    }

    @Override // s3.h
    public final boolean j(s3.i iVar) {
        throw new UnsupportedOperationException("RTP packets are transmitted in a packet stream do not support sniffing.");
    }
}
