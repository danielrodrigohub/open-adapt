package g9;

import androidx.appcompat.widget.o;
import com.nike.adapt.R;
import com.nike.adapt.adk.api.PairDataRepository;
import java.util.ArrayList;

/* JADX INFO: compiled from: AutoLaceUtil.kt */
/* JADX INFO: loaded from: classes.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final k f7894a = new k();

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public static final h8.c f7895b = h8.c.f8298b;

    public static v7.b a() {
        v7.b bVar;
        Object obj = null;
        String defaultAndConnectedId$default = PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null);
        ArrayList<v7.k> arrayListO = f7895b.O();
        if (arrayListO == null) {
            arrayListO = new ArrayList<>();
        }
        for (Object obj2 : arrayListO) {
            if (p4.h.c(((v7.k) obj2).f16419a, defaultAndConnectedId$default)) {
                obj = obj2;
                break;
            }
        }
        v7.k kVar = (v7.k) obj;
        return (kVar == null || (bVar = kVar.f16423e) == null) ? new v7.b(50, 50) : bVar;
    }

    public static boolean d() {
        Object obj = null;
        String defaultAndConnectedId$default = PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null);
        ArrayList<v7.k> arrayListO = f7895b.O();
        if (arrayListO == null) {
            arrayListO = new ArrayList<>();
        }
        for (Object obj2 : arrayListO) {
            if (p4.h.c(((v7.k) obj2).f16419a, defaultAndConnectedId$default)) {
                obj = obj2;
                break;
            }
        }
        v7.k kVar = (v7.k) obj;
        if (kVar != null) {
            return kVar.f16422d;
        }
        return false;
    }

    public static void e(int i10, int i11) {
        Object obj = null;
        String defaultAndConnectedId$default = PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null);
        ArrayList<v7.k> arrayListO = f7895b.O();
        if (arrayListO == null) {
            arrayListO = new ArrayList<>();
        }
        for (Object obj2 : arrayListO) {
            if (p4.h.c(((v7.k) obj2).f16419a, defaultAndConnectedId$default)) {
                obj = obj2;
                break;
            }
        }
        v7.k kVar = (v7.k) obj;
        if (kVar != null) {
            kVar.f16423e = new v7.b(i10, i11);
        }
        f7895b.a(arrayListO);
    }

    public final int b(int i10) {
        o.d(i10, "errorType");
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            return R.string.auto_lace_unknown_on_error_message;
        }
        if (i11 == 1) {
            return R.string.auto_lace_unknown_off_error_message;
        }
        if (i11 == 2) {
            return R.string.auto_lace_unknown_selection_error_message;
        }
        throw new j2.a();
    }

    public final int c(int i10) {
        o.d(i10, "errorType");
        if (i10 == 0) {
            throw null;
        }
        int i11 = i10 - 1;
        if (i11 == 0) {
            return R.string.auto_lace_unknown_on_error_title;
        }
        if (i11 == 1) {
            return R.string.auto_lace_unknown_off_error_title;
        }
        if (i11 == 2) {
            return R.string.auto_lace_unknown_selection_error_title;
        }
        throw new j2.a();
    }

    public final int f(int i10) {
        if (i10 <= 0) {
            return 1;
        }
        if (i10 >= 100) {
            return 100;
        }
        return i10;
    }
}
