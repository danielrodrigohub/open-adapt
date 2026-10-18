package q3;

import android.media.MediaCodec;
import m5.g0;

/* JADX INFO: compiled from: CryptoInfo.java */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public byte[] f13556a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public byte[] f13557b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public int f13558c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public int[] f13559d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int[] f13560e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f13561f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public int f13562g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public int f13563h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public final MediaCodec.CryptoInfo f13564i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public final a f13565j;

    /* JADX INFO: compiled from: CryptoInfo.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final MediaCodec.CryptoInfo f13566a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final MediaCodec.CryptoInfo.Pattern f13567b = new MediaCodec.CryptoInfo.Pattern(0, 0);

        public a(MediaCodec.CryptoInfo cryptoInfo) {
            this.f13566a = cryptoInfo;
        }
    }

    public c() {
        MediaCodec.CryptoInfo cryptoInfo = new MediaCodec.CryptoInfo();
        this.f13564i = cryptoInfo;
        this.f13565j = g0.f10384a >= 24 ? new a(cryptoInfo) : null;
    }
}
