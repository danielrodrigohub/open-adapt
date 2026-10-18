package com.nike.persistence.implementation;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.DoubleSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: Primitive.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Primitive$DoublePrimitive$$serializer implements GeneratedSerializer<Primitive.DoublePrimitive> {
    public static final Primitive$DoublePrimitive$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Primitive$DoublePrimitive$$serializer primitive$DoublePrimitive$$serializer = new Primitive$DoublePrimitive$$serializer();
        INSTANCE = primitive$DoublePrimitive$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("double", primitive$DoublePrimitive$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("value", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Primitive$DoublePrimitive$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{DoubleSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Primitive.DoublePrimitive deserialize(Decoder decoder) {
        double dDecodeDoubleElement;
        h.j(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i10 = 1;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            dDecodeDoubleElement = compositeDecoderBeginStructure.decodeDoubleElement(descriptor2, 0);
        } else {
            double dDecodeDoubleElement2 = 0.0d;
            int i11 = 0;
            while (i10 != 0) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    i10 = 0;
                } else {
                    if (iDecodeElementIndex != 0) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    dDecodeDoubleElement2 = compositeDecoderBeginStructure.decodeDoubleElement(descriptor2, 0);
                    i11 |= 1;
                }
            }
            i10 = i11;
            dDecodeDoubleElement = dDecodeDoubleElement2;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new Primitive.DoublePrimitive(i10, dDecodeDoubleElement);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Primitive.DoublePrimitive doublePrimitive) {
        h.j(encoder, "encoder");
        h.j(doublePrimitive, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        Primitive.DoublePrimitive.Companion companion = Primitive.DoublePrimitive.Companion;
        h.j(compositeEncoderBeginStructure, "output");
        h.j(descriptor2, "serialDesc");
        Primitive.a(doublePrimitive, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.encodeDoubleElement(descriptor2, 0, doublePrimitive.b().doubleValue());
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
