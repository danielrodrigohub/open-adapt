package androidx.appcompat.widget;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class y0 {
    public static final boolean a(int i10) {
        return i10 == 3;
    }

    public static /* synthetic */ int b(int i10) {
        if (i10 == 1) {
            return -1;
        }
        if (i10 == 2) {
            return 0;
        }
        if (i10 == 3) {
            return 1;
        }
        throw null;
    }

    public static StringBuilder c(String str, int i10, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(i10);
        sb2.append(str2);
        return sb2;
    }

    public static void d(String str, String str2, v9.a aVar, String str3, Throwable th, String str4) {
        p4.h.j(str, str2);
        p4.h.j(aVar, str3);
        p4.h.j(th, str4);
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "RUNNING";
        }
        if (i10 == 2) {
            return "STOPPED";
        }
        if (i10 == 3) {
            return "QUEUED";
        }
        if (i10 == 4) {
            return "INTERRUPTED";
        }
        if (i10 == 5) {
            return "UNRECOGNIZED";
        }
        throw null;
    }

    public static /* synthetic */ String f(int i10) {
        if (i10 == 1) {
            return "RUNNING";
        }
        if (i10 == 2) {
            return "STOPPED";
        }
        if (i10 == 3) {
            return "QUEUED";
        }
        if (i10 == 4) {
            return "INTERRUPTED";
        }
        return i10 == 5 ? "UNRECOGNIZED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String g(int i10) {
        if (i10 == 1) {
            return "TOP";
        }
        return i10 == 2 ? "BOTTOM" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int h(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("RUNNING")) {
            return 1;
        }
        if (str.equals("STOPPED")) {
            return 2;
        }
        if (str.equals("QUEUED")) {
            return 3;
        }
        if (str.equals("INTERRUPTED")) {
            return 4;
        }
        if (str.equals("UNRECOGNIZED")) {
            return 5;
        }
        throw new IllegalArgumentException("No enum constant com.nike.corerf.bigfoot.model.UserAnimation.RunningState.".concat(str));
    }
}
