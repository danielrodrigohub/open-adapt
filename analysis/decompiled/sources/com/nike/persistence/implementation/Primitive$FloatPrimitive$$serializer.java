package com.nike.persistence.implementation;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.FloatSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: Primitive.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Primitive$FloatPrimitive$$serializer implements GeneratedSerializer<Primitive.FloatPrimitive> {
    public static final Primitive$FloatPrimitive$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Primitive$FloatPrimitive$$serializer primitive$FloatPrimitive$$serializer = new Primitive$FloatPrimitive$$serializer();
        INSTANCE = primitive$FloatPrimitive$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("float", primitive$FloatPrimitive$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("value", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Primitive$FloatPrimitive$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{FloatSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Primitive.FloatPrimitive deserialize(Decoder decoder) {
        float fDecodeFloatElement;
        h.j(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i10 = 1;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            fDecodeFloatElement = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, 0);
        } else {
            fDecodeFloatElement = 0.0f;
            int i11 = 0;
            while (i10 != 0) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    i10 = 0;
                } else {
                    if (iDecodeElementIndex != 0) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    fDecodeFloatElement = compositeDecoderBeginStructure.decodeFloatElement(descriptor2, 0);
                    i11 |= 1;
                }
            }
            i10 = i11;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new Primitive.FloatPrimitive(i10, fDecodeFloatElement);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Primitive.FloatPrimitive floatPrimitive) {
        h.j(encoder, "encoder");
        h.j(floatPrimitive, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        Primitive.FloatPrimitive.Companion companion = Primitive.FloatPrimitive.Companion;
        h.j(compositeEncoderBeginStructure, "output");
        h.j(descriptor2, "serialDesc");
        Primitive.a(floatPrimitive, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.encodeFloatElement(descriptor2, 0, floatPrimitive.b().floatValue());
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
