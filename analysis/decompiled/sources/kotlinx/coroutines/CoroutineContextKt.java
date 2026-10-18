package kotlinx.coroutines;

import jd.e;
import jd.f;
import jd.h;
import ld.d;
import qd.p;
import rd.o;
import rd.w;

/* JADX INFO: compiled from: CoroutineContext.kt */
/* JADX INFO: loaded from: classes.dex */
public final class CoroutineContextKt {

    /* JADX INFO: renamed from: kotlinx.coroutines.CoroutineContextKt$foldCopies$1, reason: invalid class name */
    /* JADX INFO: compiled from: CoroutineContext.kt */
    public static final class AnonymousClass1 extends o implements p<f, f.a, f> {
        public static final AnonymousClass1 INSTANCE = new AnonymousClass1();

        public AnonymousClass1() {
            super(2);
        }

        @Override // qd.p
        public final f invoke(f fVar, f.a aVar) {
            return aVar instanceof CopyableThreadContextElement ? fVar.plus(((CopyableThreadContextElement) aVar).copyForChild()) : fVar.plus(aVar);
        }
    }

    /* JADX INFO: renamed from: kotlinx.coroutines.CoroutineContextKt$hasCopyableElements$1, reason: invalid class name and case insensitive filesystem */
    /* JADX INFO: compiled from: CoroutineContext.kt */
    public static final class C03471 extends o implements p<Boolean, f.a, Boolean> {
        public static final C03471 INSTANCE = new C03471();

        public C03471() {
            super(2);
        }

        public final Boolean invoke(boolean z10, f.a aVar) {
            return Boolean.valueOf(z10 || (aVar instanceof CopyableThreadContextElement));
        }

        @Override // qd.p
        public /* bridge */ /* synthetic */ Boolean invoke(Boolean bool, f.a aVar) {
            return invoke(bool.booleanValue(), aVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v4, types: [T, java.lang.Object] */
    private static final f foldCopies(f fVar, f fVar2, boolean z10) {
        boolean zHasCopyableElements = hasCopyableElements(fVar);
        boolean zHasCopyableElements2 = hasCopyableElements(fVar2);
        if (!zHasCopyableElements && !zHasCopyableElements2) {
            return fVar.plus(fVar2);
        }
        w wVar = new w();
        wVar.f14795h = fVar2;
        h hVar = h.f9512h;
        f fVar3 = (f) fVar.fold(hVar, new CoroutineContextKt$foldCopies$folded$1(wVar, z10));
        if (zHasCopyableElements2) {
            wVar.f14795h = ((f) wVar.f14795h).fold(hVar, AnonymousClass1.INSTANCE);
        }
        return fVar3.plus((f) wVar.f14795h);
    }

    public static final String getCoroutineName(f fVar) {
        return null;
    }

    private static final boolean hasCopyableElements(f fVar) {
        return ((Boolean) fVar.fold(Boolean.FALSE, C03471.INSTANCE)).booleanValue();
    }

    public static final f newCoroutineContext(CoroutineScope coroutineScope, f fVar) {
        f fVarFoldCopies = foldCopies(coroutineScope.getCoroutineContext(), fVar, true);
        if (fVarFoldCopies == Dispatchers.getDefault()) {
            return fVarFoldCopies;
        }
        int i10 = e.f9509d;
        return fVarFoldCopies.get(e.a.f9510h) == null ? fVarFoldCopies.plus(Dispatchers.getDefault()) : fVarFoldCopies;
    }

    public static final UndispatchedCoroutine<?> undispatchedCompletion(d dVar) {
        while (!(dVar instanceof DispatchedCoroutine) && (dVar = dVar.getCallerFrame()) != null) {
            if (dVar instanceof UndispatchedCoroutine) {
                return (UndispatchedCoroutine) dVar;
            }
        }
        return null;
    }

    public static final UndispatchedCoroutine<?> updateUndispatchedCompletion(jd.d<?> dVar, f fVar, Object obj) {
        if (!(dVar instanceof d)) {
            return null;
        }
        if (!(fVar.get(UndispatchedMarker.INSTANCE) != null)) {
            return null;
        }
        UndispatchedCoroutine<?> undispatchedCoroutineUndispatchedCompletion = undispatchedCompletion((d) dVar);
        if (undispatchedCoroutineUndispatchedCompletion != null) {
            undispatchedCoroutineUndispatchedCompletion.saveThreadContext(fVar, obj);
        }
        return undispatchedCoroutineUndispatchedCompletion;
    }

    public static final f newCoroutineContext(f fVar, f fVar2) {
        return !hasCopyableElements(fVar2) ? fVar.plus(fVar2) : foldCopies(fVar, fVar2, false);
    }
}
