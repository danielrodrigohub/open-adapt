package kotlinx.serialization.json.internal;

import androidx.activity.k;
import gd.l;
import gd.r;
import gd.z;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialKind;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.internal.JsonInternalDependenciesKt;
import kotlinx.serialization.json.Json;
import kotlinx.serialization.json.JsonElement;
import kotlinx.serialization.json.JsonElementKt;
import kotlinx.serialization.json.JsonNull;
import kotlinx.serialization.json.JsonObject;
import kotlinx.serialization.json.JsonPrimitive;
import kotlinx.serialization.json.JsonSchemaCacheKt;
import rd.h;

/* JADX INFO: compiled from: TreeJsonDecoder.kt */
/* JADX INFO: loaded from: classes.dex */
class JsonTreeDecoder extends AbstractJsonTreeDecoder {
    private final SerialDescriptor polyDescriptor;
    private final String polyDiscriminator;
    private int position;
    private final JsonObject value;

    public /* synthetic */ JsonTreeDecoder(Json json, JsonObject jsonObject, String str, SerialDescriptor serialDescriptor, int i10, h hVar) {
        this(json, jsonObject, (i10 & 4) != 0 ? null : str, (i10 & 8) != 0 ? null : serialDescriptor);
    }

    private final boolean coerceInputValue(SerialDescriptor serialDescriptor, int i10, String str) {
        Json json = getJson();
        SerialDescriptor elementDescriptor = serialDescriptor.getElementDescriptor(i10);
        if (!elementDescriptor.isNullable() && (currentElement(str) instanceof JsonNull)) {
            return true;
        }
        if (p4.h.c(elementDescriptor.getKind(), SerialKind.ENUM.INSTANCE)) {
            JsonElement jsonElementCurrentElement = currentElement(str);
            JsonPrimitive jsonPrimitive = jsonElementCurrentElement instanceof JsonPrimitive ? (JsonPrimitive) jsonElementCurrentElement : null;
            String contentOrNull = jsonPrimitive != null ? JsonElementKt.getContentOrNull(jsonPrimitive) : null;
            if (contentOrNull != null && JsonNamesMapKt.getJsonNameIndex(elementDescriptor, json, contentOrNull) == -3) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.encoding.Decoder
    public CompositeDecoder beginStructure(SerialDescriptor serialDescriptor) {
        p4.h.j(serialDescriptor, "descriptor");
        return serialDescriptor == this.polyDescriptor ? this : super.beginStructure(serialDescriptor);
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonElement currentElement(String str) {
        p4.h.j(str, "tag");
        return (JsonElement) z.y(getValue(), str);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeElementIndex(SerialDescriptor serialDescriptor) {
        p4.h.j(serialDescriptor, "descriptor");
        while (this.position < serialDescriptor.getElementsCount()) {
            int i10 = this.position;
            this.position = i10 + 1;
            String tag = getTag(serialDescriptor, i10);
            if (getValue().containsKey((Object) tag) && (!this.configuration.getCoerceInputValues() || !coerceInputValue(serialDescriptor, this.position - 1, tag))) {
                return this.position - 1;
            }
        }
        return -1;
    }

    @Override // kotlinx.serialization.internal.NamedValueDecoder
    public String elementName(SerialDescriptor serialDescriptor, int i10) {
        Object next;
        Integer num;
        p4.h.j(serialDescriptor, "desc");
        String elementName = serialDescriptor.getElementName(i10);
        if (!this.configuration.getUseAlternativeNames() || getValue().keySet().contains(elementName)) {
            return elementName;
        }
        Map map = (Map) JsonSchemaCacheKt.getSchemaCache(getJson()).getOrPut(serialDescriptor, JsonNamesMapKt.getJsonAlternativeNamesKey(), new JsonTreeDecoder$elementName$alternativeNamesMap$1(serialDescriptor));
        Iterator<T> it = getValue().keySet().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
            num = (Integer) map.get((String) next);
        } while (!(num != null && num.intValue() == i10));
        String str = (String) next;
        return str == null ? elementName : str;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder, kotlinx.serialization.encoding.CompositeDecoder
    public void endStructure(SerialDescriptor serialDescriptor) {
        Set<String> setJsonCachedSerialNames;
        p4.h.j(serialDescriptor, "descriptor");
        if (this.configuration.getIgnoreUnknownKeys() || (serialDescriptor.getKind() instanceof PolymorphicKind)) {
            return;
        }
        if (this.configuration.getUseAlternativeNames()) {
            Set<String> setJsonCachedSerialNames2 = JsonInternalDependenciesKt.jsonCachedSerialNames(serialDescriptor);
            Map map = (Map) JsonSchemaCacheKt.getSchemaCache(getJson()).get(serialDescriptor, JsonNamesMapKt.getJsonAlternativeNamesKey());
            Set setKeySet = map == null ? null : map.keySet();
            if (setKeySet == null) {
                setKeySet = r.f8072h;
            }
            p4.h.j(setJsonCachedSerialNames2, "<this>");
            Integer numValueOf = Integer.valueOf(setKeySet.size());
            LinkedHashSet linkedHashSet = new LinkedHashSet(k.p(numValueOf != null ? setJsonCachedSerialNames2.size() + numValueOf.intValue() : setJsonCachedSerialNames2.size() * 2));
            linkedHashSet.addAll(setJsonCachedSerialNames2);
            l.X(linkedHashSet, setKeySet);
            setJsonCachedSerialNames = linkedHashSet;
        } else {
            setJsonCachedSerialNames = JsonInternalDependenciesKt.jsonCachedSerialNames(serialDescriptor);
        }
        for (String str : getValue().keySet()) {
            if (!setJsonCachedSerialNames.contains(str) && !p4.h.c(str, this.polyDiscriminator)) {
                throw JsonExceptionsKt.UnknownKeyException(str, getValue().toString());
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JsonTreeDecoder(Json json, JsonObject jsonObject, String str, SerialDescriptor serialDescriptor) {
        super(json, jsonObject, null);
        p4.h.j(json, "json");
        p4.h.j(jsonObject, "value");
        this.value = jsonObject;
        this.polyDiscriminator = str;
        this.polyDescriptor = serialDescriptor;
    }

    @Override // kotlinx.serialization.json.internal.AbstractJsonTreeDecoder
    public JsonObject getValue() {
        return this.value;
    }
}
