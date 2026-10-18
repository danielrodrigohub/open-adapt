package ld;

/* JADX INFO: compiled from: ContinuationImpl.kt */
/* JADX INFO: loaded from: classes.dex */
public abstract class c extends a {
    private final jd.f _context;
    private transient jd.d<Object> intercepted;

    public c(jd.d<Object> dVar, jd.f fVar) {
        super(dVar);
        this._context = fVar;
    }

    @Override // jd.d
    public jd.f getContext() {
        jd.f fVar = this._context;
        p4.h.g(fVar);
        return fVar;
    }

    public final jd.d<Object> intercepted() {
        jd.d<Object> dVarInterceptContinuation = this.intercepted;
        if (dVarInterceptContinuation == null) {
            jd.f context = getContext();
            int i10 = jd.e.f9509d;
            jd.e eVar = (jd.e) context.get(jd.e.a.f9510h);
            if (eVar == null || (dVarInterceptContinuation = eVar.interceptContinuation(this)) == null) {
                dVarInterceptContinuation = this;
            }
            this.intercepted = dVarInterceptContinuation;
        }
        return dVarInterceptContinuation;
    }

    @Override // ld.a
    public void releaseIntercepted() {
        jd.d<?> dVar = this.intercepted;
        if (dVar != null && dVar != this) {
            jd.f context = getContext();
            int i10 = jd.e.f9509d;
            jd.f.a aVar = context.get(jd.e.a.f9510h);
            p4.h.g(aVar);
            ((jd.e) aVar).releaseInterceptedContinuation(dVar);
        }
        this.intercepted = b.f10238h;
    }

    public c(jd.d<Object> dVar) {
        this(dVar, dVar != null ? dVar.getContext() : null);
    }
}
