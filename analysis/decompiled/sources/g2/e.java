package g2;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e {
    public static /* synthetic */ boolean a(int i10) {
        if (i10 == 1 || i10 == 2 || i10 == 3) {
            return false;
        }
        if (i10 == 4 || i10 == 5) {
            return true;
        }
        throw null;
    }

    public static /* synthetic */ String b(int i10) {
        if (i10 == 1) {
            return "CRITICAL";
        }
        if (i10 == 2) {
            return "LOW";
        }
        if (i10 == 3) {
            return "CHARGED";
        }
        throw null;
    }

    public static /* synthetic */ String c(int i10) {
        if (i10 == 1) {
            return "PRE_COMP";
        }
        if (i10 == 2) {
            return "SOLID";
        }
        if (i10 == 3) {
            return "IMAGE";
        }
        if (i10 == 4) {
            return "NULL";
        }
        if (i10 == 5) {
            return "SHAPE";
        }
        if (i10 == 6) {
            return "TEXT";
        }
        return i10 == 7 ? "UNKNOWN" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int d(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("CRITICAL")) {
            return 1;
        }
        if (str.equals("LOW")) {
            return 2;
        }
        if (str.equals("CHARGED")) {
            return 3;
        }
        throw new IllegalArgumentException("No enum constant com.nike.adapt.util.BatteryAlarmUtil.BatteryNotificationType.".concat(str));
    }
}
