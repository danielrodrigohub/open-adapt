package a0;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Objects;
import v9.g2;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class b {
    public static String a(String str, String str2, String str3, String str4, String str5) {
        return str + str2 + str3 + str4 + str5;
    }

    public static String b(StringBuilder sb2, int i10, char c10) {
        sb2.append(i10);
        sb2.append(c10);
        return sb2.toString();
    }

    public static StringBuilder c(String str) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        return sb2;
    }

    public static g2 d(v9.f fVar, qd.l lVar) {
        g2 g2Var = new g2(fVar);
        lVar.invoke(g2Var);
        return g2Var;
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "LEFT";
        }
        if (i10 == 2) {
            return "RIGHT";
        }
        throw null;
    }

    public static /* synthetic */ String f(int i10) {
        if (i10 == 1) {
            return "LEFT";
        }
        return i10 == 2 ? "RIGHT" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int g(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("LEFT")) {
            return 1;
        }
        if (str.equals("RIGHT")) {
            return 2;
        }
        throw new IllegalArgumentException("No enum constant com.nike.android.adaptkit.model.FitCalibrateState.Shoe.".concat(str));
    }
}
