package kotlinx.serialization.modules;

import gd.q;

/* JADX INFO: compiled from: SerializersModule.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SerializersModuleKt {
    private static final SerializersModule EmptySerializersModule;

    static {
        q qVar = q.f8071h;
        EmptySerializersModule = new SerialModuleImpl(qVar, qVar, qVar, qVar);
    }

    public static final SerializersModule getEmptySerializersModule() {
        return EmptySerializersModule;
    }
}
