package kotlinx.serialization.builtins;

import fd.e;
import fd.i;
import fd.k;
import fd.l;
import fd.m;
import fd.o;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.internal.ArrayListSerializer;
import kotlinx.serialization.internal.BooleanArraySerializer;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.ByteArraySerializer;
import kotlinx.serialization.internal.ByteSerializer;
import kotlinx.serialization.internal.CharArraySerializer;
import kotlinx.serialization.internal.CharSerializer;
import kotlinx.serialization.internal.DoubleArraySerializer;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.FloatArraySerializer;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.IntArraySerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.LinkedHashMapSerializer;
import kotlinx.serialization.internal.LinkedHashSetSerializer;
import kotlinx.serialization.internal.LongArraySerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.MapEntrySerializer;
import kotlinx.serialization.internal.NullableSerializer;
import kotlinx.serialization.internal.PairSerializer;
import kotlinx.serialization.internal.ReferenceArraySerializer;
import kotlinx.serialization.internal.ShortArraySerializer;
import kotlinx.serialization.internal.ShortSerializer;
import kotlinx.serialization.internal.StringSerializer;
import kotlinx.serialization.internal.TripleSerializer;
import kotlinx.serialization.internal.UByteSerializer;
import kotlinx.serialization.internal.UIntSerializer;
import kotlinx.serialization.internal.ULongSerializer;
import kotlinx.serialization.internal.UShortSerializer;
import kotlinx.serialization.internal.UnitSerializer;
import p4.h;
import rd.a0;
import rd.c;
import rd.j;
import rd.n;
import rd.p;
import rd.z;
import wd.b;

/* JADX INFO: compiled from: BuiltinSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class BuiltinSerializersKt {
    public static final <T, E extends T> KSerializer<E[]> ArraySerializer(b<T> bVar, KSerializer<E> kSerializer) {
        h.j(bVar, "kClass");
        h.j(kSerializer, "elementSerializer");
        return new ReferenceArraySerializer(bVar, kSerializer);
    }

    public static final KSerializer<boolean[]> BooleanArraySerializer() {
        return BooleanArraySerializer.INSTANCE;
    }

    public static final KSerializer<byte[]> ByteArraySerializer() {
        return ByteArraySerializer.INSTANCE;
    }

    public static final KSerializer<char[]> CharArraySerializer() {
        return CharArraySerializer.INSTANCE;
    }

    public static final KSerializer<double[]> DoubleArraySerializer() {
        return DoubleArraySerializer.INSTANCE;
    }

    public static final KSerializer<float[]> FloatArraySerializer() {
        return FloatArraySerializer.INSTANCE;
    }

    public static final KSerializer<int[]> IntArraySerializer() {
        return IntArraySerializer.INSTANCE;
    }

    public static final <T> KSerializer<List<T>> ListSerializer(KSerializer<T> kSerializer) {
        h.j(kSerializer, "elementSerializer");
        return new ArrayListSerializer(kSerializer);
    }

    public static final KSerializer<long[]> LongArraySerializer() {
        return LongArraySerializer.INSTANCE;
    }

    public static final <K, V> KSerializer<Map.Entry<K, V>> MapEntrySerializer(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        h.j(kSerializer, "keySerializer");
        h.j(kSerializer2, "valueSerializer");
        return new MapEntrySerializer(kSerializer, kSerializer2);
    }

    public static final <K, V> KSerializer<Map<K, V>> MapSerializer(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        h.j(kSerializer, "keySerializer");
        h.j(kSerializer2, "valueSerializer");
        return new LinkedHashMapSerializer(kSerializer, kSerializer2);
    }

    public static final <K, V> KSerializer<e<K, V>> PairSerializer(KSerializer<K> kSerializer, KSerializer<V> kSerializer2) {
        h.j(kSerializer, "keySerializer");
        h.j(kSerializer2, "valueSerializer");
        return new PairSerializer(kSerializer, kSerializer2);
    }

    public static final <T> KSerializer<Set<T>> SetSerializer(KSerializer<T> kSerializer) {
        h.j(kSerializer, "elementSerializer");
        return new LinkedHashSetSerializer(kSerializer);
    }

    public static final KSerializer<short[]> ShortArraySerializer() {
        return ShortArraySerializer.INSTANCE;
    }

    public static final <A, B, C> KSerializer<i<A, B, C>> TripleSerializer(KSerializer<A> kSerializer, KSerializer<B> kSerializer2, KSerializer<C> kSerializer3) {
        h.j(kSerializer, "aSerializer");
        h.j(kSerializer2, "bSerializer");
        h.j(kSerializer3, "cSerializer");
        return new TripleSerializer(kSerializer, kSerializer2, kSerializer3);
    }

    public static final <T> KSerializer<T> getNullable(KSerializer<T> kSerializer) {
        h.j(kSerializer, "<this>");
        return kSerializer.getDescriptor().isNullable() ? kSerializer : new NullableSerializer(kSerializer);
    }

    public static final KSerializer<Character> serializer(rd.e eVar) {
        h.j(eVar, "<this>");
        return CharSerializer.INSTANCE;
    }

    public static final KSerializer<Byte> serializer(c cVar) {
        h.j(cVar, "<this>");
        return ByteSerializer.INSTANCE;
    }

    public static final KSerializer<Short> serializer(z zVar) {
        h.j(zVar, "<this>");
        return ShortSerializer.INSTANCE;
    }

    public static final KSerializer<Integer> serializer(n nVar) {
        h.j(nVar, "<this>");
        return IntSerializer.INSTANCE;
    }

    public static final KSerializer<Long> serializer(p pVar) {
        h.j(pVar, "<this>");
        return LongSerializer.INSTANCE;
    }

    public static final KSerializer<Float> serializer(j jVar) {
        h.j(jVar, "<this>");
        return FloatSerializer.INSTANCE;
    }

    public static final KSerializer<Double> serializer(rd.i iVar) {
        h.j(iVar, "<this>");
        return DoubleSerializer.INSTANCE;
    }

    public static final KSerializer<Boolean> serializer(rd.b bVar) {
        h.j(bVar, "<this>");
        return BooleanSerializer.INSTANCE;
    }

    public static final KSerializer<o> serializer(o oVar) {
        h.j(oVar, "<this>");
        return UnitSerializer.INSTANCE;
    }

    public static final KSerializer<String> serializer(a0 a0Var) {
        h.j(a0Var, "<this>");
        return StringSerializer.INSTANCE;
    }

    public static final KSerializer<k> serializer(k.a aVar) {
        h.j(aVar, "<this>");
        return UIntSerializer.INSTANCE;
    }

    public static final KSerializer<l> serializer(l.a aVar) {
        h.j(aVar, "<this>");
        return ULongSerializer.INSTANCE;
    }

    public static final KSerializer<fd.j> serializer(fd.j.a aVar) {
        h.j(aVar, "<this>");
        return UByteSerializer.INSTANCE;
    }

    public static final KSerializer<m> serializer(m.a aVar) {
        h.j(aVar, "<this>");
        return UShortSerializer.INSTANCE;
    }
}
