package w9;

import java.util.UUID;
import java.util.concurrent.atomic.AtomicBoolean;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
/* JADX INFO: loaded from: classes.dex */
@ld.e(c = "com.nike.android.adaptkit.controller.AdaptKitPairedDevicesControllerImpl$syncBatteryCheck$2", f = "AdaptKitPairDevicesController.kt", l = {2220}, m = "invokeSuspend")
public final class t1 extends ld.i implements qd.p<CoroutineScope, jd.d<? super ba.e>, Object> {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public rd.w f17361h;

    /* JADX INFO: renamed from: i, reason: collision with root package name */
    public ya.b f17362i;

    /* JADX INFO: renamed from: j, reason: collision with root package name */
    public int f17363j;

    /* JADX INFO: renamed from: k, reason: collision with root package name */
    public final /* synthetic */ rd.w<v9.i> f17364k;

    /* JADX INFO: renamed from: l, reason: collision with root package name */
    public final /* synthetic */ ya.b f17365l;

    /* JADX INFO: compiled from: AdaptKitPairDevicesController.kt */
    public static final class a extends rd.o implements qd.l<v9.i, fd.o> {

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public final /* synthetic */ v9.a f17366h;

        /* JADX INFO: renamed from: i, reason: collision with root package name */
        public final /* synthetic */ jd.d<ba.e> f17367i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        /* JADX WARN: Multi-variable type inference failed */
        public a(v9.a aVar, jd.d<? super ba.e> dVar) {
            super(1);
            this.f17366h = aVar;
            this.f17367i = dVar;
        }

        @Override // qd.l
        public final fd.o invoke(v9.i iVar) {
            v9.i iVar2 = iVar;
            p4.h.j(iVar2, "$this$deviceControllerListener");
            AtomicBoolean atomicBoolean = new AtomicBoolean(false);
            iVar2.f16595b = new q1(atomicBoolean, this.f17366h, this.f17367i);
            iVar2.f16597d = new s1(atomicBoolean, this.f17366h, this.f17367i);
            return fd.o.f7408a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public t1(rd.w<v9.i> wVar, ya.b bVar, jd.d<? super t1> dVar) {
        super(2, dVar);
        this.f17364k = wVar;
        this.f17365l = bVar;
    }

    @Override // ld.a
    public final jd.d<fd.o> create(Object obj, jd.d<?> dVar) {
        return new t1(this.f17364k, this.f17365l, dVar);
    }

    @Override // qd.p
    public final Object invoke(CoroutineScope coroutineScope, jd.d<? super ba.e> dVar) {
        return ((t1) create(coroutineScope, dVar)).invokeSuspend(fd.o.f7408a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r6v0, types: [T, java.lang.Object, v9.i, v9.p0] */
    /* JADX WARN: Type inference fix 'apply assigned field type' failed
    java.lang.UnsupportedOperationException: ArgType.getObject(), call class: class jadx.core.dex.instructions.args.ArgType$UnknownArg
    	at jadx.core.dex.instructions.args.ArgType.getObject(ArgType.java:596)
    	at jadx.core.dex.attributes.nodes.ClassTypeVarsAttr.getTypeVarsMapFor(ClassTypeVarsAttr.java:35)
    	at jadx.core.dex.nodes.utils.TypeUtils.replaceClassGenerics(TypeUtils.java:177)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.insertExplicitUseCast(FixTypesVisitor.java:397)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.tryFieldTypeWithNewCasts(FixTypesVisitor.java:359)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.applyFieldType(FixTypesVisitor.java:309)
    	at jadx.core.dex.visitors.typeinference.FixTypesVisitor.visit(FixTypesVisitor.java:94)
     */
    @Override // ld.a
    public final Object invokeSuspend(Object obj) throws Throwable {
        kd.a aVar = kd.a.COROUTINE_SUSPENDED;
        int i10 = this.f17363j;
        if (i10 == 0) {
            d3.e.p(obj);
            rd.w<v9.i> wVar = this.f17364k;
            ya.b bVar = this.f17365l;
            this.f17361h = wVar;
            this.f17362i = bVar;
            this.f17363j = 1;
            jd.i iVar = new jd.i(androidx.lifecycle.o.t(this));
            UUID uuidRandomUUID = UUID.randomUUID();
            p4.h.i(uuidRandomUUID, "randomUUID()");
            v9.a aVar2 = new v9.a(uuidRandomUUID);
            a aVar3 = new a(aVar2, iVar);
            ?? iVar2 = new v9.i(false);
            aVar3.invoke(iVar2);
            bVar.B(iVar2);
            wVar.f14795h = iVar2;
            bVar.c(aVar2);
            obj = iVar.a();
            if (obj == aVar) {
                return aVar;
            }
        } else {
            if (i10 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            d3.e.p(obj);
        }
        return obj;
    }
}
