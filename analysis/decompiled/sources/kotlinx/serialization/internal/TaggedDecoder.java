package kotlinx.serialization.internal;

import gd.n;
import java.util.ArrayList;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.Decoder;
import p4.h;
import qd.a;
import rd.o;

/* JADX INFO: compiled from: Tagged.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class TaggedDecoder<Tag> implements Decoder, CompositeDecoder {
    private boolean flag;
    private final ArrayList<Tag> tagStack = new ArrayList<>();

    /* JADX INFO: Add missing generic type declarations: [T] */
    /* JADX INFO: renamed from: kotlinx.serialization.internal.TaggedDecoder$decodeSerializableElement$1, reason: invalid class name */
    /* JADX INFO: compiled from: Tagged.kt */
    public static final class AnonymousClass1<T> extends o implements a<T> {
        public final /* synthetic */ DeserializationStrategy<T> $deserializer;
        public final /* synthetic */ T $previousValue;
        public final /* synthetic */ TaggedDecoder<Tag> this$0;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(TaggedDecoder<Tag> taggedDecoder, DeserializationStrategy<T> deserializationStrategy, T t10) {
            super(0);
            this.this$0 = taggedDecoder;
            this.$deserializer = deserializationStrategy;
            this.$previousValue = t10;
        }

        @Override // qd.a
        public final T invoke() {
            return (T) this.this$0.decodeSerializableValue(this.$deserializer, this.$previousValue);
        }
    }

    private final <E> E tagBlock(Tag tag, a<? extends E> aVar) {
        pushTag(tag);
        E eInvoke = aVar.invoke();
        if (!this.flag) {
            popTag();
        }
        this.flag = false;
        return eInvoke;
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final boolean decodeBoolean() {
        return decodeTaggedBoolean(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final boolean decodeBooleanElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return decodeTaggedBoolean(getTag(serialDescriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final byte decodeByte() {
        return decodeTaggedByte(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final byte decodeByteElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return decodeTaggedByte(getTag(serialDescriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final char decodeChar() {
        return decodeTaggedChar(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final char decodeCharElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return decodeTaggedChar(getTag(serialDescriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public int decodeCollectionSize(SerialDescriptor serialDescriptor) {
        return CompositeDecoder.DefaultImpls.decodeCollectionSize(this, serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final double decodeDouble() {
        return decodeTaggedDouble(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final double decodeDoubleElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return decodeTaggedDouble(getTag(serialDescriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int decodeEnum(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "enumDescriptor");
        return decodeTaggedEnum(popTag(), serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final float decodeFloat() {
        return decodeTaggedFloat(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final float decodeFloatElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return decodeTaggedFloat(getTag(serialDescriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Decoder decodeInline(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "inlineDescriptor");
        return decodeTaggedInline(popTag(), serialDescriptor);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final int decodeInt() {
        return decodeTaggedInt(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final int decodeIntElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return decodeTaggedInt(getTag(serialDescriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final long decodeLong() {
        return decodeTaggedLong(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final long decodeLongElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return decodeTaggedLong(getTag(serialDescriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final Void decodeNull() {
        return null;
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public boolean decodeSequentially() {
        return CompositeDecoder.DefaultImpls.decodeSequentially(this);
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final <T> T decodeSerializableElement(SerialDescriptor serialDescriptor, int i10, DeserializationStrategy<T> deserializationStrategy, T t10) {
        h.j(serialDescriptor, "descriptor");
        h.j(deserializationStrategy, "deserializer");
        return (T) tagBlock(getTag(serialDescriptor, i10), new AnonymousClass1(this, deserializationStrategy, t10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public abstract <T> T decodeSerializableValue(DeserializationStrategy<T> deserializationStrategy);

    public <T> T decodeSerializableValue(DeserializationStrategy<T> deserializationStrategy, T t10) {
        h.j(deserializationStrategy, "deserializer");
        return (T) decodeSerializableValue(deserializationStrategy);
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final short decodeShort() {
        return decodeTaggedShort(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final short decodeShortElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return decodeTaggedShort(getTag(serialDescriptor, i10));
    }

    @Override // kotlinx.serialization.encoding.Decoder
    public final String decodeString() {
        return decodeTaggedString(popTag());
    }

    @Override // kotlinx.serialization.encoding.CompositeDecoder
    public final String decodeStringElement(SerialDescriptor serialDescriptor, int i10) {
        h.j(serialDescriptor, "descriptor");
        return decodeTaggedString(getTag(serialDescriptor, i10));
    }

    public abstract boolean decodeTaggedBoolean(Tag tag);

    public abstract byte decodeTaggedByte(Tag tag);

    public abstract char decodeTaggedChar(Tag tag);

    public abstract double decodeTaggedDouble(Tag tag);

    public abstract int decodeTaggedEnum(Tag tag, SerialDescriptor serialDescriptor);

    public abstract float decodeTaggedFloat(Tag tag);

    public Decoder decodeTaggedInline(Tag tag, SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "inlineDescriptor");
        pushTag(tag);
        return this;
    }

    public abstract int decodeTaggedInt(Tag tag);

    public abstract long decodeTaggedLong(Tag tag);

    public abstract short decodeTaggedShort(Tag tag);

    public abstract String decodeTaggedString(Tag tag);

    public final Tag getCurrentTagOrNull() {
        return (Tag) n.f0(this.tagStack);
    }

    public abstract Tag getTag(SerialDescriptor serialDescriptor, int i10);

    public final Tag popTag() {
        ArrayList<Tag> arrayList = this.tagStack;
        Tag tagRemove = arrayList.remove(androidx.lifecycle.o.p(arrayList));
        this.flag = true;
        return tagRemove;
    }

    public final void pushTag(Tag tag) {
        this.tagStack.add(tag);
    }
}
