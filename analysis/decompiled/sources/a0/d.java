package a0;

import com.newrelic.agent.android.util.SafeJsonPrimitive;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d {
    public static /* synthetic */ int a(int i10) {
        if (i10 == 1) {
            return 2;
        }
        if (i10 == 2) {
            return 1;
        }
        if (i10 == 3) {
            return 0;
        }
        throw null;
    }

    public static String b(String str, int i10, String str2) {
        return str + i10 + str2;
    }

    public static String c(String str, String str2, String str3) {
        return str + str2 + str3;
    }

    public static String d(StringBuilder sb2, String str, char c10) {
        sb2.append(str);
        sb2.append(c10);
        return sb2.toString();
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "ToColor";
        }
        if (i10 == 2) {
            return "ToAnimation";
        }
        if (i10 == 3) {
            return "ColorOn";
        }
        if (i10 == 4) {
            return "ColorOff";
        }
        if (i10 == 5) {
            return "AnimationOn";
        }
        return i10 == 6 ? "AnimationOff" : SafeJsonPrimitive.NULL_STRING;
    }
}
