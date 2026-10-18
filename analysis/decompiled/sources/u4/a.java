package u4;

import android.net.Uri;
import java.io.IOException;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import javax.crypto.Cipher;
import javax.crypto.CipherInputStream;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;
import l5.j0;

/* JADX INFO: compiled from: Aes128DataSource.java */
/* JADX INFO: loaded from: classes.dex */
public final class a implements l5.j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final l5.j f15730a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final byte[] f15731b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final byte[] f15732c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public CipherInputStream f15733d;

    public a(l5.j jVar, byte[] bArr, byte[] bArr2) {
        this.f15730a = jVar;
        this.f15731b = bArr;
        this.f15732c = bArr2;
    }

    @Override // l5.h
    public final int b(byte[] bArr, int i10, int i11) throws IOException {
        Objects.requireNonNull(this.f15733d);
        int i12 = this.f15733d.read(bArr, i10, i11);
        if (i12 < 0) {
            return -1;
        }
        return i12;
    }

    @Override // l5.j
    public final void close() throws IOException {
        if (this.f15733d != null) {
            this.f15733d = null;
            this.f15730a.close();
        }
    }

    @Override // l5.j
    public final Map<String, List<String>> h() {
        return this.f15730a.h();
    }

    @Override // l5.j
    public final void j(j0 j0Var) {
        Objects.requireNonNull(j0Var);
        this.f15730a.j(j0Var);
    }

    @Override // l5.j
    public final long l(l5.m mVar) throws IOException {
        try {
            Cipher cipher = Cipher.getInstance("AES/CBC/PKCS7Padding");
            try {
                cipher.init(2, new SecretKeySpec(this.f15731b, "AES"), new IvParameterSpec(this.f15732c));
                l5.l lVar = new l5.l(this.f15730a, mVar);
                this.f15733d = new CipherInputStream(lVar, cipher);
                if (lVar.f10069k) {
                    return -1L;
                }
                lVar.f10066h.l(lVar.f10067i);
                lVar.f10069k = true;
                return -1L;
            } catch (InvalidAlgorithmParameterException | InvalidKeyException e10) {
                throw new RuntimeException(e10);
            }
        } catch (NoSuchAlgorithmException | NoSuchPaddingException e11) {
            throw new RuntimeException(e11);
        }
    }

    @Override // l5.j
    public final Uri o() {
        return this.f15730a.o();
    }
}
