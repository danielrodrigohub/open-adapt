package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlinx.serialization.descriptors.SerialDescriptor;
import qd.a;
import rd.m;

/* JADX INFO: compiled from: TreeJsonDecoder.kt */
/* JADX INFO: loaded from: classes.dex */
public /* synthetic */ class JsonTreeDecoder$elementName$alternativeNamesMap$1 extends m implements a<Map<String, ? extends Integer>> {
    public JsonTreeDecoder$elementName$alternativeNamesMap$1(SerialDescriptor serialDescriptor) {
        super(0, serialDescriptor, JsonNamesMapKt.class, "buildAlternativeNamesMap", "buildAlternativeNamesMap(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Map;", 1);
    }

    @Override // qd.a
    public final Map<String, ? extends Integer> invoke() {
        return JsonNamesMapKt.buildAlternativeNamesMap((SerialDescriptor) this.receiver);
    }
}
