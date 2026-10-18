package kotlinx.serialization.internal;

import gd.g;
import java.util.ArrayList;
import java.util.Iterator;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;
import wd.b;

/* JADX INFO: compiled from: CollectionSerializers.kt */
/* JADX INFO: loaded from: classes.dex */
public final class ReferenceArraySerializer<ElementKlass, Element extends ElementKlass> extends ListLikeSerializer<Element, Element[], ArrayList<Element>> {
    private final SerialDescriptor descriptor;
    private final b<ElementKlass> kClass;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ReferenceArraySerializer(b<ElementKlass> bVar, KSerializer<Element> kSerializer) {
        super(kSerializer, null);
        h.j(bVar, "kClass");
        h.j(kSerializer, "eSerializer");
        this.kClass = bVar;
        this.descriptor = new ArrayClassDesc(kSerializer.getDescriptor());
    }

    @Override // kotlinx.serialization.internal.ListLikeSerializer, kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return this.descriptor;
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public ArrayList<Element> builder() {
        return new ArrayList<>();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int builderSize(ArrayList<Element> arrayList) {
        h.j(arrayList, "<this>");
        return arrayList.size();
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public void checkCapacity(ArrayList<Element> arrayList, int i10) {
        h.j(arrayList, "<this>");
        arrayList.ensureCapacity(i10);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Iterator<Element> collectionIterator(Element[] elementArr) {
        h.j(elementArr, "<this>");
        return h.v(elementArr);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public int collectionSize(Element[] elementArr) {
        h.j(elementArr, "<this>");
        return elementArr.length;
    }

    @Override // kotlinx.serialization.internal.ListLikeSerializer
    public void insert(ArrayList<Element> arrayList, int i10, Element element) {
        h.j(arrayList, "<this>");
        arrayList.add(i10, element);
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public ArrayList<Element> toBuilder(Element[] elementArr) {
        h.j(elementArr, "<this>");
        return new ArrayList<>(g.i(elementArr));
    }

    @Override // kotlinx.serialization.internal.AbstractCollectionSerializer
    public Element[] toResult(ArrayList<Element> arrayList) {
        h.j(arrayList, "<this>");
        return (Element[]) PlatformKt.toNativeArrayImpl(arrayList, this.kClass);
    }
}
