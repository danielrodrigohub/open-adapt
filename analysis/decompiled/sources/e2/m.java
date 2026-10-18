package e2;

import androidx.lifecycle.o;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: compiled from: BaseAnimatableValue.java */
/* JADX INFO: loaded from: classes.dex */
public abstract class m implements l {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final /* synthetic */ int f6314a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final Object f6315b;

    public m() {
        this.f6314a = 1;
        this.f6315b = o.w(1, new na.a());
    }

    @Override // e2.l
    public final List b() {
        return (List) this.f6315b;
    }

    @Override // e2.l
    public final boolean isStatic() {
        return ((List) this.f6315b).isEmpty() || (((List) this.f6315b).size() == 1 && ((l2.a) ((List) this.f6315b).get(0)).c());
    }

    public final String toString() {
        switch (this.f6314a) {
            case 0:
                StringBuilder sb2 = new StringBuilder();
                if (!((List) this.f6315b).isEmpty()) {
                    sb2.append("values=");
                    sb2.append(Arrays.toString(((List) this.f6315b).toArray()));
                }
                return sb2.toString();
            default:
                return super.toString();
        }
    }

    public m(List list) {
        this.f6314a = 0;
        this.f6315b = list;
    }
}
