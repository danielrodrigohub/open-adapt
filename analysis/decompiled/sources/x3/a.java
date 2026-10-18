package x3;

import java.io.IOException;
import java.util.Objects;
import m5.g0;
import m5.p;
import m5.w;
import n3.i1;
import n3.s0;
import org.xmlpull.v1.XmlPullParserException;
import s3.h;
import s3.i;
import s3.j;
import s3.t;
import s3.u;

/* JADX INFO: compiled from: JpegExtractor.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements h {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public j f17734b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f17735c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17736d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f17737e;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public l4.b f17739g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public i f17740h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public c f17741i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public a4.h f17742j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final w f17733a = new w(6);

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public long f17738f = -1;

    @Override // s3.h
    public final void a() {
        a4.h hVar = this.f17742j;
        if (hVar != null) {
            Objects.requireNonNull(hVar);
        }
    }

    @Override // s3.h
    public final void b(long j10, long j11) {
        if (j10 == 0) {
            this.f17735c = 0;
            this.f17742j = null;
        } else if (this.f17735c == 5) {
            a4.h hVar = this.f17742j;
            Objects.requireNonNull(hVar);
            hVar.b(j10, j11);
        }
    }

    public final void c() {
        d(new f4.a.b[0]);
        j jVar = this.f17734b;
        Objects.requireNonNull(jVar);
        jVar.b();
        this.f17734b.j(new u.b(-9223372036854775807L));
        this.f17735c = 6;
    }

    public final void d(f4.a.b... bVarArr) {
        j jVar = this.f17734b;
        Objects.requireNonNull(jVar);
        s3.w wVarP = jVar.p(1024, 4);
        s0.a aVar = new s0.a();
        aVar.f11704j = "image/jpeg";
        aVar.f11703i = new f4.a(bVarArr);
        wVarP.b(new s0(aVar));
    }

    @Override // s3.h
    public final int e(i iVar, t tVar) throws IOException {
        int i10;
        String strO;
        String strO2;
        b bVarA;
        long j10;
        int i11 = this.f17735c;
        if (i11 == 0) {
            this.f17733a.A(2);
            iVar.readFully(this.f17733a.f10475a, 0, 2);
            int iY = this.f17733a.y();
            this.f17736d = iY;
            if (iY == 65498) {
                if (this.f17738f != -1) {
                    this.f17735c = 4;
                } else {
                    c();
                }
            } else if ((iY < 65488 || iY > 65497) && iY != 65281) {
                this.f17735c = 1;
            }
            return 0;
        }
        if (i11 == 1) {
            this.f17733a.A(2);
            iVar.readFully(this.f17733a.f10475a, 0, 2);
            this.f17737e = this.f17733a.y() - 2;
            this.f17735c = 2;
            return 0;
        }
        if (i11 != 2) {
            if (i11 != 4) {
                if (i11 != 5) {
                    if (i11 == 6) {
                        return -1;
                    }
                    throw new IllegalStateException();
                }
                if (this.f17741i == null || iVar != this.f17740h) {
                    this.f17740h = iVar;
                    this.f17741i = new c(iVar, this.f17738f);
                }
                a4.h hVar = this.f17742j;
                Objects.requireNonNull(hVar);
                int iE = hVar.e(this.f17741i, tVar);
                if (iE == 1) {
                    tVar.f15076a += this.f17738f;
                }
                return iE;
            }
            long jU = iVar.u();
            long j11 = this.f17738f;
            if (jU != j11) {
                tVar.f15076a = j11;
                return 1;
            }
            if (iVar.p(this.f17733a.f10475a, 0, 1, true)) {
                iVar.i();
                if (this.f17742j == null) {
                    this.f17742j = new a4.h(0);
                }
                c cVar = new c(iVar, this.f17738f);
                this.f17741i = cVar;
                if (this.f17742j.j(cVar)) {
                    a4.h hVar2 = this.f17742j;
                    long j12 = this.f17738f;
                    j jVar = this.f17734b;
                    Objects.requireNonNull(jVar);
                    hVar2.f309r = new d(j12, jVar);
                    l4.b bVar = this.f17739g;
                    Objects.requireNonNull(bVar);
                    d(bVar);
                    this.f17735c = 5;
                } else {
                    c();
                }
            } else {
                c();
            }
            return 0;
        }
        if (this.f17736d == 65505) {
            int i12 = this.f17737e;
            byte[] bArr = new byte[i12];
            iVar.readFully(bArr, 0, i12);
            if (this.f17739g == null) {
                l4.b bVar2 = null;
                if (i12 + 0 == 0) {
                    strO = null;
                    i10 = 0;
                } else {
                    i10 = 0;
                    while (i10 < i12 && bArr[i10] != 0) {
                        i10++;
                    }
                    strO = g0.o(bArr, 0, i10 + 0);
                    if (i10 < i12) {
                        i10++;
                    }
                }
                if ("http://ns.adobe.com/xap/1.0/".equals(strO)) {
                    if (i12 - i10 == 0) {
                        strO2 = null;
                    } else {
                        int i13 = i10;
                        while (i13 < i12 && bArr[i13] != 0) {
                            i13++;
                        }
                        strO2 = g0.o(bArr, i10, i13 - i10);
                    }
                    if (strO2 != null) {
                        long jA = iVar.a();
                        if (jA != -1) {
                            try {
                                bVarA = e.a(strO2);
                            } catch (NumberFormatException | i1 | XmlPullParserException unused) {
                                p.g("MotionPhotoXmpParser", "Ignoring unexpected XMP metadata");
                                bVarA = null;
                            }
                            if (bVarA != null && bVarA.f17744b.size() >= 2) {
                                long j13 = -1;
                                long j14 = -1;
                                long j15 = -1;
                                long j16 = -1;
                                boolean zEquals = false;
                                for (int size = bVarA.f17744b.size() - 1; size >= 0; size--) {
                                    b.a aVar = bVarA.f17744b.get(size);
                                    zEquals |= "video/mp4".equals(aVar.f17745a);
                                    if (size == 0) {
                                        j10 = jA - aVar.f17747c;
                                        jA = 0;
                                    } else {
                                        long j17 = jA - aVar.f17746b;
                                        j10 = jA;
                                        jA = j17;
                                    }
                                    if (zEquals && jA != j10) {
                                        j16 = j10 - jA;
                                        zEquals = false;
                                        j15 = jA;
                                    }
                                    if (size == 0) {
                                        j14 = j10;
                                        j13 = jA;
                                    }
                                }
                                if (j15 != -1 && j16 != -1 && j13 != -1 && j14 != -1) {
                                    bVar2 = new l4.b(j13, j14, bVarA.f17743a, j15, j16);
                                }
                            }
                        }
                        this.f17739g = bVar2;
                        if (bVar2 != null) {
                            this.f17738f = bVar2.f9956k;
                        }
                    }
                }
            }
        } else {
            iVar.k(this.f17737e);
        }
        this.f17735c = 0;
        return 0;
    }

    public final int f(i iVar) throws IOException {
        this.f17733a.A(2);
        ((s3.e) iVar).p(this.f17733a.f10475a, 0, 2, false);
        return this.f17733a.y();
    }

    @Override // s3.h
    public final void g(j jVar) {
        this.f17734b = jVar;
    }

    @Override // s3.h
    public final boolean j(i iVar) throws IOException {
        if (f(iVar) != 65496) {
            return false;
        }
        int iF = f(iVar);
        this.f17736d = iF;
        if (iF == 65504) {
            this.f17733a.A(2);
            s3.e eVar = (s3.e) iVar;
            eVar.p(this.f17733a.f10475a, 0, 2, false);
            eVar.n(this.f17733a.y() - 2, false);
            this.f17736d = f(iVar);
        }
        if (this.f17736d != 65505) {
            return false;
        }
        s3.e eVar2 = (s3.e) iVar;
        eVar2.n(2, false);
        this.f17733a.A(6);
        eVar2.p(this.f17733a.f10475a, 0, 6, false);
        return this.f17733a.u() == 1165519206 && this.f17733a.y() == 0;
    }
}
