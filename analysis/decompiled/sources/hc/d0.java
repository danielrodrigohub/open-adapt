package hc;

import java.util.Arrays;

/* JADX INFO: compiled from: CoreRFBigfoot.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d0 extends rd.o implements qd.l<byte[], String> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final d0 f8457h = new d0();

    public d0() {
        super(1);
    }

    @Override // qd.l
    public final String invoke(byte[] bArr) {
        byte[] bArr2 = bArr;
        p4.h.j(bArr2, "it");
        String str = String.format("%02X%02X%02X%02X%02X", Arrays.copyOf(new Object[]{Byte.valueOf(bArr2[0]), Byte.valueOf(bArr2[1]), Byte.valueOf(bArr2[2]), Byte.valueOf(bArr2[3]), Byte.valueOf(bArr2[4])}, 5));
        p4.h.i(str, "format(format, *args)");
        return str;
    }
}
