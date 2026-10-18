package com.nike.persistence.implementation;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.LongSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: Primitive.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Primitive$LongPrimitive$$serializer implements GeneratedSerializer<Primitive.LongPrimitive> {
    public static final Primitive$LongPrimitive$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Primitive$LongPrimitive$$serializer primitive$LongPrimitive$$serializer = new Primitive$LongPrimitive$$serializer();
        INSTANCE = primitive$LongPrimitive$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("long", primitive$LongPrimitive$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("value", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Primitive$LongPrimitive$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{LongSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Primitive.LongPrimitive deserialize(Decoder decoder) {
        long jDecodeLongElement;
        h.j(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i10 = 1;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            jDecodeLongElement = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 0);
        } else {
            long jDecodeLongElement2 = 0;
            int i11 = 0;
            while (i10 != 0) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    i10 = 0;
                } else {
                    if (iDecodeElementIndex != 0) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    jDecodeLongElement2 = compositeDecoderBeginStructure.decodeLongElement(descriptor2, 0);
                    i11 |= 1;
                }
            }
            i10 = i11;
            jDecodeLongElement = jDecodeLongElement2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new Primitive.LongPrimitive(i10, jDecodeLongElement);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Primitive.LongPrimitive longPrimitive) {
        h.j(encoder, "encoder");
        h.j(longPrimitive, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        Primitive.LongPrimitive.Companion companion = Primitive.LongPrimitive.Companion;
        h.j(compositeEncoderBeginStructure, "output");
        h.j(descriptor2, "serialDesc");
        Primitive.a(longPrimitive, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.encodeLongElement(descriptor2, 0, longPrimitive.b().longValue());
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
