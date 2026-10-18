package kotlinx.serialization.encoding;

import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.descriptors.SerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: AbstractEncoder.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class AbstractEncoder implements Encoder, CompositeEncoder {
    @Override // kotlinx.serialization.encoding.Encoder
    public CompositeEncoder beginCollection(SerialDescriptor serialDescriptor, int i10) {
        return Encoder.DefaultImpls.beginCollection(this, serialDescriptor, i10);
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeBoolean(boolean z10);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeBooleanElement(SerialDescriptor serialDescriptor, int i10, boolean z10) {
        h.j(serialDescriptor, "descriptor");
        if (encodeElement(serialDescriptor, i10)) {
            encodeBoolean(z10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeByte(byte b10);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeByteElement(SerialDescriptor serialDescriptor, int i10, byte b10) {
        h.j(serialDescriptor, "descriptor");
        if (encodeElement(serialDescriptor, i10)) {
            encodeByte(b10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeChar(char c10);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeCharElement(SerialDescriptor serialDescriptor, int i10, char c10) {
        h.j(serialDescriptor, "descriptor");
        if (encodeElement(serialDescriptor, i10)) {
            encodeChar(c10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeDouble(double d10);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeDoubleElement(SerialDescriptor serialDescriptor, int i10, double d10) {
        h.j(serialDescriptor, "descriptor");
        if (encodeElement(serialDescriptor, i10)) {
            encodeDouble(d10);
        }
    }

    public abstract boolean encodeElement(SerialDescriptor serialDescriptor, int i10);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeFloat(float f10);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeFloatElement(SerialDescriptor serialDescriptor, int i10, float f10) {
        h.j(serialDescriptor, "descriptor");
        if (encodeElement(serialDescriptor, i10)) {
            encodeFloat(f10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public Encoder encodeInline(SerialDescriptor serialDescriptor) {
        h.j(serialDescriptor, "inlineDescriptor");
        return this;
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeInt(int i10);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeIntElement(SerialDescriptor serialDescriptor, int i10, int i11) {
        h.j(serialDescriptor, "descriptor");
        if (encodeElement(serialDescriptor, i10)) {
            encodeInt(i11);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeLong(long j10);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeLongElement(SerialDescriptor serialDescriptor, int i10, long j10) {
        h.j(serialDescriptor, "descriptor");
        if (encodeElement(serialDescriptor, i10)) {
            encodeLong(j10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public void encodeNotNullMark() {
        Encoder.DefaultImpls.encodeNotNullMark(this);
    }

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final <T> void encodeSerializableElement(SerialDescriptor serialDescriptor, int i10, SerializationStrategy<? super T> serializationStrategy, T t10) {
        h.j(serialDescriptor, "descriptor");
        h.j(serializationStrategy, "serializer");
        if (encodeElement(serialDescriptor, i10)) {
            encodeSerializableValue(serializationStrategy, t10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract <T> void encodeSerializableValue(SerializationStrategy<? super T> serializationStrategy, T t10);

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeShort(short s10);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeShortElement(SerialDescriptor serialDescriptor, int i10, short s10) {
        h.j(serialDescriptor, "descriptor");
        if (encodeElement(serialDescriptor, i10)) {
            encodeShort(s10);
        }
    }

    @Override // kotlinx.serialization.encoding.Encoder
    public abstract void encodeString(String str);

    @Override // kotlinx.serialization.encoding.CompositeEncoder
    public final void encodeStringElement(SerialDescriptor serialDescriptor, int i10, String str) {
        h.j(serialDescriptor, "descriptor");
        h.j(str, "value");
        if (encodeElement(serialDescriptor, i10)) {
            encodeString(str);
        }
    }
}
