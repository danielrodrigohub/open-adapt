package g7;

import java.math.BigDecimal;

/* JADX INFO: compiled from: LazilyParsedNumber.java */
/* JADX INFO: loaded from: classes.dex */
public final class o extends Number {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final String f7818h;

    public o(String str) {
        this.f7818h = str;
    }

    @Override // java.lang.Number
    public final double doubleValue() {
        return Double.parseDouble(this.f7818h);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof o)) {
            return false;
        }
        String str = this.f7818h;
        String str2 = ((o) obj).f7818h;
        return str == str2 || str.equals(str2);
    }

    @Override // java.lang.Number
    public final float floatValue() {
        return Float.parseFloat(this.f7818h);
    }

    public final int hashCode() {
        return this.f7818h.hashCode();
    }

    @Override // java.lang.Number
    public final int intValue() {
        try {
            try {
                return Integer.parseInt(this.f7818h);
            } catch (NumberFormatException unused) {
                return (int) Long.parseLong(this.f7818h);
            }
        } catch (NumberFormatException unused2) {
            return new BigDecimal(this.f7818h).intValue();
        }
    }

    @Override // java.lang.Number
    public final long longValue() {
        try {
            return Long.parseLong(this.f7818h);
        } catch (NumberFormatException unused) {
            return new BigDecimal(this.f7818h).longValue();
        }
    }

    public final String toString() {
        return this.f7818h;
    }
}
