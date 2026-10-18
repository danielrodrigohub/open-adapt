package da;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import m5.p;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c {
    public static /* synthetic */ int a(int i10) {
        if (i10 == 1) {
            return 0;
        }
        if (i10 == 2) {
            return 10000;
        }
        throw null;
    }

    public static void b(String str, int i10, String str2) {
        p.g(str2, str + i10);
    }

    public static /* synthetic */ String c(int i10) {
        if (i10 == 1) {
            return "NOT_STARTED";
        }
        if (i10 == 2) {
            return "HAS_STARTED";
        }
        if (i10 == 3) {
            return "HAS_TIGHTENED_TO_PRESETS";
        }
        if (i10 == 4) {
            return "BOTH_SHOES_ENABLED";
        }
        if (i10 == 5) {
            return "PROCEED_TO_LACING";
        }
        if (i10 == 6) {
            return "PROCEED_TO_PRESETS";
        }
        return i10 == 7 ? "CALIBRATE_COMPLETE" : SafeJsonPrimitive.NULL_STRING;
    }
}
