.class public final Lcc/e$i;
.super Lld/c;
.source "OIDCRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/e;->n(Lqd/l;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl"
    f = "OIDCRepositoryImpl.kt"
    l = {
        0xa1,
        0xa5,
        0xa9
    }
    m = "signOutInternal"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Lqd/l;

.field public j:Ljava/lang/Object;

.field public k:Lob/c;

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lcc/e;

.field public n:I


# direct methods
.method public constructor <init>(Lcc/e;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/e;",
            "Ljd/d<",
            "-",
            "Lcc/e$i;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcc/e$i;->m:Lcc/e;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcc/e$i;->l:Ljava/lang/Object;

    iget p1, p0, Lcc/e$i;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcc/e$i;->n:I

    iget-object p1, p0, Lcc/e$i;->m:Lcc/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcc/e;->n(Lqd/l;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
