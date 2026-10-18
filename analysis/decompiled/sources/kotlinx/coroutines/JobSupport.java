package kotlinx.coroutines;

import a0.b;
import fd.o;
import java.util.ArrayList;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import jd.d;
import jd.f;
import kotlinx.coroutines.internal.LockFreeLinkedListKt;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;
import kotlinx.coroutines.internal.OpDescriptor;
import p4.h;
import qd.l;
import qd.p;

/* JADX INFO: compiled from: JobSupport.kt */
/* JADX INFO: loaded from: classes.dex */
public class JobSupport implements Job, ChildJob, ParentJob {
    private static final /* synthetic */ AtomicReferenceFieldUpdater _state$FU = AtomicReferenceFieldUpdater.newUpdater(JobSupport.class, Object.class, "_state");
    private volatile /* synthetic */ Object _parentHandle;
    private volatile /* synthetic */ Object _state;

    /* JADX INFO: compiled from: JobSupport.kt */
    public static final class AwaitContinuation<T> extends CancellableContinuationImpl<T> {
        private final JobSupport job;

        public AwaitContinuation(d<? super T> dVar, JobSupport jobSupport) {
            super(dVar, 1);
            this.job = jobSupport;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public Throwable getContinuationCancellationCause(Job job) {
            Throwable rootCause;
            Object state$kotlinx_coroutines_core = this.job.getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Finishing) || (rootCause = ((Finishing) state$kotlinx_coroutines_core).getRootCause()) == null) {
                return state$kotlinx_coroutines_core instanceof CompletedExceptionally ? ((CompletedExceptionally) state$kotlinx_coroutines_core).cause : job.getCancellationException();
            }
            return rootCause;
        }

