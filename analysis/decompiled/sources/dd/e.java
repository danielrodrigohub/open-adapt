package dd;

import java.util.Objects;
import kotlinx.serialization.SerialFormat;
import kotlinx.serialization.StringFormat;
import kotlinx.serialization.json.Json;
import p4.h;

/* JADX INFO: compiled from: InstanceFormat.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class e implements yc.a.b {
    public static final b Companion = new b();

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public static final c f6180i = new c(Json.Default);

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final SerialFormat f6181h;

    /* JADX INFO: compiled from: InstanceFormat.kt */
    public static final class a extends e {
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof a)) {
                return false;
            }
            Objects.requireNonNull((a) obj);
            return h.c(null, null);
        }

        public final int hashCode() {
            throw null;
        }

        public final String toString() {
            return "Binary(format=null)";
        }
    }

    /* JADX INFO: compiled from: InstanceFormat.kt */
    public static final class b {
    }

    /* JADX INFO: compiled from: InstanceFormat.kt */
    public static final class c extends e {

        /* JADX INFO: renamed from: j, reason: collision with root package name */
        public final StringFormat f6182j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(StringFormat stringFormat) {
            super(stringFormat);
            h.j(stringFormat, "format");
            this.f6182j = stringFormat;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            return (obj instanceof c) && h.c(this.f6182j, ((c) obj).f6182j);
        }

        public final int hashCode() {
            return this.f6182j.hashCode();
        }

        public final String toString() {
            StringBuilder sbC = a0.b.c("String(format=");
            sbC.append(this.f6182j);
            sbC.append(')');
            return sbC.toString();
        }
    }

    public e(SerialFormat serialFormat) {
        this.f6181h = serialFormat;
    }
}
