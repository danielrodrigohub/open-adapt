package d1;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class c {
    public static String a(String str, int i10, String str2, int i11) {
        return str + i10 + str2 + i11;
    }

    public static String b(StringBuilder sb2, Throwable th, String str) {
        sb2.append(th);
        sb2.append(str);
        return sb2.toString();
    }

    public static /* synthetic */ String c(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "TOE";
        }
        if (i10 == 3) {
            return "MID";
        }
        if (i10 == 4) {
            return "HEEL";
        }
        throw null;
    }

    public static /* synthetic */ String d(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "TOE";
        }
        if (i10 == 3) {
            return "MID";
        }
        return i10 == 4 ? "HEEL" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "INITIALIZE";
        }
        if (i10 == 2) {
            return "SWITCH_TO_SOURCE_SERVICE";
        }
        return i10 == 3 ? "DECODE_DATA" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int f(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("UNKNOWN")) {
            return 1;
        }
        if (str.equals("TOE")) {
            return 2;
        }
        if (str.equals("MID")) {
            return 3;
        }
        if (str.equals("HEEL")) {
            return 4;
        }
        throw new IllegalArgumentException("No enum constant com.nike.corerf.bigfoot.model.SessionStrikeType.".concat(str));
    }
}
