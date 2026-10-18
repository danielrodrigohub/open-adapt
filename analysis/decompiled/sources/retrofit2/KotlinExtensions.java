package retrofit2;

import androidx.lifecycle.o;
import com.newrelic.agent.android.hybrid.data.HexAttribute;
import java.lang.reflect.Method;
import jd.d;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Dispatchers;
import ld.c;
import ld.e;
import p4.h;

/* JADX INFO: compiled from: KotlinExtensions.kt */
/* JADX INFO: loaded from: classes2.dex */
public final class KotlinExtensions {

    /* JADX INFO: renamed from: retrofit2.KotlinExtensions$suspendAndThrow$1, reason: invalid class name */
    /* JADX INFO: compiled from: KotlinExtensions.kt */
    @e(c = "retrofit2.KotlinExtensions", f = "KotlinExtensions.kt", l = {113}, m = "suspendAndThrow")
    public static final class AnonymousClass1 extends c {
        public Object L$0;
        public int label;
        public /* synthetic */ Object result;

        public AnonymousClass1(d dVar) {
            super(dVar);
        }

        @Override // ld.a
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return KotlinExtensions.suspendAndThrow(null, this);
        }
    }

    public static final <T> Object await(Call<T> call, d<? super T> dVar) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(o.t(dVar), 1);
        cancellableContinuationImpl.invokeOnCancellation(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$2$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable th) {
                h.k(call2, "call");
                h.k(th, "t");
                cancellableContinuationImpl.resumeWith(d3.e.g(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                h.k(call2, "call");
                h.k(response, "response");
                if (!response.isSuccessful()) {
                    cancellableContinuationImpl.resumeWith(d3.e.g(new HttpException(response)));
                    return;
                }
                T tBody = response.body();
                if (tBody != null) {
                    cancellableContinuationImpl.resumeWith(tBody);
                    return;
                }
                Object objTag = call2.request().tag(Invocation.class);
                if (objTag == null) {
                    fd.c cVar = new fd.c();
                    h.A(cVar, h.class.getName());
                    throw cVar;
                }
                h.f(objTag, "call.request().tag(Invocation::class.java)!!");
                Method method = ((Invocation) objTag).method();
                StringBuilder sb2 = new StringBuilder();
                sb2.append("Response from ");
                h.f(method, HexAttribute.HEX_ATTR_JSERROR_METHOD);
                Class<?> declaringClass = method.getDeclaringClass();
                h.f(declaringClass, "method.declaringClass");
                sb2.append(declaringClass.getName());
                sb2.append('.');
                sb2.append(method.getName());
                sb2.append(" was null but response body type was declared as non-null");
                cancellableContinuationImpl.resumeWith(d3.e.g(new fd.c(sb2.toString())));
            }
        });
        return cancellableContinuationImpl.getResult();
    }

    public static final <T> Object awaitNullable(Call<T> call, d<? super T> dVar) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(o.t(dVar), 1);
        cancellableContinuationImpl.invokeOnCancellation(new KotlinExtensions$await$$inlined$suspendCancellableCoroutine$lambda$2(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$await$4$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable th) {
                h.k(call2, "call");
                h.k(th, "t");
                cancellableContinuationImpl.resumeWith(d3.e.g(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                h.k(call2, "call");
                h.k(response, "response");
                if (response.isSuccessful()) {
                    cancellableContinuationImpl.resumeWith(response.body());
                } else {
                    cancellableContinuationImpl.resumeWith(d3.e.g(new HttpException(response)));
                }
            }
        });
        return cancellableContinuationImpl.getResult();
    }

    public static final <T> Object awaitResponse(Call<T> call, d<? super Response<T>> dVar) {
        final CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(o.t(dVar), 1);
        cancellableContinuationImpl.invokeOnCancellation(new KotlinExtensions$awaitResponse$$inlined$suspendCancellableCoroutine$lambda$1(call));
        call.enqueue(new Callback<T>() { // from class: retrofit2.KotlinExtensions$awaitResponse$2$2
            @Override // retrofit2.Callback
            public void onFailure(Call<T> call2, Throwable th) {
                h.k(call2, "call");
                h.k(th, "t");
                cancellableContinuationImpl.resumeWith(d3.e.g(th));
            }

            @Override // retrofit2.Callback
            public void onResponse(Call<T> call2, Response<T> response) {
                h.k(call2, "call");
                h.k(response, "response");
                cancellableContinuationImpl.resumeWith(response);
            }
        });
        return cancellableContinuationImpl.getResult();
    }

    public static final /* synthetic */ <T> T create(Retrofit retrofit) {
        h.k(retrofit, "$this$create");
        h.z();
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object suspendAndThrow(final Exception exc, d<?> dVar) throws Throwable {
        final AnonymousClass1 anonymousClass1;
        if (dVar instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) dVar;
            int i10 = anonymousClass1.label;
            if ((i10 & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i10 - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(dVar);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(dVar);
        }
        Object obj = anonymousClass1.result;
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i11 = anonymousClass1.label;
        if (i11 != 0) {
            if (i11 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
            return fd.o.f7408a;
        }
        d3.e.p(obj);
        anonymousClass1.L$0 = exc;
        anonymousClass1.label = 1;
        Dispatchers.getDefault().mo14dispatch(anonymousClass1.getContext(), new Runnable() { // from class: retrofit2.KotlinExtensions$suspendAndThrow$$inlined$suspendCoroutineUninterceptedOrReturn$lambda$1
            @Override // java.lang.Runnable
            public final void run() {
                o.t(anonymousClass1).resumeWith(d3.e.g(exc));
            }
        });
        return aVar;
    }
}
