package kotlinx.serialization.modules;

import java.util.List;
import kotlinx.serialization.DeserializationStrategy;
import kotlinx.serialization.KSerializer;
import p4.h;
import qd.l;
import rd.o;
import wd.b;

/* JADX INFO: compiled from: SerializersModuleCollector.kt */
/* JADX INFO: loaded from: classes.dex */
public interface SerializersModuleCollector {

    /* JADX INFO: compiled from: SerializersModuleCollector.kt */
    public static final class DefaultImpls {
        public static <T> void contextual(SerializersModuleCollector serializersModuleCollector, b<T> bVar, KSerializer<T> kSerializer) {
            h.j(serializersModuleCollector, "this");
            h.j(bVar, "kClass");
            h.j(kSerializer, "serializer");
            serializersModuleCollector.contextual(bVar, new AnonymousClass1(kSerializer));
        }
    }

    /* JADX INFO: renamed from: kotlinx.serialization.modules.SerializersModuleCollector$contextual$1, reason: invalid class name */
    /* JADX INFO: compiled from: SerializersModuleCollector.kt */
    public static final class AnonymousClass1 extends o implements l<List<? extends KSerializer<?>>, KSerializer<?>> {
        public final /* synthetic */ KSerializer<T> $serializer;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(KSerializer<T> kSerializer) {
            super(1);
            this.$serializer = kSerializer;
        }

        @Override // qd.l
        public final KSerializer<?> invoke(List<? extends KSerializer<?>> list) {
            h.j(list, "it");
            return this.$serializer;
        }
    }

    <T> void contextual(b<T> bVar, KSerializer<T> kSerializer);

    <T> void contextual(b<T> bVar, l<? super List<? extends KSerializer<?>>, ? extends KSerializer<?>> lVar);

    <Base, Sub extends Base> void polymorphic(b<Base> bVar, b<Sub> bVar2, KSerializer<Sub> kSerializer);

    <Base> void polymorphicDefault(b<Base> bVar, l<? super String, ? extends DeserializationStrategy<? extends Base>> lVar);
}
