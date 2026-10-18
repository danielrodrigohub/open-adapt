.class public final Lyb/b;
.super Lld/c;
.source "NativeOIDCWrapper.kt"


# annotations
.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper"
    f = "NativeOIDCWrapper.kt"
    l = {
        0x99,
        0x9a,
        0xaa,
        0xaf
    }
    m = "doRevokeRefreshToken"
.end annotation


# instance fields
.field public h:Lyb/e;

.field public i:Ljava/lang/Object;

.field public j:Ljava/io/Serializable;

.field public k:Ljava/lang/Object;

.field public synthetic l:Ljava/lang/Object;

.field public final synthetic m:Lyb/e;

.field public n:I


# direct methods
.method public constructor <init>(Lyb/e;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/e;",
            "Ljd/d<",
            "-",
            "Lyb/b;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyb/b;->m:Lyb/e;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyb/b;->l:Ljava/lang/Object;

    iget p1, p0, Lyb/b;->n:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyb/b;->n:I

    iget-object p1, p0, Lyb/b;->m:Lyb/e;

    const/4 v0, 0x0

    invoke-static {p1, v0, p0}, Lyb/e;->f(Lyb/e;Ljava/lang/String;Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
