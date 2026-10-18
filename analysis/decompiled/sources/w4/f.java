package w4;

import java.util.Map;
import java.util.Objects;
import n3.s0;
import u6.h0;
import u6.x;

/* JADX INFO: compiled from: RtpPayloadFormat.java */
/* JADX INFO: loaded from: classes.dex */
public final class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final int f17174a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final int f17175b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s0 f17176c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final x<String, String> f17177d;

    public f(s0 s0Var, int i10, int i11, Map<String, String> map) {
        this.f17174a = i10;
        this.f17175b = i11;
        this.f17176c = s0Var;
        this.f17177d = x.a(map);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || f.class != obj.getClass()) {
            return false;
        }
        f fVar = (f) obj;
        if (this.f17174a == fVar.f17174a && this.f17175b == fVar.f17175b && this.f17176c.equals(fVar.f17176c)) {
            x<String, String> xVar = this.f17177d;
            x<String, String> xVar2 = fVar.f17177d;
            Objects.requireNonNull(xVar);
            if (h0.a(xVar, xVar2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f17177d.hashCode() + ((this.f17176c.hashCode() + ((((217 + this.f17174a) * 31) + this.f17175b) * 31)) * 31);
    }
}
