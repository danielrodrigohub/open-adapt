package kotlinx.serialization.internal;

import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: CollectionSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class HashSetSerializer<E> extends ListLikeSerializer<E, Set<? extends E>, HashSet<E>> {
    private final SerialDescriptor descriptor;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HashSetSerializer(KSerializer<E> kSerializer) {
        super(kSerializer, null);
        h.j(kSerializer, "eSerializer");
        this.descriptor = new HashSetClassDesc(kSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void checkCapacity(HashSet<E> hashSet, int i10) {
        h.j(hashSet, "<this>");
    }

    @Override // kotlinx.serialization.internal.ListLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Set<E> toResult(HashSet<E> hashSet) {
        h.j(hashSet, "<this>");
        return hashSet;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public HashSet<E> builder() {
        return new HashSet<>();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int builderSize(HashSet<E> hashSet) {
        h.j(hashSet, "<this>");
        return hashSet.size();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Iterator<E> collectionIterator(Set<? extends E> set) {
        h.j(set, "<this>");
        return set.iterator();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(Set<? extends E> set) {
        h.j(set, "<this>");
        return set.size();
    }

    @Override // kotlinx.serialization.internal.ListLikeSerializer
    public void insert(HashSet<E> hashSet, int i10, E e10) {
        h.j(hashSet, "<this>");
        hashSet.add(e10);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public HashSet<E> toBuilder(Set<? extends E> set) {
        h.j(set, "<this>");
        HashSet<E> hashSet = set instanceof HashSet ? (HashSet) set : null;
        return hashSet == null ? new HashSet<>(set) : hashSet;
    }
}
