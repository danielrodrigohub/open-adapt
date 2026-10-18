package gd;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;

/* JADX INFO: compiled from: _MapsJvm.kt */
/* JADX INFO: loaded from: classes.dex */
public class z extends androidx.activity.k {
    public static final Map A(fd.e... eVarArr) {
        LinkedHashMap linkedHashMap = new LinkedHashMap(androidx.activity.k.p(eVarArr.length));
        B(linkedHashMap, eVarArr);
        return linkedHashMap;
    }

    public static final void B(Map map, fd.e[] eVarArr) {
        for (fd.e eVar : eVarArr) {
            map.put(eVar.f7388h, eVar.f7389i);
        }
    }

    public static final Map C(Iterable iterable) {
        Collection collection = (Collection) iterable;
        int size = collection.size();
        if (size == 0) {
            return q.f8071h;
        }
        if (size != 1) {
            LinkedHashMap linkedHashMap = new LinkedHashMap(androidx.activity.k.p(collection.size()));
            D(iterable, linkedHashMap);
            return linkedHashMap;
        }
        fd.e eVar = (fd.e) ((List) iterable).get(0);
        p4.h.j(eVar, "pair");
        Map mapSingletonMap = Collections.singletonMap(eVar.f7388h, eVar.f7389i);
        p4.h.i(mapSingletonMap, "singletonMap(pair.first, pair.second)");
        return mapSingletonMap;
    }

    public static final Map D(Iterable iterable, Map map) {
        for (fd.e eVar : (ArrayList) iterable) {
            map.put(eVar.f7388h, eVar.f7389i);
        }
        return map;
    }

    public static final Map E(Map map) {
        p4.h.j(map, "<this>");
        int size = map.size();
        if (size != 0) {
            return size != 1 ? F(map) : androidx.activity.k.t(map);
        }
        return q.f8071h;
    }

    public static final Map F(Map map) {
        p4.h.j(map, "<this>");
        return new LinkedHashMap(map);
    }

    public static final Object y(Map map, Object obj) {
        p4.h.j(map, "<this>");
        if (map instanceof y) {
            return ((y) map).h();
        }
        Object obj2 = map.get(obj);
        if (obj2 != null || map.containsKey(obj)) {
            return obj2;
        }
        throw new NoSuchElementException("Key " + obj + " is missing in the map.");
    }

    public static final Map z(fd.e... eVarArr) {
        if (eVarArr.length <= 0) {
            return q.f8071h;
        }
        LinkedHashMap linkedHashMap = new LinkedHashMap(androidx.activity.k.p(eVarArr.length));
        B(linkedHashMap, eVarArr);
        return linkedHashMap;
    }
}
