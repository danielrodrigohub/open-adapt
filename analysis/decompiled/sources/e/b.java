package e;

import android.content.Context;
import android.content.Intent;
import androidx.activity.k;
import fd.e;
import gd.i;
import gd.j;
import gd.q;
import gd.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import p4.h;

/* JADX INFO: compiled from: ActivityResultContracts.kt */
/* JADX INFO: loaded from: classes.dex */
public final class b extends a<String[], Map<String, Boolean>> {
    @Override // e.a
    public final Intent a(Context context, String[] strArr) {
        String[] strArr2 = strArr;
        h.j(context, "context");
        h.j(strArr2, "input");
        Intent intentPutExtra = new Intent("androidx.activity.result.contract.action.REQUEST_PERMISSIONS").putExtra("androidx.activity.result.contract.extra.PERMISSIONS", strArr2);
        h.i(intentPutExtra, "Intent(ACTION_REQUEST_PE…EXTRA_PERMISSIONS, input)");
        return intentPutExtra;
    }

    @Override // e.a
    public final a.C0114a<Map<String, Boolean>> b(Context context, String[] strArr) {
        String[] strArr2 = strArr;
        h.j(context, "context");
        h.j(strArr2, "input");
        boolean z10 = true;
        if (strArr2.length == 0) {
            return new a.C0114a<>(q.f8071h);
        }
        for (String str : strArr2) {
            if (!(y.a.a(context, str) == 0)) {
                z10 = false;
                break;
            }
        }
        if (!z10) {
            return null;
        }
        int iP = k.p(strArr2.length);
        if (iP < 16) {
            iP = 16;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(iP);
        for (String str2 : strArr2) {
            linkedHashMap.put(str2, Boolean.TRUE);
        }
        return new a.C0114a<>(linkedHashMap);
    }

    @Override // e.a
    public final Map<String, Boolean> c(int i10, Intent intent) {
        if (i10 != -1) {
            return q.f8071h;
        }
        if (intent == null) {
            return q.f8071h;
        }
        String[] stringArrayExtra = intent.getStringArrayExtra("androidx.activity.result.contract.extra.PERMISSIONS");
        int[] intArrayExtra = intent.getIntArrayExtra("androidx.activity.result.contract.extra.PERMISSION_GRANT_RESULTS");
        if (intArrayExtra == null || stringArrayExtra == null) {
            return q.f8071h;
        }
        ArrayList arrayList = new ArrayList(intArrayExtra.length);
        for (int i11 : intArrayExtra) {
            arrayList.add(Boolean.valueOf(i11 == 0));
        }
        List listP = i.p(stringArrayExtra);
        Iterator it = ((ArrayList) listP).iterator();
        Iterator it2 = arrayList.iterator();
        ArrayList arrayList2 = new ArrayList(Math.min(j.T(listP, 10), j.T(arrayList, 10)));
        while (it.hasNext() && it2.hasNext()) {
            arrayList2.add(new e(it.next(), it2.next()));
        }
        return z.C(arrayList2);
    }
}
