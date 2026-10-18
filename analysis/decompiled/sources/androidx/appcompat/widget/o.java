package androidx.appcompat.widget;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class o {
    public static /* synthetic */ int a(int i10) {
        if (i10 == 1) {
            return 5;
        }
        if (i10 == 2) {
            return 30;
        }
        if (i10 == 3) {
            return 60;
        }
        if (i10 == 4) {
            return -50;
        }
        throw null;
    }

    public static /* synthetic */ int b(int i10) {
        if (i10 == 1) {
            return 1;
        }
        if (i10 == 2) {
            return 2;
        }
        throw null;
    }

    public static float c(float f10, float f11, float f12, float f13) {
        return ((f10 - f11) * f12) + f13;
    }

    public static /* synthetic */ void d(int i10, String str) {
        if (i10 != 0) {
            return;
        }
        NullPointerException nullPointerException = new NullPointerException(p4.h.m(str));
        p4.h.A(nullPointerException, p4.h.class.getName());
        throw nullPointerException;
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "OFF";
        }
        if (i10 == 2) {
            return "LOW";
        }
        if (i10 == 3) {
            return "MEDIUM";
        }
        if (i10 == 4) {
            return "HIGH";
        }
        if (i10 == 5) {
            return "HIGHEST";
        }
        throw null;
    }

    public static /* synthetic */ String f(int i10) {
        if (i10 == 1) {
            return "MEMORY_FULL";
        }
        if (i10 == 2) {
            return "LOW_BATTERY";
        }
        if (i10 == 3) {
            return "UNRECOGNIZED";
        }
        throw null;
    }

    public static /* synthetic */ String g(int i10) {
        if (i10 == 1) {
            return "MEMORY_FULL";
        }
        if (i10 == 2) {
            return "LOW_BATTERY";
        }
        if (i10 == 3) {
            return "UNRECOGNIZED";
        }
        throw null;
    }

    public static /* synthetic */ String h(int i10) {
        if (i10 == 1) {
            return "OFF";
        }
        if (i10 == 2) {
            return "LOW";
        }
        if (i10 == 3) {
            return "MEDIUM";
        }
        if (i10 == 4) {
            return "HIGH";
        }
        return i10 == 5 ? "HIGHEST" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String i(int i10) {
        if (i10 == 1) {
            return "MEMORY_FULL";
        }
        if (i10 == 2) {
            return "LOW_BATTERY";
        }
        return i10 == 3 ? "UNRECOGNIZED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String j(int i10) {
        if (i10 == 1) {
            return "MEMORY_FULL";
        }
        if (i10 == 2) {
            return "LOW_BATTERY";
        }
        return i10 == 3 ? "UNRECOGNIZED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String k(int i10) {
        if (i10 == 1) {
            return "OFF";
        }
        if (i10 == 2) {
            return "LOW";
        }
        if (i10 == 3) {
            return "MEDIUM";
        }
        if (i10 == 4) {
            return "HIGH";
        }
        return i10 == 5 ? "HIGHEST" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String l(int i10) {
        if (i10 == 1) {
            return "LEFT";
        }
        return i10 == 2 ? "RIGHT" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String m(int i10) {
        if (i10 == 1) {
            return "FIRST";
        }
        if (i10 == 2) {
            return "SECOND";
        }
        if (i10 == 3) {
            return "THIRD";
        }
        return i10 == 4 ? "NONE" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int n(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("OFF")) {
            return 1;
        }
        if (str.equals("LOW")) {
            return 2;
        }
        if (str.equals("MEDIUM")) {
            return 3;
        }
        if (str.equals("HIGH")) {
            return 4;
        }
        if (str.equals("HIGHEST")) {
            return 5;
        }
        throw new IllegalArgumentException("No enum constant com.nike.android.adaptkit.model.device.AdaptKitDeviceLEDIntensity.".concat(str));
    }

    public static /* synthetic */ int o(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("MEMORY_FULL")) {
            return 1;
        }
        if (str.equals("LOW_BATTERY")) {
            return 2;
        }
        if (str.equals("UNRECOGNIZED")) {
            return 3;
        }
        throw new IllegalArgumentException("No enum constant com.nike.android.adaptkit.model.session.SessionEndedNotification.Reason.".concat(str));
    }

    public static /* synthetic */ int p(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("MEMORY_FULL")) {
            return 1;
        }
        if (str.equals("LOW_BATTERY")) {
            return 2;
        }
        if (str.equals("UNRECOGNIZED")) {
            return 3;
        }
        throw new IllegalArgumentException("No enum constant com.nike.corerf.bigfoot.model.SessionEnded.Event.".concat(str));
    }
}
