package t9;

import com.nike.adapt.adk.Shoe;
import java.util.Objects;
import p4.h;

/* JADX INFO: compiled from: ResultFlags.kt */
/* JADX INFO: loaded from: classes.dex */
public final class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public boolean f15579a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public boolean f15580b;

    public static void a(c cVar, boolean z10, qd.a aVar) {
        Objects.requireNonNull(cVar);
        if (cVar.b(z10)) {
            cVar.f15579a = false;
            cVar.f15580b = false;
            aVar.invoke();
        }
    }

    public final boolean b(boolean z10) {
        if (!c()) {
            return false;
        }
        if (z10) {
            this.f15579a = false;
        } else {
            this.f15580b = false;
        }
        return !c();
    }

    public final boolean c() {
        return this.f15579a || this.f15580b;
    }

    public final void d(boolean z10, Shoe shoe) {
        h.j(shoe, "shoe");
        if (shoe.isLeft()) {
            this.f15579a = z10;
        } else {
            this.f15580b = z10;
        }
    }
}
