package okhttp3.internal.http2;

import java.io.IOException;
import p4.h;

/* JADX INFO: compiled from: StreamResetException.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class StreamResetException extends IOException {
    public final ErrorCode errorCode;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public StreamResetException(ErrorCode errorCode) {
        super("stream was reset: " + errorCode);
        h.j(errorCode, "errorCode");
        this.errorCode = errorCode;
    }
}
