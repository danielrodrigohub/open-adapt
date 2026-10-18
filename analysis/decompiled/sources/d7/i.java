package d7;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;

/* JADX INFO: compiled from: StreamSegmentEncrypter.java */
/* JADX INFO: loaded from: classes.dex */
public interface i {
    void a(ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3) throws GeneralSecurityException;

    ByteBuffer b();

    void c(ByteBuffer byteBuffer, ByteBuffer byteBuffer2) throws GeneralSecurityException;
}
