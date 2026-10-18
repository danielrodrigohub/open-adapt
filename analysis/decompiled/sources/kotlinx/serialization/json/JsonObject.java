package kotlinx.serialization.json;

import gd.n;
import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.Serializable;
import kotlinx.serialization.json.internal.StringOpsKt;
import qd.l;
import rd.h;
import rd.o;
import sd.a;

/* JADX INFO: compiled from: JsonElement.kt */
/* JADX INFO: loaded from: classes.dex */
@Serializable(with = JsonObjectSerializer.class)
public final class JsonObject extends JsonElement implements Map<String, JsonElement>, a {
    public static final Companion Companion = new Companion(null);
    private final Map<String, JsonElement> content;

    /* JADX INFO: compiled from: JsonElement.kt */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(h hVar) {
            this();
        }

        public final KSerializer<JsonObject> serializer() {
            return JsonObjectSerializer.INSTANCE;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public JsonObject(Map<String, ? extends JsonElement> map) {
        super(null);
        p4.h.j(map, "content");
        this.content = map;
    }

    @Override // java.util.Map
    public void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public JsonElement compute(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public JsonElement computeIfAbsent(String str, Function<? super String, ? extends JsonElement> function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public JsonElement computeIfPresent(String str, BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsKey(Object obj) {
        if (obj instanceof String) {
            return containsKey((String) obj);
        }
        return false;
    }

    public boolean containsKey(String str) {
        p4.h.j(str, "key");
        return this.content.containsKey(str);
    }

    @Override // java.util.Map
    public final /* bridge */ boolean containsValue(Object obj) {
        if (obj instanceof JsonElement) {
            return containsValue((JsonElement) obj);
        }
        return false;
    }

    public boolean containsValue(JsonElement jsonElement) {
        p4.h.j(jsonElement, "value");
        return this.content.containsValue(jsonElement);
    }

    @Override // java.util.Map
    public final /* bridge */ Set<Map.Entry<String, JsonElement>> entrySet() {
        return getEntries();
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return p4.h.c(this.content, obj);
    }

    public JsonElement get(String str) {
        p4.h.j(str, "key");
        return this.content.get(str);
    }

    public Set<Map.Entry<String, JsonElement>> getEntries() {
        return this.content.entrySet();
    }

    public Set<String> getKeys() {
        return this.content.keySet();
    }

    public int getSize() {
        return this.content.size();
    }

    public Collection<JsonElement> getValues() {
        return this.content.values();
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.content.hashCode();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.content.isEmpty();
    }

    @Override // java.util.Map
    public final /* bridge */ Set<String> keySet() {
        return getKeys();
    }

    @Override // java.util.Map
    public JsonElement merge(String str, JsonElement jsonElement, BiFunction<? super JsonElement, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public JsonElement put(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends JsonElement> map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public JsonElement putIfAbsent(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public JsonElement remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public JsonElement replace(String str, JsonElement jsonElement) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public boolean replace(String str, JsonElement jsonElement, JsonElement jsonElement2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public void replaceAll(BiFunction<? super String, ? super JsonElement, ? extends JsonElement> biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final /* bridge */ int size() {
        return getSize();
    }

    public String toString() {
        return n.d0(this.content.entrySet(), ",", "{", "}", AnonymousClass1.INSTANCE, 24);
    }

    @Override // java.util.Map
    public final /* bridge */ Collection<JsonElement> values() {
        return getValues();
    }

    @Override // java.util.Map
    public final /* bridge */ JsonElement get(Object obj) {
        if (obj instanceof String) {
            return get((String) obj);
        }
        return null;
    }

    /* JADX INFO: renamed from: kotlinx.serialization.json.JsonObject$toString$1, reason: invalid class name */
    /* JADX INFO: compiled from: JsonElement.kt */
    public static final class AnonymousClass1 extends o implements l<Map.Entry<? extends String, ? extends JsonElement>, CharSequence> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(1);
        }

        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public final CharSequence invoke2(Map.Entry<String, ? extends JsonElement> entry) {
            p4.h.j(entry, "$dstr$k$v");
            String key = entry.getKey();
            JsonElement value = entry.getValue();
            StringBuilder sb2 = new StringBuilder();
            StringOpsKt.printQuoted(sb2, key);
            sb2.append(':');
            sb2.append(value);
            String string = sb2.toString();
            p4.h.i(string, "StringBuilder().apply(builderAction).toString()");
            return string;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ CharSequence invoke(Map.Entry<? extends String, ? extends JsonElement> entry) {
            return invoke2((Map.Entry<String, ? extends JsonElement>) entry);
        }
    }
}
