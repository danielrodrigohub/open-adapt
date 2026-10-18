package q3;

import android.text.TextUtils;
import java.util.Objects;
import n3.s0;

/* JADX INFO: compiled from: DecoderReuseEvaluation.java */
/* JADX INFO: loaded from: classes.dex */
public final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f13588a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final s0 f13589b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final s0 f13590c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final int f13591d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final int f13592e;

    public i(String str, s0 s0Var, s0 s0Var2, int i10, int i11) {
        m5.a.a(i10 == 0 || i11 == 0);
        if (TextUtils.isEmpty(str)) {
            throw new IllegalArgumentException();
        }
        this.f13588a = str;
        Objects.requireNonNull(s0Var);
        this.f13589b = s0Var;
        Objects.requireNonNull(s0Var2);
        this.f13590c = s0Var2;
        this.f13591d = i10;
        this.f13592e = i11;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || i.class != obj.getClass()) {
            return false;
        }
        i iVar = (i) obj;
        return this.f13591d == iVar.f13591d && this.f13592e == iVar.f13592e && this.f13588a.equals(iVar.f13588a) && this.f13589b.equals(iVar.f13589b) && this.f13590c.equals(iVar.f13590c);
    }

    public final int hashCode() {
        return this.f13590c.hashCode() + ((this.f13589b.hashCode() + a1.f.c(this.f13588a, (((this.f13591d + 527) * 31) + this.f13592e) * 31, 31)) * 31);
    }
}
