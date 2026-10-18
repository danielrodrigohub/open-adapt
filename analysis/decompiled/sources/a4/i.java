package a4;

import java.nio.ByteBuffer;
import java.util.UUID;
import m5.p;
import m5.w;
import okhttp3.internal.http2.Http2Connection;

/* JADX INFO: compiled from: PsshAtomUtil.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: compiled from: PsshAtomUtil.java */
    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final UUID f321a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final int f322b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f323c;

        public a(UUID uuid, int i10, byte[] bArr) {
            this.f321a = uuid;
            this.f322b = i10;
            this.f323c = bArr;
        }
    }

    public static byte[] a(UUID uuid, UUID[] uuidArr, byte[] bArr) {
        int length = (bArr != null ? bArr.length : 0) + 32;
        if (uuidArr != null) {
            length += (uuidArr.length * 16) + 4;
        }
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length);
        byteBufferAllocate.putInt(length);
        byteBufferAllocate.putInt(1886614376);
        byteBufferAllocate.putInt(uuidArr != null ? Http2Connection.OKHTTP_CLIENT_WINDOW_SIZE : 0);
        byteBufferAllocate.putLong(uuid.getMostSignificantBits());
        byteBufferAllocate.putLong(uuid.getLeastSignificantBits());
        if (uuidArr != null) {
            byteBufferAllocate.putInt(uuidArr.length);
            for (UUID uuid2 : uuidArr) {
                byteBufferAllocate.putLong(uuid2.getMostSignificantBits());
                byteBufferAllocate.putLong(uuid2.getLeastSignificantBits());
            }
        }
        if (bArr != null && bArr.length != 0) {
            byteBufferAllocate.putInt(bArr.length);
            byteBufferAllocate.put(bArr);
        }
        return byteBufferAllocate.array();
    }

    public static a b(byte[] bArr) {
        w wVar = new w(bArr);
        if (wVar.f10477c < 32) {
            return null;
        }
        wVar.D(0);
        if (wVar.e() != (wVar.f10477c - wVar.f10476b) + 4 || wVar.e() != 1886614376) {
            return null;
        }
        int iE = (wVar.e() >> 24) & 255;
        if (iE > 1) {
            da.c.b("Unsupported pssh version: ", iE, "PsshAtomUtil");
            return null;
        }
        UUID uuid = new UUID(wVar.m(), wVar.m());
        if (iE == 1) {
            wVar.E(wVar.w() * 16);
        }
        int iW = wVar.w();
        if (iW != wVar.f10477c - wVar.f10476b) {
            return null;
        }
        byte[] bArr2 = new byte[iW];
        wVar.d(bArr2, 0, iW);
        return new a(uuid, iE, bArr2);
    }

    public static byte[] c(byte[] bArr, UUID uuid) {
        a aVarB = b(bArr);
        if (aVarB == null) {
            return null;
        }
        if (uuid.equals(aVarB.f321a)) {
            return aVarB.f323c;
        }
        p.g("PsshAtomUtil", "UUID mismatch. Expected: " + uuid + ", got: " + aVarB.f321a + ".");
        return null;
    }
}
