package d7;

import androidx.appcompat.widget.e0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.util.Arrays;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.Mac;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: compiled from: AesCtrHmacStreaming.java */
/* JADX INFO: loaded from: classes.dex */
public final class a extends f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f6052a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final String f6053b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final int f6054c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f6055d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f6056e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final int f6057f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final String f6058g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final byte[] f6059h;

    /* JADX INFO: renamed from: d7.a$a, reason: collision with other inner class name */
    /* JADX INFO: compiled from: AesCtrHmacStreaming.java */
    public class C0105a implements h {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public SecretKeySpec f6060a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public SecretKeySpec f6061b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public Cipher f6062c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Mac f6063d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public byte[] f6064e;

        public C0105a() {
        }

        @Override // d7.h
        public final synchronized void a(ByteBuffer byteBuffer, byte[] bArr) throws GeneralSecurityException {
            if (byteBuffer.remaining() != a.this.e()) {
                throw new InvalidAlgorithmParameterException("Invalid header length");
            }
            if (byteBuffer.get() != a.this.e()) {
                throw new GeneralSecurityException("Invalid ciphertext");
            }
            this.f6064e = new byte[7];
            byte[] bArr2 = new byte[a.this.f6052a];
            byteBuffer.get(bArr2);
            byteBuffer.get(this.f6064e);
            a aVar = a.this;
            byte[] bArrA = e.a(aVar.f6058g, aVar.f6059h, bArr2, bArr, aVar.f6052a + 32);
            a aVar2 = a.this;
            Objects.requireNonNull(aVar2);
            this.f6060a = new SecretKeySpec(bArrA, 0, aVar2.f6052a, "AES");
            a aVar3 = a.this;
            Objects.requireNonNull(aVar3);
            this.f6061b = new SecretKeySpec(bArrA, aVar3.f6052a, 32, aVar3.f6053b);
            this.f6062c = c.f6091e.a("AES/CTR/NoPadding");
            a aVar4 = a.this;
            Objects.requireNonNull(aVar4);
            this.f6063d = c.f6092f.a(aVar4.f6053b);
        }

        @Override // d7.h
        public final synchronized void b(ByteBuffer byteBuffer, int i10, boolean z10, ByteBuffer byteBuffer2) throws GeneralSecurityException {
            int iPosition = byteBuffer.position();
            byte[] bArrI = a.i(a.this, this.f6064e, i10, z10);
            int iRemaining = byteBuffer.remaining();
            int i11 = a.this.f6054c;
            if (iRemaining < i11) {
                throw new GeneralSecurityException("Ciphertext too short");
            }
            int i12 = (iRemaining - i11) + iPosition;
            ByteBuffer byteBufferDuplicate = byteBuffer.duplicate();
            byteBufferDuplicate.limit(i12);
            ByteBuffer byteBufferDuplicate2 = byteBuffer.duplicate();
            byteBufferDuplicate2.position(i12);
            this.f6063d.init(this.f6061b);
            this.f6063d.update(bArrI);
            this.f6063d.update(byteBufferDuplicate);
            byte[] bArrCopyOf = Arrays.copyOf(this.f6063d.doFinal(), a.this.f6054c);
            int i13 = a.this.f6054c;
            byte[] bArr = new byte[i13];
            byteBufferDuplicate2.get(bArr);
            boolean z11 = false;
            if (bArrCopyOf != null && i13 == bArrCopyOf.length) {
                int i14 = 0;
                for (int i15 = 0; i15 < i13; i15++) {
                    i14 |= bArr[i15] ^ bArrCopyOf[i15];
                }
                if (i14 == 0) {
                    z11 = true;
                }
            }
            if (!z11) {
                throw new GeneralSecurityException("Tag mismatch");
            }
            byteBuffer.limit(i12);
            this.f6062c.init(1, this.f6060a, new IvParameterSpec(bArrI));
            this.f6062c.doFinal(byteBuffer, byteBuffer2);
        }
    }

    /* JADX INFO: compiled from: AesCtrHmacStreaming.java */
    public class b implements i {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final SecretKeySpec f6066a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final SecretKeySpec f6067b;

        /* JADX INFO: renamed from: c, reason: collision with root package name */
        public final Cipher f6068c = c.f6091e.a("AES/CTR/NoPadding");

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public final Mac f6069d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public final byte[] f6070e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public ByteBuffer f6071f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public long f6072g;

        public b(byte[] bArr) throws GeneralSecurityException {
            this.f6072g = 0L;
            Objects.requireNonNull(a.this);
            this.f6069d = c.f6092f.a(a.this.f6053b);
            this.f6072g = 0L;
            byte[] bArrA = g.a(a.this.f6052a);
            byte[] bArrA2 = g.a(7);
            this.f6070e = bArrA2;
            ByteBuffer byteBufferAllocate = ByteBuffer.allocate(a.this.e());
            this.f6071f = byteBufferAllocate;
            byteBufferAllocate.put((byte) a.this.e());
            this.f6071f.put(bArrA);
            this.f6071f.put(bArrA2);
            this.f6071f.flip();
            byte[] bArrA3 = e.a(a.this.f6058g, a.this.f6059h, bArrA, bArr, a.this.f6052a + 32);
            this.f6066a = new SecretKeySpec(bArrA3, 0, a.this.f6052a, "AES");
            this.f6067b = new SecretKeySpec(bArrA3, a.this.f6052a, 32, a.this.f6053b);
        }

        @Override // d7.i
        public final synchronized void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3) throws GeneralSecurityException {
            int iPosition = byteBuffer3.position();
            byte[] bArrI = a.i(a.this, this.f6070e, this.f6072g, false);
            this.f6068c.init(1, this.f6066a, new IvParameterSpec(bArrI));
            this.f6072g++;
            this.f6068c.update(byteBuffer, byteBuffer3);
            this.f6068c.doFinal(byteBuffer2, byteBuffer3);
            ByteBuffer byteBufferDuplicate = byteBuffer3.duplicate();
            byteBufferDuplicate.flip();
            byteBufferDuplicate.position(iPosition);
            this.f6069d.init(this.f6067b);
            this.f6069d.update(bArrI);
            this.f6069d.update(byteBufferDuplicate);
            byteBuffer3.put(this.f6069d.doFinal(), 0, a.this.f6054c);
        }

        @Override // d7.i
        public final ByteBuffer b() {
            return this.f6071f.asReadOnlyBuffer();
        }

        @Override // d7.i
        public final synchronized void c(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException {
            int iPosition = byteBuffer2.position();
            byte[] bArrI = a.i(a.this, this.f6070e, this.f6072g, true);
            this.f6068c.init(1, this.f6066a, new IvParameterSpec(bArrI));
            this.f6072g++;
            this.f6068c.doFinal(byteBuffer, byteBuffer2);
            ByteBuffer byteBufferDuplicate = byteBuffer2.duplicate();
            byteBufferDuplicate.flip();
            byteBufferDuplicate.position(iPosition);
            this.f6069d.init(this.f6067b);
            this.f6069d.update(bArrI);
            this.f6069d.update(byteBufferDuplicate);
            byteBuffer2.put(this.f6069d.doFinal(), 0, a.this.f6054c);
        }
    }

    public a(byte[] bArr, String str, int i10, String str2, int i11, int i12) throws InvalidAlgorithmParameterException {
        int length = bArr.length;
        if (length < 16 || length < i10) {
            StringBuilder sbC = a0.b.c("ikm too short, must be >= ");
            sbC.append(Math.max(16, i10));
            throw new InvalidAlgorithmParameterException(sbC.toString());
        }
        m.a(i10);
        if (i11 < 10) {
            throw new InvalidAlgorithmParameterException(e0.d("tag size too small ", i11));
        }
        if ((str2.equals("HmacSha1") && i11 > 20) || ((str2.equals("HmacSha256") && i11 > 32) || (str2.equals("HmacSha512") && i11 > 64))) {
            throw new InvalidAlgorithmParameterException("tag size too big");
        }
        if (((((i12 + 0) - i11) - i10) - 7) - 1 <= 0) {
            throw new InvalidAlgorithmParameterException("ciphertextSegmentSize too small");
        }
        this.f6059h = Arrays.copyOf(bArr, bArr.length);
        this.f6058g = str;
        this.f6052a = i10;
        this.f6053b = str2;
        this.f6054c = i11;
        this.f6055d = i12;
        this.f6057f = 0;
        this.f6056e = i12 - i11;
    }

    public static byte[] i(a aVar, byte[] bArr, long j10, boolean z10) throws GeneralSecurityException {
        Objects.requireNonNull(aVar);
        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(16);
        byteBufferAllocate.order(ByteOrder.BIG_ENDIAN);
        byteBufferAllocate.put(bArr);
        l.a(byteBufferAllocate, j10);
        byteBufferAllocate.put(z10 ? (byte) 1 : (byte) 0);
        byteBufferAllocate.putInt(0);
        return byteBufferAllocate.array();
    }

    @Override // d7.f
    public final int c() {
        return e() + this.f6057f;
    }

    @Override // d7.f
    public final int d() {
        return this.f6055d;
    }

    @Override // d7.f
    public final int e() {
        return this.f6052a + 1 + 7;
    }

    @Override // d7.f
    public final int f() {
        return this.f6056e;
    }

    @Override // d7.f
    public final h g() throws GeneralSecurityException {
        return new C0105a();
    }

    @Override // d7.f
    public final i h(byte[] bArr) throws GeneralSecurityException {
        return new b(bArr);
    }
}
