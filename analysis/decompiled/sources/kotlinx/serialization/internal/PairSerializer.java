package kotlinx.serialization.internal;

import fd.e;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import p4.h;

/* JADX INFO: compiled from: Tuples.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PairSerializer<K, V> extends KeyValueSerializer<K, V, e<? extends K, ? extends V>> {
    private final SerialDescriptor descriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PairSerializer(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        super(kSerializer, kSerializer2, null);
        h.j(kSerializer, "keySerializer");
        h.j(kSerializer2, "valueSerializer");
        this.descriptor = SerialDescriptorsKt.buildClassSerialDescriptor("kotlin.Pair", new SerialDescriptor[0], new PairSerializer$descriptor$1(kSerializer, kSerializer2));
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.internal.KeyValueSerializer
    public K getKey(e<? extends K, ? extends V> eVar) {
        h.j(eVar, "<this>");
        return (K) eVar.f7388h;
    }

    @Override // kotlinx.serialization.internal.KeyValueSerializer
    public V getValue(e<? extends K, ? extends V> eVar) {
        h.j(eVar, "<this>");
        return (V) eVar.f7389i;
    }

    @Override // kotlinx.serialization.internal.KeyValueSerializer
    public e<K, V> toResult(K k10, V v10) {
        return new e<>(k10, v10);
    }
}
