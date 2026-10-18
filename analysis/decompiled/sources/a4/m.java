package a4;

import m5.p;
import s3.w;

/* JADX INFO: compiled from: TrackEncryptionBox.java */
/* JADX INFO: loaded from: classes.dex */
public final class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final boolean f343a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f344b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final w.a f345c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f346d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final byte[] f347e;

    public m(boolean z10, String str, int i10, byte[] bArr, int i11, int i12, byte[] bArr2) {
        int i13 = 1;
        m5.a.a((i10 == 0) ^ (bArr2 == null));
        this.f343a = z10;
        this.f344b = str;
        this.f346d = i10;
        this.f347e = bArr2;
        if (str != null) {
            switch (str) {
                case "cbc1":
                case "cbcs":
                    i13 = 2;
                    break;
                case "cenc":
                case "cens":
                    break;
                default:
                    p.g("TrackEncryptionBox", "Unsupported protection scheme type '" + str + "'. Assuming AES-CTR crypto mode.");
                    break;
            }
        }
        this.f345c = new w.a(i13, bArr, i11, i12);
    }
}
