package k1;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class a {
    public static StringBuilder a(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        sb2.append(str3);
        sb2.append(str4);
        sb2.append(str5);
        return sb2;
    }

    public static /* synthetic */ String b(int i10) {
        if (i10 == 1) {
            return "TOE";
        }
        if (i10 == 2) {
            return "MID";
        }
        if (i10 == 3) {
            return "HEEL";
        }
        if (i10 == 4) {
            return "UNKNOWN";
        }
        throw null;
    }

    public static /* synthetic */ String c(int i10) {
        if (i10 == 1) {
            return "EXPONENTIAL";
        }
        return i10 == 2 ? "LINEAR" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String d(int i10) {
        if (i10 == 1) {
            return "TOE";
        }
        if (i10 == 2) {
            return "MID";
        }
        if (i10 == 3) {
            return "HEEL";
        }
        return i10 == 4 ? "UNKNOWN" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "SESSION_INVALID";
        }
        if (i10 == 2) {
            return "SESSION_ENDED";
        }
        if (i10 == 3) {
            return "SESSION_ACTIVE";
        }
        return i10 == 4 ? "SESSION_PAUSED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int f(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("TOE")) {
            return 1;
        }
        if (str.equals("MID")) {
            return 2;
        }
        if (str.equals("HEEL")) {
            return 3;
        }
        if (str.equals("UNKNOWN")) {
            return 4;
        }
        throw new IllegalArgumentException("No enum constant com.nike.android.adaptkit.model.session.SessionStepInformation.FootStrikeClassification.".concat(str));
    }
}
