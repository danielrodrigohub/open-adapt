package z2;

import java.util.Objects;
import r2.w;

/* JADX INFO: compiled from: BytesResource.java */
/* JADX INFO: loaded from: classes.dex */
public final class b implements w<byte[]> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f19253h;

    public b(byte[] bArr) {
        Objects.requireNonNull(bArr, "Argument must not be null");
        this.f19253h = bArr;
    }

    @Override // r2.w
    public final int a() {
        return this.f19253h.length;
    }

    @Override // r2.w
    public final Class<byte[]> b() {
        return byte[].class;
    }

    @Override // r2.w
    public final void c() {
    }

    @Override // r2.w
    public final byte[] get() {
        return this.f19253h;
    }
}
