package kotlinx.coroutines;

import fd.o;
import jd.d;
import ld.e;
import ld.h;
import qd.p;
import xd.f;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes.dex */
@e(c = "kotlinx.coroutines.JobSupport$children$1", f = "JobSupport.kt", l = {952, 954}, m = "invokeSuspend")
public final class JobSupport$children$1 extends h implements p<f<? super Job>, d<? super o>, Object> {
    private /* synthetic */ Object L$0;
    public Object L$1;
    public Object L$2;
    public int label;
    public final /* synthetic */ JobSupport this$0;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobSupport$children$1(JobSupport jobSupport, d<? super JobSupport$children$1> dVar) {
        super(2, dVar);
        this.this$0 = jobSupport;
    }

    @Override // ld.a
    public final d<o> create(Object obj, d<?> dVar) {
        JobSupport$children$1 jobSupport$children$1 = new JobSupport$children$1(this.this$0, dVar);
        jobSupport$children$1.L$0 = obj;
        return jobSupport$children$1;
    }

    @Override // qd.p
    public final Object invoke(f<? super Job> fVar, d<? super o> dVar) {
        return ((JobSupport$children$1) create(fVar, dVar)).invokeSuspend(o.f7408a);
    }

    /* JADX WARN: Code duplicated, block: B:21:0x0063  */
    /* JADX WARN: Code duplicated, block: B:23:0x0067  */
    /* JADX WARN: Code duplicated, block: B:25:0x0079 A[RETURN] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:22:0x0065 -> B:26:0x007a). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0077 -> B:26:0x007a). Please report as a decompilation issue!!! */
    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions stack size limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        */
    @Override // ld.a
    public final java.lang.Object invokeSuspend(java.lang.Object r9) {
        /*
            r8 = this;
            kd.a r0 = kd.a.COROUTINE_SUSPENDED
            int r1 = r8.label
            r2 = 2
            r3 = 1
            if (r1 == 0) goto L2a
            if (r1 == r3) goto L26
            if (r1 != r2) goto L1e
            java.lang.Object r1 = r8.L$2
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r1
            java.lang.Object r3 = r8.L$1
            kotlinx.coroutines.internal.LockFreeLinkedListHead r3 = (kotlinx.coroutines.internal.LockFreeLinkedListHead) r3
            java.lang.Object r4 = r8.L$0
            xd.f r4 = (xd.f) r4
            d3.e.p(r9)
            r9 = r8
            r5 = r0
            goto L7a
        L1e:
            java.lang.IllegalStateException r9 = new java.lang.IllegalStateException
            java.lang.String r0 = "call to 'resume' before 'invoke' with coroutine"
            r9.<init>(r0)
            throw r9
        L26:
            d3.e.p(r9)
            goto L7f
        L2a:
            d3.e.p(r9)
            java.lang.Object r9 = r8.L$0
            xd.f r9 = (xd.f) r9
            kotlinx.coroutines.JobSupport r1 = r8.this$0
            java.lang.Object r1 = r1.getState$kotlinx_coroutines_core()
            boolean r4 = r1 instanceof kotlinx.coroutines.ChildHandleNode
            if (r4 == 0) goto L45
            kotlinx.coroutines.ChildHandleNode r1 = (kotlinx.coroutines.ChildHandleNode) r1
            kotlinx.coroutines.ChildJob r1 = r1.childJob
            r8.label = r3
            r9.a(r1, r8)
            return r0
        L45:
            boolean r3 = r1 instanceof kotlinx.coroutines.Incomplete
            if (r3 == 0) goto L7f
            kotlinx.coroutines.Incomplete r1 = (kotlinx.coroutines.Incomplete) r1
            kotlinx.coroutines.NodeList r1 = r1.getList()
            if (r1 == 0) goto L7f
            java.lang.Object r3 = r1.getNext()
            kotlinx.coroutines.internal.LockFreeLinkedListNode r3 = (kotlinx.coroutines.internal.LockFreeLinkedListNode) r3
            r4 = r9
            r5 = r0
            r9 = r8
            r7 = r3
            r3 = r1
            r1 = r7
        L5d:
            boolean r6 = p4.h.c(r1, r3)
            if (r6 != 0) goto L7f
            boolean r6 = r1 instanceof kotlinx.coroutines.ChildHandleNode
            if (r6 == 0) goto L7a
            r6 = r1
            kotlinx.coroutines.ChildHandleNode r6 = (kotlinx.coroutines.ChildHandleNode) r6
            kotlinx.coroutines.ChildJob r6 = r6.childJob
            r9.L$0 = r4
            r9.L$1 = r3
            r9.L$2 = r1
            r9.label = r2
            r4.a(r6, r9)
            if (r0 != r5) goto L7a
            return r5
        L7a:
            kotlinx.coroutines.internal.LockFreeLinkedListNode r1 = r1.getNextNode()
            goto L5d
        L7f:
            fd.o r9 = fd.o.f7408a
            return r9
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlinx.coroutines.JobSupport$children$1.invokeSuspend(java.lang.Object):java.lang.Object");
    }
}
