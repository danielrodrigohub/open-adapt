.class public final Lwc/a$a;
.super Lld/c;
.source "Coroutines.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lwc/a;->a(Lwc/b;Lqd/l;Lqd/p;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Lld/c;"
    }
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.ktx.coroutines.CoroutinesKt"
    f = "Coroutines.kt"
    l = {
        0xf,
        0x15,
        0x1b
    }
    m = "runWithRetry"
.end annotation


# instance fields
.field public h:Lwc/b;

.field public i:Lqd/l;

.field public j:Lqd/p;

.field public k:Lrd/v;

.field public l:Lfd/f$a;

.field public m:I

.field public n:I

.field public o:I

.field public p:I

.field public synthetic q:Ljava/lang/Object;

.field public r:I


# direct methods
.method public constructor <init>(Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lwc/a$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lwc/a$a;->q:Ljava/lang/Object;

    iget p1, p0, Lwc/a$a;->r:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lwc/a$a;->r:I

    const/4 p1, 0x0

    invoke-static {p1, p1, p1, p0}, Lwc/a;->a(Lwc/b;Lqd/l;Lqd/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
