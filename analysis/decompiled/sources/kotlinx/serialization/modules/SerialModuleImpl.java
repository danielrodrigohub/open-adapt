package kotlinx.serialization.modules;

import java.util.List;
import java.util.Map;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import kotlinx.serialization.SerializationStrategy;
import kotlinx.serialization.internal.PlatformKt;
import p4.h;
import qd.l;
import rd.b0;
import rd.x;
import wd.b;

/* JADX INFO: compiled from: SerializersModule.kt */
/* JADX INFO: loaded from: classes.dex */
public final class SerialModuleImpl extends SerializersModule {
    private final Map<b<?>, ContextualProvider> class2ContextualFactory;
    private final Map<b<?>, l<String, DeserializationStrategy<?>>> polyBase2DefaultProvider;
    private final Map<b<?>, Map<String, KSerializer<?>>> polyBase2NamedSerializers;
    public final Map<b<?>, Map<b<?>, KSerializer<?>>> polyBase2Serializers;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public SerialModuleImpl(Map<b<?>, ? extends ContextualProvider> map, Map<b<?>, ? extends Map<b<?>, ? extends KSerializer<?>>> map2, Map<b<?>, ? extends Map<String, ? extends KSerializer<?>>> map3, Map<b<?>, ? extends l<? super String, ? extends DeserializationStrategy<?>>> map4) {
        super(null);
        h.j(map, "class2ContextualFactory");
        h.j(map2, "polyBase2Serializers");
        h.j(map3, "polyBase2NamedSerializers");
        h.j(map4, "polyBase2DefaultProvider");
        this.class2ContextualFactory = map;
        this.polyBase2Serializers = map2;
        this.polyBase2NamedSerializers = map3;
        this.polyBase2DefaultProvider = map4;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public void dumpTo(SerializersModuleCollector serializersModuleCollector) {
        h.j(serializersModuleCollector, "collector");
        for (Map.Entry<b<?>, ContextualProvider> entry : this.class2ContextualFactory.entrySet()) {
            b<?> key = entry.getKey();
            ContextualProvider value = entry.getValue();
            if (value instanceof ContextualProvider.Argless) {
                serializersModuleCollector.contextual(key, ((ContextualProvider.Argless) value).getSerializer());
            } else if (value instanceof ContextualProvider.WithTypeArguments) {
                serializersModuleCollector.contextual(key, ((ContextualProvider.WithTypeArguments) value).getProvider());
            }
        }
        for (Map.Entry<b<?>, Map<b<?>, KSerializer<?>>> entry2 : this.polyBase2Serializers.entrySet()) {
            b<?> key2 = entry2.getKey();
            for (Map.Entry<b<?>, KSerializer<?>> entry3 : entry2.getValue().entrySet()) {
                serializersModuleCollector.polymorphic(key2, entry3.getKey(), entry3.getValue());
            }
        }
        for (Map.Entry<b<?>, l<String, DeserializationStrategy<?>>> entry4 : this.polyBase2DefaultProvider.entrySet()) {
            serializersModuleCollector.polymorphicDefault(entry4.getKey(), entry4.getValue());
        }
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public <T> KSerializer<T> getContextual(b<T> bVar, List<? extends KSerializer<?>> list) {
        h.j(bVar, "kClass");
        h.j(list, "typeArgumentsSerializers");
        ContextualProvider contextualProvider = this.class2ContextualFactory.get(bVar);
        KSerializer<?> kSerializerInvoke = contextualProvider == null ? null : contextualProvider.invoke(list);
        if (kSerializerInvoke instanceof KSerializer) {
            return (KSerializer<T>) kSerializerInvoke;
        }
        return null;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public <T> SerializationStrategy<T> getPolymorphic(b<? super T> bVar, T t10) {
        h.j(bVar, "baseClass");
        h.j(t10, "value");
        if (!PlatformKt.isInstanceOf(t10, bVar)) {
            return null;
        }
        Map<b<?>, KSerializer<?>> map = this.polyBase2Serializers.get(bVar);
        KSerializer<?> kSerializer = map == null ? null : map.get(x.a(t10.getClass()));
        if (kSerializer instanceof SerializationStrategy) {
            return kSerializer;
        }
        return null;
    }

    @Override // kotlinx.serialization.modules.SerializersModule
    public <T> DeserializationStrategy<? extends T> getPolymorphic(b<? super T> bVar, String str) {
        h.j(bVar, "baseClass");
        Map<String, KSerializer<?>> map = this.polyBase2NamedSerializers.get(bVar);
        KSerializer<?> kSerializer = map == null ? null : map.get(str);
        if (!(kSerializer instanceof KSerializer)) {
            kSerializer = null;
        }
        if (kSerializer != null) {
            return kSerializer;
        }
        l<String, DeserializationStrategy<?>> lVar = this.polyBase2DefaultProvider.get(bVar);
        l<String, DeserializationStrategy<?>> lVar2 = b0.d(lVar, 1) ? lVar : null;
        if (lVar2 == null) {
            return null;
        }
        return (DeserializationStrategy) lVar2.invoke(str);
    }
}
