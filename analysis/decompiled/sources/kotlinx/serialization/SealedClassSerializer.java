package kotlinx.serialization;

import androidx.activity.k;
import fd.e;
import gd.s;
import gd.z;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
import kotlinx.serialization.descriptors.PolymorphicKind;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.descriptors.SerialDescriptorsKt;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.AbstractPolymorphicSerializer;
import p4.h;
import rd.x;
import wd.b;

/* JADX INFO: compiled from: SealedSerializer.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SealedClassSerializer<T> extends AbstractPolymorphicSerializer<T> {
    private final b<T> baseClass;
    private final Map<b<? extends T>, KSerializer<? extends T>> class2Serializer;
    private final SerialDescriptor descriptor;
    private final Map<String, KSerializer<? extends T>> serialName2Serializer;

    public SealedClassSerializer(String str, b<T> bVar, b<? extends T>[] bVarArr, KSerializer<? extends T>[] kSerializerArr) {
        h.j(str, "serialName");
        h.j(bVar, "baseClass");
        h.j(bVarArr, "subclasses");
        h.j(kSerializerArr, "subclassSerializers");
        this.baseClass = bVar;
        this.descriptor = SerialDescriptorsKt.buildSerialDescriptor(str, PolymorphicKind.SEALED.INSTANCE, new SerialDescriptor[0], new SealedClassSerializer$descriptor$1(this, kSerializerArr));
        if (bVarArr.length != kSerializerArr.length) {
            StringBuilder sbC = a0.b.c("All subclasses of sealed class ");
            sbC.append((Object) getBaseClass().a());
            sbC.append(" should be marked @Serializable");
            throw new IllegalArgumentException(sbC.toString());
        }
        int iMin = Math.min(bVarArr.length, kSerializerArr.length);
        ArrayList arrayList = new ArrayList(iMin);
        for (int i10 = 0; i10 < iMin; i10++) {
            arrayList.add(new e(bVarArr[i10], kSerializerArr[i10]));
        }
        Map<b<? extends T>, KSerializer<? extends T>> mapC = z.C(arrayList);
        this.class2Serializer = mapC;
        final Set<Map.Entry<b<? extends T>, KSerializer<? extends T>>> setEntrySet = mapC.entrySet();
        s<Map.Entry<? extends b<? extends T>, ? extends KSerializer<? extends T>>, String> sVar = new s<Map.Entry<? extends b<? extends T>, ? extends KSerializer<? extends T>>, String>() { // from class: kotlinx.serialization.SealedClassSerializer$special$$inlined$groupingBy$1
            @Override // gd.s
            public String keyOf(Map.Entry<? extends b<? extends T>, ? extends KSerializer<? extends T>> entry) {
                return entry.getValue().getDescriptor().getSerialName();
            }

            @Override // gd.s
            public Iterator<Map.Entry<? extends b<? extends T>, ? extends KSerializer<? extends T>>> sourceIterator() {
                return setEntrySet.iterator();
            }
        };
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Iterator<Map.Entry<? extends b<? extends T>, ? extends KSerializer<? extends T>>> itSourceIterator = sVar.sourceIterator();
        while (itSourceIterator.hasNext()) {
            Map.Entry<? extends b<? extends T>, ? extends KSerializer<? extends T>> next = itSourceIterator.next();
            String strKeyOf = sVar.keyOf(next);
            Object obj = linkedHashMap.get(strKeyOf);
            if (obj == null) {
                linkedHashMap.containsKey(strKeyOf);
            }
            Map.Entry<? extends b<? extends T>, ? extends KSerializer<? extends T>> entry = next;
            Map.Entry entry2 = (Map.Entry) obj;
            String str2 = strKeyOf;
            if (entry2 != null) {
                StringBuilder sbC2 = a0.b.c("Multiple sealed subclasses of '");
                sbC2.append(getBaseClass());
                sbC2.append("' have the same serial name '");
                sbC2.append(str2);
                sbC2.append("': '");
                sbC2.append(entry2.getKey());
                sbC2.append("', '");
                sbC2.append(entry.getKey());
                sbC2.append('\'');
                throw new IllegalStateException(sbC2.toString().toString());
            }
            linkedHashMap.put(strKeyOf, entry);
        }
        LinkedHashMap linkedHashMap2 = new LinkedHashMap(k.p(linkedHashMap.size()));
        for (Map.Entry entry3 : linkedHashMap.entrySet()) {
            linkedHashMap2.put(entry3.getKey(), (KSerializer) ((Map.Entry) entry3.getValue()).getValue());
        }
        this.serialName2Serializer = linkedHashMap2;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public DeserializationStrategy<? extends T> findPolymorphicSerializerOrNull(CompositeDecoder compositeDecoder, String str) {
        h.j(compositeDecoder, "decoder");
        KSerializer<? extends T> kSerializer = this.serialName2Serializer.get(str);
        return kSerializer == null ? super.findPolymorphicSerializerOrNull(compositeDecoder, str) : kSerializer;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public b<T> getBaseClass() {
        return this.baseClass;
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.internal.AbstractPolymorphicSerializer
    public SerializationStrategy<T> findPolymorphicSerializerOrNull(Encoder encoder, T t10) {
        h.j(encoder, "encoder");
        h.j(t10, "value");
        KSerializer<? extends T> kSerializerFindPolymorphicSerializerOrNull = this.class2Serializer.get(x.a(t10.getClass()));
        if (kSerializerFindPolymorphicSerializerOrNull == null) {
            kSerializerFindPolymorphicSerializerOrNull = super.findPolymorphicSerializerOrNull(encoder, t10);
        }
        if (kSerializerFindPolymorphicSerializerOrNull == null) {
            return null;
        }
        return kSerializerFindPolymorphicSerializerOrNull;
    }
}
