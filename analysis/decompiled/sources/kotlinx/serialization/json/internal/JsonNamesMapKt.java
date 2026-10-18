package kotlinx.serialization.json.internal;

import a4.g;
import gd.q;
import gd.z;
import java.lang.annotation.Annotation;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlinx.serialization.SerializationException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonNames;
import kotlinx.serialization.json.JsonSchemaCacheKt;
import p4.h;

/* JADX INFO: compiled from: JsonNamesMap.kt */
/* JADX INFO: loaded from: classes.dex */
public final class JsonNamesMapKt {
    private static final DescriptorSchemaCache.Key<Map<String, Integer>> JsonAlternativeNamesKey = new DescriptorSchemaCache.Key<>();

    public static final Map<String, Integer> buildAlternativeNamesMap(SerialDescriptor serialDescriptor) {
        String[] strArrNames;
        h.j(serialDescriptor, "<this>");
        int elementsCount = serialDescriptor.getElementsCount();
        Map<String, Integer> map = null;
        if (elementsCount > 0) {
            Map<String, Integer> mapCreateMapForCache = null;
            int i10 = 0;
            while (true) {
                int i11 = i10 + 1;
                List<Annotation> elementAnnotations = serialDescriptor.getElementAnnotations(i10);
                ArrayList arrayList = new ArrayList();
                for (Object obj : elementAnnotations) {
                    if (obj instanceof JsonNames) {
                        arrayList.add(obj);
                    }
                }
                JsonNames jsonNames = (JsonNames) (arrayList.size() == 1 ? arrayList.get(0) : null);
                if (jsonNames != null && (strArrNames = jsonNames.names()) != null) {
                    for (String str : strArrNames) {
                        if (mapCreateMapForCache == null) {
                            mapCreateMapForCache = CreateMapForCacheKt.createMapForCache(serialDescriptor.getElementsCount());
                        }
                        h.g(mapCreateMapForCache);
                        buildAlternativeNamesMap$putOrThrow(mapCreateMapForCache, serialDescriptor, str, i10);
                    }
                }
                if (i11 >= elementsCount) {
                    break;
                }
                i10 = i11;
            }
            map = mapCreateMapForCache;
        }
        return map == null ? q.f8071h : map;
    }

    private static final void buildAlternativeNamesMap$putOrThrow(Map<String, Integer> map, SerialDescriptor serialDescriptor, String str, int i10) {
        if (!map.containsKey(str)) {
            map.put(str, Integer.valueOf(i10));
            return;
        }
        StringBuilder sbE = g.e("The suggested name '", str, "' for property ");
        sbE.append(serialDescriptor.getElementName(i10));
        sbE.append(" is already one of the names for property ");
        sbE.append(serialDescriptor.getElementName(((Number) z.y(map, str)).intValue()));
        sbE.append(" in ");
        sbE.append(serialDescriptor);
        throw new JsonException(sbE.toString());
    }

    public static final DescriptorSchemaCache.Key<Map<String, Integer>> getJsonAlternativeNamesKey() {
        return JsonAlternativeNamesKey;
    }

    public static final int getJsonNameIndex(SerialDescriptor serialDescriptor, Json json, String str) {
        h.j(serialDescriptor, "<this>");
        h.j(json, "json");
        h.j(str, "name");
        int elementIndex = serialDescriptor.getElementIndex(str);
        if (elementIndex != -3 || !json.getConfiguration().getUseAlternativeNames()) {
            return elementIndex;
        }
        Integer num = (Integer) ((Map) JsonSchemaCacheKt.getSchemaCache(json).getOrPut(serialDescriptor, JsonAlternativeNamesKey, new JsonNamesMapKt$getJsonNameIndex$alternativeNamesMap$1(serialDescriptor))).get(str);
        if (num == null) {
            return -3;
        }
        return num.intValue();
    }

    public static final int getJsonNameIndexOrThrow(SerialDescriptor serialDescriptor, Json json, String str) {
        h.j(serialDescriptor, "<this>");
        h.j(json, "json");
        h.j(str, "name");
        int jsonNameIndex = getJsonNameIndex(serialDescriptor, json, str);
        if (jsonNameIndex != -3) {
            return jsonNameIndex;
        }
        throw new SerializationException(serialDescriptor.getSerialName() + " does not contain element with name '" + str + '\'');
    }
}
