package com.nike.persistence.implementation;

import kotlinx.serialization.KSerializer;
import kotlinx.serialization.UnknownFieldException;
import kotlinx.serialization.descriptors.SerialDescriptor;
import kotlinx.serialization.encoding.CompositeDecoder;
import kotlinx.serialization.encoding.CompositeEncoder;
import kotlinx.serialization.encoding.Decoder;
import kotlinx.serialization.encoding.Encoder;
import kotlinx.serialization.internal.GeneratedSerializer;
import kotlinx.serialization.internal.PluginGeneratedSerialDescriptor;
import kotlinx.serialization.internal.StringSerializer;
import p4.h;

/* JADX INFO: compiled from: PersistenceManager.kt */
/* JADX INFO: loaded from: classes.dex */
public final class PersistenceManager$Settings$$serializer implements GeneratedSerializer<PersistenceManager.Settings> {
    public static final PersistenceManager$Settings$$serializer INSTANCE;
    public static final /* synthetic */ SerialDescriptor descriptor;

    static {
        PersistenceManager$Settings$$serializer persistenceManager$Settings$$serializer = new PersistenceManager$Settings$$serializer();
        INSTANCE = persistenceManager$Settings$$serializer;
        PluginGeneratedSerialDescriptor pluginGeneratedSerialDescriptor = new PluginGeneratedSerialDescriptor("com.nike.persistence.implementation.PersistenceManager.Settings", persistenceManager$Settings$$serializer, 1);
        pluginGeneratedSerialDescriptor.addElement("sessionID", false);
        descriptor = pluginGeneratedSerialDescriptor;
    }

    private PersistenceManager$Settings$$serializer() {
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] childSerializers() {
        return new KSerializer[]{StringSerializer.INSTANCE};
    }

    @Override // kotlinx.serialization.DeserializationStrategy
    public PersistenceManager.Settings deserialize(Decoder decoder) {
        String strDecodeStringElement;
        h.j(decoder, "decoder");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeDecoder compositeDecoderBeginStructure = decoder.beginStructure(descriptor2);
        int i10 = 1;
        if (compositeDecoderBeginStructure.decodeSequentially()) {
            strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
        } else {
            strDecodeStringElement = null;
            int i11 = 0;
            while (i10 != 0) {
                int iDecodeElementIndex = compositeDecoderBeginStructure.decodeElementIndex(descriptor2);
                if (iDecodeElementIndex == -1) {
                    i10 = 0;
                } else {
                    if (iDecodeElementIndex != 0) {
                        throw new UnknownFieldException(iDecodeElementIndex);
                    }
                    strDecodeStringElement = compositeDecoderBeginStructure.decodeStringElement(descriptor2, 0);
                    i11 |= 1;
                }
            }
            i10 = i11;
        }
        compositeDecoderBeginStructure.endStructure(descriptor2);
        return new PersistenceManager.Settings(i10, strDecodeStringElement);
    }

    @Override // kotlinx.serialization.KSerializer, kotlinx.serialization.SerializationStrategy, kotlinx.serialization.DeserializationStrategy
    public SerialDescriptor getDescriptor() {
        return descriptor;
    }

    @Override // kotlinx.serialization.SerializationStrategy
    public void serialize(Encoder encoder, PersistenceManager.Settings settings) {
        h.j(encoder, "encoder");
        h.j(settings, "value");
        SerialDescriptor descriptor2 = getDescriptor();
        CompositeEncoder compositeEncoderBeginStructure = encoder.beginStructure(descriptor2);
        h.j(compositeEncoderBeginStructure, "output");
        h.j(descriptor2, "serialDesc");
        compositeEncoderBeginStructure.encodeStringElement(descriptor2, 0, settings.f5944a);
        compositeEncoderBeginStructure.endStructure(descriptor2);
    }

    @Override // kotlinx.serialization.internal.GeneratedSerializer
    public KSerializer<?>[] typeParametersSerializers() {
        return GeneratedSerializer.DefaultImpls.typeParametersSerializers(this);
    }
}
