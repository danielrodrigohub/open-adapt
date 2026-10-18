.class public final Lyb/e$a;
.super Lld/c;
.source "NativeOIDCWrapper.kt"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lyb/e;->g(Ljd/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Lld/e;
    c = "com.nike.authcomponent.oidc.internal.nativeoidc.NativeOIDCWrapper"
    f = "NativeOIDCWrapper.kt"
    l = {
        0xbb,
        0x42
    }
    m = "getAuthorizationServiceConfiguration"
.end annotation


# instance fields
.field public h:Lyb/e;

.field public i:Lkotlinx/coroutines/sync/Mutex;

.field public synthetic j:Ljava/lang/Object;

.field public final synthetic k:Lyb/e;

.field public l:I


# direct methods
.method public constructor <init>(Lyb/e;Ljd/d;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lyb/e;",
            "Ljd/d<",
            "-",
            "Lyb/e$a;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lyb/e$a;->k:Lyb/e;

    invoke-direct {p0, p2}, Lld/c;-><init>(Ljd/d;)V

    return-void
.end method


# virtual methods
.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Lyb/e$a;->j:Ljava/lang/Object;

    iget p1, p0, Lyb/e$a;->l:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Lyb/e$a;->l:I

    iget-object p1, p0, Lyb/e$a;->k:Lyb/e;

    invoke-virtual {p1, p0}, Lyb/e;->g(Ljd/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
