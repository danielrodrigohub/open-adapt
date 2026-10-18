package androidx.appcompat.widget;

import com.newrelic.agent.android.harvest.type.HarvestErrorCodes;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class e0 {
    public static /* synthetic */ int a(int i10) {
        if (i10 == 1) {
            return 100;
        }
        if (i10 == 2) {
            return 0;
        }
        if (i10 == 3) {
            return -100;
        }
        if (i10 == 4) {
            return -150;
        }
        if (i10 == 5) {
            return -200;
        }
        if (i10 == 6) {
            return -300;
        }
        if (i10 == 7) {
            return -900;
        }
        if (i10 == 8) {
            return HarvestErrorCodes.NSURLErrorBadURL;
        }
        throw null;
    }

    public static /* synthetic */ String b(int i10) {
        if (i10 == 1) {
            return "mdpi";
        }
        if (i10 == 2) {
            return "hdpi";
        }
        if (i10 == 3) {
            return "xhdpi";
        }
        if (i10 == 4) {
            return "xxhdpi";
        }
        if (i10 == 5) {
            return "xxxhdpi";
        }
        throw null;
    }

    public static int c(v9.a aVar, int i10, int i11) {
        return (aVar.hashCode() + i10) * i11;
    }

    public static String d(String str, int i10) {
        return str + i10;
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "WALK";
        }
        if (i10 == 3) {
            return "JOG";
        }
        if (i10 == 4) {
            return "RUN";
        }
        if (i10 == 5) {
            return "SPRINT";
        }
        throw null;
    }

    public static /* synthetic */ String f(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "WALK";
        }
        if (i10 == 3) {
            return "JOG";
        }
        if (i10 == 4) {
            return "RUN";
        }
        if (i10 == 5) {
            return "SPRINT";
        }
        throw null;
    }

    public static /* synthetic */ String g(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "WALK";
        }
        if (i10 == 3) {
            return "JOG";
        }
        if (i10 == 4) {
            return "RUN";
        }
        return i10 == 5 ? "SPRINT" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String h(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "WALK";
        }
        if (i10 == 3) {
            return "JOG";
        }
        if (i10 == 4) {
            return "RUN";
        }
        return i10 == 5 ? "SPRINT" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int i(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("UNKNOWN")) {
            return 1;
        }
        if (str.equals("WALK")) {
            return 2;
        }
        if (str.equals("JOG")) {
            return 3;
        }
        if (str.equals("RUN")) {
            return 4;
        }
        if (str.equals("SPRINT")) {
            return 5;
        }
        throw new IllegalArgumentException("No enum constant com.nike.android.adaptkit.model.session.SessionStepInformation.StepClassification.".concat(str));
    }

    public static /* synthetic */ int j(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("UNKNOWN")) {
            return 1;
        }
        if (str.equals("WALK")) {
            return 2;
        }
        if (str.equals("JOG")) {
            return 3;
        }
        if (str.equals("RUN")) {
            return 4;
        }
        if (str.equals("SPRINT")) {
            return 5;
        }
        throw new IllegalArgumentException("No enum constant com.nike.corerf.bigfoot.model.SessionStepClassification.".concat(str));
    }
}
