package m7;

import java.io.IOException;

/* JADX INFO: compiled from: InvalidProtocolBufferException.java */
/* JADX INFO: loaded from: classes.dex */
public class z extends IOException {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public static final /* synthetic */ int f10804h = 0;

    /* JADX INFO: compiled from: InvalidProtocolBufferException.java */
    public static class a extends z {
        public a() {
            super("Protocol message tag had invalid wire type.");
        }
    }

    public z(String str) {
        super(str);
    }

    public static z a() {
        return new z("Protocol message contained an invalid tag (zero).");
    }

    public static z b() {
        return new z("Protocol message had invalid UTF-8.");
    }

    public static z c() {
        return new z("CodedInputStream encountered an embedded string or message which claimed to have negative size.");
    }

    public static z d() {
        return new z("Failed to parse the message.");
    }

    public static z e() {
        return new z("While parsing a protocol message, the input ended unexpectedly in the middle of a field.  This could mean either that the input has been truncated or that an embedded message misreported its own length.");
    }

    public z(IOException iOException) {
        super(iOException.getMessage(), iOException);
    }
}
