package x8;

import android.widget.TextView;
import com.nike.adapt.adk.InMemoryCache;
import com.nike.adapt.adk.api.PairDataRepository;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

/* JADX INFO: compiled from: BadgeViewHelper.kt */
/* JADX INFO: loaded from: classes.dex */
public final class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final TextView f17934a;

    /* JADX INFO: renamed from: b, reason: collision with root package name */
    public final h8.a f17935b;

    /* JADX INFO: renamed from: c, reason: collision with root package name */
    public final HashMap<a, Integer> f17936c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final s9.b f17937d;

    /* JADX INFO: compiled from: BadgeViewHelper.kt */
    public enum a {
        FirmwareUpdate,
        AutoLaceIntro,
        JordanAppIcon,
        Gestures
    }

    public n(TextView textView) {
        h8.c cVar = h8.c.f8298b;
        this.f17934a = textView;
        this.f17935b = cVar;
        this.f17936c = new HashMap<>();
        this.f17937d = s9.b.f15177a;
        for (a aVar : a.values()) {
            this.f17936c.put(aVar, 0);
        }
    }

    public static void a(n nVar, a aVar) {
        int iOrdinal = aVar.ordinal();
        if (iOrdinal == 0) {
            nVar.f17936c.put(aVar, Integer.valueOf(InMemoryCache.INSTANCE.getHasShoeUpdates() ? 1 : 0));
        } else if (iOrdinal == 1) {
            nVar.f17936c.put(aVar, Integer.valueOf(nVar.f17937d.b(PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null)) ? 1 : 0));
        } else if (iOrdinal == 2) {
            nVar.f17936c.put(aVar, Integer.valueOf(nVar.f17935b.i0() ? 1 : 0));
        } else if (iOrdinal == 3) {
            s9.b bVar = nVar.f17937d;
            s9.b bVar2 = s9.b.f15177a;
            nVar.f17936c.put(aVar, Integer.valueOf(bVar.d(PairDataRepository.getDefaultAndConnectedId$default(PairDataRepository.INSTANCE, null, 1, null)) ? 1 : 0));
        }
        Collection<Integer> collectionValues = nVar.f17936c.values();
        p4.h.i(collectionValues, "typeCountMap.values");
        Iterator<T> it = collectionValues.iterator();
        int iIntValue = 0;
        while (it.hasNext()) {
            iIntValue += ((Number) it.next()).intValue();
        }
        nVar.f17934a.setText(String.valueOf(iIntValue));
        nVar.f17934a.setVisibility(iIntValue <= 0 ? 8 : 0);
    }
}
