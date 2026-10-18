package com.nike.persistence.implementation;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.IntSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: Primitive.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Primitive$IntPrimitive$$serializer implements GeneratedSerializer<Primitive.IntPrimitive> {
    public static final Primitive$IntPrimitive$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Primitive$IntPrimitive$$serializer primitive$IntPrimitive$$serializer = new Primitive$IntPrimitive$$serializer();
        INSTANCE = primitive$IntPrimitive$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("int", primitive$IntPrimitive$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("value", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Primitive$IntPrimitive$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{IntSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Primitive.IntPrimitive deserialize(Decoder decoder) {
        int iDecodeIntElement;
        h.j(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i10 = 1;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 0);
        } else {
            iDecodeIntElement = 0;
            int i11 = 0;
            while (i10 != 0) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    i10 = 0;
                } else {
                    if (iDecodeElementIndex != 0) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    iDecodeIntElement = compositeDecoderBeginStructure.decodeIntElement(descriptor2, 0);
                    i11 |= 1;
                }
            }
            i10 = i11;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new Primitive.IntPrimitive(i10, iDecodeIntElement);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Primitive.IntPrimitive intPrimitive) {
        h.j(encoder, "encoder");
        h.j(intPrimitive, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        Primitive.IntPrimitive.Companion companion = Primitive.IntPrimitive.Companion;
        h.j(compositeEncoderBeginStructure, "output");
        h.j(descriptor2, "serialDesc");
        Primitive.a(intPrimitive, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.encodeIntElement(descriptor2, 0, intPrimitive.b().intValue());
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
