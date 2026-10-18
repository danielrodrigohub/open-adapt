.class public final Lcc/e$f;
.super Lld/c;
.source "OIDCRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/e;->c(Landroidx/fragment/app/p;Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.repository.OIDCRepositoryImpl"
    f = "OIDCRepositoryImpl.kt"
    l = {
        0x10e,
        0x6a,
        0x70,
        0x74
    }
    m = "signIn"
.end annotation


# instance fields
.field public h:Lcc/e;

.field public i:Ljava/lang/Object;

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
            "Lcc/e$f;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcc/e$f;->m:Lcc/e;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcc/e$f;->l:Ljava/lang/Object;

    iget p1, p0, Lcc/e$f;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcc/e$f;->n:I

    iget-object p1, p0, Lcc/e$f;->m:Lcc/e;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Lcc/e;->c(Landroidx/fragment/app/p;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
