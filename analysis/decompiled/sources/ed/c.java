package ed;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c {
    public static StringBuilder a(String str, String str2, String str3, v9.a aVar, String str4) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        sb2.append(str3);
        sb2.append(aVar);
        sb2.append(str4);
        return sb2;
    }

    public static /* synthetic */ String b(int i10) {
        if (i10 == 1) {
            return "NOT_SET";
        }
        if (i10 == 2) {
            return "TIMEOUT";
        }
        if (i10 == 3) {
            return "CANCELED";
        }
        if (i10 == 4) {
            return "BATTERY_OVERTEMP";
        }
        if (i10 == 5) {
            return "CRITICAL_BATTERY";
        }
        if (i10 == 6) {
            return "UNRECOGNIZED";
        }
        throw null;
    }

    public static /* synthetic */ String c(int i10) {
        if (i10 == 1) {
            return "DEBUG";
        }
        if (i10 == 2) {
            return "INFO";
        }
        if (i10 == 3) {
            return "EVENT";
        }
        if (i10 == 4) {
            return "WARN";
        }
        return i10 == 5 ? "ERROR" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String d(int i10) {
        if (i10 == 1) {
            return "NOT_SET";
        }
        if (i10 == 2) {
            return "TIMEOUT";
        }
        if (i10 == 3) {
            return "CANCELED";
        }
        if (i10 == 4) {
            return "BATTERY_OVERTEMP";
        }
        if (i10 == 5) {
            return "CRITICAL_BATTERY";
        }
        return i10 == 6 ? "UNRECOGNIZED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "RELATIVE";
        }
        return i10 == 2 ? "ABSOLUTE" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String f(int i10) {
        if (i10 == 1) {
            return "INITIALIZE";
        }
        if (i10 == 2) {
            return "RESOURCE_CACHE";
        }
        if (i10 == 3) {
            return "DATA_CACHE";
        }
        if (i10 == 4) {
            return "SOURCE";
        }
        if (i10 == 5) {
            return "ENCODE";
        }
        return i10 == 6 ? "FINISHED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int g(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("NOT_SET")) {
            return 1;
        }
        if (str.equals("TIMEOUT")) {
            return 2;
        }
        if (str.equals("CANCELED")) {
            return 3;
        }
        if (str.equals("BATTERY_OVERTEMP")) {
            return 4;
        }
        if (str.equals("CRITICAL_BATTERY")) {
            return 5;
        }
        if (str.equals("UNRECOGNIZED")) {
            return 6;
        }
        throw new IllegalArgumentException("No enum constant com.nike.corerf.bigfoot.model.UserAnimation.EndingState.".concat(str));
    }
}