        @Override // kotlinx.coroutines.CancellableContinuationImpl
        public String nameString() {
            return "AwaitContinuation";
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    public static final class ChildCompletion extends JobNode {
        private final ChildHandleNode child;
        private final JobSupport parent;
        private final Object proposedUpdate;
        private final Finishing state;

        public ChildCompletion(JobSupport jobSupport, Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
            this.parent = jobSupport;
            this.state = finishing;
            this.child = childHandleNode;
            this.proposedUpdate = obj;
        }

        @Override // qd.l
        public /* bridge */ /* synthetic */ o invoke(Throwable th) {
            invoke2(th);
            return o.f7408a;
        }

        @Override // kotlinx.coroutines.CompletionHandlerBase
        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
        public void invoke2(Throwable th) {
            this.parent.continueCompleting(this.state, this.child, this.proposedUpdate);
        }
    }

    /* JADX INFO: compiled from: JobSupport.kt */
    public static final class Finishing implements Incomplete {
        private volatile /* synthetic */ Object _exceptionsHolder = null;
        private volatile /* synthetic */ int _isCompleting;
        private volatile /* synthetic */ Object _rootCause;
        private final NodeList list;

        public Finishing(NodeList nodeList, boolean z10, Throwable th) {
            this.list = nodeList;
            this._isCompleting = z10 ? 1 : 0;
            this._rootCause = th;
        }

        private final ArrayList<Throwable> allocateList() {
            return new ArrayList<>(4);
        }

        private final Object getExceptionsHolder() {
            return this._exceptionsHolder;
        }

        private final void setExceptionsHolder(Object obj) {
            this._exceptionsHolder = obj;
        }

        public final void addExceptionLocked(Throwable th) {
            Throwable rootCause = getRootCause();
            if (rootCause == null) {
                setRootCause(th);
                return;
            }
            if (th == rootCause) {
                return;
            }
            Object exceptionsHolder = getExceptionsHolder();
            if (exceptionsHolder == null) {
                setExceptionsHolder(th);
                return;
            }
            if (exceptionsHolder instanceof Throwable) {
                if (th == exceptionsHolder) {
                    return;
                }
                ArrayList<Throwable> arrayListAllocateList = allocateList();
                arrayListAllocateList.add(exceptionsHolder);
                arrayListAllocateList.add(th);
                setExceptionsHolder(arrayListAllocateList);
                return;
            }
            if (exceptionsHolder instanceof ArrayList) {
                ((ArrayList) exceptionsHolder).add(th);
                return;
            }
            throw new IllegalStateException(("State is " + exceptionsHolder).toString());
        }

        @Override // kotlinx.coroutines.Incomplete
        public NodeList getList() {
            return this.list;
        }

        public final Throwable getRootCause() {
            return (Throwable) this._rootCause;
        }

        @Override // kotlinx.coroutines.Incomplete
        public boolean isActive() {
            return getRootCause() == null;
        }

        public final boolean isCancelling() {
            return getRootCause() != null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [boolean, int] */
        public final boolean isCompleting() {
            return this._isCompleting;
        }

        public final boolean isSealed() {
            return getExceptionsHolder() == JobSupportKt.SEALED;
        }

        public final List<Throwable> sealLocked(Throwable th) {
            ArrayList<Throwable> arrayListAllocateList;
            Object exceptionsHolder = getExceptionsHolder();
            if (exceptionsHolder == null) {
                arrayListAllocateList = allocateList();
            } else if (exceptionsHolder instanceof Throwable) {
                ArrayList<Throwable> arrayListAllocateList2 = allocateList();
                arrayListAllocateList2.add(exceptionsHolder);
                arrayListAllocateList = arrayListAllocateList2;
            } else {
                if (!(exceptionsHolder instanceof ArrayList)) {
                    throw new IllegalStateException(("State is " + exceptionsHolder).toString());
                }
                arrayListAllocateList = (ArrayList) exceptionsHolder;
            }
            Throwable rootCause = getRootCause();
            if (rootCause != null) {
                arrayListAllocateList.add(0, rootCause);
            }
            if (th != null && !h.c(th, rootCause)) {
                arrayListAllocateList.add(th);
            }
            setExceptionsHolder(JobSupportKt.SEALED);
            return arrayListAllocateList;
        }

        public final void setCompleting(boolean z10) {
            this._isCompleting = z10 ? 1 : 0;
        }

        public final void setRootCause(Throwable th) {
            this._rootCause = th;
        }

        public String toString() {
            StringBuilder sbC = b.c("Finishing[cancelling=");
            sbC.append(isCancelling());
            sbC.append(", completing=");
            sbC.append(isCompleting());
            sbC.append(", rootCause=");
            sbC.append(getRootCause());
            sbC.append(", exceptions=");
            sbC.append(getExceptionsHolder());
            sbC.append(", list=");
            sbC.append(getList());
            sbC.append(']');
            return sbC.toString();
        }
    }

    public JobSupport(boolean z10) {
        this._state = z10 ? JobSupportKt.EMPTY_ACTIVE : JobSupportKt.EMPTY_NEW;
        this._parentHandle = null;
    }

    private final boolean addLastAtomic(final Object obj, NodeList nodeList, final JobNode jobNode) {
        int iTryCondAddNext;
        LockFreeLinkedListNode.CondAddOp condAddOp = new LockFreeLinkedListNode.CondAddOp(jobNode) { // from class: kotlinx.coroutines.JobSupport$addLastAtomic$$inlined$addLastIf$1
            @Override // kotlinx.coroutines.internal.AtomicOp
            public Object prepare(LockFreeLinkedListNode lockFreeLinkedListNode) {
                if (this.getState$kotlinx_coroutines_core() == obj) {
                    return null;
                }
                return LockFreeLinkedListKt.getCONDITION_FALSE();
            }
        };
        do {
            iTryCondAddNext = nodeList.getPrevNode().tryCondAddNext(jobNode, nodeList, condAddOp);
            if (iTryCondAddNext == 1) {
                return true;
            }
        } while (iTryCondAddNext != 2);
        return false;
    }

    private final void addSuppressedExceptions(Throwable th, List<? extends Throwable> list) {
        if (list.size() <= 1) {
            return;
        }
        Set setNewSetFromMap = Collections.newSetFromMap(new IdentityHashMap(list.size()));
        for (Throwable th2 : list) {
            if (th2 != th && th2 != th && !(th2 instanceof CancellationException) && setNewSetFromMap.add(th2)) {
                h.b(th, th2);
            }
        }
    }

    private final Object awaitSuspend(d<Object> dVar) {
        AwaitContinuation awaitContinuation = new AwaitContinuation(androidx.lifecycle.o.t(dVar), this);
        awaitContinuation.initCancellability();
        CancellableContinuationKt.disposeOnCancellation(awaitContinuation, invokeOnCompletion(new ResumeAwaitOnCompletion(awaitContinuation)));
        return awaitContinuation.getResult();
    }

    private final Object cancelMakeCompleting(Object obj) {
        Object objTryMakeCompleting;
        do {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete) || ((state$kotlinx_coroutines_core instanceof Finishing) && ((Finishing) state$kotlinx_coroutines_core).isCompleting())) {
                return JobSupportKt.COMPLETING_ALREADY;
            }
            objTryMakeCompleting = tryMakeCompleting(state$kotlinx_coroutines_core, new CompletedExceptionally(createCauseException(obj), false, 2, null));
        } while (objTryMakeCompleting == JobSupportKt.COMPLETING_RETRY);
        return objTryMakeCompleting;
    }

