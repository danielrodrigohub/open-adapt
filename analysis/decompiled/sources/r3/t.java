package r3;

import java.util.UUID;
import m5.g0;

/* JADX INFO: compiled from: FrameworkCryptoConfig.java */
/* JADX INFO: loaded from: classes.dex */
public final class t implements q3.b {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public static final boolean f14514d;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final UUID f14515a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f14516b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final boolean f14517c;

    /* JADX WARN: Code duplicated, block: B:9:0x001e  */
    static {
        boolean z10;
        if ("Amazon".equals(g0.f10386c)) {
            String str = g0.f10387d;
            if ("AFTM".equals(str) || "AFTB".equals(str)) {
                z10 = true;
            } else {
                z10 = false;
            }
        } else {
            z10 = false;
        }
        f14514d = z10;
    }

    public t(UUID uuid, byte[] bArr, boolean z10) {
        this.f14515a = uuid;
        this.f14516b = bArr;
        this.f14517c = z10;
    }
}
