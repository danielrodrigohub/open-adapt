package androidx.fragment.app;

import android.util.Log;
import android.view.View;
import android.view.ViewGroup;
import com.newrelic.agent.android.util.SafeJsonPrimitive;
import com.nike.adapt.adk.Shoe;
import java.util.Objects;

/* JADX INFO: compiled from: R8$$SyntheticClass */
/* JADX INFO: loaded from: classes.dex */
public final /* synthetic */ class r0 {
    public static final void a(int i10, View view) {
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                if (x.L(2)) {
                    Log.v("FragmentManager", "SpecialEffectsController: Removing view " + view + " from container " + viewGroup);
                }
                viewGroup.removeView(view);
                return;
            }
            return;
        }
        if (i11 == 1) {
            if (x.L(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to VISIBLE");
            }
            view.setVisibility(0);
            return;
        }
        if (i11 == 2) {
            if (x.L(2)) {
                Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to GONE");
            }
            view.setVisibility(8);
            return;
        }
        if (i11 != 3) {
            return;
        }
        if (x.L(2)) {
            Log.v("FragmentManager", "SpecialEffectsController: Setting view " + view + " to INVISIBLE");
        }
        view.setVisibility(4);
    }

    public static int b(int i10) {
        if (i10 == 0) {
            return 2;
        }
        if (i10 == 4) {
            return 4;
        }
        if (i10 == 8) {
            return 3;
        }
        throw new IllegalArgumentException(androidx.appcompat.widget.e0.d("Unknown visibility ", i10));
    }

    public static int c(View view) {
        if (view.getAlpha() == 0.0f && view.getVisibility() == 0) {
            return 4;
        }
        return b(view.getVisibility());
    }

    public static /* synthetic */ String d(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "IDLE";
        }
        if (i10 == 3) {
            return "WALK";
        }
        if (i10 == 4) {
            return "JOG";
        }
        if (i10 == 5) {
            return "RUN";
        }
        if (i10 == 6) {
            return "SPRINT";
        }
        throw null;
    }

    public static int e(int i10, int i11, int i12) {
        return (Integer.hashCode(i10) + i11) * i12;
    }

    public static String f(String str, long j10) {
        return str + j10;
    }

    public static StringBuilder g(String str, i8.d dVar, String str2, Shoe shoe, String str3) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(dVar);
        sb2.append(str2);
        sb2.append(shoe);
        sb2.append(str3);
        return sb2;
    }

    public static StringBuilder h(String str, String str2) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(str);
        sb2.append(str2);
        return sb2;
    }

    public static /* synthetic */ void i(Object obj) {
        if (obj != null) {
            throw new ClassCastException();
        }
    }

    public static /* synthetic */ String j(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "IDLE";
        }
        if (i10 == 3) {
            return "WALK";
        }
        if (i10 == 4) {
            return "JOG";
        }
        if (i10 == 5) {
            return "RUN";
        }
        if (i10 == 6) {
            return "SPRINT";
        }
        throw null;
    }

    public static /* synthetic */ String k(int i10) {
        if (i10 == 1) {
            return "REMOVED";
        }
        if (i10 == 2) {
            return "VISIBLE";
        }
        if (i10 == 3) {
            return "GONE";
        }
        return i10 == 4 ? "INVISIBLE" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ String l(int i10) {
        if (i10 == 1) {
            return "UNKNOWN";
        }
        if (i10 == 2) {
            return "IDLE";
        }
        if (i10 == 3) {
            return "WALK";
        }
        if (i10 == 4) {
            return "JOG";
        }
        if (i10 == 5) {
            return "RUN";
        }
        return i10 == 6 ? "SPRINT" : SafeJsonPrimitive.NULL_STRING;
    }

    public static /* synthetic */ int m(String str) {
        Objects.requireNonNull(str, "Name is null");
        if (str.equals("UNKNOWN")) {
            return 1;
        }
        if (str.equals("IDLE")) {
            return 2;
        }
        if (str.equals("WALK")) {
            return 3;
        }
        if (str.equals("JOG")) {
            return 4;
        }
        if (str.equals("RUN")) {
            return 5;
        }
        if (str.equals("SPRINT")) {
            return 6;
        }
        throw new IllegalArgumentException("No enum constant com.nike.android.adaptkit.model.autoadapt.AutoAdaptActivityState.".concat(str));
    }
}
