package e7;

import java.io.Serializable;
import java.math.BigInteger;
import java.util.Objects;

/* JADX INFO: compiled from: JsonPrimitive.java */
/* JADX INFO: loaded from: classes.dex */
public final class q extends l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Serializable f6543a;

    public q(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f6543a = bool;
    }

    public static boolean n(q qVar) {
        Serializable serializable = qVar.f6543a;
        if (serializable instanceof Number) {
            Number number = (Number) serializable;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || q.class != obj.getClass()) {
            return false;
        }
        q qVar = (q) obj;
        if (this.f6543a == null) {
            return qVar.f6543a == null;
        }
        if (n(this) && n(qVar)) {
            return l().longValue() == qVar.l().longValue();
        }
        Serializable serializable = this.f6543a;
        if (!(serializable instanceof Number) || !(qVar.f6543a instanceof Number)) {
            return serializable.equals(qVar.f6543a);
        }
        double dDoubleValue = l().doubleValue();
        double dDoubleValue2 = qVar.l().doubleValue();
        if (dDoubleValue != dDoubleValue2) {
            return Double.isNaN(dDoubleValue) && Double.isNaN(dDoubleValue2);
        }
        return true;
    }

    public final int hashCode() {
        long jDoubleToLongBits;
        if (this.f6543a == null) {
            return 31;
        }
        if (n(this)) {
            jDoubleToLongBits = l().longValue();
        } else {
            Serializable serializable = this.f6543a;
            if (!(serializable instanceof Number)) {
                return serializable.hashCode();
            }
            jDoubleToLongBits = Double.doubleToLongBits(l().doubleValue());
        }
        return (int) ((jDoubleToLongBits >>> 32) ^ jDoubleToLongBits);
    }

    public final boolean k() {
        Serializable serializable = this.f6543a;
        return serializable instanceof Boolean ? ((Boolean) serializable).booleanValue() : Boolean.parseBoolean(m());
    }

    public final Number l() {
        Serializable serializable = this.f6543a;
        return serializable instanceof String ? new g7.o((String) serializable) : (Number) serializable;
    }

    public final String m() {
        Serializable serializable = this.f6543a;
        if (serializable instanceof Number) {
            return l().toString();
        }
        return serializable instanceof Boolean ? ((Boolean) serializable).toString() : (String) serializable;
    }

    public q(Number number) {
        Objects.requireNonNull(number);
        this.f6543a = number;
    }

    public q(String str) {
        Objects.requireNonNull(str);
        this.f6543a = str;
    }
}
