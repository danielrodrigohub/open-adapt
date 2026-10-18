package okhttp3.internal.http2;

import de.g;
import rd.h;

/* JADX INFO: compiled from: Header.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class Header {
    public static final Companion Companion = new Companion(null);
    public static final g PSEUDO_PREFIX;
    public static final g RESPONSE_STATUS;
    public static final String RESPONSE_STATUS_UTF8 = ":status";
    public static final g TARGET_AUTHORITY;
    public static final String TARGET_AUTHORITY_UTF8 = ":authority";
    public static final g TARGET_METHOD;
    public static final String TARGET_METHOD_UTF8 = ":method";
    public static final g TARGET_PATH;
    public static final String TARGET_PATH_UTF8 = ":path";
    public static final g TARGET_SCHEME;
    public static final String TARGET_SCHEME_UTF8 = ":scheme";
    public final int hpackSize;
    public final g name;
    public final g value;

    /* JADX INFO: compiled from: Header.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }
    }

    static {
        g.a aVar = g.f6227k;
        PSEUDO_PREFIX = aVar.c(":");
        RESPONSE_STATUS = aVar.c(RESPONSE_STATUS_UTF8);
        TARGET_METHOD = aVar.c(TARGET_METHOD_UTF8);
        TARGET_PATH = aVar.c(TARGET_PATH_UTF8);
        TARGET_SCHEME = aVar.c(TARGET_SCHEME_UTF8);
        TARGET_AUTHORITY = aVar.c(TARGET_AUTHORITY_UTF8);
    }

    public Header(g gVar, g gVar2) {
        p4.h.j(gVar, "name");
        p4.h.j(gVar2, "value");
        this.name = gVar;
        this.value = gVar2;
        this.hpackSize = gVar2.j() + gVar.j() + 32;
    }

    public static /* synthetic */ Header copy$default(Header header, g gVar, g gVar2, int i10, Object obj) {
        if ((i10 & 1) != 0) {
            gVar = header.name;
        }
        if ((i10 & 2) != 0) {
            gVar2 = header.value;
        }
        return header.copy(gVar, gVar2);
    }

    public final g component1() {
        return this.name;
    }

    public final g component2() {
        return this.value;
    }

    public final Header copy(g gVar, g gVar2) {
        p4.h.j(gVar, "name");
        p4.h.j(gVar2, "value");
        return new Header(gVar, gVar2);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Header)) {
            return false;
        }
        Header header = (Header) obj;
        return p4.h.c(this.name, header.name) && p4.h.c(this.value, header.value);
    }

    public int hashCode() {
        return this.value.hashCode() + (this.name.hashCode() * 31);
    }

    public String toString() {
        return this.name.A() + ": " + this.value.A();
    }

    /* JADX WARN: Illegal instructions before constructor call */
    public Header(String str, String str2) {
        p4.h.j(str, "name");
        p4.h.j(str2, "value");
        g.a aVar = g.f6227k;
        this(aVar.c(str), aVar.c(str2));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public Header(g gVar, String str) {
        this(gVar, g.f6227k.c(str));
        p4.h.j(gVar, "name");
        p4.h.j(str, "value");
    }
}
