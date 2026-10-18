package androidx.recyclerview.widget;

import com.newrelic.agent.android.util.SafeJsonPrimitive;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class s {
    public static String a(StringBuilder sb2, int i10, String str) {
        sb2.append(i10);
        sb2.append(str);
        return sb2.toString();
    }

    public static StringBuilder b(String str, int i10, String str2, int i11, String str3) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(i10);
        sb2.append(str2);
        sb2.append(i11);
        sb2.append(str3);
        return sb2;
    }

    public static /* synthetic */ String c(int i10) {
        if (i10 == 1) {
            return "NONE_PAIRED";
        }
        if (i10 == 2) {
            return "LEFT_PAIRED";
        }
        if (i10 == 3) {
            return "RIGHT_PAIRED";
        }
        return i10 == 4 ? "BOTH_PAIRED" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String d(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "HORIZONTAL_DIMENSION";
        }
        if (i10 == 3) {
            return "VERTICAL_DIMENSION";
        }
        if (i10 == 4) {
            return "LEFT";
        }
        if (i10 == 5) {
            return "RIGHT";
        }
        if (i10 == 6) {
            return "TOP";
        }
        if (i10 == 7) {
            return "BOTTOM";
        }
        return i10 == 8 ? "BASELINE" : SafeJsonPrimitive.NULL_STRING;
    }
}
