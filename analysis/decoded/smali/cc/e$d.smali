.class public final Lcc/e$d;
.super Lld/c;
.source "OIDCRepositoryImpl.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcc/e;->l(Ljd/d;)Ljava/lang/Object;
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
        0x102
    }
    m = "removeCredential"
.end annotation


# instance fields
.field public h:Ljava/lang/Object;

.field public i:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lcc/e;

.field public l:I


# direct methods
.method public constructor <init>(Lcc/e;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcc/e;",
            "Ljd/d<",
            "-",
            "Lcc/e$d;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcc/e$d;->k:Lcc/e;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lcc/e$d;->j:Ljava/lang/Object;

    iget p1, p0, Lcc/e$d;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lcc/e$d;->l:I

    iget-object p1, p0, Lcc/e$d;->k:Lcc/e;

    invoke-virtual {p1, p0}, Lcc/e;->l(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
