package ed;

import java.util.Objects;
import java.util.regex.Pattern;
import p4.h;

/* JADX INFO: compiled from: Tag.kt */
/* JADX INFO: loaded from: classes.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f6744a;

    public d(String str) {
        this.f6744a = str;
        Pattern patternCompile = Pattern.compile("^[a-z]+$");
        h.i(patternCompile, "compile(pattern)");
        if (!patternCompile.matcher(str).matches()) {
            throw new IllegalArgumentException("Tag values must be all lowercase ascii strings".toString());
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!h.c(d.class, obj == null ? null : obj.getClass())) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type com.nike.telemetry.Tag");
        return h.c(this.f6744a, ((d) obj).f6744a);
    }

    public final int hashCode() {
        return this.f6744a.hashCode();
    }
}
