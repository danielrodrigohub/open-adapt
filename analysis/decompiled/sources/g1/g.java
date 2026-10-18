package g1;

import android.view.View;
import androidx.fragment.app.r0;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: compiled from: TransitionValues.java */
/* JADX INFO: loaded from: classes.dex */
public final class g {

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public View f7544b;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final Map<String, Object> f7543a = new HashMap();

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final ArrayList<androidx.transition.f> f7545c = new ArrayList<>();

    @Deprecated
    public g() {
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof g)) {
            return false;
        }
        g gVar = (g) obj;
        return this.f7544b == gVar.f7544b && this.f7543a.equals(gVar.f7543a);
    }

    public final int hashCode() {
        return this.f7543a.hashCode() + (this.f7544b.hashCode() * 31);
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    /* JADX WARN: Type inference failed for: r2v1, types: [java.util.HashMap, java.util.Map<java.lang.String, java.lang.Object>] */
    public final String toString() {
        StringBuilder sbC = a0.b.c("TransitionValues@");
        sbC.append(Integer.toHexString(hashCode()));
        sbC.append(":\n");
        StringBuilder sbH = r0.h(sbC.toString(), "    view = ");
        sbH.append(this.f7544b);
        sbH.append("\n");
        String strC = androidx.recyclerview.widget.d.c(sbH.toString(), "    values:");
        for (String str : this.f7543a.keySet()) {
            strC = strC + "    " + str + ": " + this.f7543a.get(str) + "\n";
        }
        return strC;
    }

    public g(View view) {
        this.f7544b = view;
    }
}
