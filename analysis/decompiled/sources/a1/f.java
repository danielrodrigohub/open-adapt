package a1;

import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.nike.adapt.adk.Shoe;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class f {
    public static /* synthetic */ String a(int i10) {
        if (i10 == 1) {
            return "debug";
        }
        if (i10 == 2) {
            return "event";
        }
        if (i10 == 3) {
            return "error";
        }
        throw null;
    }

    public static int b(Shoe shoe, int i10, int i11) {
        return (shoe.hashCode() + i10) * i11;
    }

    public static int c(String str, int i10, int i11) {
        return (str.hashCode() + i10) * i11;
    }

    public static String d(StringBuilder sb2, String str, String str2) {
        sb2.append(str);
        sb2.append(str2);
        return sb2.toString();
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "NONE";
        }
        if (i10 == 2) {
            return "ADDING";
        }
        return i10 == 3 ? "REMOVING" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String f(int i10) {
        if (i10 == 1) {
            return "DEBUG";
        }
        if (i10 == 2) {
            return "EVENT";
        }
        return i10 == 3 ? "ERROR" : SafeJsonPrimitive.NULL_STRING;
    }
}
