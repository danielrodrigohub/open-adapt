package kotlinx.serialization.json.internal;

import java.util.Map;
import kotlinx.serialization.descriptors.SerialDescriptor;
import qd.a;
import rd.m;

/* JADX INFO: compiled from: JsonNamesMap.kt */
/* JADX INFO: loaded from: classes.dex */
public /* synthetic */ class JsonNamesMapKt$getJsonNameIndex$alternativeNamesMap$1 extends m implements a<Map<String, ? extends Integer>> {
    public JsonNamesMapKt$getJsonNameIndex$alternativeNamesMap$1(SerialDescriptor serialDescriptor) {
        super(0, serialDescriptor, JsonNamesMapKt.class, "buildAlternativeNamesMap", "buildAlternativeNamesMap(Lkotlinx/serialization/descriptors/SerialDescriptor;)Ljava/util/Map;", 1);
    }

    @Override // qd.a
    public final Map<String, ? extends Integer> invoke() {
        return JsonNamesMapKt.buildAlternativeNamesMap((SerialDescriptor) this.receiver);
    }
}
