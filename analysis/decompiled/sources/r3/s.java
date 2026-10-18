package r3;

import android.media.DeniedByServerException;
import android.media.MediaCryptoException;
import android.media.MediaDrmException;
import android.media.NotProvisionedException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import o3.v0;

/* JADX INFO: compiled from: ExoMediaDrm.java */
/* JADX INFO: loaded from: classes.dex */
public interface s {

    /* JADX INFO: compiled from: ExoMediaDrm.java */
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f14510a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f14511b;

        public a(byte[] bArr, String str) {
            this.f14510a = bArr;
            this.f14511b = str;
        }
    }

    /* JADX INFO: compiled from: ExoMediaDrm.java */
    public interface b {
    }

    /* JADX INFO: compiled from: ExoMediaDrm.java */
    public interface c {
        s a(UUID uuid);
    }

    /* JADX INFO: compiled from: ExoMediaDrm.java */
    public static final class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final byte[] f14512a;

        /* JADX INFO: renamed from: b, reason: collision with root package name */
        public final String f14513b;

        public d(byte[] bArr, String str) {
            this.f14512a = bArr;
            this.f14513b = str;
        }
    }

    void a();

    boolean b(byte[] bArr, String str);

    void c(byte[] bArr, byte[] bArr2);

    Map<String, String> d(byte[] bArr);

    void e(byte[] bArr);

    byte[] f(byte[] bArr, byte[] bArr2) throws DeniedByServerException, NotProvisionedException;

    d g();

    void h(byte[] bArr) throws DeniedByServerException;

    default void i(byte[] bArr, v0 v0Var) {
    }

    a j(byte[] bArr, List<r3.d.b> list, int i10, HashMap<String, String> map) throws NotProvisionedException;

    void k(b bVar);

    int l();

    q3.b m(byte[] bArr) throws MediaCryptoException;

    byte[] n() throws MediaDrmException;
}
