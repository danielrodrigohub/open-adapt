.class public final Lee/i$a;
.super Lld/c;
.source "-FileSystem.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lee/i;->a(Lxd/f;Lde/k;Lgd/f;Lde/a0;ZZLjd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "okio.internal._FileSystemKt"
    f = "-FileSystem.kt"
    l = {
        0x71,
        0x84,
        0x8e
    }
    m = "collectRecursively"
.end annotation


# instance fields
.field public h:Lxd/f;

.field public i:Lde/k;

.field public j:Lgd/f;

.field public k:Lde/a0;

.field public l:Ljava/util/Iterator;

.field public m:Z

.field public n:Z

.field public synthetic o:Ljava/lang/Object;

.field public p:I


# direct methods
.method public constructor <init>(Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljd/d<",
            "-",
            "Lee/i$a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0, p1}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    iput-object p1, p0, Lee/i$a;->o:Ljava/lang/Object;

    iget p1, p0, Lee/i$a;->p:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lee/i$a;->p:I

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v6, p0

    invoke-static/range {v0 .. v6}, Lee/i;->a(Lxd/f;Lde/k;Lgd/f;Lde/a0;ZZLjd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
