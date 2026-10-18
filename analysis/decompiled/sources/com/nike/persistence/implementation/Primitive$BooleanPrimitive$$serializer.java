package com.nike.persistence.implementation;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.BooleanSerializer;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import p4.h;

/* JADX INFO: compiled from: Primitive.kt */
/* JADX INFO: loaded from: classes.dex */
public final class Primitive$BooleanPrimitive$$serializer implements GeneratedSerializer<Primitive.BooleanPrimitive> {
    public static final Primitive$BooleanPrimitive$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        Primitive$BooleanPrimitive$$serializer primitive$BooleanPrimitive$$serializer = new Primitive$BooleanPrimitive$$serializer();
        INSTANCE = primitive$BooleanPrimitive$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("boolean", primitive$BooleanPrimitive$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("value", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private Primitive$BooleanPrimitive$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{BooleanSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public Primitive.BooleanPrimitive deserialize(Decoder decoder) {
        boolean zDecodeBooleanElement;
        h.j(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i10 = 1;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 0);
        } else {
            zDecodeBooleanElement = false;
            int i11 = 0;
            while (i10 != 0) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    i10 = 0;
                } else {
                    if (iDecodeElementIndex != 0) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    zDecodeBooleanElement = compositeDecoderBeginStructure.decodeBooleanElement(descriptor2, 0);
                    i11 |= 1;
                }
            }
            i10 = i11;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new Primitive.BooleanPrimitive(i10, zDecodeBooleanElement);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, Primitive.BooleanPrimitive booleanPrimitive) {
        h.j(encoder, "encoder");
        h.j(booleanPrimitive, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        Primitive.BooleanPrimitive.Companion companion = Primitive.BooleanPrimitive.Companion;
        h.j(compositeEncoderBeginStructure, "output");
        h.j(descriptor2, "serialDesc");
        Primitive.a(booleanPrimitive, compositeEncoderBeginStructure, descriptor2);
        compositeEncoderBeginStructure.encodeBooleanElement(descriptor2, 0, booleanPrimitive.b().booleanValue());
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
