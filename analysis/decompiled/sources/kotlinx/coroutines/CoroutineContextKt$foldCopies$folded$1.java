package kotlinx.coroutines;

import jd.f;
import qd.p;
import rd.o;
import rd.w;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CoroutineContextKt$foldCopies$folded$1 extends o implements p<f, f.a, f> {
    public final /* synthetic */ boolean $isNewCoroutine;
    public final /* synthetic */ w<f> $leftoverContext;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public CoroutineContextKt$foldCopies$folded$1(w<f> wVar, boolean z10) {
        super(2);
        this.$leftoverContext = wVar;
        this.$isNewCoroutine = z10;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [T, jd.f] */
    @Override // qd.p
    public final f invoke(f fVar, f.a aVar) {
        if (!(aVar instanceof CopyableThreadContextElement)) {
            return fVar.plus(aVar);
        }
        f.a aVar2 = this.$leftoverContext.f14795h.get(aVar.getKey());
        if (aVar2 != null) {
            w<f> wVar = this.$leftoverContext;
            wVar.f14795h = wVar.f14795h.minusKey(aVar.getKey());
            return fVar.plus(((CopyableThreadContextElement) aVar).mergeForChild(aVar2));
        }
        CopyableThreadContextElement copyableThreadContextElementCopyForChild = (CopyableThreadContextElement) aVar;
        if (this.$isNewCoroutine) {
            copyableThreadContextElementCopyForChild = copyableThreadContextElementCopyForChild.copyForChild();
        }
        return fVar.plus(copyableThreadContextElementCopyForChild);
    }
}