    private final boolean cancelParent(Throwable th) {
        if (isScopedCoroutine()) {
            return true;
        }
        boolean z10 = th instanceof CancellationException;
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core == null || parentHandle$kotlinx_coroutines_core == NonDisposableHandle.INSTANCE) {
            return z10;
        }
        return parentHandle$kotlinx_coroutines_core.childCancelled(th) || z10;
    }

    private final void completeStateFinalization(Incomplete incomplete, Object obj) throws Throwable {
        ChildHandle parentHandle$kotlinx_coroutines_core = getParentHandle$kotlinx_coroutines_core();
        if (parentHandle$kotlinx_coroutines_core != null) {
            parentHandle$kotlinx_coroutines_core.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
        if (!(incomplete instanceof JobNode)) {
            NodeList list = incomplete.getList();
            if (list != null) {
                notifyCompletion(list, th);
                return;
            }
            return;
        }
        try {
            ((JobNode) incomplete).invoke(th);
        } catch (Throwable th2) {
            handleOnCompletionException$kotlinx_coroutines_core(new CompletionHandlerException("Exception in completion handler " + incomplete + " for " + this, th2));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void continueCompleting(Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        ChildHandleNode childHandleNodeNextChild = nextChild(childHandleNode);
        if (childHandleNodeNextChild == null || !tryWaitForChild(finishing, childHandleNodeNextChild, obj)) {
            afterCompletion(finalizeFinishingState(finishing, obj));
        }
    }

    private final Throwable createCauseException(Object obj) {
        if (obj == null ? true : obj instanceof Throwable) {
            Throwable th = (Throwable) obj;
            return th == null ? new JobCancellationException(cancellationExceptionMessage(), null, this) : th;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.ParentJob");
        return ((ParentJob) obj).getChildJobCancellationCause();
    }

    private final Object finalizeFinishingState(Finishing finishing, Object obj) throws Throwable {
        boolean zIsCancelling;
        Throwable finalRootCause;
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        Throwable th = completedExceptionally != null ? completedExceptionally.cause : null;
        synchronized (finishing) {
            zIsCancelling = finishing.isCancelling();
            List<Throwable> listSealLocked = finishing.sealLocked(th);
            finalRootCause = getFinalRootCause(finishing, listSealLocked);
            if (finalRootCause != null) {
                addSuppressedExceptions(finalRootCause, listSealLocked);
            }
        }
        if (finalRootCause != null && finalRootCause != th) {
            obj = new CompletedExceptionally(finalRootCause, false, 2, null);
        }
        if (finalRootCause != null) {
            if (cancelParent(finalRootCause) || handleJobException(finalRootCause)) {
                Objects.requireNonNull(obj, "null cannot be cast to non-null type kotlinx.coroutines.CompletedExceptionally");
                ((CompletedExceptionally) obj).makeHandled();
            }
        }
        if (!zIsCancelling) {
            onCancelling(finalRootCause);
        }
        onCompletionInternal(obj);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        Object objBoxIncomplete = JobSupportKt.boxIncomplete(obj);
        while (!atomicReferenceFieldUpdater.compareAndSet(this, finishing, objBoxIncomplete) && atomicReferenceFieldUpdater.get(this) == finishing) {
        }
        completeStateFinalization(finishing, obj);
        return obj;
    }

    private final ChildHandleNode firstChild(Incomplete incomplete) {
        ChildHandleNode childHandleNode = incomplete instanceof ChildHandleNode ? (ChildHandleNode) incomplete : null;
        if (childHandleNode != null) {
            return childHandleNode;
        }
        NodeList list = incomplete.getList();
        if (list != null) {
            return nextChild(list);
        }
        return null;
    }

    private final Throwable getExceptionOrNull(Object obj) {
        CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
        if (completedExceptionally != null) {
            return completedExceptionally.cause;
        }
        return null;
    }

    private final Throwable getFinalRootCause(Finishing finishing, List<? extends Throwable> list) {
        Object next;
        Object obj = null;
        if (list.isEmpty()) {
            if (finishing.isCancelling()) {
                return new JobCancellationException(cancellationExceptionMessage(), null, this);
            }
            return null;
        }
        Iterator<T> it = list.iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!(!(((Throwable) next) instanceof CancellationException)));
        Throwable th = (Throwable) next;
        if (th != null) {
            return th;
        }
        Throwable th2 = list.get(0);
        if (th2 instanceof TimeoutCancellationException) {
            for (Object obj2 : list) {
                Throwable th3 = (Throwable) obj2;
                if (th3 != th2 && (th3 instanceof TimeoutCancellationException)) {
                    obj = obj2;
                    break;
                }
            }
            Throwable th4 = (Throwable) obj;
            if (th4 != null) {
                return th4;
            }
        }
        return th2;
    }

    private final NodeList getOrPromoteCancellingList(Incomplete incomplete) {
        NodeList list = incomplete.getList();
        if (list != null) {
            return list;
        }
        if (incomplete instanceof Empty) {
            return new NodeList();
        }
        if (incomplete instanceof JobNode) {
            promoteSingleToNodeList((JobNode) incomplete);
            return null;
        }
        throw new IllegalStateException(("State should have list: " + incomplete).toString());
    }

    private final Object makeCancelling(Object obj) throws Throwable {
        Throwable thCreateCauseException = null;
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof Finishing) {
                synchronized (state$kotlinx_coroutines_core) {
                    if (((Finishing) state$kotlinx_coroutines_core).isSealed()) {
                        return JobSupportKt.TOO_LATE_TO_CANCEL;
                    }
                    boolean zIsCancelling = ((Finishing) state$kotlinx_coroutines_core).isCancelling();
                    if (obj != null || !zIsCancelling) {
                        if (thCreateCauseException == null) {
                            thCreateCauseException = createCauseException(obj);
                        }
                        ((Finishing) state$kotlinx_coroutines_core).addExceptionLocked(thCreateCauseException);
                    }
                    Throwable rootCause = zIsCancelling ^ true ? ((Finishing) state$kotlinx_coroutines_core).getRootCause() : null;
                    if (rootCause != null) {
                        notifyCancelling(((Finishing) state$kotlinx_coroutines_core).getList(), rootCause);
                    }
                    return JobSupportKt.COMPLETING_ALREADY;
                }
            }
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                return JobSupportKt.TOO_LATE_TO_CANCEL;
            }
            if (thCreateCauseException == null) {
                thCreateCauseException = createCauseException(obj);
            }
            Incomplete incomplete = (Incomplete) state$kotlinx_coroutines_core;
            if (!incomplete.isActive()) {
                Object objTryMakeCompleting = tryMakeCompleting(state$kotlinx_coroutines_core, new CompletedExceptionally(thCreateCauseException, false, 2, null));
                if (objTryMakeCompleting == JobSupportKt.COMPLETING_ALREADY) {
                    throw new IllegalStateException(("Cannot happen in " + state$kotlinx_coroutines_core).toString());
                }
                if (objTryMakeCompleting != JobSupportKt.COMPLETING_RETRY) {
                    return objTryMakeCompleting;
                }
            } else if (tryMakeCancelling(incomplete, thCreateCauseException)) {
                return JobSupportKt.COMPLETING_ALREADY;
            }
        }
    }

    private final JobNode makeNode(l<? super Throwable, o> lVar, boolean z10) {
        JobNode invokeOnCompletion;
        if (z10) {
            invokeOnCompletion = lVar instanceof JobCancellingNode ? (JobCancellingNode) lVar : null;
            if (invokeOnCompletion == null) {
                invokeOnCompletion = new InvokeOnCancelling(lVar);
            }
        } else {
            invokeOnCompletion = lVar instanceof JobNode ? (JobNode) lVar : null;
            if (invokeOnCompletion == null) {
                invokeOnCompletion = new InvokeOnCompletion(lVar);
            }
        }
        invokeOnCompletion.setJob(this);
        return invokeOnCompletion;
    }

    private final ChildHandleNode nextChild(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (lockFreeLinkedListNode.isRemoved()) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getPrevNode();
        }
        while (true) {
            lockFreeLinkedListNode = lockFreeLinkedListNode.getNextNode();
            if (!lockFreeLinkedListNode.isRemoved()) {
                if (lockFreeLinkedListNode instanceof ChildHandleNode) {
                    return (ChildHandleNode) lockFreeLinkedListNode;
                }
                if (lockFreeLinkedListNode instanceof NodeList) {
                    return null;
                }
            }
        }
    }

    private final void notifyCancelling(NodeList nodeList, Throwable th) throws Throwable {
        onCancelling(th);
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode nextNode = (LockFreeLinkedListNode) nodeList.getNext(); !h.c(nextNode, nodeList); nextNode = nextNode.getNextNode()) {
            if (nextNode instanceof JobCancellingNode) {
                JobNode jobNode = (JobNode) nextNode;
                try {
                    jobNode.invoke(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        h.b(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
        cancelParent(th);
    }

    private final void notifyCompletion(NodeList nodeList, Throwable th) throws Throwable {
        CompletionHandlerException completionHandlerException = null;
        for (LockFreeLinkedListNode nextNode = (LockFreeLinkedListNode) nodeList.getNext(); !h.c(nextNode, nodeList); nextNode = nextNode.getNextNode()) {
            if (nextNode instanceof JobNode) {
                JobNode jobNode = (JobNode) nextNode;
                try {
                    jobNode.invoke(th);
                } catch (Throwable th2) {
                    if (completionHandlerException != null) {
                        h.b(completionHandlerException, th2);
                    } else {
                        completionHandlerException = new CompletionHandlerException("Exception in completion handler " + jobNode + " for " + this, th2);
                    }
                }
            }
        }
        if (completionHandlerException != null) {
            handleOnCompletionException$kotlinx_coroutines_core(completionHandlerException);
        }
    }

    private final void promoteEmptyToNodeList(Empty empty) {
        NodeList nodeList = new NodeList();
        Object inactiveNodeList = nodeList;
        if (!empty.isActive()) {
            inactiveNodeList = new InactiveNodeList(nodeList);
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, empty, inactiveNodeList) && atomicReferenceFieldUpdater.get(this) == empty) {
        }
    }

    private final void promoteSingleToNodeList(JobNode jobNode) {
        jobNode.addOneIfEmpty(new NodeList());
        LockFreeLinkedListNode nextNode = jobNode.getNextNode();
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        while (!atomicReferenceFieldUpdater.compareAndSet(this, jobNode, nextNode) && atomicReferenceFieldUpdater.get(this) == jobNode) {
        }
    }

    private final int startInternal(Object obj) {
        boolean z10 = false;
        if (obj instanceof Empty) {
            if (((Empty) obj).isActive()) {
                return 0;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
            Empty empty = JobSupportKt.EMPTY_ACTIVE;
            do {
                if (atomicReferenceFieldUpdater.compareAndSet(this, obj, empty)) {
                    z10 = true;
                    break;
                }
            } while (atomicReferenceFieldUpdater.get(this) == obj);
            if (!z10) {
                return -1;
            }
            onStart();
            return 1;
        }
        if (!(obj instanceof InactiveNodeList)) {
            return 0;
        }
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = _state$FU;
        NodeList list = ((InactiveNodeList) obj).getList();
        do {
            if (atomicReferenceFieldUpdater2.compareAndSet(this, obj, list)) {
                z10 = true;
                break;
            }
        } while (atomicReferenceFieldUpdater2.get(this) == obj);
        if (!z10) {
            return -1;
        }
        onStart();
        return 1;
    }

    private final String stateString(Object obj) {
        if (!(obj instanceof Finishing)) {
            if (obj instanceof Incomplete) {
                return ((Incomplete) obj).isActive() ? "Active" : "New";
            }
            return obj instanceof CompletedExceptionally ? "Cancelled" : "Completed";
        }
        Finishing finishing = (Finishing) obj;
        if (finishing.isCancelling()) {
            return "Cancelling";
        }
        return finishing.isCompleting() ? "Completing" : "Active";
    }

    public static /* synthetic */ CancellationException toCancellationException$default(JobSupport jobSupport, Throwable th, String str, int i10, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: toCancellationException");
        }
        if ((i10 & 1) != 0) {
            str = null;
        }
        return jobSupport.toCancellationException(th, str);
    }

    private final boolean tryFinalizeSimpleState(Incomplete incomplete, Object obj) throws Throwable {
        boolean z10;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        Object objBoxIncomplete = JobSupportKt.boxIncomplete(obj);
        while (true) {
            if (atomicReferenceFieldUpdater.compareAndSet(this, incomplete, objBoxIncomplete)) {
                z10 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != incomplete) {
                z10 = false;
                break;
            }
        }
        if (!z10) {
            return false;
        }
        onCancelling(null);
        onCompletionInternal(obj);
        completeStateFinalization(incomplete, obj);
        return true;
    }

    private final boolean tryMakeCancelling(Incomplete incomplete, Throwable th) throws Throwable {
        boolean z10;
        NodeList orPromoteCancellingList = getOrPromoteCancellingList(incomplete);
        if (orPromoteCancellingList == null) {
            return false;
        }
        Finishing finishing = new Finishing(orPromoteCancellingList, false, th);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
        while (true) {
            if (atomicReferenceFieldUpdater.compareAndSet(this, incomplete, finishing)) {
                z10 = true;
                break;
            }
            if (atomicReferenceFieldUpdater.get(this) != incomplete) {
                z10 = false;
                break;
            }
        }
        if (!z10) {
            return false;
        }
        notifyCancelling(orPromoteCancellingList, th);
        return true;
    }

    private final Object tryMakeCompleting(Object obj, Object obj2) {
        if (!(obj instanceof Incomplete)) {
            return JobSupportKt.COMPLETING_ALREADY;
        }
        if ((!(obj instanceof Empty) && !(obj instanceof JobNode)) || (obj instanceof ChildHandleNode) || (obj2 instanceof CompletedExceptionally)) {
            return tryMakeCompletingSlowPath((Incomplete) obj, obj2);
        }
        return tryFinalizeSimpleState((Incomplete) obj, obj2) ? obj2 : JobSupportKt.COMPLETING_RETRY;
    }

    private final Object tryMakeCompletingSlowPath(Incomplete incomplete, Object obj) throws Throwable {
        boolean z10;
        NodeList orPromoteCancellingList = getOrPromoteCancellingList(incomplete);
        if (orPromoteCancellingList == null) {
            return JobSupportKt.COMPLETING_RETRY;
        }
        Finishing finishing = incomplete instanceof Finishing ? (Finishing) incomplete : null;
        if (finishing == null) {
            finishing = new Finishing(orPromoteCancellingList, false, null);
        }
        synchronized (finishing) {
            if (finishing.isCompleting()) {
                return JobSupportKt.COMPLETING_ALREADY;
            }
            finishing.setCompleting(true);
            if (finishing != incomplete) {
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
                while (true) {
                    if (atomicReferenceFieldUpdater.compareAndSet(this, incomplete, finishing)) {
                        z10 = true;
                        break;
                    }
                    if (atomicReferenceFieldUpdater.get(this) != incomplete) {
                        z10 = false;
                        break;
                    }
                }
                if (!z10) {
                    return JobSupportKt.COMPLETING_RETRY;
                }
            }
            boolean zIsCancelling = finishing.isCancelling();
            CompletedExceptionally completedExceptionally = obj instanceof CompletedExceptionally ? (CompletedExceptionally) obj : null;
            if (completedExceptionally != null) {
                finishing.addExceptionLocked(completedExceptionally.cause);
            }
            Throwable rootCause = Boolean.valueOf(zIsCancelling ? false : true).booleanValue() ? finishing.getRootCause() : null;
            if (rootCause != null) {
                notifyCancelling(orPromoteCancellingList, rootCause);
            }
            ChildHandleNode childHandleNodeFirstChild = firstChild(incomplete);
            return (childHandleNodeFirstChild == null || !tryWaitForChild(finishing, childHandleNodeFirstChild, obj)) ? finalizeFinishingState(finishing, obj) : JobSupportKt.COMPLETING_WAITING_CHILDREN;
        }
    }

    private final boolean tryWaitForChild(Finishing finishing, ChildHandleNode childHandleNode, Object obj) {
        while (Job.DefaultImpls.invokeOnCompletion$default(childHandleNode.childJob, false, false, new ChildCompletion(this, finishing, childHandleNode, obj), 1, null) == NonDisposableHandle.INSTANCE) {
            childHandleNode = nextChild(childHandleNode);
            if (childHandleNode == null) {
                return false;
            }
        }
        return true;
    }

    public void afterCompletion(Object obj) {
    }

    @Override // kotlinx.coroutines.Job
    public final ChildHandle attachChild(ChildJob childJob) {
        return (ChildHandle) Job.DefaultImpls.invokeOnCompletion$default(this, true, false, new ChildHandleNode(childJob), 2, null);
    }

    public final Object awaitInternal$kotlinx_coroutines_core(d<Object> dVar) throws Throwable {
        Object state$kotlinx_coroutines_core;
        do {
            state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                    throw ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
                }
                return JobSupportKt.unboxState(state$kotlinx_coroutines_core);
            }
        } while (startInternal(state$kotlinx_coroutines_core) < 0);
        return awaitSuspend(dVar);
    }

    @Override // kotlinx.coroutines.Job
    public void cancel(CancellationException cancellationException) throws Throwable {
        if (cancellationException == null) {
            cancellationException = new JobCancellationException(cancellationExceptionMessage(), null, this);
        }
        cancelInternal(cancellationException);
    }

    public final boolean cancelCoroutine(Throwable th) {
        return cancelImpl$kotlinx_coroutines_core(th);
    }

    public final boolean cancelImpl$kotlinx_coroutines_core(Object obj) throws Throwable {
        Object objMakeCancelling = JobSupportKt.COMPLETING_ALREADY;
        if (getOnCancelComplete$kotlinx_coroutines_core() && (objMakeCancelling = cancelMakeCompleting(obj)) == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            return true;
        }
        if (objMakeCancelling == JobSupportKt.COMPLETING_ALREADY) {
            objMakeCancelling = makeCancelling(obj);
        }
        if (objMakeCancelling == JobSupportKt.COMPLETING_ALREADY || objMakeCancelling == JobSupportKt.COMPLETING_WAITING_CHILDREN) {
            return true;
        }
        if (objMakeCancelling == JobSupportKt.TOO_LATE_TO_CANCEL) {
            return false;
        }
        afterCompletion(objMakeCancelling);
        return true;
    }

    public void cancelInternal(Throwable th) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(th);
    }

    public String cancellationExceptionMessage() {
        return "Job was cancelled";
    }

    public boolean childCancelled(Throwable th) {
        if (th instanceof CancellationException) {
            return true;
        }
        return cancelImpl$kotlinx_coroutines_core(th) && getHandlesException$kotlinx_coroutines_core();
    }

    @Override // jd.f
    public <R> R fold(R r10, p<? super R, ? super f.a, ? extends R> pVar) {
        return (R) Job.DefaultImpls.fold(this, r10, pVar);
    }

    @Override // jd.f.a, jd.f
    public <E extends f.a> E get(f.b<E> bVar) {
        return (E) Job.DefaultImpls.get(this, bVar);
    }

    @Override // kotlinx.coroutines.Job
    public final CancellationException getCancellationException() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (!(state$kotlinx_coroutines_core instanceof Finishing)) {
            if (state$kotlinx_coroutines_core instanceof Incomplete) {
                throw new IllegalStateException(("Job is still new or active: " + this).toString());
            }
            if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
                return toCancellationException$default(this, ((CompletedExceptionally) state$kotlinx_coroutines_core).cause, null, 1, null);
            }
            return new JobCancellationException(DebugStringsKt.getClassSimpleName(this) + " has completed normally", null, this);
        }
        Throwable rootCause = ((Finishing) state$kotlinx_coroutines_core).getRootCause();
        if (rootCause != null) {
            CancellationException cancellationException = toCancellationException(rootCause, DebugStringsKt.getClassSimpleName(this) + " is cancelling");
            if (cancellationException != null) {
                return cancellationException;
            }
        }
        throw new IllegalStateException(("Job is still new or active: " + this).toString());
    }

    @Override // kotlinx.coroutines.ParentJob
    public CancellationException getChildJobCancellationCause() {
        Throwable rootCause;
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        if (state$kotlinx_coroutines_core instanceof Finishing) {
            rootCause = ((Finishing) state$kotlinx_coroutines_core).getRootCause();
        } else if (state$kotlinx_coroutines_core instanceof CompletedExceptionally) {
            rootCause = ((CompletedExceptionally) state$kotlinx_coroutines_core).cause;
        } else {
            if (state$kotlinx_coroutines_core instanceof Incomplete) {
                throw new IllegalStateException(("Cannot be cancelling child in this state: " + state$kotlinx_coroutines_core).toString());
            }
            rootCause = null;
        }
        CancellationException cancellationException = rootCause instanceof CancellationException ? (CancellationException) rootCause : null;
        if (cancellationException != null) {
            return cancellationException;
        }
        StringBuilder sbC = b.c("Parent job is ");
        sbC.append(stateString(state$kotlinx_coroutines_core));
        return new JobCancellationException(sbC.toString(), rootCause, this);
    }

    @Override // kotlinx.coroutines.Job
    public final xd.d<Job> getChildren() {
        return g7.b.j(new JobSupport$children$1(this, null));
    }

    public boolean getHandlesException$kotlinx_coroutines_core() {
        return true;
    }

    @Override // jd.f.a
    public final f.b<?> getKey() {
        return Job.Key;
    }

    public boolean getOnCancelComplete$kotlinx_coroutines_core() {
        return false;
    }

    public final ChildHandle getParentHandle$kotlinx_coroutines_core() {
        return (ChildHandle) this._parentHandle;
    }

    public final Object getState$kotlinx_coroutines_core() {
        while (true) {
            Object obj = this._state;
            if (!(obj instanceof OpDescriptor)) {
                return obj;
            }
            ((OpDescriptor) obj).perform(this);
        }
    }

    public boolean handleJobException(Throwable th) {
        return false;
    }

    public void handleOnCompletionException$kotlinx_coroutines_core(Throwable th) throws Throwable {
        throw th;
    }

    public final void initParentJob(Job job) {
        if (job == null) {
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
            return;
        }
        job.start();
        ChildHandle childHandleAttachChild = job.attachChild(this);
        setParentHandle$kotlinx_coroutines_core(childHandleAttachChild);
        if (isCompleted()) {
            childHandleAttachChild.dispose();
            setParentHandle$kotlinx_coroutines_core(NonDisposableHandle.INSTANCE);
        }
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle invokeOnCompletion(l<? super Throwable, o> lVar) {
        return invokeOnCompletion(false, true, lVar);
    }

    @Override // kotlinx.coroutines.Job
    public boolean isActive() {
        Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
        return (state$kotlinx_coroutines_core instanceof Incomplete) && ((Incomplete) state$kotlinx_coroutines_core).isActive();
    }

    public final boolean isCompleted() {
        return !(getState$kotlinx_coroutines_core() instanceof Incomplete);
    }

    public boolean isScopedCoroutine() {
        return false;
    }

    public final Object makeCompletingOnce$kotlinx_coroutines_core(Object obj) {
        Object objTryMakeCompleting;
        do {
            objTryMakeCompleting = tryMakeCompleting(getState$kotlinx_coroutines_core(), obj);
            if (objTryMakeCompleting == JobSupportKt.COMPLETING_ALREADY) {
                throw new IllegalStateException("Job " + this + " is already complete or completing, but is being completed with " + obj, getExceptionOrNull(obj));
            }
        } while (objTryMakeCompleting == JobSupportKt.COMPLETING_RETRY);
        return objTryMakeCompleting;
    }

    @Override // jd.f
    public f minusKey(f.b<?> bVar) {
        return Job.DefaultImpls.minusKey(this, bVar);
    }

    public String nameString$kotlinx_coroutines_core() {
        return DebugStringsKt.getClassSimpleName(this);
    }

    public void onCancelling(Throwable th) {
    }

    public void onCompletionInternal(Object obj) {
    }

    public void onStart() {
    }

    @Override // kotlinx.coroutines.ChildJob
    public final void parentCancelled(ParentJob parentJob) throws Throwable {
        cancelImpl$kotlinx_coroutines_core(parentJob);
    }

    @Override // jd.f
    public f plus(f fVar) {
        return Job.DefaultImpls.plus(this, fVar);
    }

    public final void removeNode$kotlinx_coroutines_core(JobNode jobNode) {
        boolean z10;
        do {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (!(state$kotlinx_coroutines_core instanceof JobNode)) {
                if (!(state$kotlinx_coroutines_core instanceof Incomplete) || ((Incomplete) state$kotlinx_coroutines_core).getList() == null) {
                    return;
                }
                jobNode.mo13remove();
                return;
            }
            if (state$kotlinx_coroutines_core != jobNode) {
                return;
            }
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
            Empty empty = JobSupportKt.EMPTY_ACTIVE;
            while (true) {
                if (atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, empty)) {
                    z10 = true;
                    break;
                } else if (atomicReferenceFieldUpdater.get(this) != state$kotlinx_coroutines_core) {
                    z10 = false;
                    break;
                }
            }
        } while (!z10);
    }

    public final void setParentHandle$kotlinx_coroutines_core(ChildHandle childHandle) {
        this._parentHandle = childHandle;
    }

    @Override // kotlinx.coroutines.Job
    public final boolean start() {
        int iStartInternal;
        do {
            iStartInternal = startInternal(getState$kotlinx_coroutines_core());
            if (iStartInternal == 0) {
                return false;
            }
        } while (iStartInternal != 1);
        return true;
    }

    public final CancellationException toCancellationException(Throwable th, String str) {
        CancellationException jobCancellationException = th instanceof CancellationException ? (CancellationException) th : null;
        if (jobCancellationException == null) {
            if (str == null) {
                str = cancellationExceptionMessage();
            }
            jobCancellationException = new JobCancellationException(str, th, this);
        }
        return jobCancellationException;
    }

    public final String toDebugString() {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(nameString$kotlinx_coroutines_core());
        sb2.append('{');
        return a0.d.d(sb2, stateString(getState$kotlinx_coroutines_core()), '}');
    }

    public String toString() {
        return toDebugString() + '@' + DebugStringsKt.getHexAddress(this);
    }

    @Override // kotlinx.coroutines.Job
    public final DisposableHandle invokeOnCompletion(boolean z10, boolean z11, l<? super Throwable, o> lVar) {
        boolean z12;
        JobNode jobNodeMakeNode = makeNode(lVar, z10);
        while (true) {
            Object state$kotlinx_coroutines_core = getState$kotlinx_coroutines_core();
            if (state$kotlinx_coroutines_core instanceof Empty) {
                Empty empty = (Empty) state$kotlinx_coroutines_core;
                if (empty.isActive()) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = _state$FU;
                    while (true) {
                        if (atomicReferenceFieldUpdater.compareAndSet(this, state$kotlinx_coroutines_core, jobNodeMakeNode)) {
                            z12 = true;
                            break;
                        }
                        if (atomicReferenceFieldUpdater.get(this) != state$kotlinx_coroutines_core) {
                            z12 = false;
                            break;
                        }
                    }
                    if (z12) {
                        return jobNodeMakeNode;
                    }
                } else {
                    promoteEmptyToNodeList(empty);
                }
            } else {
                Throwable rootCause = null;
                if (!(state$kotlinx_coroutines_core instanceof Incomplete)) {
                    if (z11) {
                        CompletedExceptionally completedExceptionally = state$kotlinx_coroutines_core instanceof CompletedExceptionally ? (CompletedExceptionally) state$kotlinx_coroutines_core : null;
                        lVar.invoke(completedExceptionally != null ? completedExceptionally.cause : null);
                    }
                    return NonDisposableHandle.INSTANCE;
                }
                NodeList list = ((Incomplete) state$kotlinx_coroutines_core).getList();
                if (list == null) {
                    Objects.requireNonNull(state$kotlinx_coroutines_core, "null cannot be cast to non-null type kotlinx.coroutines.JobNode");
                    promoteSingleToNodeList((JobNode) state$kotlinx_coroutines_core);
                } else {
                    DisposableHandle disposableHandle = NonDisposableHandle.INSTANCE;
                    if (z10 && (state$kotlinx_coroutines_core instanceof Finishing)) {
                        synchronized (state$kotlinx_coroutines_core) {
                            rootCause = ((Finishing) state$kotlinx_coroutines_core).getRootCause();
                            if (rootCause == null || ((lVar instanceof ChildHandleNode) && !((Finishing) state$kotlinx_coroutines_core).isCompleting())) {
                                if (addLastAtomic(state$kotlinx_coroutines_core, list, jobNodeMakeNode)) {
                                    if (rootCause == null) {
                                        return jobNodeMakeNode;
                                    }
                                    disposableHandle = jobNodeMakeNode;
                                }
                            }
                        }
                    }
                    if (rootCause != null) {
                        if (z11) {
                            lVar.invoke(rootCause);
                        }
                        return disposableHandle;
                    }
                    if (addLastAtomic(state$kotlinx_coroutines_core, list, jobNodeMakeNode)) {
                        return jobNodeMakeNode;
                    }
                }
            }
        }
    }
}
