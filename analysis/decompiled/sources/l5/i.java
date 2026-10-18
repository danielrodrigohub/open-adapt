package l5;

import android.net.Uri;
import android.util.Base64;
import java.io.IOException;
import java.net.URLDecoder;
import n3.i1;

/* JADX INFO: compiled from: DataSchemeDataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class i extends f {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public m f10047e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public byte[] f10048f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f10049g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f10050h;

    public i() {
        super(false);
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) {
        if (i11 == 0) {
            return 0;
        }
        int i12 = this.f10050h;
        if (i12 == 0) {
            return -1;
        }
        int iMin = Math.min(i11, i12);
        byte[] bArr2 = this.f10048f;
        int i13 = m5.g0.f10384a;
        System.arraycopy(bArr2, this.f10049g, bArr, i10, iMin);
        this.f10049g += iMin;
        this.f10050h -= iMin;
        v(iMin);
        return iMin;
    }

    @Override // l5.j
    public final void close() {
        if (this.f10048f != null) {
            this.f10048f = null;
            w();
        }
        this.f10047e = null;
    }

    @Override // l5.j
    public final long l(m mVar) throws IOException {
        x(mVar);
        this.f10047e = mVar;
        Uri uri = mVar.f10071a;
        String scheme = uri.getScheme();
        m5.a.b("data".equals(scheme), "Unsupported scheme: " + scheme);
        String schemeSpecificPart = uri.getSchemeSpecificPart();
        int i10 = m5.g0.f10384a;
        String[] strArrSplit = schemeSpecificPart.split(",", -1);
        if (strArrSplit.length != 2) {
            throw new i1("Unexpected URI format: " + uri, null, true, 0);
        }
        String str = strArrSplit[1];
        if (strArrSplit[0].contains(";base64")) {
            try {
                this.f10048f = Base64.decode(str, 0);
            } catch (IllegalArgumentException e10) {
                throw new i1(androidx.recyclerview.widget.d.c("Error while parsing Base64 encoded string: ", str), e10, true, 0);
            }
        } else {
            this.f10048f = m5.g0.F(URLDecoder.decode(str, t6.c.f15536a.name()));
        }
        long j10 = mVar.f10076f;
        byte[] bArr = this.f10048f;
        if (j10 > bArr.length) {
            this.f10048f = null;
            throw new k(2008);
        }
        int i11 = (int) j10;
        this.f10049g = i11;
        int length = bArr.length - i11;
        this.f10050h = length;
        long j11 = mVar.f10077g;
        if (j11 != -1) {
            this.f10050h = (int) Math.min(length, j11);
        }
        y(mVar);
        long j12 = mVar.f10077g;
        return j12 != -1 ? j12 : this.f10050h;
    }

    @Override // l5.j
    public final Uri o() {
        m mVar = this.f10047e;
        if (mVar != null) {
            return mVar.f10071a;
        }
        return null;
    }
}
