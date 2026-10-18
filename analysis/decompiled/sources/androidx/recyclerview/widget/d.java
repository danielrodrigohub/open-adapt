package androidx.recyclerview.widget;

import android.graphics.Paint;
import com.newrelic.agent.android.util.SafeJsonPrimitive;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class d {
    public static final Paint.Join a(int i10) {
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            return Paint.Join.MITER;
        }
        if (i11 == 1) {
            return Paint.Join.ROUND;
        }
        if (i11 != 2) {
            return null;
        }
        return Paint.Join.BEVEL;
    }

    public static String b(RecyclerView recyclerView, StringBuilder sb2) {
        sb2.append(recyclerView.A());
        return sb2.toString();
    }

    public static String c(String str, String str2) {
        return str + str2;
    }

    public static /* synthetic */ String d(int i10) {
        if (i10 == 1) {
            return "DEBUG";
        }
        if (i10 == 2) {
            return "EVENT";
        }
        if (i10 == 3) {
            return "ERROR";
        }
        throw null;
    }

    public static /* synthetic */ String e(int i10) {
        if (i10 == 1) {
            return "START_KEY_EXCHANGE";
        }
        if (i10 == 2) {
            return "EXCHANGE_PUBLIC_KEYS";
        }
        if (i10 == 3) {
            return "START_OF_AUTHENTICATION";
        }
        if (i10 == 4) {
            return "AUTHENTICATION_CHALLENGE";
        }
        throw null;
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

    public static /* synthetic */ String g(int i10) {
        if (i10 == 1) {
            return "START_KEY_EXCHANGE";
        }
        if (i10 == 2) {
            return "EXCHANGE_PUBLIC_KEYS";
        }
        if (i10 == 3) {
            return "START_OF_AUTHENTICATION";
        }
        return i10 == 4 ? "AUTHENTICATION_CHALLENGE" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String h(int i10) {
        if (i10 == 1) {
            return "RUN_AS_NON_EXPEDITED_WORK_REQUEST";
        }
        return i10 == 2 ? "DROP_WORK_REQUEST" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String i(int i10) {
        if (i10 == 1) {
            return "LOGIN_ACTIVITY";
        }
        if (i10 == 2) {
            return "SHOE_CONTROLLER_ACTIVITY";
        }
        if (i10 == 3) {
            return "ONBOARDING_ACTIVITY";
        }
        if (i10 == 4) {
            return "FIRMWARE_UPDATE_ACTIVITY";
        }
        return i10 == 5 ? "FIRMWARE_UPDATE_RETRY_FRAGMENT" : SafeJsonPrimitive.NULL_STRING;
    }
}
