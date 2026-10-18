package w3;

import java.util.Collections;
import n3.i1;
import n3.s0;
import s3.w;

/* JADX INFO: compiled from: AudioTagPayloadReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends d {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public static final int[] f17086e = {5512, 11025, 22050, 44100};

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f17087b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public boolean f17088c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17089d;

    public a(w wVar) {
        super(wVar);
    }

    @Override // w3.d
    public final boolean b(m5.w wVar) throws d.a {
        if (this.f17087b) {
            wVar.E(1);
        } else {
            int iT = wVar.t();
            int i10 = (iT >> 4) & 15;
            this.f17089d = i10;
            if (i10 == 2) {
                int i11 = f17086e[(iT >> 2) & 3];
                s0.a aVar = new s0.a();
                aVar.f11705k = "audio/mpeg";
                aVar.f11718x = 1;
                aVar.f11719y = i11;
                this.f17109a.b(aVar.a());
                this.f17088c = true;
            } else if (i10 == 7 || i10 == 8) {
                String str = i10 == 7 ? "audio/g711-alaw" : "audio/g711-mlaw";
                s0.a aVar2 = new s0.a();
                aVar2.f11705k = str;
                aVar2.f11718x = 1;
                aVar2.f11719y = 8000;
                this.f17109a.b(aVar2.a());
                this.f17088c = true;
            } else if (i10 != 10) {
                StringBuilder sbC = a0.b.c("Audio format not supported: ");
                sbC.append(this.f17089d);
                throw new d.a(sbC.toString());
            }
            this.f17087b = true;
        }
        return true;
    }

    @Override // w3.d
    public final boolean c(m5.w wVar, long j10) throws i1 {
        if (this.f17089d == 2) {
            int i10 = wVar.f10477c - wVar.f10476b;
            this.f17109a.f(wVar, i10);
            this.f17109a.c(j10, 1, i10, 0, null);
            return true;
        }
        int iT = wVar.t();
        if (iT != 0 || this.f17088c) {
            if (this.f17089d == 10 && iT != 1) {
                return false;
            }
            int i11 = wVar.f10477c - wVar.f10476b;
            this.f17109a.f(wVar, i11);
            this.f17109a.c(j10, 1, i11, 0, null);
            return true;
        }
        int i12 = wVar.f10477c - wVar.f10476b;
        byte[] bArr = new byte[i12];
        wVar.d(bArr, 0, i12);
        p3.a.C0228a c0228aE = p3.a.e(bArr);
        s0.a aVar = new s0.a();
        aVar.f11705k = "audio/mp4a-latm";
        aVar.f11702h = c0228aE.f12655c;
        aVar.f11718x = c0228aE.f12654b;
        aVar.f11719y = c0228aE.f12653a;
        aVar.f11707m = Collections.singletonList(bArr);
        this.f17109a.b(new s0(aVar));
        this.f17088c = true;
        return false;
    }
}
