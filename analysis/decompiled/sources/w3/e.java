package w3;

import androidx.appcompat.widget.e0;
import m5.t;
import m5.w;
import n3.i1;
import n3.s0;

/* JADX INFO: compiled from: VideoTagPayloadReader.java */
/* JADX INFO: loaded from: classes.dex */
public final class e extends d {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final w f17110b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w f17111c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int f17112d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f17113e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f17114f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f17115g;

    public e(s3.w wVar) {
        super(wVar);
        this.f17110b = new w(t.f10435a);
        this.f17111c = new w(4);
    }

    @Override // w3.d
    public final boolean b(w wVar) throws d.a {
        int iT = wVar.t();
        int i10 = (iT >> 4) & 15;
        int i11 = iT & 15;
        if (i11 != 7) {
            throw new d.a(e0.d("Video format not supported: ", i11));
        }
        this.f17115g = i10;
        return i10 != 5;
    }

    @Override // w3.d
    public final boolean c(w wVar, long j10) throws i1 {
        int iT = wVar.t();
        byte[] bArr = wVar.f10475a;
        int i10 = wVar.f10476b;
        int i11 = i10 + 1;
        wVar.f10476b = i11;
        int i12 = ((bArr[i10] & 255) << 24) >> 8;
        int i13 = i11 + 1;
        wVar.f10476b = i13;
        int i14 = i12 | ((bArr[i11] & 255) << 8);
        int i15 = i13 + 1;
        wVar.f10476b = i15;
        long j11 = (((long) ((bArr[i13] & 255) | i14)) * 1000) + j10;
        if (iT == 0 && !this.f17113e) {
            w wVar2 = new w(new byte[wVar.f10477c - i15]);
            wVar.d(wVar2.f10475a, 0, wVar.f10477c - wVar.f10476b);
            n5.a aVarB = n5.a.b(wVar2);
            this.f17112d = aVarB.f11858b;
            s0.a aVar = new s0.a();
            aVar.f11705k = "video/avc";
            aVar.f11702h = aVarB.f11862f;
            aVar.f11710p = aVarB.f11859c;
            aVar.f11711q = aVarB.f11860d;
            aVar.f11714t = aVarB.f11861e;
            aVar.f11707m = aVarB.f11857a;
            this.f17109a.b(new s0(aVar));
            this.f17113e = true;
            return false;
        }
        if (iT != 1 || !this.f17113e) {
            return false;
        }
        int i16 = this.f17115g == 1 ? 1 : 0;
        if (!this.f17114f && i16 == 0) {
            return false;
        }
        byte[] bArr2 = this.f17111c.f10475a;
        bArr2[0] = 0;
        bArr2[1] = 0;
        bArr2[2] = 0;
        int i17 = 4 - this.f17112d;
        int i18 = 0;
        while (wVar.f10477c - wVar.f10476b > 0) {
            wVar.d(this.f17111c.f10475a, i17, this.f17112d);
            this.f17111c.D(0);
            int iW = this.f17111c.w();
            this.f17110b.D(0);
            this.f17109a.f(this.f17110b, 4);
            this.f17109a.f(wVar, iW);
            i18 = i18 + 4 + iW;
        }
        this.f17109a.c(j11, i16, i18, 0, null);
        this.f17114f = true;
        return true;
    }
}
