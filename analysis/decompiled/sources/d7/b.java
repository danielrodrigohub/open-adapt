package d7;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import javax.crypto.Cipher;
import javax.crypto.spec.GCMParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: AesGcmHkdfStreaming.java */
/* JADX INFO: loaded from: classes.dex */
public final class b extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6074a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f6075b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6076c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6077d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final String f6078e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final byte[] f6079f;

    /* JADX INFO: compiled from: AesGcmHkdfStreaming.java */
    public class a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SecretKeySpec f6080a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public Cipher f6081b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public byte[] f6082c;

        public a() {
        }

        @Override // d7.h
        public final synchronized void a(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
            if (byteBuffer.remaining() != b.this.e()) {
                throw new InvalidAlgorithmParameterException("Invalid header length");
            }
            if (byteBuffer.get() != b.this.e()) {
                throw new GeneralSecurityException("Invalid ciphertext");
            }
            this.f6082c = new byte[7];
            byte[] bArr2 = new byte[b.this.f6074a];
            byteBuffer.get(bArr2);
            byteBuffer.get(this.f6082c);
            b bVar = b.this;
            this.f6080a = new SecretKeySpec(e.a(bVar.f6078e, bVar.f6079f, bArr2, bArr, bVar.f6074a), "AES");
            this.f6081b = c.f6091e.a("AES/GCM/NoPadding");
        }

        @Override // d7.h
        public final synchronized void b(ByteBuffer byteBuffer, int i10, boolean z10, ByteBuffer byteBuffer2) throws GeneralSecurityException {
            this.f6081b.init(2, this.f6080a, b.i(this.f6082c, i10, z10));
            this.f6081b.doFinal(byteBuffer, byteBuffer2);
        }
    }

    /* JADX INFO: renamed from: d7.b$b, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AesGcmHkdfStreaming.java */
    public class C0106b implements i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SecretKeySpec f6084a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final Cipher f6085b = c.f6091e.a("AES/GCM/NoPadding");

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final byte[] f6086c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final ByteBuffer f6087d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public long f6088e;

        public C0106b(b bVar, byte[] bArr) throws GeneralSecurityException {
            this.f6088e = 0L;
            this.f6088e = 0L;
            byte[] bArrA = g.a(bVar.f6074a);
            byte[] bArrA2 = g.a(7);
            this.f6086c = bArrA2;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(bVar.e());
            this.f6087d = byteBufferAllocate;
            byteBufferAllocate.put((byte) bVar.e());
            byteBufferAllocate.put(bArrA);
            byteBufferAllocate.put(bArrA2);
            byteBufferAllocate.flip();
            this.f6084a = new SecretKeySpec(e.a(bVar.f6078e, bVar.f6079f, bArrA, bArr, bVar.f6074a), "AES");
        }

        @Override // d7.i
        public final synchronized void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3) throws GeneralSecurityException {
            this.f6085b.init(1, this.f6084a, b.i(this.f6086c, this.f6088e, false));
            this.f6088e++;
            if (byteBuffer2.hasRemaining()) {
                this.f6085b.update(byteBuffer, byteBuffer3);
                this.f6085b.doFinal(byteBuffer2, byteBuffer3);
            } else {
                this.f6085b.doFinal(byteBuffer, byteBuffer3);
            }
        }

        @Override // d7.i
        public final ByteBuffer b() {
            return this.f6087d.asReadOnlyBuffer();
        }

        @Override // d7.i
        public final synchronized void c(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException {
            this.f6085b.init(1, this.f6084a, b.i(this.f6086c, this.f6088e, true));
            this.f6088e++;
            this.f6085b.doFinal(byteBuffer, byteBuffer2);
        }
    }

    public b(byte[] bArr, String str, int i10, int i11) throws InvalidAlgorithmParameterException {
        if (bArr.length < 16 || bArr.length < i10) {
            StringBuilder sbC = a0.b.c("ikm too short, must be >= ");
            sbC.append(Math.max(16, i10));
            throw new InvalidAlgorithmParameterException(sbC.toString());
        }
        m.a(i10);
        if (i11 <= e() + 0 + 16) {
            throw new InvalidAlgorithmParameterException("ciphertextSegmentSize too small");
        }
        this.f6079f = Arrays.copyOf(bArr, bArr.length);
        this.f6078e = str;
        this.f6074a = i10;
        this.f6075b = i11;
        this.f6077d = 0;
        this.f6076c = i11 - 16;
    }

    public static GCMParameterSpec i(byte[] bArr, long j10, boolean z10) throws GeneralSecurityException {
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(12);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.put(bArr);
        l.a(byteBufferAllocate, j10);
        byteBufferAllocate.put(z10 ? (byte) 1 : (byte) 0);
        return new GCMParameterSpec(128, byteBufferAllocate.array());
    }

    @Override // d7.f
    public final int c() {
        return e() + this.f6077d;
    }

    @Override // d7.f
    public final int d() {
        return this.f6075b;
    }

    @Override // d7.f
    public final int e() {
        return this.f6074a + 1 + 7;
    }

    @Override // d7.f
    public final int f() {
        return this.f6076c;
    }

    @Override // d7.f
    public final h g() throws GeneralSecurityException {
        return new a();
    }

    @Override // d7.f
    public final i h(byte[] bArr) throws GeneralSecurityException {
        return new C0106b(this, bArr);
    }
}
