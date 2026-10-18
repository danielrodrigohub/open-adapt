package c4;

import com.newrelic.agent.android.analytics.AnalyticsAttribute;
import n3.s0;

/* JADX INFO: compiled from: MpegAudioReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class q implements j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final m5.w f4161a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final p3.b0.a f4162b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final String f4163c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public s3.w f4164d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public String f4165e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4166f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f4167g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public boolean f4168h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public boolean f4169i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public long f4170j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public int f4171k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public long f4172l;

    public q(String str) {
        m5.w wVar = new m5.w(4);
        this.f4161a = wVar;
        wVar.f10475a[0] = -1;
        this.f4162b = new p3.b0.a();
        this.f4172l = -9223372036854775807L;
        this.f4163c = str;
    }

    @Override // c4.j
    public final void a() {
        this.f4166f = 0;
        this.f4167g = 0;
        this.f4169i = false;
        this.f4172l = -9223372036854775807L;
    }

    @Override // c4.j
    public final void c(m5.w wVar) {
        m5.a.f(this.f4164d);
        while (true) {
            int i10 = wVar.f10477c;
            int i11 = wVar.f10476b;
            int i12 = i10 - i11;
            if (i12 <= 0) {
                return;
            }
            int i13 = this.f4166f;
            if (i13 == 0) {
                byte[] bArr = wVar.f10475a;
                while (true) {
                    if (i11 >= i10) {
                        wVar.D(i10);
                        break;
                    }
                    boolean z10 = (bArr[i11] & 255) == 255;
                    boolean z11 = this.f4169i && (bArr[i11] & 224) == 224;
                    this.f4169i = z10;
                    if (z11) {
                        wVar.D(i11 + 1);
                        this.f4169i = false;
                        this.f4161a.f10475a[1] = bArr[i11];
                        this.f4167g = 2;
                        this.f4166f = 1;
                        break;
                    }
                    i11++;
                }
            } else if (i13 == 1) {
                int iMin = Math.min(i12, 4 - this.f4167g);
                wVar.d(this.f4161a.f10475a, this.f4167g, iMin);
                int i14 = this.f4167g + iMin;
                this.f4167g = i14;
                if (i14 >= 4) {
                    this.f4161a.D(0);
                    if (this.f4162b.a(this.f4161a.e())) {
                        p3.b0.a aVar = this.f4162b;
                        this.f4171k = aVar.f12677c;
                        if (!this.f4168h) {
                            long j10 = ((long) aVar.f12681g) * 1000000;
                            int i15 = aVar.f12678d;
                            this.f4170j = j10 / ((long) i15);
                            s0.a aVar2 = new s0.a();
                            aVar2.f11695a = this.f4165e;
                            aVar2.f11705k = aVar.f12676b;
                            aVar2.f11706l = AnalyticsAttribute.ATTRIBUTE_VALUE_MAX_LENGTH;
                            aVar2.f11718x = aVar.f12679e;
                            aVar2.f11719y = i15;
                            aVar2.f11697c = this.f4163c;
                            this.f4164d.b(new s0(aVar2));
                            this.f4168h = true;
                        }
                        this.f4161a.D(0);
                        this.f4164d.f(this.f4161a, 4);
                        this.f4166f = 2;
                    } else {
                        this.f4167g = 0;
                        this.f4166f = 1;
                    }
                }
            } else {
                if (i13 != 2) {
                    throw new IllegalStateException();
                }
                int iMin2 = Math.min(i12, this.f4171k - this.f4167g);
                this.f4164d.f(wVar, iMin2);
                int i16 = this.f4167g + iMin2;
                this.f4167g = i16;
                int i17 = this.f4171k;
                if (i16 >= i17) {
                    long j11 = this.f4172l;
                    if (j11 != -9223372036854775807L) {
                        this.f4164d.c(j11, 1, i17, 0, null);
                        this.f4172l += this.f4170j;
                    }
                    this.f4167g = 0;
                    this.f4166f = 0;
                }
            }
        }
    }

    @Override // c4.j
    public final void d() {
    }

    @Override // c4.j
    public final void e(long j10, int i10) {
        if (j10 != -9223372036854775807L) {
            this.f4172l = j10;
        }
    }

    @Override // c4.j
    public final void f(s3.j jVar, d0.d dVar) {
        dVar.a();
        this.f4165e = dVar.b();
        this.f4164d = jVar.p(dVar.c(), 1);
    }
}
