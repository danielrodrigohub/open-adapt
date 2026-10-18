package kotlinx.coroutines;

import jd.f;

/* JADX INFO: compiled from: CoroutineExceptionHandlerImpl.kt */
/* JADX INFO: loaded from: classes.dex */
final class DiagnosticCoroutineContextException extends RuntimeException {
    private final f context;

    public DiagnosticCoroutineContextException(f fVar) {
        this.context = fVar;
    }

    @Override // java.lang.Throwable
    public Throwable fillInStackTrace() {
        setStackTrace(new StackTraceElement[0]);
        return this;
    }

    @Override // java.lang.Throwable
    public String getLocalizedMessage() {
        return this.context.toString();
    }
}
