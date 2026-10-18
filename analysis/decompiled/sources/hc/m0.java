package hc;

import java.nio.BufferUnderflowException;
import java.nio.ByteBuffer;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: Message.java */
/* JADX INFO: loaded from: classes.dex */
public final class m0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final byte f8593a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final a f8594b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f8595c;

    /* JADX INFO: compiled from: Message.java */
    public enum a {
        REQUEST(0),
        ACK(1),
        NAK(2),
        EVENT(3);


        /* JADX INFO: renamed from: m, reason: collision with root package name */
        public static final Map<Integer, a> f8600m = new HashMap();

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public int f8602h;

        /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.Integer, hc.m0$a>] */
        static {
            for (a aVar : EnumSet.allOf(a.class)) {
                f8600m.put(Integer.valueOf(aVar.f8602h), aVar);
            }
        }

        a(int i10) {
            this.f8602h = i10;
        }
    }

    public m0(byte b10, a aVar, byte[] bArr) {
        this.f8593a = b10;
        this.f8594b = aVar;
        this.f8595c = bArr;
    }

    /* JADX WARN: Type inference failed for: r6v0, types: [java.util.HashMap, java.util.Map<java.lang.Integer, hc.m0$a>] */
    public static m0 a(byte[] bArr) {
        int iReverseBytes;
        if (bArr != null && bArr.length >= 3) {
            ByteBuffer byteBufferWrap = ByteBuffer.wrap(bArr);
            try {
                byte b10 = (byte) (byteBufferWrap.get() & 255);
                short s10 = (short) (byteBufferWrap.getShort() & 65535);
                a aVar = (a) a.f8600m.get(Integer.valueOf((s10 & 192) >>> 6));
                if (aVar != null && (iReverseBytes = Short.reverseBytes(s10) & 16383) >= 0 && iReverseBytes <= 513) {
                    if (iReverseBytes <= 0 || iReverseBytes > bArr.length - 3) {
                        return new m0(b10, aVar, null);
                    }
                    byte[] bArr2 = new byte[iReverseBytes];
                    byteBufferWrap.get(bArr2);
                    return new m0(b10, aVar, bArr2);
                }
            } catch (BufferUnderflowException unused) {
            }
        }
        return null;
    }

    public static byte[] b(m0 m0Var) {
        if (m0Var == null) {
            return null;
        }
        byte[] bArr = m0Var.f8595c;
        int length = bArr == null ? 0 : bArr.length;
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(length + 3);
        byteBufferAllocate.put(m0Var.f8593a).putShort(Short.reverseBytes((short) ((((short) length) & 16383) | (m0Var.f8594b.f8602h << 14))));
        byte[] bArr2 = m0Var.f8595c;
        if (bArr2 != null) {
            byteBufferAllocate.put(bArr2);
        }
        return byteBufferAllocate.array();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof m0) {
            return Arrays.equals(b((m0) obj), b(this));
        }
        return false;
    }

    public final String toString() {
        Object[] objArr = new Object[4];
        objArr[0] = Byte.valueOf(this.f8593a);
        objArr[1] = Byte.valueOf(this.f8593a);
        objArr[2] = this.f8594b;
        byte[] bArr = this.f8595c;
        objArr[3] = Integer.valueOf(bArr != null ? bArr.length : 0);
        return String.format("type: 0x%02X(%d); action: %s; payload size: %d", objArr);
    }
}
